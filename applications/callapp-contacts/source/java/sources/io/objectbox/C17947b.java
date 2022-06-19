package io.objectbox;

import android.support.p008v4.media.session.PlaybackStateCompat;
import io.objectbox.exception.DbException;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.p579a.p580a.p582b.C20721a;
/* renamed from: io.objectbox.b */
/* loaded from: classes5-dex2jar.jar:io/objectbox/b.class */
public final class C17947b {

    /* renamed from: a */
    final byte[] f62716a;

    /* renamed from: b */
    public File f62717b;

    /* renamed from: c */
    public File f62718c;

    /* renamed from: d */
    public String f62719d;

    /* renamed from: e */
    long f62720e;

    /* renamed from: f */
    public Object f62721f;

    /* renamed from: g */
    Object f62722g;

    /* renamed from: h */
    public int f62723h;

    /* renamed from: i */
    public boolean f62724i;

    /* renamed from: j */
    public boolean f62725j;

    /* renamed from: k */
    int f62726k;

    /* renamed from: l */
    public int f62727l;

    /* renamed from: m */
    public int f62728m;

    /* renamed from: n */
    boolean f62729n;

    /* renamed from: o */
    boolean f62730o;

    /* renamed from: p */
    public boolean f62731p;

    /* renamed from: q */
    short f62732q;

    /* renamed from: r */
    long f62733r;

    /* renamed from: s */
    public AbstractC17979h<?> f62734s;

    /* renamed from: t */
    final List<AbstractC17957c<?>> f62735t;

    /* renamed from: u */
    private AbstractC17973d<InputStream> f62736u;

    private C17947b() {
        this.f62720e = PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
        this.f62735t = new ArrayList();
        this.f62716a = null;
    }

    public C17947b(byte[] bArr) {
        this.f62720e = PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
        this.f62735t = new ArrayList();
        if (bArr != null) {
            this.f62716a = Arrays.copyOf(bArr, bArr.length);
            return;
        }
        throw new IllegalArgumentException("Model may not be null");
    }

    /* renamed from: a */
    private static File m4692a(File file, String str) {
        String m4690a = m4690a(str);
        return file != null ? new File(file, m4690a) : new File(m4690a);
    }

    /* renamed from: a */
    public static Object m4691a(Object obj) {
        try {
            return obj.getClass().getMethod("getApplicationContext", new Class[0]).invoke(obj, new Object[0]);
        } catch (Exception e) {
            throw new RuntimeException("context must be a valid Android Context", e);
        }
    }

    /* renamed from: a */
    private static String m4690a(String str) {
        return str != null ? str : "objectbox";
    }

    /* renamed from: b */
    public static File m4688b(Object obj) {
        try {
            Method method = obj.getClass().getMethod("getFilesDir", new Class[0]);
            File file = (File) method.invoke(obj, new Object[0]);
            File file2 = file;
            if (file == null) {
                System.err.println("getFilesDir() returned null - retrying once...");
                file2 = (File) method.invoke(obj, new Object[0]);
            }
            if (file2 == null) {
                throw new IllegalStateException("Android files dir is null");
            }
            if (!file2.exists()) {
                throw new IllegalStateException("Android files dir does not exist");
            }
            return file2;
        } catch (Exception e) {
            throw new RuntimeException("Could not init with given Android context (must be sub class of android.content.Context)", e);
        }
    }

    /* renamed from: b */
    private void m4689b() {
        BufferedOutputStream bufferedOutputStream;
        BufferedInputStream bufferedInputStream;
        Exception e;
        BufferedInputStream bufferedInputStream2;
        BufferedOutputStream bufferedOutputStream2;
        Throwable th;
        Exception e2;
        if (this.f62736u != null) {
            File file = new File(BoxStore.m4744a(this.f62717b), "data.mdb");
            if (file.exists()) {
                return;
            }
            try {
                bufferedInputStream = this.f62736u.m4672a();
                try {
                    if (bufferedInputStream == null) {
                        throw new DbException("Factory did not provide a resource");
                    }
                    BufferedInputStream bufferedInputStream3 = new BufferedInputStream(bufferedInputStream);
                    try {
                        bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(file));
                    } catch (Exception e3) {
                        bufferedInputStream = bufferedInputStream3;
                        e2 = e3;
                        e = e2;
                        bufferedOutputStream = null;
                        try {
                            throw new DbException("Could not provision initial data file", e);
                        } catch (Throwable th2) {
                            bufferedInputStream2 = bufferedInputStream;
                            bufferedOutputStream2 = bufferedOutputStream;
                            th = th2;
                            C20721a.m606a(bufferedOutputStream2);
                            C20721a.m606a(bufferedInputStream2);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        bufferedInputStream2 = bufferedInputStream3;
                        th = th3;
                        bufferedOutputStream2 = null;
                        C20721a.m606a(bufferedOutputStream2);
                        C20721a.m606a(bufferedInputStream2);
                        throw th;
                    }
                    try {
                        C20721a.m605a(bufferedInputStream3, bufferedOutputStream2);
                        C20721a.m606a(bufferedOutputStream2);
                        C20721a.m606a(bufferedInputStream3);
                    } catch (Exception e4) {
                        e = e4;
                        bufferedOutputStream = bufferedOutputStream2;
                        bufferedInputStream = bufferedInputStream3;
                        throw new DbException("Could not provision initial data file", e);
                    } catch (Throwable th4) {
                        bufferedInputStream2 = bufferedInputStream3;
                        th = th4;
                        C20721a.m606a(bufferedOutputStream2);
                        C20721a.m606a(bufferedInputStream2);
                        throw th;
                    }
                } catch (Exception e5) {
                    e2 = e5;
                } catch (Throwable th5) {
                    th = th5;
                    bufferedInputStream2 = bufferedInputStream;
                }
            } catch (Exception e6) {
                e = e6;
                bufferedInputStream = null;
                bufferedOutputStream = null;
            } catch (Throwable th6) {
                th = th6;
                bufferedInputStream2 = null;
                bufferedOutputStream2 = null;
            }
        }
    }

    /* renamed from: a */
    public final BoxStore m4694a() {
        if (this.f62717b == null) {
            String m4690a = m4690a(this.f62719d);
            this.f62719d = m4690a;
            this.f62717b = m4692a(this.f62718c, m4690a);
        }
        m4689b();
        return new BoxStore(this);
    }

    /* renamed from: a */
    public final void m4693a(AbstractC17957c<?> abstractC17957c) {
        this.f62735t.add(abstractC17957c);
    }
}
