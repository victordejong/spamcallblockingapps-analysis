package p012b.p076s.p112c.p114g;

import android.media.MediaFormat;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector;
import androidx.media2.player.MediaPlayer2;
import java.util.ArrayList;
import java.util.List;
import p012b.p042i.p053o.C0948h;
import p012b.p076s.p078b.p079a.AbstractC1223d0;
import p012b.p076s.p078b.p079a.p110y0.AbstractC1662d;
import p012b.p076s.p078b.p079a.p110y0.AbstractC1668i;
import p012b.p076s.p078b.p079a.p110y0.C1671j;
import p012b.p076s.p112c.p113f.C1715a;
/* renamed from: b.s.c.g.k */
/* loaded from: classes-dex2jar.jar:b/s/c/g/k.class */
public final class C1778k {

    /* renamed from: a */
    public final C1774j f7163a;

    /* renamed from: h */
    public boolean f7170h;

    /* renamed from: b */
    public final DefaultTrackSelector f7164b = new DefaultTrackSelector();

    /* renamed from: c */
    public final List<MediaPlayer2.AbstractC0410c> f7165c = new ArrayList();

    /* renamed from: d */
    public final List<MediaPlayer2.AbstractC0410c> f7166d = new ArrayList();

    /* renamed from: e */
    public final List<MediaPlayer2.AbstractC0410c> f7167e = new ArrayList();

    /* renamed from: f */
    public final List<MediaPlayer2.AbstractC0410c> f7168f = new ArrayList();

    /* renamed from: g */
    public final List<C1779a> f7169g = new ArrayList();

    /* renamed from: i */
    public int f7171i = -1;

    /* renamed from: j */
    public int f7172j = -1;

    /* renamed from: k */
    public int f7173k = -1;

    /* renamed from: l */
    public int f7174l = -1;

    /* renamed from: m */
    public int f7175m = -1;

    /* renamed from: b.s.c.g.k$a */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/k$a.class */
    public static final class C1779a {

        /* renamed from: a */
        public final int f7176a;

        /* renamed from: b */
        public final C1715a f7177b;

        /* renamed from: c */
        public final int f7178c;

        /* renamed from: d */
        public final int f7179d;

        /* renamed from: e */
        public final Format f7180e;

        public C1779a(int i, int i2, Format format, int i3) {
            this.f7176a = i;
            int i4 = 1;
            if (i2 == 0 && i3 == 0) {
                i4 = 5;
            } else if (!(i2 == 1 && i3 == 1)) {
                i4 = format == null ? 0 : format.f1556c;
            }
            this.f7177b = m32105a(i2, format == null ? "und" : format.f1551A, i4);
            this.f7178c = i2;
            this.f7179d = i3;
            this.f7180e = format;
        }

        /* renamed from: a */
        public static C1715a m32105a(int i, String str, int i2) {
            MediaFormat mediaFormat = new MediaFormat();
            int i3 = 1;
            if (i == 0) {
                mediaFormat.setString("mime", "text/cea-608");
            } else if (i == 1) {
                mediaFormat.setString("mime", "text/cea-708");
            } else if (i == 2) {
                mediaFormat.setString("mime", "text/vtt");
            } else {
                throw new IllegalStateException();
            }
            mediaFormat.setString("language", str);
            int i4 = 0;
            mediaFormat.setInteger("is-forced-subtitle", (i2 & 2) != 0 ? 1 : 0);
            mediaFormat.setInteger("is-autoselect", (i2 & 4) != 0 ? 1 : 0);
            if ((i2 & 1) == 0) {
                i3 = 0;
            }
            mediaFormat.setInteger("is-default", i3);
            if (i != 2) {
                i4 = 4;
            }
            return new C1715a(i4, mediaFormat);
        }
    }

    public C1778k(C1774j jVar) {
        this.f7163a = jVar;
        DefaultTrackSelector defaultTrackSelector = this.f7164b;
        DefaultTrackSelector.C0341d dVar = new DefaultTrackSelector.C0341d();
        dVar.mo37923a(true);
        dVar.m37926a(3, true);
        defaultTrackSelector.m37953a(dVar);
    }

    /* renamed from: a */
    public static int m32110a(String str) {
        char c;
        int hashCode = str.hashCode();
        if (hashCode == -1004728940) {
            if (str.equals("text/vtt")) {
                c = 2;
            }
            c = 65535;
        } else if (hashCode != 1566015601) {
            if (hashCode == 1566016562 && str.equals("application/cea-708")) {
                c = 1;
            }
            c = 65535;
        } else {
            if (str.equals("application/cea-608")) {
                c = 0;
            }
            c = 65535;
        }
        if (c == 0) {
            return 0;
        }
        if (c == 1) {
            return 1;
        }
        if (c == 2) {
            return 2;
        }
        throw new IllegalArgumentException("Unexpected text MIME type " + str);
    }

    /* renamed from: a */
    public DefaultTrackSelector m32114a() {
        return this.f7164b;
    }

    /* renamed from: a */
    public void m32113a(int i) {
        boolean z = false;
        C0948h.m35439a(i >= this.f7166d.size(), (Object) "Video track deselection is not supported");
        int size = i - this.f7166d.size();
        C0948h.m35439a(size >= this.f7165c.size(), (Object) "Audio track deselection is not supported");
        int size2 = size - this.f7165c.size();
        if (size2 < this.f7167e.size()) {
            this.f7173k = -1;
            DefaultTrackSelector defaultTrackSelector = this.f7164b;
            DefaultTrackSelector.C0341d d = defaultTrackSelector.m37943d();
            d.m37926a(3, true);
            defaultTrackSelector.m37953a(d);
            return;
        }
        if (size2 - this.f7167e.size() == this.f7175m) {
            z = true;
        }
        C0948h.m35440a(z);
        this.f7163a.m32121z();
        this.f7175m = -1;
    }

    /* renamed from: a */
    public void m32112a(int i, int i2) {
        boolean z = false;
        int i3 = 0;
        while (true) {
            if (i3 >= this.f7169g.size()) {
                break;
            }
            C1779a aVar = this.f7169g.get(i3);
            if (aVar.f7178c == i && aVar.f7179d == -1) {
                this.f7169g.set(i3, new C1779a(aVar.f7176a, i, aVar.f7180e, i2));
                if (this.f7175m == i3) {
                    this.f7163a.m32125b(i, i2);
                }
                z = true;
            } else {
                i3++;
            }
        }
        if (!z) {
            C1779a aVar2 = new C1779a(this.f7174l, i, null, i2);
            this.f7169g.add(aVar2);
            this.f7168f.add(aVar2.f7177b);
            this.f7170h = true;
        }
    }

    /* renamed from: a */
    public void m32111a(AbstractC1223d0 d0Var) {
        this.f7170h = true;
        DefaultTrackSelector defaultTrackSelector = this.f7164b;
        DefaultTrackSelector.C0341d d = defaultTrackSelector.m37943d();
        d.m37924b();
        defaultTrackSelector.m37953a(d);
        int i = -1;
        this.f7171i = -1;
        this.f7172j = -1;
        this.f7173k = -1;
        this.f7174l = -1;
        this.f7175m = -1;
        this.f7165c.clear();
        this.f7166d.clear();
        this.f7167e.clear();
        this.f7169g.clear();
        this.f7163a.m32121z();
        AbstractC1662d.C1663a c = this.f7164b.m32434c();
        if (c != null) {
            TrackGroupArray b = c.m32431b(1);
            for (int i2 = 0; i2 < b.f1859a; i2++) {
                this.f7165c.add(new C1715a(2, C1758d.m32244a(b.m37990a(i2).m37992a(0))));
            }
            TrackGroupArray b2 = c.m32431b(0);
            for (int i3 = 0; i3 < b2.f1859a; i3++) {
                this.f7166d.add(new C1715a(1, C1758d.m32244a(b2.m37990a(i3).m37992a(0))));
            }
            TrackGroupArray b3 = c.m32431b(3);
            for (int i4 = 0; i4 < b3.f1859a; i4++) {
                this.f7167e.add(new C1715a(5, C1758d.m32244a(b3.m37990a(i4).m37992a(0))));
            }
            C1671j f = d0Var.mo34068f();
            AbstractC1668i a = f.m32407a(1);
            this.f7171i = a == null ? -1 : b.m37989a(a.mo32425a());
            AbstractC1668i a2 = f.m32407a(0);
            this.f7172j = a2 == null ? -1 : b2.m37989a(a2.mo32425a());
            AbstractC1668i a3 = f.m32407a(3);
            this.f7173k = a3 == null ? -1 : b3.m37989a(a3.mo32425a());
            TrackGroupArray b4 = c.m32431b(2);
            for (int i5 = 0; i5 < b4.f1859a; i5++) {
                Format a4 = b4.m37990a(i5).m37992a(0);
                C0948h.m35442a(a4);
                Format format = a4;
                C1779a aVar = new C1779a(i5, m32110a(format.f1562i), format, -1);
                this.f7169g.add(aVar);
                this.f7168f.add(aVar.f7177b);
            }
            AbstractC1668i a5 = f.m32407a(2);
            if (a5 != null) {
                i = b4.m37989a(a5.mo32425a());
            }
            this.f7174l = i;
        }
    }

    /* renamed from: b */
    public int m32108b(int i) {
        int size;
        int i2;
        if (i == 1) {
            size = this.f7165c.size();
            i2 = this.f7172j;
        } else if (i == 2) {
            return this.f7171i;
        } else {
            if (i == 4) {
                size = this.f7165c.size() + this.f7166d.size() + this.f7167e.size();
                i2 = this.f7175m;
            } else if (i != 5) {
                return -1;
            } else {
                size = this.f7165c.size() + this.f7166d.size();
                i2 = this.f7173k;
            }
        }
        return size + i2;
    }

    /* renamed from: b */
    public List<MediaPlayer2.AbstractC0410c> m32109b() {
        ArrayList arrayList = new ArrayList(this.f7166d.size() + this.f7165c.size() + this.f7167e.size() + this.f7169g.size());
        arrayList.addAll(this.f7166d);
        arrayList.addAll(this.f7165c);
        arrayList.addAll(this.f7167e);
        arrayList.addAll(this.f7168f);
        return arrayList;
    }

    /* renamed from: c */
    public void m32106c(int i) {
        C0948h.m35439a(i >= this.f7166d.size(), (Object) "Video track selection is not supported");
        int size = i - this.f7166d.size();
        if (size < this.f7165c.size()) {
            this.f7171i = size;
            AbstractC1662d.C1663a c = this.f7164b.m32434c();
            C0948h.m35442a(c);
            TrackGroupArray b = c.m32431b(1);
            int i2 = b.m37990a(size).f1855a;
            int[] iArr = new int[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                iArr[i3] = i3;
            }
            DefaultTrackSelector.SelectionOverride selectionOverride = new DefaultTrackSelector.SelectionOverride(size, iArr);
            DefaultTrackSelector defaultTrackSelector = this.f7164b;
            DefaultTrackSelector.C0341d d = defaultTrackSelector.m37943d();
            d.m37927a(1, b, selectionOverride);
            defaultTrackSelector.m37954a(d.m37928a());
            return;
        }
        int size2 = size - this.f7165c.size();
        if (size2 < this.f7167e.size()) {
            this.f7173k = size2;
            AbstractC1662d.C1663a c2 = this.f7164b.m32434c();
            C0948h.m35442a(c2);
            TrackGroupArray b2 = c2.m32431b(3);
            DefaultTrackSelector.SelectionOverride selectionOverride2 = new DefaultTrackSelector.SelectionOverride(size2, 0);
            DefaultTrackSelector defaultTrackSelector2 = this.f7164b;
            DefaultTrackSelector.C0341d d2 = defaultTrackSelector2.m37943d();
            d2.m37926a(3, false);
            d2.m37927a(3, b2, selectionOverride2);
            defaultTrackSelector2.m37954a(d2.m37928a());
            return;
        }
        int size3 = size2 - this.f7167e.size();
        C0948h.m35440a(size3 < this.f7169g.size());
        C1779a aVar = this.f7169g.get(size3);
        if (this.f7174l != aVar.f7176a) {
            this.f7163a.m32121z();
            this.f7174l = aVar.f7176a;
            AbstractC1662d.C1663a c3 = this.f7164b.m32434c();
            C0948h.m35442a(c3);
            TrackGroupArray b3 = c3.m32431b(2);
            DefaultTrackSelector.SelectionOverride selectionOverride3 = new DefaultTrackSelector.SelectionOverride(this.f7174l, 0);
            DefaultTrackSelector defaultTrackSelector3 = this.f7164b;
            DefaultTrackSelector.C0341d d3 = defaultTrackSelector3.m37943d();
            d3.m37927a(2, b3, selectionOverride3);
            defaultTrackSelector3.m37954a(d3.m37928a());
        }
        int i4 = aVar.f7179d;
        if (i4 != -1) {
            this.f7163a.m32125b(aVar.f7178c, i4);
        }
        this.f7175m = size3;
    }

    /* renamed from: c */
    public boolean m32107c() {
        boolean z = this.f7170h;
        this.f7170h = false;
        return z;
    }
}
