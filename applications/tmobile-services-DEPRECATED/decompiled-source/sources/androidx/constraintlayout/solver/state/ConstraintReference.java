package androidx.constraintlayout.solver.state;

import androidx.constraintlayout.solver.state.State;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/state/ConstraintReference.class */
public class ConstraintReference implements Reference {

    /* renamed from: androidx.constraintlayout.solver.state.ConstraintReference$1 */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/state/ConstraintReference$1.class */
    static /* synthetic */ class C01611 {

        /* renamed from: a */
        static final /* synthetic */ int[] f2151a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00b9 -> B:64:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00bd -> B:76:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00c1 -> B:72:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00c5 -> B:54:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00c9 -> B:50:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00cd -> B:60:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00d1 -> B:56:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00d5 -> B:66:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00d9 -> B:62:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00dd -> B:74:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00e1 -> B:70:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00e5 -> B:52:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00e9 -> B:48:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00ed -> B:58:0x00ac). Please submit an issue!!! */
        static {
            int[] iArr = new int[State.Constraint.values().length];
            f2151a = iArr;
            try {
                iArr[State.Constraint.LEFT_TO_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2151a[State.Constraint.LEFT_TO_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2151a[State.Constraint.RIGHT_TO_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2151a[State.Constraint.RIGHT_TO_RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f2151a[State.Constraint.START_TO_START.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f2151a[State.Constraint.START_TO_END.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f2151a[State.Constraint.END_TO_START.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f2151a[State.Constraint.END_TO_END.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f2151a[State.Constraint.TOP_TO_TOP.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f2151a[State.Constraint.TOP_TO_BOTTOM.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f2151a[State.Constraint.BOTTOM_TO_TOP.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f2151a[State.Constraint.BOTTOM_TO_BOTTOM.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f2151a[State.Constraint.BASELINE_TO_BASELINE.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f2151a[State.Constraint.CENTER_HORIZONTALLY.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f2151a[State.Constraint.CENTER_VERTICALLY.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/state/ConstraintReference$ConstraintReferenceFactory.class */
    public interface ConstraintReferenceFactory {
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/state/ConstraintReference$IncorrectConstraintException.class */
    class IncorrectConstraintException extends Exception {

        /* renamed from: f */
        private final ArrayList<String> f2152f;

        @Override // java.lang.Throwable
        public String toString() {
            return "IncorrectConstraintException: " + this.f2152f.toString();
        }
    }

    public ConstraintReference(State state) {
        Dimension.m20433a(Dimension.f2154c);
        Dimension.m20433a(Dimension.f2154c);
    }
}
