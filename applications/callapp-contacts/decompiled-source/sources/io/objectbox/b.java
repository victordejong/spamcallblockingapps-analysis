package io.objectbox;

import android.support.v4.media.session.PlaybackStateCompat;
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
import org.a.a.b.a;
/* loaded from: classes5-dex2jar.jar:io/objectbox/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    final byte[] f36190a;

    /* renamed from: b  reason: collision with root package name */
    public File f36191b;

    /* renamed from: c  reason: collision with root package name */
    public File f36192c;

    /* renamed from: d  reason: collision with root package name */
    public String f36193d;
    long e;
    public Object f;
    Object g;
    public int h;
    public boolean i;
    public boolean j;
    int k;
    public int l;
    public int m;
    boolean n;
    boolean o;
    public boolean p;
    short q;
    long r;
    public h<?> s;
    final List<c<?>> t;
    private d<InputStream> u;

    private b() {
        this.e = PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
        this.t = new ArrayList();
        this.f36190a = null;
    }

    public b(byte[] bArr) {
        this.e = PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
        this.t = new ArrayList();
        if (bArr != null) {
            this.f36190a = Arrays.copyOf(bArr, bArr.length);
            return;
        }
        throw new IllegalArgumentException("Model may not be null");
    }

    private static File a(File file, String str) {
        String a2 = a(str);
        return file != null ? new File(file, a2) : new File(a2);
    }

    public static Object a(Object obj) {
        try {
            return obj.getClass().getMethod("getApplicationContext", new Class[0]).invoke(obj, new Object[0]);
        } catch (Exception e) {
            throw new RuntimeException("context must be a valid Android Context", e);
        }
    }

    private static String a(String str) {
        return str != null ? str : "objectbox";
    }

    public static File b(Object obj) {
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
            } else if (file2.exists()) {
                return file2;
            } else {
                throw new IllegalStateException("Android files dir does not exist");
            }
        } catch (Exception e) {
            throw new RuntimeException("Could not init with given Android context (must be sub class of android.content.Context)", e);
        }
    }

    private void b() {
        Exception e;
        InputStream inputStream;
        BufferedOutputStream bufferedOutputStream;
        if (this.u != null) {
            File file = new File(BoxStore.a(this.f36191b), "data.mdb");
            if (!file.exists()) {
                try {
                    inputStream = this.u.a();
                    try {
                        if (inputStream != null) {
                            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
                            try {
                                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
                            } catch (Exception e2) {
                                e = e2;
                                inputStream = bufferedInputStream;
                                bufferedOutputStream = null;
                                try {
                                    throw new DbException("Could not provision initial data file", e);
                                } catch (Throwable th) {
                                    th = th;
                                    a.a(bufferedOutputStream);
                                    a.a(inputStream);
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                inputStream = bufferedInputStream;
                                bufferedOutputStream = null;
                                a.a(bufferedOutputStream);
                                a.a(inputStream);
                                throw th;
                            }
                            try {
                                a.a(bufferedInputStream, bufferedOutputStream);
                                a.a(bufferedOutputStream);
                                a.a(bufferedInputStream);
                            } catch (Exception e3) {
                                e = e3;
                                bufferedOutputStream = bufferedOutputStream;
                                inputStream = bufferedInputStream;
                                throw new DbException("Could not provision initial data file", e);
                            } catch (Throwable th3) {
                                th = th3;
                                inputStream = bufferedInputStream;
                                a.a(bufferedOutputStream);
                                a.a(inputStream);
                                throw th;
                            }
                        } else {
                            throw new DbException("Factory did not provide a resource");
                        }
                    } catch (Exception e4) {
                        e = e4;
                    } catch (Throwable th4) {
                        th = th4;
                        inputStream = inputStream;
                    }
                } catch (Exception e5) {
                    e = e5;
                    inputStream = null;
                    bufferedOutputStream = null;
                } catch (Throwable th5) {
                    th = th5;
                    inputStream = null;
                    bufferedOutputStream = null;
                }
            }
        }
    }

    public final BoxStore a() {
        if (this.f36191b == null) {
            String a2 = a(this.f36193d);
            this.f36193d = a2;
            this.f36191b = a(this.f36192c, a2);
        }
        b();
        return new BoxStore(this);
    }

    public final void a(c<?> cVar) {
        this.t.add(cVar);
    }
}
