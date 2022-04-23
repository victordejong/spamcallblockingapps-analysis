package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.Cache;
import androidx.constraintlayout.solver.SolverVariable;
import java.util.ArrayList;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/ConstraintAnchor.class */
public class ConstraintAnchor {
    public static final boolean ALLOW_BINARY = false;
    public static final int AUTO_CONSTRAINT_CREATOR = 2;
    public static final int SCOUT_CREATOR = 1;
    public static final int UNSET_GONE_MARGIN = -1;
    public static final int USER_CREATOR = 0;
    public final ConstraintWidget mOwner;
    public SolverVariable mSolverVariable;
    public ConstraintAnchor mTarget;
    public final Type mType;
    public ResolutionAnchor mResolutionAnchor = new ResolutionAnchor(this);
    public int mMargin = 0;
    public int mGoneMargin = -1;
    public Strength mStrength = Strength.NONE;
    public ConnectionType mConnectionType = ConnectionType.RELAXED;
    public int mConnectionCreator = 0;

    /* renamed from: androidx.constraintlayout.solver.widgets.ConstraintAnchor$1 */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/ConstraintAnchor$1.class */
    public static /* synthetic */ class C01841 {

        /* renamed from: $SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type */
        public static final /* synthetic */ int[] f45x4c44d048 = new int[Type.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0071 -> B:40:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0075 -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0079 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007d -> B:44:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0081 -> B:38:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0085 -> B:34:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0089 -> B:30:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x008d -> B:42:0x0064). Please submit an issue!!! */
        static {
            try {
                f45x4c44d048[Type.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f45x4c44d048[Type.LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f45x4c44d048[Type.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f45x4c44d048[Type.TOP.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f45x4c44d048[Type.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f45x4c44d048[Type.BASELINE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f45x4c44d048[Type.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f45x4c44d048[Type.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f45x4c44d048[Type.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/ConstraintAnchor$ConnectionType.class */
    public enum ConnectionType {
        RELAXED,
        STRICT
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength.class */
    public enum Strength {
        NONE,
        STRONG,
        WEAK
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/ConstraintAnchor$Type.class */
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

    public int getMargin() {
        ConstraintAnchor constraintAnchor;
        if (this.mOwner.getVisibility() == 8) {
            return 0;
        }
        return (this.mGoneMargin <= -1 || (constraintAnchor = this.mTarget) == null || constraintAnchor.mOwner.getVisibility() != 8) ? this.mMargin : this.mGoneMargin;
    }

    public final ConstraintAnchor getOpposite() {
        switch (C01841.f45x4c44d048[this.mType.ordinal()]) {
            case 1:
            case 6:
            case 7:
            case 8:
            case 9:
                return null;
            case 2:
                return this.mOwner.mRight;
            case 3:
                return this.mOwner.mLeft;
            case 4:
                return this.mOwner.mBottom;
            case 5:
                return this.mOwner.mTop;
            default:
                throw new AssertionError(this.mType.name());
        }
    }

    public ConstraintWidget getOwner() {
        return this.mOwner;
    }

    public int getPriorityLevel() {
        switch (C01841.f45x4c44d048[this.mType.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                return 2;
            case 6:
                return 1;
            case 7:
            case 8:
            case 9:
                return 0;
            default:
                throw new AssertionError(this.mType.name());
        }
    }

    public ResolutionAnchor getResolutionNode() {
        return this.mResolutionAnchor;
    }

    public int getSnapPriorityLevel() {
        switch (C01841.f45x4c44d048[this.mType.ordinal()]) {
            case 1:
                return 3;
            case 2:
            case 3:
                return 1;
            case 4:
            case 5:
                return 0;
            case 6:
                return 2;
            case 7:
                return 0;
            case 8:
                return 1;
            case 9:
                return 0;
            default:
                throw new AssertionError(this.mType.name());
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
        switch (C01841.f45x4c44d048[this.mType.ordinal()]) {
            case 1:
            case 6:
            case 7:
            case 8:
            case 9:
                return false;
            case 2:
            case 3:
            case 4:
            case 5:
                return true;
            default:
                throw new AssertionError(this.mType.name());
        }
    }

    public boolean isSimilarDimensionConnection(ConstraintAnchor constraintAnchor) {
        Type type = constraintAnchor.getType();
        Type type2 = this.mType;
        boolean z = true;
        if (type == type2) {
            return true;
        }
        switch (C01841.f45x4c44d048[type2.ordinal()]) {
            case 1:
                if (type == Type.BASELINE) {
                    z = false;
                }
                return z;
            case 2:
            case 3:
            case 7:
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
            case 6:
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
            case 9:
                return false;
            default:
                throw new AssertionError(this.mType.name());
        }
    }

    public boolean isSnapCompatibleWith(ConstraintAnchor constraintAnchor) {
        Type type = this.mType;
        if (type == Type.CENTER) {
            return false;
        }
        if (type == constraintAnchor.getType()) {
            return true;
        }
        switch (C01841.f45x4c44d048[this.mType.ordinal()]) {
            case 1:
            case 6:
            case 9:
                return false;
            case 2:
                int i = C01841.f45x4c44d048[constraintAnchor.getType().ordinal()];
                return i == 3 || i == 7;
            case 3:
                int i2 = C01841.f45x4c44d048[constraintAnchor.getType().ordinal()];
                return i2 == 2 || i2 == 7;
            case 4:
                int i3 = C01841.f45x4c44d048[constraintAnchor.getType().ordinal()];
                return i3 == 5 || i3 == 8;
            case 5:
                int i4 = C01841.f45x4c44d048[constraintAnchor.getType().ordinal()];
                return i4 == 4 || i4 == 8;
            case 7:
                int i5 = C01841.f45x4c44d048[constraintAnchor.getType().ordinal()];
                return i5 == 2 || i5 == 3;
            case 8:
                int i6 = C01841.f45x4c44d048[constraintAnchor.getType().ordinal()];
                return i6 == 4 || i6 == 5;
            default:
                throw new AssertionError(this.mType.name());
        }
    }

    public boolean isValidConnection(ConstraintAnchor constraintAnchor) {
        if (constraintAnchor == null) {
            return false;
        }
        Type type = constraintAnchor.getType();
        Type type2 = this.mType;
        if (type != type2) {
            switch (C01841.f45x4c44d048[type2.ordinal()]) {
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
                case 6:
                case 7:
                case 8:
                case 9:
                    return false;
                default:
                    throw new AssertionError(this.mType.name());
            }
        } else if (type2 == Type.BASELINE) {
            return constraintAnchor.getOwner().hasBaseline() && getOwner().hasBaseline();
        } else {
            return true;
        }
    }

    public boolean isVerticalAnchor() {
        switch (C01841.f45x4c44d048[this.mType.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 7:
                return false;
            case 4:
            case 5:
            case 6:
            case 8:
            case 9:
                return true;
            default:
                throw new AssertionError(this.mType.name());
        }
    }

    public void reset() {
        this.mTarget = null;
        this.mMargin = 0;
        this.mGoneMargin = -1;
        this.mStrength = Strength.STRONG;
        this.mConnectionCreator = 0;
        this.mConnectionType = ConnectionType.RELAXED;
        this.mResolutionAnchor.reset();
    }

    public void resetSolverVariable(Cache cache) {
        SolverVariable solverVariable = this.mSolverVariable;
        if (solverVariable == null) {
            this.mSolverVariable = new SolverVariable(SolverVariable.Type.UNRESTRICTED, (String) null);
        } else {
            solverVariable.reset();
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
        return this.mOwner.getDebugName() + ":" + this.mType.toString();
    }
}
