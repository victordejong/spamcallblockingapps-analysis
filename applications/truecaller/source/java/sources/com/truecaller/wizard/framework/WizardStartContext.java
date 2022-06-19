package com.truecaller.wizard.framework;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u0016\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017¨\u0006\u0018"}, d2 = {"Lcom/truecaller/wizard/framework/WizardStartContext;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "EDIT_PROFILE", "PREMIUM_VIEW", "CALLER_ID_SETTING", "MAIN_SETTINGS", "NUDGE_NOTIFICATION", "INIT", "INIT_RESUME", "REGISTER", "BLOCKING", "CHANGE_PHONE", "LOGOUT", "GLOBAL_SEARCH", "NOTIFICATION", "NOTIFICATIONS_VIEW", "AC_PROMOTION", "wizard-tc_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes16-dex2jar.jar:com/truecaller/wizard/framework/WizardStartContext.class */
public enum WizardStartContext {
    EDIT_PROFILE("EDIT_PROFILE"),
    PREMIUM_VIEW("PREMIUM_VIEW"),
    CALLER_ID_SETTING("CALLER_ID_SETTING"),
    MAIN_SETTINGS("MAIN_SETTINGS"),
    NUDGE_NOTIFICATION("NUDGE_NOTIFICATION"),
    INIT("INIT"),
    INIT_RESUME("INIT_RESUME"),
    REGISTER("REGISTER"),
    BLOCKING("BLOCKING"),
    CHANGE_PHONE("CHANGE_PHONE"),
    LOGOUT("LOGOUT"),
    GLOBAL_SEARCH("GLOBAL_SEARCH"),
    NOTIFICATION("NOTIFICATION"),
    NOTIFICATIONS_VIEW("NOTIFICATIONS_VIEW"),
    AC_PROMOTION("AC_PROMOTION");
    
    private final String value;

    WizardStartContext(String str) {
        this.value = str;
    }

    public final String getValue() {
        return this.value;
    }
}
