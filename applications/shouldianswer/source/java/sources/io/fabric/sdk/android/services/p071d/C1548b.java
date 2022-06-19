package io.fabric.sdk.android.services.p071d;

import android.content.Context;
import io.fabric.sdk.android.AbstractC1459h;
import io.fabric.sdk.android.C1449c;
import java.io.File;
/* renamed from: io.fabric.sdk.android.services.d.b */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/d/b.class */
public class C1548b implements AbstractC1547a {

    /* renamed from: a */
    private final Context f4200a;

    /* renamed from: b */
    private final String f4201b;

    /* renamed from: c */
    private final String f4202c;

    public C1548b(AbstractC1459h abstractC1459h) {
        if (abstractC1459h.getContext() != null) {
            this.f4200a = abstractC1459h.getContext();
            this.f4201b = abstractC1459h.getPath();
            this.f4202c = "Android/" + this.f4200a.getPackageName();
            return;
        }
        throw new IllegalStateException("Cannot get directory before context has been set. Call Fabric.with() first");
    }

    @Override // io.fabric.sdk.android.services.p071d.AbstractC1547a
    /* renamed from: a */
    public File mo3339a() {
        return m3338a(this.f4200a.getFilesDir());
    }

    /* renamed from: a */
    File m3338a(File file) {
        if (file == null) {
            C1449c.m3572g().mo3552a("Fabric", "Null File");
            return null;
        } else if (file.exists() || file.mkdirs()) {
            return file;
        } else {
            C1449c.m3572g().mo3548d("Fabric", "Couldn't create file");
            return null;
        }
    }
}
