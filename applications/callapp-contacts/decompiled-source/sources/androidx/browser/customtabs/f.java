package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.a.a;
import android.support.a.b;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    final a f1241a;

    /* renamed from: b  reason: collision with root package name */
    final ComponentName f1242b;

    /* renamed from: c  reason: collision with root package name */
    final PendingIntent f1243c;

    /* renamed from: d  reason: collision with root package name */
    private final Object f1244d = new Object();
    private final b e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(b bVar, a aVar, ComponentName componentName, PendingIntent pendingIntent) {
        this.e = bVar;
        this.f1241a = aVar;
        this.f1242b = componentName;
        this.f1243c = pendingIntent;
    }

    public final boolean a(Uri uri) {
        Bundle bundle = new Bundle();
        PendingIntent pendingIntent = this.f1243c;
        if (pendingIntent != null) {
            bundle.putParcelable("android.support.customtabs.extra.SESSION_ID", pendingIntent);
        }
        try {
            return this.e.a(this.f1241a, uri, bundle, (List<Bundle>) null);
        } catch (RemoteException e) {
            return false;
        }
    }
}
