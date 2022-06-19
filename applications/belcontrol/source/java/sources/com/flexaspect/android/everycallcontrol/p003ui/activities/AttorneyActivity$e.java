package com.flexaspect.android.everycallcontrol.p003ui.activities;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.activities.AttorneyActivity$e */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e.class */
public enum AttorneyActivity$e {
    CLOSE("close");
    

    /* renamed from: a */
    public String f2725a;

    AttorneyActivity$e(String str) {
        this.f2725a = str;
    }

    /* renamed from: a */
    public static AttorneyActivity$e m4841a(String str) {
        AttorneyActivity$e[] values;
        for (AttorneyActivity$e attorneyActivity$e : values()) {
            if (attorneyActivity$e.f2725a.equalsIgnoreCase(str)) {
                return attorneyActivity$e;
            }
        }
        return null;
    }
}
