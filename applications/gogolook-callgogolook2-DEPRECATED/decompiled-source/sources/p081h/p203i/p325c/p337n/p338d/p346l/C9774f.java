package p081h.p203i.p325c.p337n.p338d.p346l;

import androidx.core.app.NotificationCompat;
import java.io.File;
import java.io.FilenameFilter;
/* renamed from: h.i.c.n.d.l.f */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/l/f.class */
public final /* synthetic */ class C9774f implements FilenameFilter {

    /* renamed from: a */
    public static final C9774f f22181a = new C9774f();

    /* renamed from: a */
    public static FilenameFilter m14332a() {
        return f22181a;
    }

    @Override // java.io.FilenameFilter
    public boolean accept(File file, String str) {
        boolean startsWith;
        startsWith = str.startsWith(NotificationCompat.CATEGORY_EVENT);
        return startsWith;
    }
}
