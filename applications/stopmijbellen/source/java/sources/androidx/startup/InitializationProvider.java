package androidx.startup;

import android.content.ComponentName;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Trace;
import com.applovin.mediation.C1564R;
import java.util.HashSet;
import java.util.Objects;
import p121i1.AbstractC3064b;
import p121i1.C3063a;
/* loaded from: classes-dex2jar.jar:androidx/startup/InitializationProvider.class */
public final class InitializationProvider extends ContentProvider {
    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        throw new IllegalStateException("Not allowed.");
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        throw new IllegalStateException("Not allowed.");
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new IllegalStateException("Not allowed.");
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.content.ContentProvider
    public boolean onCreate() {
        Context context = getContext();
        if (context != null) {
            C3063a m2661b = C3063a.m2661b(context);
            Objects.requireNonNull(m2661b);
            try {
                try {
                    Trace.beginSection("Startup");
                    Bundle bundle = m2661b.f10401c.getPackageManager().getProviderInfo(new ComponentName(m2661b.f10401c.getPackageName(), InitializationProvider.class.getName()), 128).metaData;
                    String string = m2661b.f10401c.getString(C1564R.string.androidx_startup);
                    if (bundle != null) {
                        HashSet hashSet = new HashSet();
                        for (String str : bundle.keySet()) {
                            if (string.equals(bundle.getString(str, null))) {
                                Class<?> cls = Class.forName(str);
                                if (AbstractC3064b.class.isAssignableFrom(cls)) {
                                    m2661b.f10400b.add(cls);
                                    m2661b.m2662a(cls, hashSet);
                                }
                            }
                        }
                    }
                    Trace.endSection();
                    return true;
                } catch (Throwable th) {
                    Trace.endSection();
                    throw th;
                }
            } catch (PackageManager.NameNotFoundException | ClassNotFoundException e) {
                throw new StartupException(e);
            }
        }
        throw new StartupException("Context cannot be null");
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        throw new IllegalStateException("Not allowed.");
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new IllegalStateException("Not allowed.");
    }
}
