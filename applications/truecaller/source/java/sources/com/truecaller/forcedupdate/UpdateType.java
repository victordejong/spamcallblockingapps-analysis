package com.truecaller.forcedupdate;

import kotlin.Metadata;
import s1.z.c.f;
/* JADX WARN: Init of enum OPTIONAL can be incorrect */
/* JADX WARN: Init of enum REQUIRED can be incorrect */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0011\b\u0086\u0001\u0018�� \u00142\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\u0015B7\b\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0010\u001a\u00020\t\u0012\b\b\u0001\u0010\n\u001a\u00020\t\u0012\b\b\u0001\u0010\u000e\u001a\u00020\t¢\u0006\u0004\b\u0012\u0010\u0013R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0004\u001a\u0004\b\b\u0010\u0006R\u0019\u0010\n\u001a\u00020\t8\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0019\u0010\u000e\u001a\u00020\t8\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000b\u001a\u0004\b\u000f\u0010\rR\u0019\u0010\u0010\u001a\u00020\t8\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u000b\u001a\u0004\b\u0011\u0010\rj\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019¨\u0006\u001a"}, d2 = {"Lcom/truecaller/forcedupdate/UpdateType;", "", "", "skippable", "Z", "getSkippable", "()Z", "supportsCompactMode", "getSupportsCompactMode", "", "description", "I", "getDescription", "()I", "action", "getAction", "title", "getTitle", "<init>", "(Ljava/lang/String;IZZIII)V", "Companion", "a", "NONE", "OPTIONAL", "REQUIRED", "DISCONTINUED", "forced-update_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes9-dex2jar.jar:com/truecaller/forcedupdate/UpdateType.class */
public enum UpdateType {
    NONE(false, true, -1, -1, -1),
    OPTIONAL(false, true, r0, r0, r0),
    REQUIRED(true, false, C3986R.string.fu_required_title, C3986R.string.fu_required_description, r0),
    DISCONTINUED(true, false, C3986R.string.fu_discontinued_title, C3986R.string.fu_discontinued_description, C3986R.string.fu_uninstall);
    
    public static final C3991a Companion = new C3991a(null);
    private final int action;
    private final int description;
    private final boolean skippable;
    private final boolean supportsCompactMode;
    private final int title;

    /* renamed from: com.truecaller.forcedupdate.UpdateType$a */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/forcedupdate/UpdateType$a.class */
    public static final class C3991a {
        public C3991a(f fVar) {
        }

        /* renamed from: a */
        public final UpdateType m35319a(String str) {
            UpdateType updateType;
            if (str == null) {
                updateType = UpdateType.NONE;
            } else {
                try {
                    updateType = UpdateType.valueOf(str);
                } catch (IllegalArgumentException e) {
                    updateType = UpdateType.NONE;
                }
            }
            return updateType;
        }
    }

    static {
        int i = C3986R.string.fu_optional_title;
        int i2 = C3986R.string.fu_optional_description;
        int i3 = C3986R.string.fu_updateNow;
    }

    UpdateType(boolean z, boolean z2, int i, int i2, int i3) {
        this.supportsCompactMode = z;
        this.skippable = z2;
        this.title = i;
        this.description = i2;
        this.action = i3;
    }

    public final int getAction() {
        return this.action;
    }

    public final int getDescription() {
        return this.description;
    }

    public final boolean getSkippable() {
        return this.skippable;
    }

    public final boolean getSupportsCompactMode() {
        return this.supportsCompactMode;
    }

    public final int getTitle() {
        return this.title;
    }
}
