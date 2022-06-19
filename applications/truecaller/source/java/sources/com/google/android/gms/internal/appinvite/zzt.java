package com.google.android.gms.internal.appinvite;

import android.os.Bundle;
import e.m.d.l.a;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/appinvite/zzt.class */
public final class zzt extends a {
    private final Bundle zzt;

    public zzt(Bundle bundle) {
        this.zzt = bundle;
    }

    public final String getInvitationId() {
        return this.zzt.getString("com.google.firebase.appinvite.fdl.extension.InvitationId", null);
    }
}
