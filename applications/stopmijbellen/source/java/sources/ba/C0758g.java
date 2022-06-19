package ba;

import android.content.Context;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import p134j4.AbstractC3183a1;
import p134j4.C3187b1;
import p134j4.C3224k2;
import p134j4.C3252t1;
import p134j4.C3259w;
import p134j4.C3266y0;
import p189o4.AbstractC3882s;
/* renamed from: ba.g */
/* loaded from: classes2-dex2jar.jar:ba/g.class */
public class C0758g implements AbstractC3882s, AbstractC3183a1 {

    /* renamed from: a */
    public final /* synthetic */ int f2853a;

    /* renamed from: b */
    public final Object f2854b;

    /* renamed from: c */
    public final Object f2855c;

    public /* synthetic */ C0758g(Object obj, Object obj2, int i) {
        this.f2853a = i;
        this.f2854b = obj;
        this.f2855c = obj2;
    }

    /* renamed from: a */
    public static C0758g m7397a(Context context, String str) {
        FileChannel fileChannel;
        FileLock fileLock;
        try {
            fileChannel = new RandomAccessFile(new File(context.getFilesDir(), str), "rw").getChannel();
            try {
                fileLock = fileChannel.lock();
            } catch (IOException | Error | OverlappingFileLockException e) {
                fileLock = null;
            }
        } catch (IOException | Error | OverlappingFileLockException e2) {
            fileChannel = null;
            fileLock = null;
        }
        try {
            return new C0758g(fileChannel, fileLock, 4);
        } catch (IOException | Error | OverlappingFileLockException e3) {
            if (fileLock != null) {
                try {
                    fileLock.release();
                } catch (IOException e4) {
                }
            }
            if (fileChannel == null) {
                return null;
            }
            try {
                fileChannel.close();
                return null;
            } catch (IOException e5) {
                return null;
            }
        }
    }

    /* renamed from: b */
    public void m7396b() {
        try {
            ((FileLock) this.f2855c).release();
            ((FileChannel) this.f2854b).close();
        } catch (IOException e) {
        }
    }

    @Override // p189o4.AbstractC3882s
    public Object zza() {
        switch (this.f2853a) {
            case 1:
                return new C3259w(((C3224k2) ((AbstractC3882s) this.f2854b)).m2534a(), (C3252t1) ((AbstractC3882s) this.f2855c).zza());
            default:
                C3187b1 c3187b1 = (C3187b1) this.f2854b;
                List list = (List) this.f2855c;
                Objects.requireNonNull(c3187b1);
                HashMap hashMap = new HashMap();
                for (C3266y0 c3266y0 : c3187b1.f10734e.values()) {
                    String str = c3266y0.f11065c.f11051a;
                    if (list.contains(str)) {
                        C3266y0 c3266y02 = (C3266y0) hashMap.get(str);
                        if ((c3266y02 == null ? -1 : c3266y02.f11063a) < c3266y0.f11063a) {
                            hashMap.put(str, c3266y0);
                        }
                    }
                }
                return hashMap;
        }
    }
}
