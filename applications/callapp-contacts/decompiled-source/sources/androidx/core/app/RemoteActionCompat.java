package androidx.core.app;

import android.app.PendingIntent;
import androidx.core.e.d;
import androidx.core.graphics.drawable.IconCompat;
import androidx.versionedparcelable.c;
/* loaded from: classes-dex2jar.jar:androidx/core/app/RemoteActionCompat.class */
public final class RemoteActionCompat implements c {

    /* renamed from: a  reason: collision with root package name */
    public IconCompat f1693a;

    /* renamed from: b  reason: collision with root package name */
    public CharSequence f1694b;

    /* renamed from: c  reason: collision with root package name */
    public CharSequence f1695c;

    /* renamed from: d  reason: collision with root package name */
    public PendingIntent f1696d;
    public boolean e;
    public boolean f;

    public RemoteActionCompat() {
    }

    public RemoteActionCompat(RemoteActionCompat remoteActionCompat) {
        d.a(remoteActionCompat);
        this.f1693a = remoteActionCompat.f1693a;
        this.f1694b = remoteActionCompat.f1694b;
        this.f1695c = remoteActionCompat.f1695c;
        this.f1696d = remoteActionCompat.f1696d;
        this.e = remoteActionCompat.e;
        this.f = remoteActionCompat.f;
    }

    public RemoteActionCompat(IconCompat iconCompat, CharSequence charSequence, CharSequence charSequence2, PendingIntent pendingIntent) {
        this.f1693a = (IconCompat) d.a(iconCompat);
        this.f1694b = (CharSequence) d.a(charSequence);
        this.f1695c = (CharSequence) d.a(charSequence2);
        this.f1696d = (PendingIntent) d.a(pendingIntent);
        this.e = true;
        this.f = true;
    }
}
