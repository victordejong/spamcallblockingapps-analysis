package androidx.constraintlayout.solver.state;

import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/state/State.class */
public class State {

    /* renamed from: c */
    public static final Integer f2156c = 0;

    /* renamed from: a */
    protected HashMap<Object, Reference> f2157a = new HashMap<>();

    /* renamed from: b */
    public final ConstraintReference f2158b;

    /* renamed from: androidx.constraintlayout.solver.state.State$1 */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/state/State$1.class */
    static /* synthetic */ class C01621 {

        /* renamed from: a */
        static final /* synthetic */ int[] f2159a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[Helper.values().length];
            f2159a = iArr;
            try {
                iArr[Helper.HORIZONTAL_CHAIN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2159a[Helper.VERTICAL_CHAIN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2159a[Helper.ALIGN_HORIZONTALLY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2159a[Helper.ALIGN_VERTICALLY.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f2159a[Helper.BARRIER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/state/State$Chain.class */
    public enum Chain {
        SPREAD,
        SPREAD_INSIDE,
        PACKED
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/state/State$Constraint.class */
    public enum Constraint {
        LEFT_TO_LEFT,
        LEFT_TO_RIGHT,
        RIGHT_TO_LEFT,
        RIGHT_TO_RIGHT,
        START_TO_START,
        START_TO_END,
        END_TO_START,
        END_TO_END,
        TOP_TO_TOP,
        TOP_TO_BOTTOM,
        BOTTOM_TO_TOP,
        BOTTOM_TO_BOTTOM,
        BASELINE_TO_BASELINE,
        CENTER_HORIZONTALLY,
        CENTER_VERTICALLY
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/state/State$Direction.class */
    public enum Direction {
        LEFT,
        RIGHT,
        START,
        END,
        TOP,
        BOTTOM
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/state/State$Helper.class */
    public enum Helper {
        HORIZONTAL_CHAIN,
        VERTICAL_CHAIN,
        ALIGN_HORIZONTALLY,
        ALIGN_VERTICALLY,
        BARRIER,
        LAYER,
        FLOW
    }

    public State() {
        new HashMap();
        ConstraintReference constraintReference = new ConstraintReference(this);
        this.f2158b = constraintReference;
        this.f2157a.put(f2156c, constraintReference);
    }
}
