package io.fabric.sdk.android.services.p069c;

import android.content.Context;
import io.fabric.sdk.android.services.p068b.C1480i;
import io.fabric.sdk.android.services.p068b.C1498r;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: io.fabric.sdk.android.services.c.h */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/c/h.class */
public class C1515h implements AbstractC1510c {

    /* renamed from: a */
    private final Context f4141a;

    /* renamed from: b */
    private final File f4142b;

    /* renamed from: c */
    private final String f4143c;

    /* renamed from: d */
    private final File f4144d;

    /* renamed from: e */
    private C1498r f4145e;

    /* renamed from: f */
    private File f4146f;

    public C1515h(Context context, File file, String str, String str2) {
        this.f4141a = context;
        this.f4142b = file;
        this.f4143c = str2;
        this.f4144d = new File(this.f4142b, str);
        this.f4145e = new C1498r(this.f4144d);
        m3383e();
    }

    /* renamed from: a */
    private void m3390a(File file, File file2) {
        Throwable th;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        OutputStream outputStream = null;
        try {
            fileInputStream2 = new FileInputStream(file);
            outputStream = null;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
        try {
            OutputStream mo3391a = mo3391a(file2);
            outputStream = mo3391a;
            C1480i.m3493a(fileInputStream2, mo3391a, new byte[1024]);
            C1480i.m3497a((Closeable) fileInputStream2, "Failed to close file input stream");
            C1480i.m3497a((Closeable) mo3391a, "Failed to close output stream");
            file.delete();
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = fileInputStream2;
            C1480i.m3497a((Closeable) fileInputStream, "Failed to close file input stream");
            C1480i.m3497a((Closeable) outputStream, "Failed to close output stream");
            file.delete();
            throw th;
        }
    }

    /* renamed from: e */
    private void m3383e() {
        this.f4146f = new File(this.f4142b, this.f4143c);
        if (!this.f4146f.exists()) {
            this.f4146f.mkdirs();
        }
    }

    @Override // io.fabric.sdk.android.services.p069c.AbstractC1510c
    /* renamed from: a */
    public int mo3394a() {
        return this.f4145e.m3427a();
    }

    /* renamed from: a */
    public OutputStream mo3391a(File file) {
        return new FileOutputStream(file);
    }

    @Override // io.fabric.sdk.android.services.p069c.AbstractC1510c
    /* renamed from: a */
    public List<File> mo3393a(int i) {
        ArrayList arrayList = new ArrayList();
        for (File file : this.f4146f.listFiles()) {
            arrayList.add(file);
            if (arrayList.size() >= i) {
                break;
            }
        }
        return arrayList;
    }

    @Override // io.fabric.sdk.android.services.p069c.AbstractC1510c
    /* renamed from: a */
    public void mo3389a(String str) {
        this.f4145e.close();
        m3390a(this.f4144d, new File(this.f4146f, str));
        this.f4145e = new C1498r(this.f4144d);
    }

    @Override // io.fabric.sdk.android.services.p069c.AbstractC1510c
    /* renamed from: a */
    public void mo3388a(List<File> list) {
        for (File file : list) {
            C1480i.m3503a(this.f4141a, String.format("deleting sent analytics file %s", file.getName()));
            file.delete();
        }
    }

    @Override // io.fabric.sdk.android.services.p069c.AbstractC1510c
    /* renamed from: a */
    public void mo3387a(byte[] bArr) {
        this.f4145e.m3416a(bArr);
    }

    @Override // io.fabric.sdk.android.services.p069c.AbstractC1510c
    /* renamed from: a */
    public boolean mo3392a(int i, int i2) {
        return this.f4145e.m3425a(i, i2);
    }

    @Override // io.fabric.sdk.android.services.p069c.AbstractC1510c
    /* renamed from: b */
    public boolean mo3386b() {
        return this.f4145e.m3412b();
    }

    @Override // io.fabric.sdk.android.services.p069c.AbstractC1510c
    /* renamed from: c */
    public List<File> mo3385c() {
        return Arrays.asList(this.f4146f.listFiles());
    }

    @Override // io.fabric.sdk.android.services.p069c.AbstractC1510c
    /* renamed from: d */
    public void mo3384d() {
        try {
            this.f4145e.close();
        } catch (IOException e) {
        }
        this.f4144d.delete();
    }
}
