package androidx.constraintlayout.solver.state.helpers;

import androidx.constraintlayout.solver.state.ConstraintReference;
import androidx.constraintlayout.solver.state.State;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/state/helpers/HorizontalChainReference.class */
public class HorizontalChainReference extends ChainReference {
    private Object mEndToEnd;
    private Object mEndToStart;
    private Object mStartToEnd;
    private Object mStartToStart;

    /* renamed from: androidx.constraintlayout.solver.state.helpers.HorizontalChainReference$1 */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/state/helpers/HorizontalChainReference$1.class */
    static /* synthetic */ class C01891 {
        static final /* synthetic */ int[] $SwitchMap$androidx$constraintlayout$solver$state$State$Chain;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[State.Chain.values().length];
            $SwitchMap$androidx$constraintlayout$solver$state$State$Chain = iArr;
            try {
                iArr[State.Chain.SPREAD.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$solver$state$State$Chain[State.Chain.SPREAD_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$solver$state$State$Chain[State.Chain.PACKED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public HorizontalChainReference(State state) {
        super(state, State.Helper.HORIZONTAL_CHAIN);
    }

    @Override // androidx.constraintlayout.solver.state.HelperReference
    public void apply() {
        ConstraintReference constraintReference;
        Iterator<Object> it = this.mReferences.iterator();
        while (it.hasNext()) {
            this.mState.constraints(it.next()).clearHorizontal();
        }
        Iterator<Object> it2 = this.mReferences.iterator();
        ConstraintReference constraintReference2 = null;
        ConstraintReference constraintReference3 = null;
        while (true) {
            constraintReference = constraintReference3;
            if (!it2.hasNext()) {
                break;
            }
            ConstraintReference constraints = this.mState.constraints(it2.next());
            ConstraintReference constraintReference4 = constraintReference;
            if (constraintReference == null) {
                Object obj = this.mStartToStart;
                if (obj != null) {
                    constraints.startToStart(obj);
                } else {
                    Object obj2 = this.mStartToEnd;
                    if (obj2 != null) {
                        constraints.startToEnd(obj2);
                    } else {
                        constraints.startToStart(State.PARENT);
                    }
                }
                constraintReference4 = constraints;
            }
            if (constraintReference2 != null) {
                constraintReference2.endToStart(constraints.getKey());
                constraints.startToEnd(constraintReference2.getKey());
            }
            constraintReference2 = constraints;
            constraintReference3 = constraintReference4;
        }
        if (constraintReference2 != null) {
            Object obj3 = this.mEndToStart;
            if (obj3 != null) {
                constraintReference2.endToStart(obj3);
            } else {
                Object obj4 = this.mEndToEnd;
                if (obj4 != null) {
                    constraintReference2.endToEnd(obj4);
                } else {
                    constraintReference2.endToEnd(State.PARENT);
                }
            }
        }
        if (constraintReference != null && this.mBias != 0.5f) {
            constraintReference.horizontalBias(this.mBias);
        }
        int i = C01891.$SwitchMap$androidx$constraintlayout$solver$state$State$Chain[this.mStyle.ordinal()];
        if (i == 1) {
            constraintReference.setHorizontalChainStyle(0);
        } else if (i == 2) {
            constraintReference.setHorizontalChainStyle(1);
        } else if (i != 3) {
        } else {
            constraintReference.setHorizontalChainStyle(2);
        }
    }

    public void endToEnd(Object obj) {
        this.mEndToEnd = obj;
    }

    public void endToStart(Object obj) {
        this.mEndToStart = obj;
    }

    public void startToEnd(Object obj) {
        this.mStartToEnd = obj;
    }

    public void startToStart(Object obj) {
        this.mStartToStart = obj;
    }
}
