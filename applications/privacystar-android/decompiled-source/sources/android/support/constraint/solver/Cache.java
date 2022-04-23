package android.support.constraint.solver;

import android.support.constraint.solver.Pools;
/* loaded from: classes-dex2jar.jar:android/support/constraint/solver/Cache.class */
public class Cache {
    Pools.Pool<ArrayRow> arrayRowPool = new Pools.SimplePool(256);
    Pools.Pool<SolverVariable> solverVariablePool = new Pools.SimplePool(256);
    SolverVariable[] mIndexedVariables = new SolverVariable[32];
}
