package androidx.constraintlayout.solver;

import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistParser;
import java.io.PrintStream;
import java.util.Arrays;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/LinearSystem.class */
public class LinearSystem {
    public static final boolean DEBUG = false;
    public static final boolean FULL_DEBUG = false;
    public static int POOL_SIZE = 1000;
    public static Metrics sMetrics;
    public boolean[] mAlreadyTestedCandidates;
    public int mMaxColumns;
    public int mMaxRows;
    public ArrayRow[] mRows;
    public ArrayRow[] tempClientsCopy;
    public int mVariablesID = 0;
    public HashMap<String, SolverVariable> mVariables = null;
    public int TABLE_SIZE = 32;
    public boolean graphOptimizer = false;
    public int mNumColumns = 1;
    public int mNumRows = 0;
    public SolverVariable[] mPoolVariables = new SolverVariable[POOL_SIZE];
    public int mPoolVariablesCount = 0;
    public final Cache mCache = new Cache();
    public Row mGoal = new GoalRow(this.mCache);
    public final Row mTempGoal = new ArrayRow(this.mCache);

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/LinearSystem$Row.class */
    public interface Row {
        void addError(SolverVariable solverVariable);

        void clear();

        SolverVariable getKey();

        SolverVariable getPivotCandidate(LinearSystem linearSystem, boolean[] zArr);

        void initFromRow(Row row);

        boolean isEmpty();
    }

    public LinearSystem() {
        int i = this.TABLE_SIZE;
        this.mMaxColumns = i;
        this.mRows = null;
        this.mAlreadyTestedCandidates = new boolean[i];
        this.mMaxRows = i;
        this.tempClientsCopy = new ArrayRow[i];
        this.mRows = new ArrayRow[i];
        releaseRows();
    }

    private SolverVariable acquireSolverVariable(SolverVariable.Type type, String str) {
        SolverVariable solverVariable;
        SolverVariable acquire = this.mCache.solverVariablePool.acquire();
        if (acquire == null) {
            SolverVariable solverVariable2 = new SolverVariable(type, str);
            solverVariable2.setType(type, str);
            solverVariable = solverVariable2;
        } else {
            acquire.reset();
            acquire.setType(type, str);
            solverVariable = acquire;
        }
        int i = this.mPoolVariablesCount;
        int i2 = POOL_SIZE;
        if (i >= i2) {
            POOL_SIZE = i2 * 2;
            this.mPoolVariables = (SolverVariable[]) Arrays.copyOf(this.mPoolVariables, POOL_SIZE);
        }
        SolverVariable[] solverVariableArr = this.mPoolVariables;
        int i3 = this.mPoolVariablesCount;
        this.mPoolVariablesCount = i3 + 1;
        solverVariableArr[i3] = solverVariable;
        return solverVariable;
    }

    private void addError(ArrayRow arrayRow) {
        arrayRow.addError(this, 0);
    }

    private final void addRow(ArrayRow arrayRow) {
        ArrayRow[] arrayRowArr = this.mRows;
        int i = this.mNumRows;
        if (arrayRowArr[i] != null) {
            this.mCache.arrayRowPool.release(arrayRowArr[i]);
        }
        ArrayRow[] arrayRowArr2 = this.mRows;
        int i2 = this.mNumRows;
        arrayRowArr2[i2] = arrayRow;
        SolverVariable solverVariable = arrayRow.variable;
        solverVariable.definitionId = i2;
        this.mNumRows = i2 + 1;
        solverVariable.updateReferencesWithNewDefinition(arrayRow);
    }

    private void addSingleError(ArrayRow arrayRow, int i) {
        addSingleError(arrayRow, i, 0);
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
            createRow.addError(linearSystem, 4);
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
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.variables++;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        SolverVariable acquireSolverVariable = acquireSolverVariable(type, null);
        acquireSolverVariable.setName(str);
        this.mVariablesID++;
        this.mNumColumns++;
        acquireSolverVariable.f44id = this.mVariablesID;
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
            str = (str + this.mRows[i]) + "\n";
        }
        System.out.println(str + this.mGoal + "\n");
    }

    private void displaySolverVariables() {
        System.out.println("Display Rows (" + this.mNumRows + "x" + this.mNumColumns + ")\n");
    }

    private int enforceBFS(Row row) throws Exception {
        boolean z;
        int i;
        int i2 = 0;
        while (true) {
            if (i2 >= this.mNumRows) {
                z = false;
                break;
            }
            ArrayRow[] arrayRowArr = this.mRows;
            if (arrayRowArr[i2].variable.mType != SolverVariable.Type.UNRESTRICTED && arrayRowArr[i2].constantValue < 0.0f) {
                z = true;
                break;
            }
            i2++;
        }
        if (z) {
            boolean z2 = false;
            int i3 = 0;
            while (true) {
                i = i3;
                if (z2) {
                    break;
                }
                Metrics metrics = sMetrics;
                if (metrics != null) {
                    metrics.bfs++;
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
                    } else if (arrayRow.isSimpleDefinition) {
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
                            int i9 = 1;
                            while (true) {
                                i5 = i5;
                                i6 = i6;
                                f = f;
                                i7 = i7;
                                if (i9 < this.mNumColumns) {
                                    SolverVariable solverVariable = this.mCache.mIndexedVariables[i9];
                                    float f2 = arrayRow.variables.get(solverVariable);
                                    if (f2 > 0.0f) {
                                        int i10 = i7;
                                        int i11 = i5;
                                        for (int i12 = 0; i12 < 7; i12++) {
                                            float f3 = solverVariable.strengthVector[i12] / f2;
                                            if (f3 >= f || i12 != i10) {
                                                i10 = i10;
                                                if (i12 <= i10) {
                                                }
                                            }
                                            i6 = i9;
                                            i11 = i8;
                                            f = f3;
                                            i10 = i12;
                                        }
                                        i7 = i10;
                                        i5 = i11;
                                    }
                                    i9++;
                                }
                            }
                        }
                    }
                }
                if (i5 != -1) {
                    ArrayRow arrayRow2 = this.mRows[i5];
                    arrayRow2.variable.definitionId = -1;
                    Metrics metrics2 = sMetrics;
                    if (metrics2 != null) {
                        metrics2.pivots++;
                    }
                    arrayRow2.pivot(this.mCache.mIndexedVariables[i6]);
                    SolverVariable solverVariable2 = arrayRow2.variable;
                    solverVariable2.definitionId = i5;
                    solverVariable2.updateReferencesWithNewDefinition(arrayRow2);
                } else {
                    z2 = true;
                }
                if (i4 > this.mNumColumns / 2) {
                    z2 = true;
                }
                i3 = i4;
            }
        } else {
            i = 0;
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

    private String getDisplayStrength(int i) {
        return i == 1 ? "LOW" : i == 2 ? "MEDIUM" : i == 3 ? "HIGH" : i == 4 ? "HIGHEST" : i == 5 ? "EQUALITY" : i == 6 ? "FIXED" : HlsPlaylistParser.METHOD_NONE;
    }

    public static Metrics getMetrics() {
        return sMetrics;
    }

    private void increaseTableSize() {
        this.TABLE_SIZE *= 2;
        this.mRows = (ArrayRow[]) Arrays.copyOf(this.mRows, this.TABLE_SIZE);
        Cache cache = this.mCache;
        cache.mIndexedVariables = (SolverVariable[]) Arrays.copyOf(cache.mIndexedVariables, this.TABLE_SIZE);
        int i = this.TABLE_SIZE;
        this.mAlreadyTestedCandidates = new boolean[i];
        this.mMaxColumns = i;
        this.mMaxRows = i;
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.tableSizeIncrease++;
            metrics.maxTableSize = Math.max(metrics.maxTableSize, i);
            Metrics metrics2 = sMetrics;
            metrics2.lastTableSize = metrics2.maxTableSize;
        }
    }

    private final int optimize(Row row, boolean z) {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.optimize++;
        }
        for (int i = 0; i < this.mNumColumns; i++) {
            this.mAlreadyTestedCandidates[i] = false;
        }
        boolean z2 = false;
        int i2 = 0;
        while (!z2) {
            Metrics metrics2 = sMetrics;
            if (metrics2 != null) {
                metrics2.iterations++;
            }
            int i3 = i2 + 1;
            if (i3 >= this.mNumColumns * 2) {
                return i3;
            }
            if (row.getKey() != null) {
                this.mAlreadyTestedCandidates[row.getKey().f44id] = true;
            }
            SolverVariable pivotCandidate = row.getPivotCandidate(this, this.mAlreadyTestedCandidates);
            if (pivotCandidate != null) {
                boolean[] zArr = this.mAlreadyTestedCandidates;
                int i4 = pivotCandidate.f44id;
                if (zArr[i4]) {
                    return i3;
                }
                zArr[i4] = true;
            }
            if (pivotCandidate != null) {
                int i5 = -1;
                float f = Float.MAX_VALUE;
                for (int i6 = 0; i6 < this.mNumRows; i6++) {
                    ArrayRow arrayRow = this.mRows[i6];
                    if (arrayRow.variable.mType == SolverVariable.Type.UNRESTRICTED) {
                        i5 = i5;
                        f = f;
                    } else if (arrayRow.isSimpleDefinition) {
                        i5 = i5;
                        f = f;
                    } else {
                        i5 = i5;
                        f = f;
                        if (arrayRow.hasVariable(pivotCandidate)) {
                            float f2 = arrayRow.variables.get(pivotCandidate);
                            i5 = i5;
                            f = f;
                            if (f2 < 0.0f) {
                                float f3 = (-arrayRow.constantValue) / f2;
                                i5 = i5;
                                f = f;
                                if (f3 < f) {
                                    i5 = i6;
                                    f = f3;
                                }
                            }
                        }
                    }
                }
                if (i5 > -1) {
                    ArrayRow arrayRow2 = this.mRows[i5];
                    arrayRow2.variable.definitionId = -1;
                    Metrics metrics3 = sMetrics;
                    if (metrics3 != null) {
                        metrics3.pivots++;
                    }
                    arrayRow2.pivot(pivotCandidate);
                    SolverVariable solverVariable = arrayRow2.variable;
                    solverVariable.definitionId = i5;
                    solverVariable.updateReferencesWithNewDefinition(arrayRow2);
                    i2 = i3;
                }
            }
            z2 = true;
            i2 = i3;
        }
        return i2;
    }

    private void releaseRows() {
        int i = 0;
        while (true) {
            ArrayRow[] arrayRowArr = this.mRows;
            if (i < arrayRowArr.length) {
                ArrayRow arrayRow = arrayRowArr[i];
                if (arrayRow != null) {
                    this.mCache.arrayRowPool.release(arrayRow);
                }
                this.mRows[i] = null;
                i++;
            } else {
                return;
            }
        }
    }

    private final void updateRowFromVariables(ArrayRow arrayRow) {
        if (this.mNumRows > 0) {
            arrayRow.variables.updateFromSystem(arrayRow, this.mRows);
            if (arrayRow.variables.currentSize == 0) {
                arrayRow.isSimpleDefinition = true;
            }
        }
    }

    public void addCenterPoint(ConstraintWidget constraintWidget, ConstraintWidget constraintWidget2, float f, int i) {
        SolverVariable createObjectVariable = createObjectVariable(constraintWidget.getAnchor(ConstraintAnchor.Type.LEFT));
        SolverVariable createObjectVariable2 = createObjectVariable(constraintWidget.getAnchor(ConstraintAnchor.Type.TOP));
        SolverVariable createObjectVariable3 = createObjectVariable(constraintWidget.getAnchor(ConstraintAnchor.Type.RIGHT));
        SolverVariable createObjectVariable4 = createObjectVariable(constraintWidget.getAnchor(ConstraintAnchor.Type.BOTTOM));
        SolverVariable createObjectVariable5 = createObjectVariable(constraintWidget2.getAnchor(ConstraintAnchor.Type.LEFT));
        SolverVariable createObjectVariable6 = createObjectVariable(constraintWidget2.getAnchor(ConstraintAnchor.Type.TOP));
        SolverVariable createObjectVariable7 = createObjectVariable(constraintWidget2.getAnchor(ConstraintAnchor.Type.RIGHT));
        SolverVariable createObjectVariable8 = createObjectVariable(constraintWidget2.getAnchor(ConstraintAnchor.Type.BOTTOM));
        ArrayRow createRow = createRow();
        double d = f;
        double sin = Math.sin(d);
        double d2 = i;
        createRow.createRowWithAngle(createObjectVariable2, createObjectVariable4, createObjectVariable6, createObjectVariable8, (float) (sin * d2));
        addConstraint(createRow);
        ArrayRow createRow2 = createRow();
        createRow2.createRowWithAngle(createObjectVariable, createObjectVariable3, createObjectVariable5, createObjectVariable7, (float) (Math.cos(d) * d2));
        addConstraint(createRow2);
    }

    public void addCentering(SolverVariable solverVariable, SolverVariable solverVariable2, int i, float f, SolverVariable solverVariable3, SolverVariable solverVariable4, int i2, int i3) {
        ArrayRow createRow = createRow();
        createRow.createRowCentering(solverVariable, solverVariable2, i, f, solverVariable3, solverVariable4, i2);
        if (i3 != 6) {
            createRow.addError(this, i3);
        }
        addConstraint(createRow);
    }

    public void addConstraint(ArrayRow arrayRow) {
        SolverVariable pickPivot;
        if (arrayRow != null) {
            Metrics metrics = sMetrics;
            if (metrics != null) {
                metrics.constraints++;
                if (arrayRow.isSimpleDefinition) {
                    metrics.simpleconstraints++;
                }
            }
            if (this.mNumRows + 1 >= this.mMaxRows || this.mNumColumns + 1 >= this.mMaxColumns) {
                increaseTableSize();
            }
            boolean z = false;
            z = false;
            if (!arrayRow.isSimpleDefinition) {
                updateRowFromVariables(arrayRow);
                if (!arrayRow.isEmpty()) {
                    arrayRow.ensurePositiveConstant();
                    if (arrayRow.chooseSubject(this)) {
                        SolverVariable createExtraVariable = createExtraVariable();
                        arrayRow.variable = createExtraVariable;
                        addRow(arrayRow);
                        this.mTempGoal.initFromRow(arrayRow);
                        optimize(this.mTempGoal, true);
                        if (createExtraVariable.definitionId == -1) {
                            if (arrayRow.variable == createExtraVariable && (pickPivot = arrayRow.pickPivot(createExtraVariable)) != null) {
                                Metrics metrics2 = sMetrics;
                                if (metrics2 != null) {
                                    metrics2.pivots++;
                                }
                                arrayRow.pivot(pickPivot);
                            }
                            if (!arrayRow.isSimpleDefinition) {
                                arrayRow.variable.updateReferencesWithNewDefinition(arrayRow);
                            }
                            this.mNumRows--;
                        }
                        z = true;
                    }
                    if (!arrayRow.hasKeyVariable()) {
                        return;
                    }
                } else {
                    return;
                }
            }
            if (!z) {
                addRow(arrayRow);
            }
        }
    }

    public ArrayRow addEquality(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        ArrayRow createRow = createRow();
        createRow.createRowEquals(solverVariable, solverVariable2, i);
        if (i2 != 6) {
            createRow.addError(this, i2);
        }
        addConstraint(createRow);
        return createRow;
    }

    public void addEquality(SolverVariable solverVariable, int i) {
        int i2 = solverVariable.definitionId;
        if (i2 != -1) {
            ArrayRow arrayRow = this.mRows[i2];
            if (arrayRow.isSimpleDefinition) {
                arrayRow.constantValue = i;
            } else if (arrayRow.variables.currentSize == 0) {
                arrayRow.isSimpleDefinition = true;
                arrayRow.constantValue = i;
            } else {
                ArrayRow createRow = createRow();
                createRow.createRowEquals(solverVariable, i);
                addConstraint(createRow);
            }
        } else {
            ArrayRow createRow2 = createRow();
            createRow2.createRowDefinition(solverVariable, i);
            addConstraint(createRow2);
        }
    }

    public void addEquality(SolverVariable solverVariable, int i, int i2) {
        int i3 = solverVariable.definitionId;
        if (i3 != -1) {
            ArrayRow arrayRow = this.mRows[i3];
            if (arrayRow.isSimpleDefinition) {
                arrayRow.constantValue = i;
                return;
            }
            ArrayRow createRow = createRow();
            createRow.createRowEquals(solverVariable, i);
            createRow.addError(this, i2);
            addConstraint(createRow);
            return;
        }
        ArrayRow createRow2 = createRow();
        createRow2.createRowDefinition(solverVariable, i);
        createRow2.addError(this, i2);
        addConstraint(createRow2);
    }

    public void addGreaterBarrier(SolverVariable solverVariable, SolverVariable solverVariable2, boolean z) {
        ArrayRow createRow = createRow();
        SolverVariable createSlackVariable = createSlackVariable();
        createSlackVariable.strength = 0;
        createRow.createRowGreaterThan(solverVariable, solverVariable2, createSlackVariable, 0);
        if (z) {
            addSingleError(createRow, (int) (createRow.variables.get(createSlackVariable) * (-1.0f)), 1);
        }
        addConstraint(createRow);
    }

    public void addGreaterThan(SolverVariable solverVariable, int i) {
        ArrayRow createRow = createRow();
        SolverVariable createSlackVariable = createSlackVariable();
        createSlackVariable.strength = 0;
        createRow.createRowGreaterThan(solverVariable, i, createSlackVariable);
        addConstraint(createRow);
    }

    public void addGreaterThan(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        ArrayRow createRow = createRow();
        SolverVariable createSlackVariable = createSlackVariable();
        createSlackVariable.strength = 0;
        createRow.createRowGreaterThan(solverVariable, solverVariable2, createSlackVariable, i);
        if (i2 != 6) {
            addSingleError(createRow, (int) (createRow.variables.get(createSlackVariable) * (-1.0f)), i2);
        }
        addConstraint(createRow);
    }

    public void addLowerBarrier(SolverVariable solverVariable, SolverVariable solverVariable2, boolean z) {
        ArrayRow createRow = createRow();
        SolverVariable createSlackVariable = createSlackVariable();
        createSlackVariable.strength = 0;
        createRow.createRowLowerThan(solverVariable, solverVariable2, createSlackVariable, 0);
        if (z) {
            addSingleError(createRow, (int) (createRow.variables.get(createSlackVariable) * (-1.0f)), 1);
        }
        addConstraint(createRow);
    }

    public void addLowerThan(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        ArrayRow createRow = createRow();
        SolverVariable createSlackVariable = createSlackVariable();
        createSlackVariable.strength = 0;
        createRow.createRowLowerThan(solverVariable, solverVariable2, createSlackVariable, i);
        if (i2 != 6) {
            addSingleError(createRow, (int) (createRow.variables.get(createSlackVariable) * (-1.0f)), i2);
        }
        addConstraint(createRow);
    }

    public void addRatio(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f, int i) {
        ArrayRow createRow = createRow();
        createRow.createRowDimensionRatio(solverVariable, solverVariable2, solverVariable3, solverVariable4, f);
        if (i != 6) {
            createRow.addError(this, i);
        }
        addConstraint(createRow);
    }

    public void addSingleError(ArrayRow arrayRow, int i, int i2) {
        arrayRow.addSingleError(createErrorVariable(i2, null), i);
    }

    public SolverVariable createErrorVariable(int i, String str) {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.errors++;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        SolverVariable acquireSolverVariable = acquireSolverVariable(SolverVariable.Type.ERROR, str);
        this.mVariablesID++;
        this.mNumColumns++;
        int i2 = this.mVariablesID;
        acquireSolverVariable.f44id = i2;
        acquireSolverVariable.strength = i;
        this.mCache.mIndexedVariables[i2] = acquireSolverVariable;
        this.mGoal.addError(acquireSolverVariable);
        return acquireSolverVariable;
    }

    public SolverVariable createExtraVariable() {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.extravariables++;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        SolverVariable acquireSolverVariable = acquireSolverVariable(SolverVariable.Type.SLACK, null);
        this.mVariablesID++;
        this.mNumColumns++;
        int i = this.mVariablesID;
        acquireSolverVariable.f44id = i;
        this.mCache.mIndexedVariables[i] = acquireSolverVariable;
        return acquireSolverVariable;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x005e, code lost:
        if (r4.mCache.mIndexedVariables[r0] == null) goto L_0x0061;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.constraintlayout.solver.SolverVariable createObjectVariable(java.lang.Object r5) {
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
            boolean r0 = r0 instanceof androidx.constraintlayout.solver.widgets.ConstraintAnchor
            if (r0 == 0) goto L_0x00a1
            r0 = r5
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = (androidx.constraintlayout.solver.widgets.ConstraintAnchor) r0
            r7 = r0
            r0 = r7
            androidx.constraintlayout.solver.SolverVariable r0 = r0.getSolverVariable()
            r6 = r0
            r0 = r6
            r5 = r0
            r0 = r6
            if (r0 != 0) goto L_0x003d
            r0 = r7
            r1 = r4
            androidx.constraintlayout.solver.Cache r1 = r1.mCache
            r0.resetSolverVariable(r1)
            r0 = r7
            androidx.constraintlayout.solver.SolverVariable r0 = r0.getSolverVariable()
            r5 = r0
        L_0x003d:
            r0 = r5
            int r0 = r0.f44id
            r8 = r0
            r0 = r8
            r1 = -1
            if (r0 == r1) goto L_0x0061
            r0 = r8
            r1 = r4
            int r1 = r1.mVariablesID
            if (r0 > r1) goto L_0x0061
            r0 = r5
            r6 = r0
            r0 = r4
            androidx.constraintlayout.solver.Cache r0 = r0.mCache
            androidx.constraintlayout.solver.SolverVariable[] r0 = r0.mIndexedVariables
            r1 = r8
            r0 = r0[r1]
            if (r0 != 0) goto L_0x00a1
        L_0x0061:
            r0 = r5
            int r0 = r0.f44id
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
            r0 = r4
            int r0 = r0.mVariablesID
            r8 = r0
            r0 = r5
            r1 = r8
            r0.f44id = r1
            r0 = r5
            androidx.constraintlayout.solver.SolverVariable$Type r1 = androidx.constraintlayout.solver.SolverVariable.Type.UNRESTRICTED
            r0.mType = r1
            r0 = r4
            androidx.constraintlayout.solver.Cache r0 = r0.mCache
            androidx.constraintlayout.solver.SolverVariable[] r0 = r0.mIndexedVariables
            r1 = r8
            r2 = r5
            r0[r1] = r2
            r0 = r5
            r6 = r0
        L_0x00a1:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.LinearSystem.createObjectVariable(java.lang.Object):androidx.constraintlayout.solver.SolverVariable");
    }

    public ArrayRow createRow() {
        ArrayRow acquire = this.mCache.arrayRowPool.acquire();
        if (acquire == null) {
            acquire = new ArrayRow(this.mCache);
        } else {
            acquire.reset();
        }
        SolverVariable.increaseErrorId();
        return acquire;
    }

    public SolverVariable createSlackVariable() {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.slackvariables++;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        SolverVariable acquireSolverVariable = acquireSolverVariable(SolverVariable.Type.SLACK, null);
        this.mVariablesID++;
        this.mNumColumns++;
        int i = this.mVariablesID;
        acquireSolverVariable.f44id = i;
        this.mCache.mIndexedVariables[i] = acquireSolverVariable;
        return acquireSolverVariable;
    }

    public void displayReadableRows() {
        displaySolverVariables();
        String str = " #  ";
        for (int i = 0; i < this.mNumRows; i++) {
            str = (str + this.mRows[i].toReadableString()) + "\n #  ";
        }
        String str2 = str;
        if (this.mGoal != null) {
            str2 = str + this.mGoal + "\n";
        }
        System.out.println(str2);
    }

    public void displaySystemInformations() {
        int i = 0;
        for (int i2 = 0; i2 < this.TABLE_SIZE; i2++) {
            ArrayRow[] arrayRowArr = this.mRows;
            i = i;
            if (arrayRowArr[i2] != null) {
                i += arrayRowArr[i2].sizeInBytes();
            }
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.mNumRows; i4++) {
            ArrayRow[] arrayRowArr2 = this.mRows;
            i3 = i3;
            if (arrayRowArr2[i4] != null) {
                i3 += arrayRowArr2[i4].sizeInBytes();
            }
        }
        PrintStream printStream = System.out;
        StringBuilder sb = new StringBuilder();
        sb.append("Linear System -> Table size: ");
        sb.append(this.TABLE_SIZE);
        sb.append(" (");
        int i5 = this.TABLE_SIZE;
        sb.append(getDisplaySize(i5 * i5));
        sb.append(") -- row sizes: ");
        sb.append(getDisplaySize(i));
        sb.append(", actual size: ");
        sb.append(getDisplaySize(i3));
        sb.append(" rows: ");
        sb.append(this.mNumRows);
        sb.append("/");
        sb.append(this.mMaxRows);
        sb.append(" cols: ");
        sb.append(this.mNumColumns);
        sb.append("/");
        sb.append(this.mMaxColumns);
        sb.append(" ");
        sb.append(0);
        sb.append(" occupied cells, ");
        sb.append(getDisplaySize(0));
        printStream.println(sb.toString());
    }

    public void displayVariablesReadableRows() {
        displaySolverVariables();
        String str = "";
        for (int i = 0; i < this.mNumRows; i++) {
            str = str;
            if (this.mRows[i].variable.mType == SolverVariable.Type.UNRESTRICTED) {
                str = (str + this.mRows[i].toReadableString()) + "\n";
            }
        }
        System.out.println(str + this.mGoal + "\n");
    }

    public void fillMetrics(Metrics metrics) {
        sMetrics = metrics;
    }

    public Cache getCache() {
        return this.mCache;
    }

    public Row getGoal() {
        return this.mGoal;
    }

    public int getMemoryUsed() {
        int i = 0;
        for (int i2 = 0; i2 < this.mNumRows; i2++) {
            ArrayRow[] arrayRowArr = this.mRows;
            i = i;
            if (arrayRowArr[i2] != null) {
                i += arrayRowArr[i2].sizeInBytes();
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

    public ArrayRow getRow(int i) {
        return this.mRows[i];
    }

    public float getValueFor(String str) {
        SolverVariable variable = getVariable(str, SolverVariable.Type.UNRESTRICTED);
        if (variable == null) {
            return 0.0f;
        }
        return variable.computedValue;
    }

    public SolverVariable getVariable(String str, SolverVariable.Type type) {
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
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.minimize++;
        }
        if (this.graphOptimizer) {
            Metrics metrics2 = sMetrics;
            if (metrics2 != null) {
                metrics2.graphOptimizer++;
            }
            boolean z = false;
            int i = 0;
            while (true) {
                if (i >= this.mNumRows) {
                    z = true;
                    break;
                } else if (!this.mRows[i].isSimpleDefinition) {
                    break;
                } else {
                    i++;
                }
            }
            if (!z) {
                minimizeGoal(this.mGoal);
                return;
            }
            Metrics metrics3 = sMetrics;
            if (metrics3 != null) {
                metrics3.fullySolved++;
            }
            computeValues();
            return;
        }
        minimizeGoal(this.mGoal);
    }

    public void minimizeGoal(Row row) throws Exception {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.minimizeGoal++;
            metrics.maxVariables = Math.max(metrics.maxVariables, this.mNumColumns);
            Metrics metrics2 = sMetrics;
            metrics2.maxRows = Math.max(metrics2.maxRows, this.mNumRows);
        }
        updateRowFromVariables((ArrayRow) row);
        enforceBFS(row);
        optimize(row, false);
        computeValues();
    }

    public void reset() {
        Cache cache;
        int i = 0;
        while (true) {
            cache = this.mCache;
            SolverVariable[] solverVariableArr = cache.mIndexedVariables;
            if (i >= solverVariableArr.length) {
                break;
            }
            SolverVariable solverVariable = solverVariableArr[i];
            if (solverVariable != null) {
                solverVariable.reset();
            }
            i++;
        }
        cache.solverVariablePool.releaseAll(this.mPoolVariables, this.mPoolVariablesCount);
        this.mPoolVariablesCount = 0;
        Arrays.fill(this.mCache.mIndexedVariables, (Object) null);
        HashMap<String, SolverVariable> hashMap = this.mVariables;
        if (hashMap != null) {
            hashMap.clear();
        }
        this.mVariablesID = 0;
        this.mGoal.clear();
        this.mNumColumns = 1;
        for (int i2 = 0; i2 < this.mNumRows; i2++) {
            this.mRows[i2].used = false;
        }
        releaseRows();
        this.mNumRows = 0;
    }
}
