package androidx.lifecycle;

import android.app.Application;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import java.util.Objects;
import p1727n3.p1868v.AbstractC27028u;
import p1727n3.p1868v.C27015p0;
import p1727n3.p1868v.C27018q0;
import p1727n3.p1868v.C27038y;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/ProcessLifecycleOwnerInitializer.class */
public class ProcessLifecycleOwnerInitializer extends ContentProvider {
    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        Context context = getContext();
        if (!C27038y.f75586a.getAndSet(true)) {
            ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new C27038y.C27039a());
        }
        Context context2 = getContext();
        C27015p0 c27015p0 = C27015p0.f75545i;
        Objects.requireNonNull(c27015p0);
        c27015p0.f75550e = new Handler();
        c27015p0.f75551f.m1019e(AbstractC27028u.EnumC27029a.ON_CREATE);
        ((Application) context2.getApplicationContext()).registerActivityLifecycleCallbacks(new C27018q0(c27015p0));
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
