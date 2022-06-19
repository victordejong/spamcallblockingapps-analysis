package androidx.constraintlayout.solver.state.helpers;

import androidx.constraintlayout.solver.state.HelperReference;
import androidx.constraintlayout.solver.state.State;
import androidx.constraintlayout.solver.widgets.Barrier;
import androidx.constraintlayout.solver.widgets.HelperWidget;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/state/helpers/BarrierReference.class */
public class BarrierReference extends HelperReference {
    private Barrier mBarrierWidget;
    private State.Direction mDirection;
    private int mMargin;

    /* renamed from: androidx.constraintlayout.solver.state.helpers.BarrierReference$1 */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/state/helpers/BarrierReference$1.class */
    static /* synthetic */ class C01881 {

        /* renamed from: $SwitchMap$androidx$constraintlayout$solver$state$State$Direction */
        static final /* synthetic */ int[] f36xf452c4aa;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[State.Direction.values().length];
            f36xf452c4aa = iArr;
            try {
                iArr[State.Direction.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f36xf452c4aa[State.Direction.START.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f36xf452c4aa[State.Direction.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f36xf452c4aa[State.Direction.END.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f36xf452c4aa[State.Direction.TOP.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f36xf452c4aa[State.Direction.BOTTOM.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    public BarrierReference(State state) {
        super(state, State.Helper.BARRIER);
    }

    @Override // androidx.constraintlayout.solver.state.HelperReference
    public void apply() {
        getHelperWidget();
        int i = 0;
        switch (C01881.f36xf452c4aa[this.mDirection.ordinal()]) {
            case 1:
            case 2:
                break;
            case 3:
            case 4:
                i = 1;
                break;
            case 5:
                i = 2;
                break;
            case 6:
                i = 3;
                break;
            default:
                i = 0;
                break;
        }
        this.mBarrierWidget.setBarrierType(i);
        this.mBarrierWidget.setMargin(this.mMargin);
    }

    @Override // androidx.constraintlayout.solver.state.HelperReference
    public HelperWidget getHelperWidget() {
        if (this.mBarrierWidget == null) {
            this.mBarrierWidget = new Barrier();
        }
        return this.mBarrierWidget;
    }

    public void margin(int i) {
        this.mMargin = i;
    }

    public void margin(Object obj) {
        margin(this.mState.convertDimension(obj));
    }

    public void setBarrierDirection(State.Direction direction) {
        this.mDirection = direction;
    }
}
