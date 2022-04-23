package androidx.constraintlayout.solver;

import androidx.constraintlayout.solver.Pools;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/Cache.class */
public class Cache {
    public Pools.Pool<ArrayRow> arrayRowPool = new Pools.SimplePool(256);
    public Pools.Pool<SolverVariable> solverVariablePool = new Pools.SimplePool(256);
    public SolverVariable[] mIndexedVariables = new SolverVariable[32];
}
