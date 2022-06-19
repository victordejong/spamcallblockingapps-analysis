package androidx.constraintlayout.solver.state.helpers;

import androidx.constraintlayout.solver.state.ConstraintReference;
import androidx.constraintlayout.solver.state.State;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/state/helpers/VerticalChainReference.class */
public class VerticalChainReference extends ChainReference {
    private Object mBottomToBottom;
    private Object mBottomToTop;
    private Object mTopToBottom;
    private Object mTopToTop;

    /* renamed from: androidx.constraintlayout.solver.state.helpers.VerticalChainReference$1 */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/state/helpers/VerticalChainReference$1.class */
    static /* synthetic */ class C01901 {
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

    public VerticalChainReference(State state) {
        super(state, State.Helper.VERTICAL_CHAIN);
    }

    @Override // androidx.constraintlayout.solver.state.HelperReference
    public void apply() {
        ConstraintReference constraintReference;
        Iterator<Object> it = this.mReferences.iterator();
        while (it.hasNext()) {
            this.mState.constraints(it.next()).clearVertical();
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
                Object obj = this.mTopToTop;
                if (obj != null) {
                    constraints.topToTop(obj);
                } else {
                    Object obj2 = this.mTopToBottom;
                    if (obj2 != null) {
                        constraints.topToBottom(obj2);
                    } else {
                        constraints.topToTop(State.PARENT);
                    }
                }
                constraintReference4 = constraints;
            }
            if (constraintReference2 != null) {
                constraintReference2.bottomToTop(constraints.getKey());
                constraints.topToBottom(constraintReference2.getKey());
            }
            constraintReference2 = constraints;
            constraintReference3 = constraintReference4;
        }
        if (constraintReference2 != null) {
            Object obj3 = this.mBottomToTop;
            if (obj3 != null) {
                constraintReference2.bottomToTop(obj3);
            } else {
                Object obj4 = this.mBottomToBottom;
                if (obj4 != null) {
                    constraintReference2.bottomToBottom(obj4);
                } else {
                    constraintReference2.bottomToBottom(State.PARENT);
                }
            }
        }
        if (constraintReference != null && this.mBias != 0.5f) {
            constraintReference.verticalBias(this.mBias);
        }
        int i = C01901.$SwitchMap$androidx$constraintlayout$solver$state$State$Chain[this.mStyle.ordinal()];
        if (i == 1) {
            constraintReference.setVerticalChainStyle(0);
        } else if (i == 2) {
            constraintReference.setVerticalChainStyle(1);
        } else if (i != 3) {
        } else {
            constraintReference.setVerticalChainStyle(2);
        }
    }

    public void bottomToBottom(Object obj) {
        this.mBottomToBottom = obj;
    }

    public void bottomToTop(Object obj) {
        this.mBottomToTop = obj;
    }

    public void topToBottom(Object obj) {
        this.mTopToBottom = obj;
    }

    public void topToTop(Object obj) {
        this.mTopToTop = obj;
    }
}
