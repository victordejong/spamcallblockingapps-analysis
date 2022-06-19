package androidx.constraintlayout.solver;

import androidx.constraintlayout.solver.ArrayRow;
import java.util.Arrays;
import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/PriorityGoalRow.class */
public class PriorityGoalRow extends ArrayRow {
    private static final boolean DEBUG = false;
    static final int NOT_FOUND = -1;
    private static final float epsilon = 1.0E-4f;
    Cache mCache;
    private int TABLE_SIZE = 128;
    private SolverVariable[] arrayGoals = new SolverVariable[128];
    private SolverVariable[] sortArray = new SolverVariable[128];
    private int numGoals = 0;
    GoalVariableAccessor accessor = new GoalVariableAccessor(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor.class */
    public class GoalVariableAccessor implements Comparable {
        PriorityGoalRow row;
        SolverVariable variable;

        public GoalVariableAccessor(PriorityGoalRow priorityGoalRow) {
            PriorityGoalRow.this = r4;
            this.row = priorityGoalRow;
        }

        public void add(SolverVariable solverVariable) {
            for (int i = 0; i < 9; i++) {
                float[] fArr = this.variable.goalStrengthVector;
                fArr[i] = fArr[i] + solverVariable.goalStrengthVector[i];
                if (Math.abs(this.variable.goalStrengthVector[i]) < 1.0E-4f) {
                    this.variable.goalStrengthVector[i] = 0.0f;
                }
            }
        }

        public boolean addToGoal(SolverVariable solverVariable, float f) {
            boolean z = true;
            if (!this.variable.inGoal) {
                for (int i = 0; i < 9; i++) {
                    float f2 = solverVariable.goalStrengthVector[i];
                    if (f2 != 0.0f) {
                        float f3 = f2 * f;
                        float f4 = f3;
                        if (Math.abs(f3) < 1.0E-4f) {
                            f4 = 0.0f;
                        }
                        this.variable.goalStrengthVector[i] = f4;
                    } else {
                        this.variable.goalStrengthVector[i] = 0.0f;
                    }
                }
                return true;
            }
            for (int i2 = 0; i2 < 9; i2++) {
                float[] fArr = this.variable.goalStrengthVector;
                fArr[i2] = fArr[i2] + (solverVariable.goalStrengthVector[i2] * f);
                if (Math.abs(this.variable.goalStrengthVector[i2]) < 1.0E-4f) {
                    this.variable.goalStrengthVector[i2] = 0.0f;
                } else {
                    z = false;
                }
            }
            if (!z) {
                return false;
            }
            PriorityGoalRow.this.removeGoal(this.variable);
            return false;
        }

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            return this.variable.f34id - ((SolverVariable) obj).f34id;
        }

        public void init(SolverVariable solverVariable) {
            this.variable = solverVariable;
        }

        public final boolean isNegative() {
            for (int i = 8; i >= 0; i--) {
                float f = this.variable.goalStrengthVector[i];
                if (f > 0.0f) {
                    return false;
                }
                if (f < 0.0f) {
                    return true;
                }
            }
            return false;
        }

        public final boolean isNull() {
            for (int i = 0; i < 9; i++) {
                if (this.variable.goalStrengthVector[i] != 0.0f) {
                    return false;
                }
            }
            return true;
        }

        public final boolean isSmallerThan(SolverVariable solverVariable) {
            for (int i = 8; i >= 0; i--) {
                float f = solverVariable.goalStrengthVector[i];
                float f2 = this.variable.goalStrengthVector[i];
                if (f2 != f) {
                    return f2 < f;
                }
            }
            return false;
        }

        public void reset() {
            Arrays.fill(this.variable.goalStrengthVector, 0.0f);
        }

        public String toString() {
            String str = "[ ";
            String str2 = str;
            if (this.variable != null) {
                int i = 0;
                while (true) {
                    str2 = str;
                    if (i >= 9) {
                        break;
                    }
                    str = str + this.variable.goalStrengthVector[i] + " ";
                    i++;
                }
            }
            return str2 + "] " + this.variable;
        }
    }

    public PriorityGoalRow(Cache cache) {
        super(cache);
        this.mCache = cache;
    }

    private final void addToGoal(SolverVariable solverVariable) {
        int i;
        int i2 = this.numGoals;
        SolverVariable[] solverVariableArr = this.arrayGoals;
        if (i2 + 1 > solverVariableArr.length) {
            SolverVariable[] solverVariableArr2 = (SolverVariable[]) Arrays.copyOf(solverVariableArr, solverVariableArr.length * 2);
            this.arrayGoals = solverVariableArr2;
            this.sortArray = (SolverVariable[]) Arrays.copyOf(solverVariableArr2, solverVariableArr2.length * 2);
        }
        SolverVariable[] solverVariableArr3 = this.arrayGoals;
        int i3 = this.numGoals;
        solverVariableArr3[i3] = solverVariable;
        int i4 = i3 + 1;
        this.numGoals = i4;
        if (i4 > 1 && solverVariableArr3[i4 - 1].f34id > solverVariable.f34id) {
            int i5 = 0;
            while (true) {
                i = this.numGoals;
                if (i5 >= i) {
                    break;
                }
                this.sortArray[i5] = this.arrayGoals[i5];
                i5++;
            }
            Arrays.sort(this.sortArray, 0, i, new Comparator<SolverVariable>() { // from class: androidx.constraintlayout.solver.PriorityGoalRow.1
                public int compare(SolverVariable solverVariable2, SolverVariable solverVariable3) {
                    return solverVariable2.f34id - solverVariable3.f34id;
                }
            });
            for (int i6 = 0; i6 < this.numGoals; i6++) {
                this.arrayGoals[i6] = this.sortArray[i6];
            }
        }
        solverVariable.inGoal = true;
        solverVariable.addToRow(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0037, code lost:
        r5.numGoals = r0 - 1;
        r6.inGoal = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0043, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0014, code lost:
        r0 = r5.numGoals;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001d, code lost:
        if (r7 >= (r0 - 1)) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0020, code lost:
        r0 = r5.arrayGoals;
        r0 = r7 + 1;
        r0[r7] = r0[r0];
        r7 = r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void removeGoal(androidx.constraintlayout.solver.SolverVariable r6) {
        /*
            r5 = this;
            r0 = 0
            r7 = r0
        L2:
            r0 = r7
            r1 = r5
            int r1 = r1.numGoals
            if (r0 >= r1) goto L4a
            r0 = r5
            androidx.constraintlayout.solver.SolverVariable[] r0 = r0.arrayGoals
            r1 = r7
            r0 = r0[r1]
            r1 = r6
            if (r0 != r1) goto L44
        L14:
            r0 = r5
            int r0 = r0.numGoals
            r8 = r0
            r0 = r7
            r1 = r8
            r2 = 1
            int r1 = r1 - r2
            if (r0 >= r1) goto L37
            r0 = r5
            androidx.constraintlayout.solver.SolverVariable[] r0 = r0.arrayGoals
            r9 = r0
            r0 = r7
            r1 = 1
            int r0 = r0 + r1
            r8 = r0
            r0 = r9
            r1 = r7
            r2 = r9
            r3 = r8
            r2 = r2[r3]
            r0[r1] = r2
            r0 = r8
            r7 = r0
            goto L14
        L37:
            r0 = r5
            r1 = r8
            r2 = 1
            int r1 = r1 - r2
            r0.numGoals = r1
            r0 = r6
            r1 = 0
            r0.inGoal = r1
            return
        L44:
            int r7 = r7 + 1
            goto L2
        L4a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.PriorityGoalRow.removeGoal(androidx.constraintlayout.solver.SolverVariable):void");
    }

    @Override // androidx.constraintlayout.solver.ArrayRow, androidx.constraintlayout.solver.LinearSystem.Row
    public void addError(SolverVariable solverVariable) {
        this.accessor.init(solverVariable);
        this.accessor.reset();
        solverVariable.goalStrengthVector[solverVariable.strength] = 1.0f;
        addToGoal(solverVariable);
    }

    @Override // androidx.constraintlayout.solver.ArrayRow, androidx.constraintlayout.solver.LinearSystem.Row
    public void clear() {
        this.numGoals = 0;
        this.constantValue = 0.0f;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow, androidx.constraintlayout.solver.LinearSystem.Row
    public SolverVariable getPivotCandidate(LinearSystem linearSystem, boolean[] zArr) {
        int i;
        int i2;
        int i3 = 0;
        int i4 = -1;
        while (true) {
            i = i4;
            if (i3 >= this.numGoals) {
                break;
            }
            SolverVariable solverVariable = this.arrayGoals[i3];
            if (zArr[solverVariable.f34id]) {
                i2 = i;
            } else {
                this.accessor.init(solverVariable);
                if (i == -1) {
                    i2 = i;
                    if (!this.accessor.isNegative()) {
                    }
                    i2 = i3;
                } else {
                    i2 = i;
                    if (!this.accessor.isSmallerThan(this.arrayGoals[i])) {
                    }
                    i2 = i3;
                }
            }
            i3++;
            i4 = i2;
        }
        if (i == -1) {
            return null;
        }
        return this.arrayGoals[i];
    }

    @Override // androidx.constraintlayout.solver.ArrayRow, androidx.constraintlayout.solver.LinearSystem.Row
    public boolean isEmpty() {
        return this.numGoals == 0;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow
    public String toString() {
        String str = " goal -> (" + this.constantValue + ") : ";
        for (int i = 0; i < this.numGoals; i++) {
            this.accessor.init(this.arrayGoals[i]);
            str = str + this.accessor + " ";
        }
        return str;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow, androidx.constraintlayout.solver.LinearSystem.Row
    public void updateFromRow(LinearSystem linearSystem, ArrayRow arrayRow, boolean z) {
        SolverVariable solverVariable = arrayRow.variable;
        if (solverVariable == null) {
            return;
        }
        ArrayRow.ArrayRowVariables arrayRowVariables = arrayRow.variables;
        int currentSize = arrayRowVariables.getCurrentSize();
        for (int i = 0; i < currentSize; i++) {
            SolverVariable variable = arrayRowVariables.getVariable(i);
            float variableValue = arrayRowVariables.getVariableValue(i);
            this.accessor.init(variable);
            if (this.accessor.addToGoal(solverVariable, variableValue)) {
                addToGoal(variable);
            }
            this.constantValue += arrayRow.constantValue * variableValue;
        }
        removeGoal(solverVariable);
    }
}
