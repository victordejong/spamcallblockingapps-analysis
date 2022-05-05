package android.support.constraint.solver.widgets;

import android.support.constraint.solver.Cache;
import android.support.constraint.solver.SolverVariable;
import java.util.ArrayList;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:android/support/constraint/solver/widgets/ConstraintAnchor.class */
public class ConstraintAnchor {
    private static final boolean ALLOW_BINARY = false;
    public static final int ANY_GROUP = Integer.MAX_VALUE;
    public static final int APPLY_GROUP_RESULTS = -2;
    public static final int AUTO_CONSTRAINT_CREATOR = 2;
    public static final int SCOUT_CREATOR = 1;
    private static final int UNSET_GONE_MARGIN = -1;
    public static final int USER_CREATOR = 0;
    public static final boolean USE_CENTER_ANCHOR = false;
    final ConstraintWidget mOwner;
    SolverVariable mSolverVariable;
    ConstraintAnchor mTarget;
    final Type mType;
    public int mMargin = 0;
    int mGoneMargin = -1;
    private Strength mStrength = Strength.NONE;
    private ConnectionType mConnectionType = ConnectionType.RELAXED;
    private int mConnectionCreator = 0;
    int mGroup = Integer.MAX_VALUE;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.constraint.solver.widgets.ConstraintAnchor$1 */
    /* loaded from: classes-dex2jar.jar:android/support/constraint/solver/widgets/ConstraintAnchor$1.class */
    public static /* synthetic */ class C00601 {

        /* renamed from: $SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type */
        static final /* synthetic */ int[] f4x1d400623 = new int[Type.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0065 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006d -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0071 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:31:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0079 -> B:27:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:39:0x0058). Please submit an issue!!! */
        static {
            try {
                f4x1d400623[Type.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4x1d400623[Type.LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f4x1d400623[Type.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f4x1d400623[Type.TOP.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f4x1d400623[Type.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f4x1d400623[Type.CENTER_X.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f4x1d400623[Type.CENTER_Y.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f4x1d400623[Type.BASELINE.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/constraint/solver/widgets/ConstraintAnchor$ConnectionType.class */
    public enum ConnectionType {
        RELAXED,
        STRICT
    }

    /* loaded from: classes-dex2jar.jar:android/support/constraint/solver/widgets/ConstraintAnchor$Strength.class */
    public enum Strength {
        NONE,
        STRONG,
        WEAK
    }

    /* loaded from: classes-dex2jar.jar:android/support/constraint/solver/widgets/ConstraintAnchor$Type.class */
    public enum Type {
        NONE,
        LEFT,
        TOP,
        RIGHT,
        BOTTOM,
        BASELINE,
        CENTER,
        CENTER_X,
        CENTER_Y
    }

    public ConstraintAnchor(ConstraintWidget constraintWidget, Type type) {
        this.mOwner = constraintWidget;
        this.mType = type;
    }

    private boolean isConnectionToMe(ConstraintWidget constraintWidget, HashSet<ConstraintWidget> hashSet) {
        if (hashSet.contains(constraintWidget)) {
            return false;
        }
        hashSet.add(constraintWidget);
        if (constraintWidget == getOwner()) {
            return true;
        }
        ArrayList<ConstraintAnchor> anchors = constraintWidget.getAnchors();
        int size = anchors.size();
        for (int i = 0; i < size; i++) {
            ConstraintAnchor constraintAnchor = anchors.get(i);
            if (constraintAnchor.isSimilarDimensionConnection(this) && constraintAnchor.isConnected() && isConnectionToMe(constraintAnchor.getTarget().getOwner(), hashSet)) {
                return true;
            }
        }
        return false;
    }

    private String toString(HashSet<ConstraintAnchor> hashSet) {
        String str;
        if (!hashSet.add(this)) {
            return "<-";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.mOwner.getDebugName());
        sb.append(":");
        sb.append(this.mType.toString());
        if (this.mTarget != null) {
            str = " connected to " + this.mTarget.toString(hashSet);
        } else {
            str = "";
        }
        sb.append(str);
        return sb.toString();
    }

    public boolean connect(ConstraintAnchor constraintAnchor, int i) {
        return connect(constraintAnchor, i, -1, Strength.STRONG, 0, false);
    }

    public boolean connect(ConstraintAnchor constraintAnchor, int i, int i2) {
        return connect(constraintAnchor, i, -1, Strength.STRONG, i2, false);
    }

    public boolean connect(ConstraintAnchor constraintAnchor, int i, int i2, Strength strength, int i3, boolean z) {
        if (constraintAnchor == null) {
            this.mTarget = null;
            this.mMargin = 0;
            this.mGoneMargin = -1;
            this.mStrength = Strength.NONE;
            this.mConnectionCreator = 2;
            return true;
        } else if (!z && !isValidConnection(constraintAnchor)) {
            return false;
        } else {
            this.mTarget = constraintAnchor;
            if (i > 0) {
                this.mMargin = i;
            } else {
                this.mMargin = 0;
            }
            this.mGoneMargin = i2;
            this.mStrength = strength;
            this.mConnectionCreator = i3;
            return true;
        }
    }

    public boolean connect(ConstraintAnchor constraintAnchor, int i, Strength strength, int i2) {
        return connect(constraintAnchor, i, -1, strength, i2, false);
    }

    public int getConnectionCreator() {
        return this.mConnectionCreator;
    }

    public ConnectionType getConnectionType() {
        return this.mConnectionType;
    }

    public int getGroup() {
        return this.mGroup;
    }

    public int getMargin() {
        if (this.mOwner.getVisibility() == 8) {
            return 0;
        }
        return (this.mGoneMargin <= -1 || this.mTarget == null || this.mTarget.mOwner.getVisibility() != 8) ? this.mMargin : this.mGoneMargin;
    }

    public final ConstraintAnchor getOpposite() {
        switch (C00601.f4x1d400623[this.mType.ordinal()]) {
            case 2:
                return this.mOwner.mRight;
            case 3:
                return this.mOwner.mLeft;
            case 4:
                return this.mOwner.mBottom;
            case 5:
                return this.mOwner.mTop;
            default:
                return null;
        }
    }

    public ConstraintWidget getOwner() {
        return this.mOwner;
    }

    public int getPriorityLevel() {
        switch (C00601.f4x1d400623[this.mType.ordinal()]) {
            case 1:
                return 2;
            case 2:
                return 2;
            case 3:
                return 2;
            case 4:
                return 2;
            case 5:
                return 2;
            case 6:
                return 0;
            case 7:
                return 0;
            case 8:
                return 1;
            default:
                return 0;
        }
    }

    public int getSnapPriorityLevel() {
        switch (C00601.f4x1d400623[this.mType.ordinal()]) {
            case 1:
                return 3;
            case 2:
                return 1;
            case 3:
                return 1;
            case 4:
                return 0;
            case 5:
                return 0;
            case 6:
                return 0;
            case 7:
                return 1;
            case 8:
                return 2;
            default:
                return 0;
        }
    }

    public SolverVariable getSolverVariable() {
        return this.mSolverVariable;
    }

    public Strength getStrength() {
        return this.mStrength;
    }

    public ConstraintAnchor getTarget() {
        return this.mTarget;
    }

    public Type getType() {
        return this.mType;
    }

    public boolean isConnected() {
        return this.mTarget != null;
    }

    public boolean isConnectionAllowed(ConstraintWidget constraintWidget) {
        if (isConnectionToMe(constraintWidget, new HashSet<>())) {
            return false;
        }
        ConstraintWidget parent = getOwner().getParent();
        return parent == constraintWidget || constraintWidget.getParent() == parent;
    }

    public boolean isConnectionAllowed(ConstraintWidget constraintWidget, ConstraintAnchor constraintAnchor) {
        return isConnectionAllowed(constraintWidget);
    }

    public boolean isSideAnchor() {
        switch (C00601.f4x1d400623[this.mType.ordinal()]) {
            case 2:
            case 3:
            case 4:
            case 5:
                return true;
            default:
                return false;
        }
    }

    public boolean isSimilarDimensionConnection(ConstraintAnchor constraintAnchor) {
        Type type = constraintAnchor.getType();
        boolean z = true;
        if (type == this.mType) {
            return true;
        }
        switch (C00601.f4x1d400623[this.mType.ordinal()]) {
            case 1:
                if (type == Type.BASELINE) {
                    z = false;
                }
                return z;
            case 2:
            case 3:
            case 6:
                boolean z2 = true;
                if (type != Type.LEFT) {
                    z2 = true;
                    if (type != Type.RIGHT) {
                        z2 = type == Type.CENTER_X;
                    }
                }
                return z2;
            case 4:
            case 5:
            case 7:
            case 8:
                boolean z3 = true;
                if (type != Type.TOP) {
                    z3 = true;
                    if (type != Type.BOTTOM) {
                        z3 = true;
                        if (type != Type.CENTER_Y) {
                            z3 = type == Type.BASELINE;
                        }
                    }
                }
                return z3;
            default:
                return false;
        }
    }

    public boolean isSnapCompatibleWith(ConstraintAnchor constraintAnchor) {
        if (this.mType == Type.CENTER) {
            return false;
        }
        if (this.mType == constraintAnchor.getType()) {
            return true;
        }
        switch (C00601.f4x1d400623[this.mType.ordinal()]) {
            case 2:
                int i = C00601.f4x1d400623[constraintAnchor.getType().ordinal()];
                return i == 3 || i == 6;
            case 3:
                int i2 = C00601.f4x1d400623[constraintAnchor.getType().ordinal()];
                return i2 == 2 || i2 == 6;
            case 4:
                int i3 = C00601.f4x1d400623[constraintAnchor.getType().ordinal()];
                return i3 == 5 || i3 == 7;
            case 5:
                int i4 = C00601.f4x1d400623[constraintAnchor.getType().ordinal()];
                return i4 == 4 || i4 == 7;
            case 6:
                switch (C00601.f4x1d400623[constraintAnchor.getType().ordinal()]) {
                    case 2:
                        return true;
                    case 3:
                        return true;
                    default:
                        return false;
                }
            case 7:
                switch (C00601.f4x1d400623[constraintAnchor.getType().ordinal()]) {
                    case 4:
                        return true;
                    case 5:
                        return true;
                    default:
                        return false;
                }
            default:
                return false;
        }
    }

    public boolean isValidConnection(ConstraintAnchor constraintAnchor) {
        if (constraintAnchor == null) {
            return false;
        }
        Type type = constraintAnchor.getType();
        if (type != this.mType) {
            switch (C00601.f4x1d400623[this.mType.ordinal()]) {
                case 1:
                    boolean z = false;
                    if (type != Type.BASELINE) {
                        z = false;
                        if (type != Type.CENTER_X) {
                            z = false;
                            if (type != Type.CENTER_Y) {
                                z = true;
                            }
                        }
                    }
                    return z;
                case 2:
                case 3:
                    boolean z2 = type == Type.LEFT || type == Type.RIGHT;
                    boolean z3 = z2;
                    if (constraintAnchor.getOwner() instanceof Guideline) {
                        z3 = z2 || type == Type.CENTER_X;
                    }
                    return z3;
                case 4:
                case 5:
                    boolean z4 = type == Type.TOP || type == Type.BOTTOM;
                    boolean z5 = z4;
                    if (constraintAnchor.getOwner() instanceof Guideline) {
                        z5 = z4 || type == Type.CENTER_Y;
                    }
                    return z5;
                default:
                    return false;
            }
        } else if (this.mType == Type.CENTER) {
            return false;
        } else {
            if (this.mType == Type.BASELINE) {
                return constraintAnchor.getOwner().hasBaseline() && getOwner().hasBaseline();
            }
            return true;
        }
    }

    public boolean isVerticalAnchor() {
        int i = C00601.f4x1d400623[this.mType.ordinal()];
        if (i == 6) {
            return false;
        }
        switch (i) {
            case 1:
            case 2:
            case 3:
                return false;
            default:
                return true;
        }
    }

    public void reset() {
        this.mTarget = null;
        this.mMargin = 0;
        this.mGoneMargin = -1;
        this.mStrength = Strength.STRONG;
        this.mConnectionCreator = 0;
        this.mConnectionType = ConnectionType.RELAXED;
    }

    public void resetSolverVariable(Cache cache) {
        if (this.mSolverVariable == null) {
            this.mSolverVariable = new SolverVariable(SolverVariable.Type.UNRESTRICTED);
        } else {
            this.mSolverVariable.reset();
        }
    }

    public void setConnectionCreator(int i) {
        this.mConnectionCreator = i;
    }

    public void setConnectionType(ConnectionType connectionType) {
        this.mConnectionType = connectionType;
    }

    public void setGoneMargin(int i) {
        if (isConnected()) {
            this.mGoneMargin = i;
        }
    }

    public void setGroup(int i) {
        this.mGroup = i;
    }

    public void setMargin(int i) {
        if (isConnected()) {
            this.mMargin = i;
        }
    }

    public void setStrength(Strength strength) {
        if (isConnected()) {
            this.mStrength = strength;
        }
    }

    public String toString() {
        String str;
        HashSet<ConstraintAnchor> hashSet = new HashSet<>();
        StringBuilder sb = new StringBuilder();
        sb.append(this.mOwner.getDebugName());
        sb.append(":");
        sb.append(this.mType.toString());
        if (this.mTarget != null) {
            str = " connected to " + this.mTarget.toString(hashSet);
        } else {
            str = "";
        }
        sb.append(str);
        return sb.toString();
    }
}
