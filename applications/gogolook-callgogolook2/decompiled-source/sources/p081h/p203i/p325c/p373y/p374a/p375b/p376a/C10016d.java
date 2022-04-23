package p081h.p203i.p325c.p373y.p374a.p375b.p376a;

import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import p081h.p203i.p204a.p224e.p235d.p240n.C6999k;
import p081h.p203i.p204a.p224e.p259j.p271l.C8075e2;
import p081h.p203i.p204a.p224e.p259j.p271l.C8125g7;
import p081h.p203i.p204a.p224e.p259j.p271l.C8246m6;
import p081h.p203i.p204a.p224e.p259j.p271l.C8269o1;
import p081h.p203i.p204a.p224e.p259j.p271l.C8386u6;
import p081h.p203i.p204a.p224e.p259j.p271l.EnumC8223l4;
import p081h.p203i.p325c.p373y.p374a.C10009a;
import p081h.p203i.p325c.p373y.p374a.p377c.C10051e;
/* renamed from: h.i.c.y.a.b.a.d */
/* loaded from: classes2-dex2jar.jar:h/i/c/y/a/b/a/d.class */
public final class C10016d {

    /* renamed from: i */
    public static final C6999k f22651i = new C6999k("RemoteModelFileManager", "");

    /* renamed from: a */
    public final C8386u6 f22652a;

    /* renamed from: b */
    public final String f22653b;

    /* renamed from: c */
    public final C10051e f22654c;

    /* renamed from: d */
    public final EnumC10040w f22655d;

    /* renamed from: e */
    public final C10029l f22656e;

    /* renamed from: f */
    public final AbstractC10039v f22657f;

    /* renamed from: g */
    public final C8125g7 f22658g;

    /* renamed from: h */
    public final C10038u f22659h;

    public C10016d(@NonNull C8386u6 u6Var, @NonNull C10051e eVar, @NonNull AbstractC10041x xVar, @NonNull EnumC10040w wVar, @NonNull C10038u uVar) {
        this.f22652a = u6Var;
        this.f22654c = eVar;
        this.f22653b = wVar == EnumC10040w.TRANSLATE ? eVar.m13523c() : eVar.m13522d();
        this.f22655d = wVar;
        this.f22656e = new C10029l(xVar);
        this.f22658g = C8125g7.m18518a(u6Var);
        this.f22659h = uVar;
        int i = C10022g.f22677a[wVar.ordinal()];
        if (i == 1) {
            this.f22657f = new C10012b(u6Var, this.f22653b);
        } else if (i == 2) {
            this.f22657f = new C10026i(u6Var, this.f22653b);
        } else if (i == 3 || i == 4) {
            this.f22657f = new C10020f(u6Var, this.f22653b);
        } else {
            throw new IllegalArgumentException("Unexpected model type");
        }
    }

    @Nullable
    @WorkerThread
    /* renamed from: a */
    public final File m13621a(@NonNull ParcelFileDescriptor parcelFileDescriptor, @NonNull String str, @NonNull C10023g0 g0Var) throws C10009a {
        C10009a aVar;
        File a;
        synchronized (this) {
            EnumC10040w a2 = this.f22658g.m18512a(str);
            boolean z = false;
            if (this.f22655d == a2) {
                File file = new File(this.f22659h.m13548d(this.f22653b, this.f22655d), "to_be_validated_model.tmp");
                try {
                    ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor);
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        byte[] bArr = new byte[4096];
                        while (true) {
                            int read = autoCloseInputStream.read(bArr);
                            if (read == -1) {
                                break;
                            }
                            fileOutputStream.write(bArr, 0, read);
                        }
                        fileOutputStream.getFD().sync();
                        fileOutputStream.close();
                        autoCloseInputStream.close();
                        boolean a3 = C10029l.m13563a(file, str);
                        if (a3) {
                            C10011a0 a4 = this.f22656e.m13564a(file, g0Var);
                            boolean a5 = a4.m13631a();
                            z = a5;
                            if (a4.m13630b().equals(EnumC10043z.TFLITE_VERSION_INCOMPATIBLE)) {
                                String a6 = C8246m6.m18280a(this.f22652a.m18152a());
                                this.f22658g.m18513a(this.f22654c, str, a6);
                                C6999k kVar = f22651i;
                                String valueOf = String.valueOf(str);
                                kVar.m21339a("RemoteModelFileManager", valueOf.length() != 0 ? "Model is not compatible. Model hash: ".concat(valueOf) : new String("Model is not compatible. Model hash: "));
                                C6999k kVar2 = f22651i;
                                String valueOf2 = String.valueOf(a6);
                                kVar2.m21339a("RemoteModelFileManager", valueOf2.length() != 0 ? "The current app version is: ".concat(valueOf2) : new String("The current app version is: "));
                                z = a5;
                            }
                        }
                        if (!a3 || !z) {
                            if (!a3) {
                                C6999k kVar3 = f22651i;
                                String valueOf3 = String.valueOf(str);
                                kVar3.m21339a("RemoteModelFileManager", valueOf3.length() != 0 ? "Hash does not match with expected: ".concat(valueOf3) : new String("Hash does not match with expected: "));
                                g0Var.m13576a(EnumC8223l4.MODEL_HASH_MISMATCH, true, this.f22655d, C8075e2.EnumC8077b.SUCCEEDED);
                                aVar = new C10009a("Hash does not match with expected", 102);
                            } else {
                                aVar = new C10009a("Model is not compatible with TFLite run time", 100);
                            }
                            if (!file.delete()) {
                                C6999k kVar4 = f22651i;
                                String valueOf4 = String.valueOf(file.getAbsolutePath());
                                kVar4.m21339a("RemoteModelFileManager", valueOf4.length() != 0 ? "Failed to delete the temp file: ".concat(valueOf4) : new String("Failed to delete the temp file: "));
                            }
                            throw aVar;
                        }
                        a = this.f22657f.mo13547a(file);
                    } catch (Throwable th) {
                        try {
                            autoCloseInputStream.close();
                        } catch (Throwable th2) {
                            C8269o1.m18249a(th, th2);
                        }
                        throw th;
                    }
                } catch (IOException e) {
                    C6999k kVar5 = f22651i;
                    String valueOf5 = String.valueOf(e);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf5).length() + 56);
                    sb.append("Failed to copy downloaded model file to private folder: ");
                    sb.append(valueOf5);
                    kVar5.m21337b("RemoteModelFileManager", sb.toString());
                    return null;
                }
            } else {
                g0Var.m13576a(EnumC8223l4.MODEL_TYPE_MISUSE, false, a2, C8075e2.EnumC8077b.DOWNLOADED);
                String name = a2.name();
                String name2 = this.f22655d.name();
                StringBuilder sb2 = new StringBuilder(String.valueOf(name).length() + 93 + String.valueOf(name2).length());
                sb2.append("You are trying to use a ");
                sb2.append(name);
                sb2.append(" model as a ");
                sb2.append(name2);
                sb2.append(" model. Please make sure you specified the correct model.");
                throw new C10009a(sb2.toString(), 3);
            }
        }
        return a;
    }

    @Nullable
    @WorkerThread
    /* renamed from: a */
    public final String m13622a() throws C10009a {
        synchronized (this) {
            File c = this.f22659h.m13549c(this.f22653b, this.f22655d);
            int b = C10038u.m13552b(c);
            if (b < 0) {
                return null;
            }
            String absolutePath = c.getAbsolutePath();
            StringBuilder sb = new StringBuilder(String.valueOf(absolutePath).length() + 12);
            sb.append(absolutePath);
            sb.append("/");
            sb.append(b);
            return sb.toString();
        }
    }

    @WorkerThread
    /* renamed from: a */
    public final boolean m13620a(@NonNull File file) throws C10009a {
        synchronized (this) {
            File c = this.f22659h.m13549c(this.f22653b, this.f22655d);
            if (!c.exists()) {
                return false;
            }
            File[] listFiles = c.listFiles();
            boolean z = true;
            for (File file2 : listFiles) {
                z = z;
                if (!file2.equals(file)) {
                    z = z;
                    if (!this.f22659h.m13555a(file2)) {
                        z = false;
                    }
                }
            }
            return z;
        }
    }

    @WorkerThread
    /* renamed from: b */
    public final void m13618b(@NonNull File file) {
        synchronized (this) {
            File b = this.f22659h.m13550b(this.f22653b, this.f22655d, false);
            if (b.exists()) {
                for (File file2 : b.listFiles()) {
                    if (file2.equals(file)) {
                        this.f22659h.m13555a(file);
                        return;
                    }
                }
            }
        }
    }

    @WorkerThread
    /* renamed from: c */
    public final File m13617c(@NonNull File file) throws C10009a {
        synchronized (this) {
            File file2 = new File(String.valueOf(this.f22659h.m13549c(this.f22653b, this.f22655d).getAbsolutePath()).concat("/0"));
            return file2.exists() ? file : file.renameTo(file2) ? file2 : file;
        }
    }
}
