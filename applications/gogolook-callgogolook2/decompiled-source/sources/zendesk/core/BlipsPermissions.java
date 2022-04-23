package zendesk.core;

import androidx.annotation.VisibleForTesting;
/* loaded from: classes3-dex2jar.jar:zendesk/core/BlipsPermissions.class */
public class BlipsPermissions {
    public boolean behavioural;
    public boolean pathfinder;
    public boolean required;

    /* renamed from: zendesk.core.BlipsPermissions$1 */
    /* loaded from: classes3-dex2jar.jar:zendesk/core/BlipsPermissions$1.class */
    public static /* synthetic */ class C154471 {
        public static final /* synthetic */ int[] $SwitchMap$zendesk$core$BlipsGroup = new int[BlipsGroup.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$zendesk$core$BlipsGroup[BlipsGroup.REQUIRED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$zendesk$core$BlipsGroup[BlipsGroup.BEHAVIOURAL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$zendesk$core$BlipsGroup[BlipsGroup.PATHFINDER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public BlipsPermissions() {
        this(false, false, false);
    }

    @VisibleForTesting
    public BlipsPermissions(boolean z, boolean z2, boolean z3) {
        this.required = z;
        this.behavioural = z2;
        this.pathfinder = z3;
    }

    public boolean isEnabled(BlipsGroup blipsGroup) {
        int i = C154471.$SwitchMap$zendesk$core$BlipsGroup[blipsGroup.ordinal()];
        if (i == 1) {
            return this.required;
        }
        if (i == 2) {
            return this.behavioural;
        }
        if (i != 3) {
            return false;
        }
        return this.pathfinder;
    }
}
