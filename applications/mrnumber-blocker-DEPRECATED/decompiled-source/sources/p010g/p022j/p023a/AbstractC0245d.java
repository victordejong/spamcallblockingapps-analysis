package p010g.p022j.p023a;

import android.graphics.Bitmap;
import android.net.Uri;
import android.widget.ImageView;
import java.io.File;
import java.util.concurrent.ExecutorService;
import m.c0;
/* renamed from: g.j.a.d */
/* loaded from: classes2-dex2jar.jar:g/j/a/d.class */
public interface AbstractC0245d {

    /* renamed from: g.j.a.d$a */
    /* loaded from: classes2-dex2jar.jar:g/j/a/d$a.class */
    public interface AbstractC0246a {
        /* renamed from: a */
        AbstractC0246a m572a(c0 c0Var);

        /* renamed from: b */
        AbstractC0246a m571b(Bitmap.Config config);

        /* renamed from: c */
        AbstractC0245d m570c();

        /* renamed from: d */
        AbstractC0246a m569d(ExecutorService executorService);
    }

    /* renamed from: g.j.a.d$b */
    /* loaded from: classes2-dex2jar.jar:g/j/a/d$b.class */
    public enum EnumC0247b {
        MEMORY(-16711936),
        DISK(-16776961),
        NETWORK(-65536);
        
        final int debugColor;

        EnumC0247b(int i) {
            this.debugColor = i;
        }
    }

    /* renamed from: g.j.a.d$c */
    /* loaded from: classes2-dex2jar.jar:g/j/a/d$c.class */
    public enum EnumC0248c {
        LOW,
        NORMAL,
        HIGH
    }

    /* renamed from: a */
    AbstractC0249g m577a(Uri uri);

    /* renamed from: b */
    AbstractC0249g m576b(File file);

    /* renamed from: c */
    void m575c(ImageView imageView);

    /* renamed from: d */
    void m574d(AbstractC0250h hVar);

    /* renamed from: e */
    AbstractC0249g m573e(String str);
}
