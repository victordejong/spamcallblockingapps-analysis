package androidx.emoji2.text;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.inputmethod.EditorInfo;
import androidx.emoji2.text.C0368h;
import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p124i4.C3102d;
import p226s.C4254c;
import p259v0.C4574b;
/* renamed from: androidx.emoji2.text.d */
/* loaded from: classes-dex2jar.jar:androidx/emoji2/text/d.class */
public class C0354d {

    /* renamed from: j */
    public static final Object f1578j = new Object();

    /* renamed from: k */
    public static volatile C0354d f1579k;

    /* renamed from: a */
    public final ReadWriteLock f1580a;

    /* renamed from: c */
    public volatile int f1582c;

    /* renamed from: e */
    public final C0357b f1584e;

    /* renamed from: f */
    public final AbstractC0362g f1585f;

    /* renamed from: h */
    public final int f1587h;

    /* renamed from: i */
    public final AbstractC0359d f1588i;

    /* renamed from: g */
    public final int f1586g = -16711936;

    /* renamed from: d */
    public final Handler f1583d = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    public final Set<AbstractC0360e> f1581b = new C4254c(0);

    /* renamed from: androidx.emoji2.text.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/emoji2/text/d$a.class */
    public static final class C0355a extends C0357b {

        /* renamed from: b */
        public volatile C0368h f1589b;

        /* renamed from: c */
        public volatile C0377m f1590c;

        /* renamed from: androidx.emoji2.text.d$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/emoji2/text/d$a$a.class */
        public class C0356a extends AbstractC0363h {
            public C0356a() {
                C0355a.this = r4;
            }

            @Override // androidx.emoji2.text.C0354d.AbstractC0363h
            /* renamed from: a */
            public void mo8241a(Throwable th) {
                C0355a.this.f1592a.m8250f(th);
            }

            @Override // androidx.emoji2.text.C0354d.AbstractC0363h
            /* renamed from: b */
            public void mo8240b(C0377m c0377m) {
                C0355a c0355a = C0355a.this;
                if (c0377m == null) {
                    c0355a.f1592a.m8250f(new IllegalArgumentException("metadataRepo cannot be null"));
                    return;
                }
                c0355a.f1590c = c0377m;
                C0377m c0377m2 = c0355a.f1590c;
                C0364i c0364i = new C0364i();
                C0354d c0354d = c0355a.f1592a;
                AbstractC0359d abstractC0359d = c0354d.f1588i;
                Objects.requireNonNull(c0354d);
                c0355a.f1589b = new C0368h(c0377m2, c0364i, abstractC0359d, false, null);
                c0355a.f1592a.m8249g();
            }
        }

        public C0355a(C0354d c0354d) {
            super(c0354d);
        }

        @Override // androidx.emoji2.text.C0354d.C0357b
        /* renamed from: a */
        public void mo8245a() {
            try {
                this.f1592a.f1585f.mo8229a(new C0356a());
            } catch (Throwable th) {
                this.f1592a.m8250f(th);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:107:0x02a7, code lost:
            if (r0.m8233b(r7, r10, r9, r0.f1616c.f1642b) == false) goto L108;
         */
        /* JADX WARN: Code restructure failed: missing block: B:64:0x0193, code lost:
            if (r11 != false) goto L68;
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x0196, code lost:
            r16 = r7;
            r19 = r20;
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x01af, code lost:
            if (r0.m8233b(r7, r10, r9, r0.f1617d.f1642b) != false) goto L138;
         */
        /* JADX WARN: Code restructure failed: missing block: B:69:0x01b3, code lost:
            r16 = r7;
         */
        /* JADX WARN: Code restructure failed: missing block: B:70:0x01b6, code lost:
            if (r7 != null) goto L72;
         */
        /* JADX WARN: Code restructure failed: missing block: B:71:0x01b9, code lost:
            r16 = new android.text.SpannableString(r7);
         */
        /* JADX WARN: Code restructure failed: missing block: B:73:0x01c7, code lost:
            r0 = r0.f1617d.f1642b;
            java.util.Objects.requireNonNull(r0.f1609a);
            r16.setSpan(new androidx.emoji2.text.C0381o(r0), r10, r9, 33);
         */
        /* JADX WARN: Code restructure failed: missing block: B:74:0x01f2, code lost:
            r19 = r20 + 1;
         */
        /* JADX WARN: Removed duplicated region for block: B:101:0x0283  */
        /* JADX WARN: Removed duplicated region for block: B:117:0x02f0  */
        /* JADX WARN: Removed duplicated region for block: B:120:0x02f8  */
        /* JADX WARN: Removed duplicated region for block: B:123:0x030b  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x007b A[Catch: all -> 0x0318, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0318, blocks: (B:7:0x002b, B:10:0x0036, B:12:0x003e, B:14:0x0055, B:16:0x0069, B:20:0x007b, B:24:0x009d, B:26:0x00a3, B:31:0x00bf, B:34:0x00da, B:36:0x00e5, B:39:0x00fe, B:46:0x011f, B:47:0x0139, B:47:0x0139, B:48:0x013c, B:55:0x0170, B:66:0x019d, B:71:0x01b9, B:73:0x01c7, B:76:0x0203, B:79:0x0219, B:81:0x022b, B:84:0x023f, B:88:0x0250, B:90:0x0259, B:92:0x0264, B:94:0x026d, B:106:0x0295, B:111:0x02b1, B:113:0x02bf), top: B:132:0x002b }] */
        /* JADX WARN: Removed duplicated region for block: B:44:0x0116  */
        @Override // androidx.emoji2.text.C0354d.C0357b
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.CharSequence mo8244b(java.lang.CharSequence r7, int r8, int r9, int r10, boolean r11) {
            /*
                Method dump skipped, instructions count: 808
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.emoji2.text.C0354d.C0355a.mo8244b(java.lang.CharSequence, int, int, int, boolean):java.lang.CharSequence");
        }

        @Override // androidx.emoji2.text.C0354d.C0357b
        /* renamed from: c */
        public void mo8243c(EditorInfo editorInfo) {
            Bundle bundle = editorInfo.extras;
            C4574b c4574b = this.f1590c.f1637a;
            int m762a = c4574b.m762a(4);
            bundle.putInt("android.support.text.emoji.emojiCompat_metadataVersion", m762a != 0 ? c4574b.f14148b.getInt(m762a + c4574b.f14147a) : 0);
            Bundle bundle2 = editorInfo.extras;
            Objects.requireNonNull(this.f1592a);
            bundle2.putBoolean("android.support.text.emoji.emojiCompat_replaceAll", false);
        }
    }

    /* renamed from: androidx.emoji2.text.d$b */
    /* loaded from: classes-dex2jar.jar:androidx/emoji2/text/d$b.class */
    public static class C0357b {

        /* renamed from: a */
        public final C0354d f1592a;

        public C0357b(C0354d c0354d) {
            this.f1592a = c0354d;
        }

        /* renamed from: a */
        public void mo8245a() {
            throw null;
        }

        /* renamed from: b */
        public CharSequence mo8244b(CharSequence charSequence, int i, int i2, int i3, boolean z) {
            throw null;
        }

        /* renamed from: c */
        public void mo8243c(EditorInfo editorInfo) {
            throw null;
        }
    }

    /* renamed from: androidx.emoji2.text.d$c */
    /* loaded from: classes-dex2jar.jar:androidx/emoji2/text/d$c.class */
    public static abstract class AbstractC0358c {

        /* renamed from: a */
        public final AbstractC0362g f1593a;

        /* renamed from: b */
        public int f1594b = 0;

        /* renamed from: c */
        public AbstractC0359d f1595c = new C0368h.C0369a();

        public AbstractC0358c(AbstractC0362g abstractC0362g) {
            this.f1593a = abstractC0362g;
        }
    }

    /* renamed from: androidx.emoji2.text.d$d */
    /* loaded from: classes-dex2jar.jar:androidx/emoji2/text/d$d.class */
    public interface AbstractC0359d {
    }

    /* renamed from: androidx.emoji2.text.d$e */
    /* loaded from: classes-dex2jar.jar:androidx/emoji2/text/d$e.class */
    public static abstract class AbstractC0360e {
        /* renamed from: a */
        public void mo8242a(Throwable th) {
        }

        /* renamed from: b */
        public void mo538b() {
        }
    }

    /* renamed from: androidx.emoji2.text.d$f */
    /* loaded from: classes-dex2jar.jar:androidx/emoji2/text/d$f.class */
    public static class RunnableC0361f implements Runnable {

        /* renamed from: a */
        public final List<AbstractC0360e> f1596a;

        /* renamed from: b */
        public final Throwable f1597b;

        /* renamed from: c */
        public final int f1598c;

        public RunnableC0361f(Collection<AbstractC0360e> collection, int i, Throwable th) {
            C3102d.m2628k(collection, "initCallbacks cannot be null");
            this.f1596a = new ArrayList(collection);
            this.f1598c = i;
            this.f1597b = th;
        }

        @Override // java.lang.Runnable
        public void run() {
            int size = this.f1596a.size();
            if (this.f1598c == 1) {
                for (int i = 0; i < size; i++) {
                    this.f1596a.get(i).mo538b();
                }
                return;
            }
            for (int i2 = 0; i2 < size; i2++) {
                this.f1596a.get(i2).mo8242a(this.f1597b);
            }
        }
    }

    /* renamed from: androidx.emoji2.text.d$g */
    /* loaded from: classes-dex2jar.jar:androidx/emoji2/text/d$g.class */
    public interface AbstractC0362g {
        /* renamed from: a */
        void mo8229a(AbstractC0363h abstractC0363h);
    }

    /* renamed from: androidx.emoji2.text.d$h */
    /* loaded from: classes-dex2jar.jar:androidx/emoji2/text/d$h.class */
    public static abstract class AbstractC0363h {
        /* renamed from: a */
        public abstract void mo8241a(Throwable th);

        /* renamed from: b */
        public abstract void mo8240b(C0377m c0377m);
    }

    /* renamed from: androidx.emoji2.text.d$i */
    /* loaded from: classes-dex2jar.jar:androidx/emoji2/text/d$i.class */
    public static class C0364i {
    }

    public C0354d(AbstractC0358c abstractC0358c) {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.f1580a = reentrantReadWriteLock;
        this.f1582c = 3;
        Objects.requireNonNull(abstractC0358c);
        this.f1585f = abstractC0358c.f1593a;
        int i = abstractC0358c.f1594b;
        this.f1587h = i;
        this.f1588i = abstractC0358c.f1595c;
        C0355a c0355a = new C0355a(this);
        this.f1584e = c0355a;
        reentrantReadWriteLock.writeLock().lock();
        if (i == 0) {
            try {
                this.f1582c = 0;
            } catch (Throwable th) {
                this.f1580a.writeLock().unlock();
                throw th;
            }
        }
        reentrantReadWriteLock.writeLock().unlock();
        if (m8254b() == 0) {
            c0355a.mo8245a();
        }
    }

    /* renamed from: a */
    public static C0354d m8255a() {
        C0354d c0354d;
        synchronized (f1578j) {
            c0354d = f1579k;
            C3102d.m2626m(c0354d != null, "EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK's manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message.");
        }
        return c0354d;
    }

    /* renamed from: c */
    public static boolean m8253c() {
        return f1579k != null;
    }

    /* renamed from: b */
    public int m8254b() {
        this.f1580a.readLock().lock();
        try {
            return this.f1582c;
        } finally {
            this.f1580a.readLock().unlock();
        }
    }

    /* renamed from: d */
    public final boolean m8252d() {
        boolean z = true;
        if (m8254b() != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: e */
    public void m8251e() {
        boolean z = true;
        if (this.f1587h != 1) {
            z = false;
        }
        C3102d.m2626m(z, "Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading");
        if (m8252d()) {
            return;
        }
        this.f1580a.writeLock().lock();
        try {
            if (this.f1582c == 0) {
                return;
            }
            this.f1582c = 0;
            this.f1580a.writeLock().unlock();
            this.f1584e.mo8245a();
        } finally {
            this.f1580a.writeLock().unlock();
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: f */
    public void m8250f(Throwable th) {
        ArrayList arrayList = new ArrayList();
        this.f1580a.writeLock().lock();
        try {
            this.f1582c = 2;
            arrayList.addAll(this.f1581b);
            this.f1581b.clear();
            this.f1580a.writeLock().unlock();
            this.f1583d.post(new RunnableC0361f(arrayList, this.f1582c, th));
        } catch (Throwable th2) {
            this.f1580a.writeLock().unlock();
            throw th2;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: g */
    public void m8249g() {
        ArrayList arrayList = new ArrayList();
        this.f1580a.writeLock().lock();
        try {
            this.f1582c = 1;
            arrayList.addAll(this.f1581b);
            this.f1581b.clear();
            this.f1580a.writeLock().unlock();
            this.f1583d.post(new RunnableC0361f(arrayList, this.f1582c, null));
        } catch (Throwable th) {
            this.f1580a.writeLock().unlock();
            throw th;
        }
    }

    /* renamed from: h */
    public CharSequence m8248h(CharSequence charSequence) {
        return m8247i(charSequence, 0, charSequence == null ? 0 : charSequence.length(), Api.BaseClientBuilder.API_PRIORITY_OTHER, 0);
    }

    /* renamed from: i */
    public CharSequence m8247i(CharSequence charSequence, int i, int i2, int i3, int i4) {
        C3102d.m2626m(m8252d(), "Not initialized yet");
        C3102d.m2629j(i, "start cannot be negative");
        C3102d.m2629j(i2, "end cannot be negative");
        C3102d.m2629j(i3, "maxEmojiCount cannot be negative");
        C3102d.m2631h(i <= i2, "start should be <= than end");
        if (charSequence == null) {
            return null;
        }
        C3102d.m2631h(i <= charSequence.length(), "start should be < than charSequence length");
        C3102d.m2631h(i2 <= charSequence.length(), "end should be < than charSequence length");
        CharSequence charSequence2 = charSequence;
        if (charSequence.length() != 0) {
            if (i == i2) {
                charSequence2 = charSequence;
            } else {
                charSequence2 = this.f1584e.mo8244b(charSequence, i, i2, i3, i4 == 1);
            }
        }
        return charSequence2;
    }

    /* renamed from: j */
    public void m8246j(AbstractC0360e abstractC0360e) {
        C3102d.m2628k(abstractC0360e, "initCallback cannot be null");
        this.f1580a.writeLock().lock();
        try {
            if (this.f1582c != 1 && this.f1582c != 2) {
                this.f1581b.add(abstractC0360e);
            }
            this.f1583d.post(new RunnableC0361f(Arrays.asList(abstractC0360e), this.f1582c, null));
        } finally {
            this.f1580a.writeLock().unlock();
        }
    }
}
