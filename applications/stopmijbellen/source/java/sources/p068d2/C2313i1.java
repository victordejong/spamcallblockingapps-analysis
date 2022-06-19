package p068d2;

import android.content.Context;
import android.support.p012v4.media.C0082b;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import p068d2.RunnableC2290h2;
/* renamed from: d2.i1 */
/* loaded from: classes-dex2jar.jar:d2/i1.class */
public class C2313i1 implements RunnableC2290h2.AbstractC2291a {

    /* renamed from: a */
    public final /* synthetic */ C2230f1 f8260a;

    public C2313i1(C2230f1 c2230f1) {
        this.f8260a = c2230f1;
    }

    @Override // p068d2.RunnableC2290h2.AbstractC2291a
    /* renamed from: a */
    public void mo3619a(RunnableC2290h2 runnableC2290h2, C2410t0 c2410t0, Map<String, List<String>> map) {
        Context context;
        boolean z;
        boolean z2;
        C2230f1 c2230f1 = this.f8260a;
        String str = c2230f1.f8109x;
        if (C2408t.f8531a != null) {
            File file = new File(context.getFilesDir().getAbsolutePath() + "/adc3/7bf3a1e7bbd31e612eda3310c2cdb8075c43c6b5");
            if (file.exists()) {
                ExecutorService executorService = C2315i3.f8262a;
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
                    try {
                        FileInputStream fileInputStream = new FileInputStream(file);
                        byte[] bArr = new byte[8192];
                        while (true) {
                            try {
                                try {
                                    int read = fileInputStream.read(bArr);
                                    if (read <= 0) {
                                        break;
                                    }
                                    messageDigest.update(bArr, 0, read);
                                } catch (Throwable th) {
                                    try {
                                        fileInputStream.close();
                                    } catch (IOException e) {
                                        C0082b.m8750l(0, 0, "Exception on closing MD5 input stream", true);
                                    }
                                    throw th;
                                }
                            } catch (IOException e2) {
                                throw new RuntimeException("Unable to process file for MD5", e2);
                            }
                        }
                        z = str.equals(String.format("%40s", new BigInteger(1, messageDigest.digest()).toString(16)).replace(' ', '0'));
                        try {
                            fileInputStream.close();
                        } catch (IOException e3) {
                            C0082b.m8750l(0, 0, "Exception on closing MD5 input stream", true);
                        }
                    } catch (FileNotFoundException e4) {
                        C0082b.m8750l(0, 0, "Exception while getting FileInputStream", true);
                    }
                } catch (NoSuchAlgorithmException e5) {
                    C0082b.m8750l(0, 0, "Exception while getting Digest", true);
                }
                if (z && !C2441x3.f8627R) {
                    C2408t.m3591d().m3718p().m3686e(0, 1, "Downloaded controller sha1 does not match, retrying.", false);
                    c2230f1.m3728f();
                    return;
                }
                if (!c2230f1.f8068F && !c2230f1.f8070H) {
                    C2315i3.m3652s(new RunnableC2323j1(c2230f1));
                }
                if (c2230f1.f8068F || !c2230f1.f8070H) {
                }
                c2230f1.f8085W = 0;
                for (C2387q c2387q : c2230f1.f8089d.f8330c.values()) {
                    if (c2387q.f8447l == 5) {
                        c2230f1.f8085W++;
                        C2354k1 c2354k1 = new C2354k1(c2230f1);
                        synchronized (c2387q) {
                            if (c2387q.f8447l == 6) {
                                z2 = true;
                            } else {
                                c2387q.f8437b = c2354k1;
                                z2 = false;
                            }
                        }
                        if (z2) {
                            int i = c2230f1.f8085W - 1;
                            c2230f1.f8085W = i;
                            if (i == 0) {
                                c2230f1.m3730d();
                            }
                        }
                    }
                }
                for (C2319j c2319j : c2230f1.f8089d.f8333f.values()) {
                    c2230f1.f8085W++;
                    c2319j.setOnDestroyListenerOrCall(new C2359l1(c2230f1));
                }
                if (c2230f1.f8085W != 0) {
                    return;
                }
                c2230f1.m3730d();
                return;
            }
        }
        z = false;
        if (z) {
        }
        if (!c2230f1.f8068F) {
            C2315i3.m3652s(new RunnableC2323j1(c2230f1));
        }
        if (c2230f1.f8068F) {
        }
    }
}
