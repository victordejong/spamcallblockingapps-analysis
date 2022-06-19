package androidx.core.app;

import android.app.PendingIntent;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.p036e.C0833d;
import androidx.versionedparcelable.AbstractC2922c;
/* loaded from: classes-dex2jar.jar:androidx/core/app/RemoteActionCompat.class */
public final class RemoteActionCompat implements AbstractC2922c {

    /* renamed from: a */
    public IconCompat f3253a;

    /* renamed from: b */
    public CharSequence f3254b;

    /* renamed from: c */
    public CharSequence f3255c;

    /* renamed from: d */
    public PendingIntent f3256d;

    /* renamed from: e */
    public boolean f3257e;

    /* renamed from: f */
    public boolean f3258f;

    public RemoteActionCompat() {
    }

    public RemoteActionCompat(RemoteActionCompat remoteActionCompat) {
        C0833d.m44410a(remoteActionCompat);
        this.f3253a = remoteActionCompat.f3253a;
        this.f3254b = remoteActionCompat.f3254b;
        this.f3255c = remoteActionCompat.f3255c;
        this.f3256d = remoteActionCompat.f3256d;
        this.f3257e = remoteActionCompat.f3257e;
        this.f3258f = remoteActionCompat.f3258f;
    }

    public RemoteActionCompat(IconCompat iconCompat, CharSequence charSequence, CharSequence charSequence2, PendingIntent pendingIntent) {
        this.f3253a = (IconCompat) C0833d.m44410a(iconCompat);
        this.f3254b = (CharSequence) C0833d.m44410a(charSequence);
        this.f3255c = (CharSequence) C0833d.m44410a(charSequence2);
        this.f3256d = (PendingIntent) C0833d.m44410a(pendingIntent);
        this.f3257e = true;
        this.f3258f = true;
    }
}
