package androidx.constraintlayout.solver;

import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.SolverVariable;
import com.facebook.appevents.UserDataStore;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/ArrayRow.class */
public class ArrayRow implements LinearSystem.Row {
    private static final boolean DEBUG = false;
    private static final boolean FULL_NEW_CHECK = false;
    public ArrayRowVariables variables;
    SolverVariable variable = null;
    float constantValue = 0.0f;
    boolean used = false;
    ArrayList<SolverVariable> variablesToUpdate = new ArrayList<>();
    boolean isSimpleDefinition = false;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/ArrayRow$ArrayRowVariables.class */
    public interface ArrayRowVariables {
        void add(SolverVariable solverVariable, float f, boolean z);

        void clear();

        boolean contains(SolverVariable solverVariable);

        void display();

        void divideByAmount(float f);

        float get(SolverVariable solverVariable);

        int getCurrentSize();

        SolverVariable getVariable(int i);

        float getVariableValue(int i);

        int indexOf(SolverVariable solverVariable);

        void invert();

        void put(SolverVariable solverVariable, float f);

        float remove(SolverVariable solverVariable, boolean z);

        int sizeInBytes();

        float use(ArrayRow arrayRow, boolean z);
    }

    public ArrayRow() {
    }

    public ArrayRow(Cache cache) {
        this.variables = new ArrayLinkedVariables(this, cache);
    }

    private boolean isNew(SolverVariable solverVariable, LinearSystem linearSystem) {
        boolean z = true;
        if (solverVariable.usageInRowCount > 1) {
            z = false;
        }
        return z;
    }

    private SolverVariable pickPivotInVariables(boolean[] zArr, SolverVariable solverVariable) {
        int currentSize = this.variables.getCurrentSize();
        SolverVariable solverVariable2 = null;
        int i = 0;
        float f = 0.0f;
        while (true) {
            float f2 = f;
            if (i < currentSize) {
                float variableValue = this.variables.getVariableValue(i);
                SolverVariable solverVariable3 = solverVariable2;
                float f3 = f2;
                if (variableValue < 0.0f) {
                    SolverVariable variable = this.variables.getVariable(i);
                    if (zArr != null) {
                        solverVariable3 = solverVariable2;
                        f3 = f2;
                        if (zArr[variable.f34id]) {
                        }
                    }
                    solverVariable3 = solverVariable2;
                    f3 = f2;
                    if (variable != solverVariable) {
                        if (variable.mType != SolverVariable.Type.SLACK) {
                            solverVariable3 = solverVariable2;
                            f3 = f2;
                            if (variable.mType != SolverVariable.Type.ERROR) {
                            }
                        }
                        solverVariable3 = solverVariable2;
                        f3 = f2;
                        if (variableValue < f2) {
                            f3 = variableValue;
                            solverVariable3 = variable;
                        }
                    }
                }
                i++;
                solverVariable2 = solverVariable3;
                f = f3;
            } else {
                return solverVariable2;
            }
        }
    }

    public ArrayRow addError(LinearSystem linearSystem, int i) {
        this.variables.put(linearSystem.createErrorVariable(i, "ep"), 1.0f);
        this.variables.put(linearSystem.createErrorVariable(i, UserDataStore.EMAIL), -1.0f);
        return this;
    }

    @Override // androidx.constraintlayout.solver.LinearSystem.Row
    public void addError(SolverVariable solverVariable) {
        float f = 1.0f;
        if (solverVariable.strength != 1) {
            if (solverVariable.strength == 2) {
                f = 1000.0f;
            } else if (solverVariable.strength == 3) {
                f = 1000000.0f;
            } else if (solverVariable.strength == 4) {
                f = 1.0E9f;
            } else if (solverVariable.strength == 5) {
                f = 1.0E12f;
            }
        }
        this.variables.put(solverVariable, f);
    }

    public ArrayRow addSingleError(SolverVariable solverVariable, int i) {
        this.variables.put(solverVariable, i);
        return this;
    }

    public boolean chooseSubject(LinearSystem linearSystem) {
        boolean z;
        SolverVariable chooseSubjectInVariables = chooseSubjectInVariables(linearSystem);
        if (chooseSubjectInVariables == null) {
            z = true;
        } else {
            pivot(chooseSubjectInVariables);
            z = false;
        }
        if (this.variables.getCurrentSize() == 0) {
            this.isSimpleDefinition = true;
        }
        return z;
    }

    SolverVariable chooseSubjectInVariables(LinearSystem linearSystem) {
        float f;
        float f2;
        boolean z;
        SolverVariable solverVariable;
        SolverVariable solverVariable2;
        boolean z2;
        boolean isNew;
        int currentSize = this.variables.getCurrentSize();
        SolverVariable solverVariable3 = null;
        SolverVariable solverVariable4 = null;
        int i = 0;
        boolean z3 = false;
        boolean z4 = false;
        float f3 = 0.0f;
        float f4 = 0.0f;
        while (true) {
            float f5 = f4;
            if (i >= currentSize) {
                break;
            }
            float variableValue = this.variables.getVariableValue(i);
            SolverVariable variable = this.variables.getVariable(i);
            if (variable.mType == SolverVariable.Type.UNRESTRICTED) {
                if (solverVariable3 == null) {
                    z2 = isNew(variable, linearSystem);
                } else if (f3 > variableValue) {
                    z2 = isNew(variable, linearSystem);
                } else {
                    solverVariable2 = solverVariable3;
                    solverVariable = solverVariable4;
                    z2 = z3;
                    z = z4;
                    f2 = f3;
                    f = f5;
                    if (!z3) {
                        solverVariable2 = solverVariable3;
                        solverVariable = solverVariable4;
                        z2 = z3;
                        z = z4;
                        f2 = f3;
                        f = f5;
                        if (isNew(variable, linearSystem)) {
                            z2 = true;
                            solverVariable2 = variable;
                            solverVariable = solverVariable4;
                            z = z4;
                            f2 = variableValue;
                            f = f5;
                        }
                    }
                }
                solverVariable2 = variable;
                solverVariable = solverVariable4;
                z = z4;
                f2 = variableValue;
                f = f5;
            } else {
                solverVariable2 = solverVariable3;
                solverVariable = solverVariable4;
                z2 = z3;
                z = z4;
                f2 = f3;
                f = f5;
                if (solverVariable3 == null) {
                    solverVariable2 = solverVariable3;
                    solverVariable = solverVariable4;
                    z2 = z3;
                    z = z4;
                    f2 = f3;
                    f = f5;
                    if (variableValue < 0.0f) {
                        if (solverVariable4 == null) {
                            isNew = isNew(variable, linearSystem);
                        } else if (f5 > variableValue) {
                            isNew = isNew(variable, linearSystem);
                        } else {
                            solverVariable2 = solverVariable3;
                            solverVariable = solverVariable4;
                            z2 = z3;
                            z = z4;
                            f2 = f3;
                            f = f5;
                            if (!z4) {
                                solverVariable2 = solverVariable3;
                                solverVariable = solverVariable4;
                                z2 = z3;
                                z = z4;
                                f2 = f3;
                                f = f5;
                                if (isNew(variable, linearSystem)) {
                                    z = true;
                                    f = variableValue;
                                    f2 = f3;
                                    z2 = z3;
                                    solverVariable = variable;
                                    solverVariable2 = solverVariable3;
                                }
                            }
                        }
                        z = isNew;
                        solverVariable2 = solverVariable3;
                        solverVariable = variable;
                        z2 = z3;
                        f2 = f3;
                        f = variableValue;
                    }
                }
            }
            i++;
            solverVariable3 = solverVariable2;
            solverVariable4 = solverVariable;
            z3 = z2;
            z4 = z;
            f3 = f2;
            f4 = f;
        }
        return solverVariable3 != null ? solverVariable3 : solverVariable4;
    }

    @Override // androidx.constraintlayout.solver.LinearSystem.Row
    public void clear() {
        this.variables.clear();
        this.variable = null;
        this.constantValue = 0.0f;
    }

    public ArrayRow createRowCentering(SolverVariable solverVariable, SolverVariable solverVariable2, int i, float f, SolverVariable solverVariable3, SolverVariable solverVariable4, int i2) {
        if (solverVariable2 == solverVariable3) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable4, 1.0f);
            this.variables.put(solverVariable2, -2.0f);
            return this;
        }
        if (f == 0.5f) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable3, -1.0f);
            this.variables.put(solverVariable4, 1.0f);
            if (i > 0 || i2 > 0) {
                this.constantValue = (-i) + i2;
            }
        } else if (f <= 0.0f) {
            this.variables.put(solverVariable, -1.0f);
            this.variables.put(solverVariable2, 1.0f);
            this.constantValue = i;
        } else if (f >= 1.0f) {
            this.variables.put(solverVariable4, -1.0f);
            this.variables.put(solverVariable3, 1.0f);
            this.constantValue = -i2;
        } else {
            float f2 = 1.0f - f;
            this.variables.put(solverVariable, f2 * 1.0f);
            this.variables.put(solverVariable2, f2 * (-1.0f));
            this.variables.put(solverVariable3, (-1.0f) * f);
            this.variables.put(solverVariable4, 1.0f * f);
            if (i > 0 || i2 > 0) {
                this.constantValue = ((-i) * f2) + (i2 * f);
            }
        }
        return this;
    }

    public ArrayRow createRowDefinition(SolverVariable solverVariable, int i) {
        this.variable = solverVariable;
        float f = i;
        solverVariable.computedValue = f;
        this.constantValue = f;
        this.isSimpleDefinition = true;
        return this;
    }

    public ArrayRow createRowDimensionPercent(SolverVariable solverVariable, SolverVariable solverVariable2, float f) {
        this.variables.put(solverVariable, -1.0f);
        this.variables.put(solverVariable2, f);
        return this;
    }

    public ArrayRow createRowDimensionRatio(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f) {
        this.variables.put(solverVariable, -1.0f);
        this.variables.put(solverVariable2, 1.0f);
        this.variables.put(solverVariable3, f);
        this.variables.put(solverVariable4, -f);
        return this;
    }

    public ArrayRow createRowEqualDimension(float f, float f2, float f3, SolverVariable solverVariable, int i, SolverVariable solverVariable2, int i2, SolverVariable solverVariable3, int i3, SolverVariable solverVariable4, int i4) {
        if (f2 == 0.0f || f == f3) {
            this.constantValue = ((-i) - i2) + i3 + i4;
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, 1.0f);
            this.variables.put(solverVariable3, -1.0f);
        } else {
            float f4 = (f / f2) / (f3 / f2);
            this.constantValue = ((-i) - i2) + (i3 * f4) + (i4 * f4);
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, f4);
            this.variables.put(solverVariable3, -f4);
        }
        return this;
    }

    public ArrayRow createRowEqualMatchDimensions(float f, float f2, float f3, SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4) {
        this.constantValue = 0.0f;
        if (f2 == 0.0f || f == f3) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, 1.0f);
            this.variables.put(solverVariable3, -1.0f);
        } else if (f == 0.0f) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
        } else if (f3 == 0.0f) {
            this.variables.put(solverVariable3, 1.0f);
            this.variables.put(solverVariable4, -1.0f);
        } else {
            float f4 = (f / f2) / (f3 / f2);
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, f4);
            this.variables.put(solverVariable3, -f4);
        }
        return this;
    }

    public ArrayRow createRowEquals(SolverVariable solverVariable, int i) {
        if (i < 0) {
            this.constantValue = i * (-1);
            this.variables.put(solverVariable, 1.0f);
        } else {
            this.constantValue = i;
            this.variables.put(solverVariable, -1.0f);
        }
        return this;
    }

    public ArrayRow createRowEquals(SolverVariable solverVariable, SolverVariable solverVariable2, int i) {
        boolean z = false;
        if (i != 0) {
            z = false;
            int i2 = i;
            if (i < 0) {
                i2 = i * (-1);
                z = true;
            }
            this.constantValue = i2;
        }
        if (!z) {
            this.variables.put(solverVariable, -1.0f);
            this.variables.put(solverVariable2, 1.0f);
        } else {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
        }
        return this;
    }

    public ArrayRow createRowGreaterThan(SolverVariable solverVariable, int i, SolverVariable solverVariable2) {
        this.constantValue = i;
        this.variables.put(solverVariable, -1.0f);
        return this;
    }

    public ArrayRow createRowGreaterThan(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i) {
        boolean z = false;
        if (i != 0) {
            z = false;
            int i2 = i;
            if (i < 0) {
                i2 = i * (-1);
                z = true;
            }
            this.constantValue = i2;
        }
        if (!z) {
            this.variables.put(solverVariable, -1.0f);
            this.variables.put(solverVariable2, 1.0f);
            this.variables.put(solverVariable3, 1.0f);
        } else {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable3, -1.0f);
        }
        return this;
    }

    public ArrayRow createRowLowerThan(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i) {
        boolean z = false;
        if (i != 0) {
            z = false;
            int i2 = i;
            if (i < 0) {
                i2 = i * (-1);
                z = true;
            }
            this.constantValue = i2;
        }
        if (!z) {
            this.variables.put(solverVariable, -1.0f);
            this.variables.put(solverVariable2, 1.0f);
            this.variables.put(solverVariable3, -1.0f);
        } else {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable3, 1.0f);
        }
        return this;
    }

    public ArrayRow createRowWithAngle(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f) {
        this.variables.put(solverVariable3, 0.5f);
        this.variables.put(solverVariable4, 0.5f);
        this.variables.put(solverVariable, -0.5f);
        this.variables.put(solverVariable2, -0.5f);
        this.constantValue = -f;
        return this;
    }

    public void ensurePositiveConstant() {
        float f = this.constantValue;
        if (f < 0.0f) {
            this.constantValue = f * (-1.0f);
            this.variables.invert();
        }
    }

    @Override // androidx.constraintlayout.solver.LinearSystem.Row
    public SolverVariable getKey() {
        return this.variable;
    }

    @Override // androidx.constraintlayout.solver.LinearSystem.Row
    public SolverVariable getPivotCandidate(LinearSystem linearSystem, boolean[] zArr) {
        return pickPivotInVariables(zArr, null);
    }

    public boolean hasKeyVariable() {
        SolverVariable solverVariable = this.variable;
        return solverVariable != null && (solverVariable.mType == SolverVariable.Type.UNRESTRICTED || this.constantValue >= 0.0f);
    }

    public boolean hasVariable(SolverVariable solverVariable) {
        return this.variables.contains(solverVariable);
    }

    @Override // androidx.constraintlayout.solver.LinearSystem.Row
    public void initFromRow(LinearSystem.Row row) {
        if (row instanceof ArrayRow) {
            ArrayRow arrayRow = (ArrayRow) row;
            this.variable = null;
            this.variables.clear();
            for (int i = 0; i < arrayRow.variables.getCurrentSize(); i++) {
                this.variables.add(arrayRow.variables.getVariable(i), arrayRow.variables.getVariableValue(i), true);
            }
        }
    }

    @Override // androidx.constraintlayout.solver.LinearSystem.Row
    public boolean isEmpty() {
        return this.variable == null && this.constantValue == 0.0f && this.variables.getCurrentSize() == 0;
    }

    public SolverVariable pickPivot(SolverVariable solverVariable) {
        return pickPivotInVariables(null, solverVariable);
    }

    public void pivot(SolverVariable solverVariable) {
        SolverVariable solverVariable2 = this.variable;
        if (solverVariable2 != null) {
            this.variables.put(solverVariable2, -1.0f);
            this.variable.definitionId = -1;
            this.variable = null;
        }
        float remove = this.variables.remove(solverVariable, true) * (-1.0f);
        this.variable = solverVariable;
        if (remove == 1.0f) {
            return;
        }
        this.constantValue /= remove;
        this.variables.divideByAmount(remove);
    }

    public void reset() {
        this.variable = null;
        this.variables.clear();
        this.constantValue = 0.0f;
        this.isSimpleDefinition = false;
    }

    public int sizeInBytes() {
        return (this.variable != null ? 4 : 0) + 4 + 4 + this.variables.sizeInBytes();
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0153  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toReadableString() {
        /*
            Method dump skipped, instructions count: 422
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.ArrayRow.toReadableString():java.lang.String");
    }

    public String toString() {
        return toReadableString();
    }

    @Override // androidx.constraintlayout.solver.LinearSystem.Row
    public void updateFromFinalVariable(LinearSystem linearSystem, SolverVariable solverVariable, boolean z) {
        if (!solverVariable.isFinalValue) {
            return;
        }
        this.constantValue += solverVariable.computedValue * this.variables.get(solverVariable);
        this.variables.remove(solverVariable, z);
        if (z) {
            solverVariable.removeFromRow(this);
        }
        if (!LinearSystem.SIMPLIFY_SYNONYMS || solverVariable == null || this.variables.getCurrentSize() != 0) {
            return;
        }
        this.isSimpleDefinition = true;
        linearSystem.hasSimpleDefinition = true;
    }

    @Override // androidx.constraintlayout.solver.LinearSystem.Row
    public void updateFromRow(LinearSystem linearSystem, ArrayRow arrayRow, boolean z) {
        this.constantValue += arrayRow.constantValue * this.variables.use(arrayRow, z);
        if (z) {
            arrayRow.variable.removeFromRow(this);
        }
        if (!LinearSystem.SIMPLIFY_SYNONYMS || this.variable == null || this.variables.getCurrentSize() != 0) {
            return;
        }
        this.isSimpleDefinition = true;
        linearSystem.hasSimpleDefinition = true;
    }

    public void updateFromSynonymVariable(LinearSystem linearSystem, SolverVariable solverVariable, boolean z) {
        if (!solverVariable.isSynonym) {
            return;
        }
        float f = this.variables.get(solverVariable);
        this.constantValue += solverVariable.synonymDelta * f;
        this.variables.remove(solverVariable, z);
        if (z) {
            solverVariable.removeFromRow(this);
        }
        this.variables.add(linearSystem.mCache.mIndexedVariables[solverVariable.synonym], f, z);
        if (!LinearSystem.SIMPLIFY_SYNONYMS || solverVariable == null || this.variables.getCurrentSize() != 0) {
            return;
        }
        this.isSimpleDefinition = true;
        linearSystem.hasSimpleDefinition = true;
    }

    @Override // androidx.constraintlayout.solver.LinearSystem.Row
    public void updateFromSystem(LinearSystem linearSystem) {
        if (linearSystem.mRows.length == 0) {
            return;
        }
        boolean z = false;
        while (!z) {
            int currentSize = this.variables.getCurrentSize();
            for (int i = 0; i < currentSize; i++) {
                SolverVariable variable = this.variables.getVariable(i);
                if (variable.definitionId != -1 || variable.isFinalValue || variable.isSynonym) {
                    this.variablesToUpdate.add(variable);
                }
            }
            int size = this.variablesToUpdate.size();
            if (size > 0) {
                for (int i2 = 0; i2 < size; i2++) {
                    SolverVariable solverVariable = this.variablesToUpdate.get(i2);
                    if (solverVariable.isFinalValue) {
                        updateFromFinalVariable(linearSystem, solverVariable, true);
                    } else if (solverVariable.isSynonym) {
                        updateFromSynonymVariable(linearSystem, solverVariable, true);
                    } else {
                        updateFromRow(linearSystem, linearSystem.mRows[solverVariable.definitionId], true);
                    }
                }
                this.variablesToUpdate.clear();
            } else {
                z = true;
            }
        }
        if (!LinearSystem.SIMPLIFY_SYNONYMS || this.variable == null || this.variables.getCurrentSize() != 0) {
            return;
        }
        this.isSimpleDefinition = true;
        linearSystem.hasSimpleDefinition = true;
    }
}
