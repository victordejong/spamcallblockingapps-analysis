package com.google.android.gms.common.api;

import android.text.TextUtils;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.C5984a;
import com.google.android.gms.common.api.internal.C6012b;
import com.google.android.gms.common.internal.C6155o;
import java.util.ArrayList;
import p020b.p036e.C1489a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/AvailabilityException.class */
public class AvailabilityException extends Exception {
    private final C1489a<C6012b<?>, ConnectionResult> zaa;

    public AvailabilityException(@RecentlyNonNull C1489a<C6012b<?>, ConnectionResult> c1489a) {
        this.zaa = c1489a;
    }

    public ConnectionResult getConnectionResult(@RecentlyNonNull AbstractC5996c<? extends C5984a.AbstractC5988d> abstractC5996c) {
        C6012b<? extends C5984a.AbstractC5988d> mo17455c = abstractC5996c.mo17455c();
        boolean z = this.zaa.get(mo17455c) != null;
        String m17435b = mo17455c.m17435b();
        StringBuilder sb = new StringBuilder(String.valueOf(m17435b).length() + 58);
        sb.append("The given API (");
        sb.append(m17435b);
        sb.append(") was not part of the availability request.");
        C6155o.m17026b(z, sb.toString());
        return (ConnectionResult) C6155o.m17018j(this.zaa.get(mo17455c));
    }

    public ConnectionResult getConnectionResult(@RecentlyNonNull AbstractC6002e<? extends C5984a.AbstractC5988d> abstractC6002e) {
        C6012b<? extends C5984a.AbstractC5988d> mo17455c = abstractC6002e.mo17455c();
        boolean z = this.zaa.get(mo17455c) != null;
        String m17435b = mo17455c.m17435b();
        StringBuilder sb = new StringBuilder(String.valueOf(m17435b).length() + 58);
        sb.append("The given API (");
        sb.append(m17435b);
        sb.append(") was not part of the availability request.");
        C6155o.m17026b(z, sb.toString());
        return (ConnectionResult) C6155o.m17018j(this.zaa.get(mo17455c));
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        ArrayList arrayList = new ArrayList();
        boolean z = true;
        for (C6012b<?> c6012b : this.zaa.keySet()) {
            ConnectionResult connectionResult = (ConnectionResult) C6155o.m17018j(this.zaa.get(c6012b));
            z &= !connectionResult.m17502o0();
            String m17435b = c6012b.m17435b();
            String valueOf = String.valueOf(connectionResult);
            StringBuilder sb = new StringBuilder(String.valueOf(m17435b).length() + 2 + valueOf.length());
            sb.append(m17435b);
            sb.append(": ");
            sb.append(valueOf);
            arrayList.add(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder();
        if (z) {
            sb2.append("None of the queried APIs are available. ");
        } else {
            sb2.append("Some of the queried APIs are unavailable. ");
        }
        sb2.append(TextUtils.join("; ", arrayList));
        return sb2.toString();
    }
}
