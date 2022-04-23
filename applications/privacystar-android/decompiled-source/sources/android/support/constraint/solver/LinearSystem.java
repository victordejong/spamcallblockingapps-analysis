package android.support.constraint.solver;

import android.support.constraint.solver.SolverVariable;
import android.support.constraint.solver.widgets.ConstraintAnchor;
import java.io.PrintStream;
import java.util.Arrays;
import java.util.HashMap;
import org.apache.commons.p018io.IOUtils;
/* loaded from: classes-dex2jar.jar:android/support/constraint/solver/LinearSystem.class */
public class LinearSystem {
    private static final boolean DEBUG = false;
    private static int POOL_SIZE = 1000;
    private ArrayRow[] mRows;
    int mVariablesID = 0;
    private HashMap<String, SolverVariable> mVariables = null;
    private Goal mGoal = new Goal();
    private int TABLE_SIZE = 32;
    private int mMaxColumns = this.TABLE_SIZE;
    private boolean[] mAlreadyTestedCandidates = new boolean[this.TABLE_SIZE];
    int mNumColumns = 1;
    private int mNumRows = 0;
    private int mMaxRows = this.TABLE_SIZE;
    private SolverVariable[] mPoolVariables = new SolverVariable[POOL_SIZE];
    private int mPoolVariablesCount = 0;
    private ArrayRow[] tempClientsCopy = new ArrayRow[this.TABLE_SIZE];
    final Cache mCache = new Cache();

    public LinearSystem() {
        this.mRows = null;
        this.mRows = new ArrayRow[this.TABLE_SIZE];
        releaseRows();
    }

    private SolverVariable acquireSolverVariable(SolverVariable.Type type) {
        SolverVariable solverVariable;
        SolverVariable acquire = this.mCache.solverVariablePool.acquire();
        if (acquire == null) {
            solverVariable = new SolverVariable(type);
        } else {
            acquire.reset();
            acquire.setType(type);
            solverVariable = acquire;
        }
        if (this.mPoolVariablesCount >= POOL_SIZE) {
            POOL_SIZE *= 2;
            this.mPoolVariables = (SolverVariable[]) Arrays.copyOf(this.mPoolVariables, POOL_SIZE);
        }
        SolverVariable[] solverVariableArr = this.mPoolVariables;
        int i = this.mPoolVariablesCount;
        this.mPoolVariablesCount = i + 1;
        solverVariableArr[i] = solverVariable;
        return solverVariable;
    }

    private void addError(ArrayRow arrayRow) {
        arrayRow.addError(createErrorVariable(), createErrorVariable());
    }

    private void addSingleError(ArrayRow arrayRow, int i) {
        arrayRow.addSingleError(createErrorVariable(), i);
    }

    private void computeValues() {
        for (int i = 0; i < this.mNumRows; i++) {
            ArrayRow arrayRow = this.mRows[i];
            arrayRow.variable.computedValue = arrayRow.constantValue;
        }
    }

    public static ArrayRow createRowCentering(LinearSystem linearSystem, SolverVariable solverVariable, SolverVariable solverVariable2, int i, float f, SolverVariable solverVariable3, SolverVariable solverVariable4, int i2, boolean z) {
        ArrayRow createRow = linearSystem.createRow();
        createRow.createRowCentering(solverVariable, solverVariable2, i, f, solverVariable3, solverVariable4, i2);
        if (z) {
            SolverVariable createErrorVariable = linearSystem.createErrorVariable();
            SolverVariable createErrorVariable2 = linearSystem.createErrorVariable();
            createErrorVariable.strength = 4;
            createErrorVariable2.strength = 4;
            createRow.addError(createErrorVariable, createErrorVariable2);
        }
        return createRow;
    }

    public static ArrayRow createRowDimensionPercent(LinearSystem linearSystem, SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, float f, boolean z) {
        ArrayRow createRow = linearSystem.createRow();
        if (z) {
            linearSystem.addError(createRow);
        }
        return createRow.createRowDimensionPercent(solverVariable, solverVariable2, solverVariable3, f);
    }

    public static ArrayRow createRowEquals(LinearSystem linearSystem, SolverVariable solverVariable, SolverVariable solverVariable2, int i, boolean z) {
        ArrayRow createRow = linearSystem.createRow();
        createRow.createRowEquals(solverVariable, solverVariable2, i);
        if (z) {
            linearSystem.addSingleError(createRow, 1);
        }
        return createRow;
    }

    public static ArrayRow createRowGreaterThan(LinearSystem linearSystem, SolverVariable solverVariable, SolverVariable solverVariable2, int i, boolean z) {
        SolverVariable createSlackVariable = linearSystem.createSlackVariable();
        ArrayRow createRow = linearSystem.createRow();
        createRow.createRowGreaterThan(solverVariable, solverVariable2, createSlackVariable, i);
        if (z) {
            linearSystem.addSingleError(createRow, (int) (createRow.variables.get(createSlackVariable) * (-1.0f)));
        }
        return createRow;
    }

    public static ArrayRow createRowLowerThan(LinearSystem linearSystem, SolverVariable solverVariable, SolverVariable solverVariable2, int i, boolean z) {
        SolverVariable createSlackVariable = linearSystem.createSlackVariable();
        ArrayRow createRow = linearSystem.createRow();
        createRow.createRowLowerThan(solverVariable, solverVariable2, createSlackVariable, i);
        if (z) {
            linearSystem.addSingleError(createRow, (int) (createRow.variables.get(createSlackVariable) * (-1.0f)));
        }
        return createRow;
    }

    private SolverVariable createVariable(String str, SolverVariable.Type type) {
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        SolverVariable acquireSolverVariable = acquireSolverVariable(type);
        acquireSolverVariable.setName(str);
        this.mVariablesID++;
        this.mNumColumns++;
        acquireSolverVariable.f3id = this.mVariablesID;
        if (this.mVariables == null) {
            this.mVariables = new HashMap<>();
        }
        this.mVariables.put(str, acquireSolverVariable);
        this.mCache.mIndexedVariables[this.mVariablesID] = acquireSolverVariable;
        return acquireSolverVariable;
    }

    private void displayRows() {
        displaySolverVariables();
        String str = "";
        for (int i = 0; i < this.mNumRows; i++) {
            str = (str + this.mRows[i]) + IOUtils.LINE_SEPARATOR_UNIX;
        }
        String str2 = str;
        if (this.mGoal.variables.size() != 0) {
            str2 = str + this.mGoal + IOUtils.LINE_SEPARATOR_UNIX;
        }
        System.out.println(str2);
    }

    private void displaySolverVariables() {
        String str = "Display Rows (" + this.mNumRows + "x" + this.mNumColumns + ") :\n\t | C | ";
        for (int i = 1; i <= this.mNumColumns; i++) {
            str = (str + this.mCache.mIndexedVariables[i]) + " | ";
        }
        System.out.println(str + IOUtils.LINE_SEPARATOR_UNIX);
    }

    private int enforceBFS(Goal goal) throws Exception {
        boolean z;
        int i;
        int i2 = 0;
        while (true) {
            if (i2 >= this.mNumRows) {
                z = false;
                break;
            } else if (this.mRows[i2].variable.mType != SolverVariable.Type.UNRESTRICTED && this.mRows[i2].constantValue < 0.0f) {
                z = true;
                break;
            } else {
                i2++;
            }
        }
        if (z) {
            boolean z2 = false;
            int i3 = 0;
            while (true) {
                i = i3;
                if (z2) {
                    break;
                }
                int i4 = i3 + 1;
                int i5 = -1;
                int i6 = -1;
                float f = Float.MAX_VALUE;
                int i7 = 0;
                for (int i8 = 0; i8 < this.mNumRows; i8++) {
                    ArrayRow arrayRow = this.mRows[i8];
                    if (arrayRow.variable.mType == SolverVariable.Type.UNRESTRICTED) {
                        i5 = i5;
                        i6 = i6;
                        f = f;
                        i7 = i7;
                    } else {
                        i5 = i5;
                        i6 = i6;
                        f = f;
                        i7 = i7;
                        if (arrayRow.constantValue < 0.0f) {
                            int i9 = i6;
                            int i10 = i5;
                            for (int i11 = 1; i11 < this.mNumColumns; i11++) {
                                SolverVariable solverVariable = this.mCache.mIndexedVariables[i11];
                                float f2 = arrayRow.variables.get(solverVariable);
                                if (f2 > 0.0f) {
                                    int i12 = i7;
                                    int i13 = i10;
                                    for (int i14 = 0; i14 < 6; i14++) {
                                        float f3 = solverVariable.strengthVector[i14] / f2;
                                        if (f3 >= f || i14 != i12) {
                                            i12 = i12;
                                            if (i14 <= i12) {
                                            }
                                        }
                                        f = f3;
                                        i13 = i8;
                                        i9 = i11;
                                        i12 = i14;
                                    }
                                    i7 = i12;
                                    i10 = i13;
                                }
                            }
                            i7 = i7;
                            f = f;
                            i6 = i9;
                            i5 = i10;
                        }
                    }
                }
                if (i5 != -1) {
                    ArrayRow arrayRow2 = this.mRows[i5];
                    arrayRow2.variable.definitionId = -1;
                    arrayRow2.pivot(this.mCache.mIndexedVariables[i6]);
                    arrayRow2.variable.definitionId = i5;
                    for (int i15 = 0; i15 < this.mNumRows; i15++) {
                        this.mRows[i15].updateRowWithEquation(arrayRow2);
                    }
                    goal.updateFromSystem(this);
                    i3 = i4;
                } else {
                    z2 = true;
                    i3 = i4;
                }
            }
        } else {
            i = 0;
        }
        for (int i16 = 0; i16 < this.mNumRows && (this.mRows[i16].variable.mType == SolverVariable.Type.UNRESTRICTED || this.mRows[i16].constantValue >= 0.0f); i16++) {
        }
        return i;
    }

    private String getDisplaySize(int i) {
        int i2 = i * 4;
        int i3 = i2 / 1024;
        int i4 = i3 / 1024;
        if (i4 > 0) {
            return "" + i4 + " Mb";
        } else if (i3 > 0) {
            return "" + i3 + " Kb";
        } else {
            return "" + i2 + " bytes";
        }
    }

    private void increaseTableSize() {
        this.TABLE_SIZE *= 2;
        this.mRows = (ArrayRow[]) Arrays.copyOf(this.mRows, this.TABLE_SIZE);
        this.mCache.mIndexedVariables = (SolverVariable[]) Arrays.copyOf(this.mCache.mIndexedVariables, this.TABLE_SIZE);
        this.mAlreadyTestedCandidates = new boolean[this.TABLE_SIZE];
        this.mMaxColumns = this.TABLE_SIZE;
        this.mMaxRows = this.TABLE_SIZE;
        this.mGoal.variables.clear();
    }

    private int optimize(Goal goal) {
        for (int i = 0; i < this.mNumColumns; i++) {
            this.mAlreadyTestedCandidates[i] = false;
        }
        boolean z = false;
        int i2 = 0;
        int i3 = 0;
        while (!z) {
            int i4 = i2 + 1;
            SolverVariable pivotCandidate = goal.getPivotCandidate();
            boolean z2 = z;
            int i5 = i3;
            SolverVariable solverVariable = pivotCandidate;
            if (pivotCandidate != null) {
                if (this.mAlreadyTestedCandidates[pivotCandidate.f3id]) {
                    solverVariable = null;
                    z2 = z;
                    i5 = i3;
                } else {
                    this.mAlreadyTestedCandidates[pivotCandidate.f3id] = true;
                    int i6 = i3 + 1;
                    z2 = z;
                    i5 = i6;
                    solverVariable = pivotCandidate;
                    if (i6 >= this.mNumColumns) {
                        z2 = true;
                        solverVariable = pivotCandidate;
                        i5 = i6;
                    }
                }
            }
            if (solverVariable != null) {
                int i7 = -1;
                float f = Float.MAX_VALUE;
                for (int i8 = 0; i8 < this.mNumRows; i8++) {
                    ArrayRow arrayRow = this.mRows[i8];
                    if (arrayRow.variable.mType == SolverVariable.Type.UNRESTRICTED) {
                        i7 = i7;
                        f = f;
                    } else {
                        i7 = i7;
                        f = f;
                        if (arrayRow.hasVariable(solverVariable)) {
                            float f2 = arrayRow.variables.get(solverVariable);
                            i7 = i7;
                            f = f;
                            if (f2 < 0.0f) {
                                float f3 = (-arrayRow.constantValue) / f2;
                                i7 = i7;
                                f = f;
                                if (f3 < f) {
                                    i7 = i8;
                                    f = f3;
                                }
                            }
                        }
                    }
                }
                if (i7 > -1) {
                    ArrayRow arrayRow2 = this.mRows[i7];
                    arrayRow2.variable.definitionId = -1;
                    arrayRow2.pivot(solverVariable);
                    arrayRow2.variable.definitionId = i7;
                    for (int i9 = 0; i9 < this.mNumRows; i9++) {
                        this.mRows[i9].updateRowWithEquation(arrayRow2);
                    }
                    goal.updateFromSystem(this);
                    try {
                        enforceBFS(goal);
                        z = z2;
                        i2 = i4;
                        i3 = i5;
                    } catch (Exception e) {
                        e.printStackTrace();
                        z = z2;
                        i2 = i4;
                        i3 = i5;
                    }
                }
            }
            z = true;
            i2 = i4;
            i3 = i5;
        }
        return i2;
    }

    private void releaseRows() {
        for (int i = 0; i < this.mRows.length; i++) {
            ArrayRow arrayRow = this.mRows[i];
            if (arrayRow != null) {
                this.mCache.arrayRowPool.release(arrayRow);
            }
            this.mRows[i] = null;
        }
    }

    private void updateRowFromVariables(ArrayRow arrayRow) {
        if (this.mNumRows > 0) {
            arrayRow.variables.updateFromSystem(arrayRow, this.mRows);
            if (arrayRow.variables.currentSize == 0) {
                arrayRow.isSimpleDefinition = true;
            }
        }
    }

    public void addCentering(SolverVariable solverVariable, SolverVariable solverVariable2, int i, float f, SolverVariable solverVariable3, SolverVariable solverVariable4, int i2, int i3) {
        ArrayRow createRow = createRow();
        createRow.createRowCentering(solverVariable, solverVariable2, i, f, solverVariable3, solverVariable4, i2);
        SolverVariable createErrorVariable = createErrorVariable();
        SolverVariable createErrorVariable2 = createErrorVariable();
        createErrorVariable.strength = i3;
        createErrorVariable2.strength = i3;
        createRow.addError(createErrorVariable, createErrorVariable2);
        addConstraint(createRow);
    }

    public void addConstraint(ArrayRow arrayRow) {
        if (arrayRow != null) {
            if (this.mNumRows + 1 >= this.mMaxRows || this.mNumColumns + 1 >= this.mMaxColumns) {
                increaseTableSize();
            }
            if (!arrayRow.isSimpleDefinition) {
                updateRowFromVariables(arrayRow);
                arrayRow.ensurePositiveConstant();
                arrayRow.pickRowVariable();
                if (!arrayRow.hasKeyVariable()) {
                    return;
                }
            }
            if (this.mRows[this.mNumRows] != null) {
                this.mCache.arrayRowPool.release(this.mRows[this.mNumRows]);
            }
            if (!arrayRow.isSimpleDefinition) {
                arrayRow.updateClientEquations();
            }
            this.mRows[this.mNumRows] = arrayRow;
            arrayRow.variable.definitionId = this.mNumRows;
            this.mNumRows++;
            int i = arrayRow.variable.mClientEquationsCount;
            if (i > 0) {
                while (this.tempClientsCopy.length < i) {
                    this.tempClientsCopy = new ArrayRow[this.tempClientsCopy.length * 2];
                }
                ArrayRow[] arrayRowArr = this.tempClientsCopy;
                for (int i2 = 0; i2 < i; i2++) {
                    arrayRowArr[i2] = arrayRow.variable.mClientEquations[i2];
                }
                for (int i3 = 0; i3 < i; i3++) {
                    ArrayRow arrayRow2 = arrayRowArr[i3];
                    if (arrayRow2 != arrayRow) {
                        arrayRow2.variables.updateFromRow(arrayRow2, arrayRow);
                        arrayRow2.updateClientEquations();
                    }
                }
            }
        }
    }

    public ArrayRow addEquality(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        ArrayRow createRow = createRow();
        createRow.createRowEquals(solverVariable, solverVariable2, i);
        SolverVariable createErrorVariable = createErrorVariable();
        SolverVariable createErrorVariable2 = createErrorVariable();
        createErrorVariable.strength = i2;
        createErrorVariable2.strength = i2;
        createRow.addError(createErrorVariable, createErrorVariable2);
        addConstraint(createRow);
        return createRow;
    }

    public void addEquality(SolverVariable solverVariable, int i) {
        int i2 = solverVariable.definitionId;
        if (solverVariable.definitionId != -1) {
            ArrayRow arrayRow = this.mRows[i2];
            if (arrayRow.isSimpleDefinition) {
                arrayRow.constantValue = i;
                return;
            }
            ArrayRow createRow = createRow();
            createRow.createRowEquals(solverVariable, i);
            addConstraint(createRow);
            return;
        }
        ArrayRow createRow2 = createRow();
        createRow2.createRowDefinition(solverVariable, i);
        addConstraint(createRow2);
    }

    public void addGreaterThan(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        ArrayRow createRow = createRow();
        SolverVariable createSlackVariable = createSlackVariable();
        createSlackVariable.strength = i2;
        createRow.createRowGreaterThan(solverVariable, solverVariable2, createSlackVariable, i);
        addConstraint(createRow);
    }

    public void addLowerThan(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        ArrayRow createRow = createRow();
        SolverVariable createSlackVariable = createSlackVariable();
        createSlackVariable.strength = i2;
        createRow.createRowLowerThan(solverVariable, solverVariable2, createSlackVariable, i);
        addConstraint(createRow);
    }

    public SolverVariable createErrorVariable() {
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        SolverVariable acquireSolverVariable = acquireSolverVariable(SolverVariable.Type.ERROR);
        this.mVariablesID++;
        this.mNumColumns++;
        acquireSolverVariable.f3id = this.mVariablesID;
        this.mCache.mIndexedVariables[this.mVariablesID] = acquireSolverVariable;
        return acquireSolverVariable;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x005e, code lost:
        if (r4.mCache.mIndexedVariables[r5.f3id] == null) goto L_0x0061;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.support.constraint.solver.SolverVariable createObjectVariable(java.lang.Object r5) {
        /*
            r4 = this;
            r0 = 0
            r6 = r0
            r0 = r5
            if (r0 != 0) goto L_0x0008
            r0 = 0
            return r0
        L_0x0008:
            r0 = r4
            int r0 = r0.mNumColumns
            r1 = 1
            int r0 = r0 + r1
            r1 = r4
            int r1 = r1.mMaxColumns
            if (r0 < r1) goto L_0x0019
            r0 = r4
            r0.increaseTableSize()
        L_0x0019:
            r0 = r5
            boolean r0 = r0 instanceof android.support.constraint.solver.widgets.ConstraintAnchor
            if (r0 == 0) goto L_0x009f
            r0 = r5
            android.support.constraint.solver.widgets.ConstraintAnchor r0 = (android.support.constraint.solver.widgets.ConstraintAnchor) r0
            r7 = r0
            r0 = r7
            android.support.constraint.solver.SolverVariable r0 = r0.getSolverVariable()
            r6 = r0
            r0 = r6
            r5 = r0
            r0 = r6
            if (r0 != 0) goto L_0x003d
            r0 = r7
            r1 = r4
            android.support.constraint.solver.Cache r1 = r1.mCache
            r0.resetSolverVariable(r1)
            r0 = r7
            android.support.constraint.solver.SolverVariable r0 = r0.getSolverVariable()
            r5 = r0
        L_0x003d:
            r0 = r5
            int r0 = r0.f3id
            r1 = -1
            if (r0 == r1) goto L_0x0061
            r0 = r5
            int r0 = r0.f3id
            r1 = r4
            int r1 = r1.mVariablesID
            if (r0 > r1) goto L_0x0061
            r0 = r5
            r6 = r0
            r0 = r4
            android.support.constraint.solver.Cache r0 = r0.mCache
            android.support.constraint.solver.SolverVariable[] r0 = r0.mIndexedVariables
            r1 = r5
            int r1 = r1.f3id
            r0 = r0[r1]
            if (r0 != 0) goto L_0x009f
        L_0x0061:
            r0 = r5
            int r0 = r0.f3id
            r1 = -1
            if (r0 == r1) goto L_0x006d
            r0 = r5
            r0.reset()
        L_0x006d:
            r0 = r4
            r1 = r4
            int r1 = r1.mVariablesID
            r2 = 1
            int r1 = r1 + r2
            r0.mVariablesID = r1
            r0 = r4
            r1 = r4
            int r1 = r1.mNumColumns
            r2 = 1
            int r1 = r1 + r2
            r0.mNumColumns = r1
            r0 = r5
            r1 = r4
            int r1 = r1.mVariablesID
            r0.f3id = r1
            r0 = r5
            android.support.constraint.solver.SolverVariable$Type r1 = android.support.constraint.solver.SolverVariable.Type.UNRESTRICTED
            r0.mType = r1
            r0 = r4
            android.support.constraint.solver.Cache r0 = r0.mCache
            android.support.constraint.solver.SolverVariable[] r0 = r0.mIndexedVariables
            r1 = r4
            int r1 = r1.mVariablesID
            r2 = r5
            r0[r1] = r2
            r0 = r5
            r6 = r0
        L_0x009f:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.constraint.solver.LinearSystem.createObjectVariable(java.lang.Object):android.support.constraint.solver.SolverVariable");
    }

    public ArrayRow createRow() {
        ArrayRow acquire = this.mCache.arrayRowPool.acquire();
        if (acquire == null) {
            acquire = new ArrayRow(this.mCache);
        } else {
            acquire.reset();
        }
        return acquire;
    }

    public SolverVariable createSlackVariable() {
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        SolverVariable acquireSolverVariable = acquireSolverVariable(SolverVariable.Type.SLACK);
        this.mVariablesID++;
        this.mNumColumns++;
        acquireSolverVariable.f3id = this.mVariablesID;
        this.mCache.mIndexedVariables[this.mVariablesID] = acquireSolverVariable;
        return acquireSolverVariable;
    }

    void displayReadableRows() {
        displaySolverVariables();
        String str = "";
        for (int i = 0; i < this.mNumRows; i++) {
            str = (str + this.mRows[i].toReadableString()) + IOUtils.LINE_SEPARATOR_UNIX;
        }
        String str2 = str;
        if (this.mGoal != null) {
            str2 = str + this.mGoal + IOUtils.LINE_SEPARATOR_UNIX;
        }
        System.out.println(str2);
    }

    void displaySystemInformations() {
        int i = 0;
        for (int i2 = 0; i2 < this.TABLE_SIZE; i2++) {
            i = i;
            if (this.mRows[i2] != null) {
                i += this.mRows[i2].sizeInBytes();
            }
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.mNumRows; i4++) {
            i3 = i3;
            if (this.mRows[i4] != null) {
                i3 += this.mRows[i4].sizeInBytes();
            }
        }
        PrintStream printStream = System.out;
        printStream.println("Linear System -> Table size: " + this.TABLE_SIZE + " (" + getDisplaySize(this.TABLE_SIZE * this.TABLE_SIZE) + ") -- row sizes: " + getDisplaySize(i) + ", actual size: " + getDisplaySize(i3) + " rows: " + this.mNumRows + "/" + this.mMaxRows + " cols: " + this.mNumColumns + "/" + this.mMaxColumns + " 0 occupied cells, " + getDisplaySize(0));
    }

    public void displayVariablesReadableRows() {
        displaySolverVariables();
        String str = "";
        for (int i = 0; i < this.mNumRows; i++) {
            str = str;
            if (this.mRows[i].variable.mType == SolverVariable.Type.UNRESTRICTED) {
                str = (str + this.mRows[i].toReadableString()) + IOUtils.LINE_SEPARATOR_UNIX;
            }
        }
        String str2 = str;
        if (this.mGoal.variables.size() != 0) {
            str2 = str + this.mGoal + IOUtils.LINE_SEPARATOR_UNIX;
        }
        System.out.println(str2);
    }

    public Cache getCache() {
        return this.mCache;
    }

    Goal getGoal() {
        return this.mGoal;
    }

    public int getMemoryUsed() {
        int i = 0;
        for (int i2 = 0; i2 < this.mNumRows; i2++) {
            i = i;
            if (this.mRows[i2] != null) {
                i += this.mRows[i2].sizeInBytes();
            }
        }
        return i;
    }

    public int getNumEquations() {
        return this.mNumRows;
    }

    public int getNumVariables() {
        return this.mVariablesID;
    }

    public int getObjectVariableValue(Object obj) {
        SolverVariable solverVariable = ((ConstraintAnchor) obj).getSolverVariable();
        if (solverVariable != null) {
            return (int) (solverVariable.computedValue + 0.5f);
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayRow getRow(int i) {
        return this.mRows[i];
    }

    float getValueFor(String str) {
        SolverVariable variable = getVariable(str, SolverVariable.Type.UNRESTRICTED);
        if (variable == null) {
            return 0.0f;
        }
        return variable.computedValue;
    }

    SolverVariable getVariable(String str, SolverVariable.Type type) {
        if (this.mVariables == null) {
            this.mVariables = new HashMap<>();
        }
        SolverVariable solverVariable = this.mVariables.get(str);
        SolverVariable solverVariable2 = solverVariable;
        if (solverVariable == null) {
            solverVariable2 = createVariable(str, type);
        }
        return solverVariable2;
    }

    public void minimize() throws Exception {
        minimizeGoal(this.mGoal);
    }

    void minimizeGoal(Goal goal) throws Exception {
        goal.updateFromSystem(this);
        enforceBFS(goal);
        optimize(goal);
        computeValues();
    }

    void rebuildGoalFromErrors() {
        this.mGoal.updateFromSystem(this);
    }

    public void reset() {
        for (int i = 0; i < this.mCache.mIndexedVariables.length; i++) {
            SolverVariable solverVariable = this.mCache.mIndexedVariables[i];
            if (solverVariable != null) {
                solverVariable.reset();
            }
        }
        this.mCache.solverVariablePool.releaseAll(this.mPoolVariables, this.mPoolVariablesCount);
        this.mPoolVariablesCount = 0;
        Arrays.fill(this.mCache.mIndexedVariables, (Object) null);
        if (this.mVariables != null) {
            this.mVariables.clear();
        }
        this.mVariablesID = 0;
        this.mGoal.variables.clear();
        this.mNumColumns = 1;
        for (int i2 = 0; i2 < this.mNumRows; i2++) {
            this.mRows[i2].used = false;
        }
        releaseRows();
        this.mNumRows = 0;
    }
}
