package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.p006a.AbstractC0006a;
import android.support.p006a.AbstractC0014b;
import java.util.List;
/* renamed from: androidx.browser.customtabs.f */
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/f.class */
public final class C0462f {

    /* renamed from: a */
    final AbstractC0006a f1809a;

    /* renamed from: b */
    final ComponentName f1810b;

    /* renamed from: c */
    final PendingIntent f1811c;

    /* renamed from: d */
    private final Object f1812d = new Object();

    /* renamed from: e */
    private final AbstractC0014b f1813e;

    public C0462f(AbstractC0014b abstractC0014b, AbstractC0006a abstractC0006a, ComponentName componentName, PendingIntent pendingIntent) {
        this.f1813e = abstractC0014b;
        this.f1809a = abstractC0006a;
        this.f1810b = componentName;
        this.f1811c = pendingIntent;
    }

    /* renamed from: a */
    public final boolean m45464a(Uri uri) {
        Bundle bundle = new Bundle();
        PendingIntent pendingIntent = this.f1811c;
        if (pendingIntent != null) {
            bundle.putParcelable("android.support.customtabs.extra.SESSION_ID", pendingIntent);
        }
        try {
            return this.f1813e.mo45486a(this.f1809a, uri, bundle, (List<Bundle>) null);
        } catch (RemoteException e) {
            return false;
        }
    }
}
