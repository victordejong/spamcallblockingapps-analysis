package p330f.p331a.p332a.p334f;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Hashtable;
/* renamed from: f.a.a.f.b */
/* loaded from: classes2-dex2jar.jar:f/a/a/f/b.class */
public class C9488b {

    /* renamed from: a */
    private Hashtable<String, C9488b> f40367a = new Hashtable<>();

    /* renamed from: b */
    private String f40368b;

    /* renamed from: c */
    private C9488b f40369c;

    /* renamed from: a */
    public C9488b m485a(String str) {
        return this.f40367a.get(str);
    }

    /* renamed from: b */
    public C9488b m484b() {
        return this.f40369c;
    }

    /* renamed from: c */
    public String m483c() {
        return this.f40368b;
    }

    /* renamed from: d */
    public void m482d(InputStream inputStream) {
        BufferedReader bufferedReader;
        InputStreamReader inputStreamReader;
        Throwable th;
        synchronized (this) {
            try {
                inputStreamReader = new InputStreamReader(inputStream);
                try {
                    bufferedReader = new BufferedReader(inputStreamReader);
                    while (true) {
                        try {
                            String readLine = bufferedReader.readLine();
                            if (readLine != null) {
                                String[] split = readLine.split(" ");
                                if (split.length == 2) {
                                    C9488b c9488b = new C9488b();
                                    c9488b.f40368b = split[1];
                                    m479g(split[0], c9488b);
                                }
                            } else {
                                inputStreamReader.close();
                                bufferedReader.close();
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            if (inputStreamReader != null) {
                                inputStreamReader.close();
                            }
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    bufferedReader = null;
                }
            } catch (Throwable th4) {
                th = th4;
                inputStreamReader = null;
                bufferedReader = null;
            }
        }
    }

    /* renamed from: e */
    public void m481e(InputStream inputStream) {
        BufferedReader bufferedReader;
        InputStreamReader inputStreamReader;
        Throwable th;
        synchronized (this) {
            try {
                inputStreamReader = new InputStreamReader(inputStream);
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(inputStreamReader);
                    while (true) {
                        try {
                            String readLine = bufferedReader2.readLine();
                            if (readLine != null) {
                                String[] split = readLine.split(" ");
                                if (split.length == 2) {
                                    int i = 0;
                                    String str = split[0];
                                    String str2 = split[1];
                                    char[] charArray = str.toCharArray();
                                    C9488b c9488b = this;
                                    while (true) {
                                        if (i < charArray.length) {
                                            String upperCase = Integer.toHexString(charArray[i]).toUpperCase();
                                            C9488b m485a = c9488b.m485a(upperCase);
                                            C9488b c9488b2 = m485a;
                                            if (m485a == null) {
                                                c9488b.m479g(upperCase, new C9488b());
                                                c9488b2 = c9488b.m485a(upperCase);
                                            }
                                            C9488b m484b = c9488b2.m484b();
                                            if (charArray.length - 1 == i) {
                                                c9488b2.f40368b = str2;
                                                break;
                                            }
                                            if (m484b != null) {
                                                c9488b = m484b;
                                            } else if (charArray.length - 1 != i) {
                                                c9488b = new C9488b();
                                                c9488b2.m478h(c9488b);
                                                c9488b.m479g(Integer.toHexString(charArray[i + 1]).toUpperCase(), new C9488b());
                                            }
                                            i++;
                                        }
                                    }
                                }
                            } else {
                                inputStreamReader.close();
                                bufferedReader2.close();
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedReader = bufferedReader2;
                            if (inputStreamReader != null) {
                                inputStreamReader.close();
                            }
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    bufferedReader = null;
                }
            } catch (Throwable th4) {
                th = th4;
                inputStreamReader = null;
                bufferedReader = null;
            }
        }
    }

    /* renamed from: f */
    public void m480f() {
        String str = C9487a.f40366a;
        if (str != null) {
            File file = new File(str);
            if (!file.exists()) {
                return;
            }
            m481e(new FileInputStream(file));
        }
    }

    /* renamed from: g */
    public void m479g(String str, C9488b c9488b) {
        this.f40367a.put(str, c9488b);
    }

    /* renamed from: h */
    public void m478h(C9488b c9488b) {
        this.f40369c = c9488b;
    }
}
