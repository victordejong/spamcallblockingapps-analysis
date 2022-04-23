package p012b.p076s.p078b.p079a.p102w0.p105n0.p106q;

import android.net.Uri;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.offline.StreamKey;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: b.s.b.a.w0.n0.q.e */
/* loaded from: classes-dex2jar.jar:b/s/b/a/w0/n0/q/e.class */
public final class C1620e extends AbstractC1625g {

    /* renamed from: l */
    public static final C1620e f6665l = new C1620e("", Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, Collections.emptyList(), false, Collections.emptyMap(), Collections.emptyList());

    /* renamed from: d */
    public final List<Uri> f6666d;

    /* renamed from: e */
    public final List<C1622b> f6667e;

    /* renamed from: f */
    public final List<C1621a> f6668f;

    /* renamed from: g */
    public final List<C1621a> f6669g;

    /* renamed from: h */
    public final Format f6670h;

    /* renamed from: i */
    public final List<Format> f6671i;

    /* renamed from: j */
    public final Map<String, String> f6672j;

    /* renamed from: k */
    public final List<DrmInitData> f6673k;

    /* renamed from: b.s.b.a.w0.n0.q.e$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/n0/q/e$a.class */
    public static final class C1621a {

        /* renamed from: a */
        public final Uri f6674a;

        /* renamed from: b */
        public final Format f6675b;

        /* renamed from: c */
        public final String f6676c;

        public C1621a(Uri uri, Format format, String str, String str2) {
            this.f6674a = uri;
            this.f6675b = format;
            this.f6676c = str2;
        }
    }

    /* renamed from: b.s.b.a.w0.n0.q.e$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/n0/q/e$b.class */
    public static final class C1622b {

        /* renamed from: a */
        public final Uri f6677a;

        /* renamed from: b */
        public final Format f6678b;

        /* renamed from: c */
        public final String f6679c;

        /* renamed from: d */
        public final String f6680d;

        /* renamed from: e */
        public final String f6681e;

        /* renamed from: f */
        public final String f6682f;

        public C1622b(Uri uri, Format format, String str, String str2, String str3, String str4) {
            this.f6677a = uri;
            this.f6678b = format;
            this.f6679c = str;
            this.f6680d = str2;
            this.f6681e = str3;
            this.f6682f = str4;
        }

        /* renamed from: a */
        public static C1622b m32555a(Uri uri) {
            return new C1622b(uri, Format.m38173a("0", null, "application/x-mpegURL", null, null, -1, 0, 0, null), null, null, null, null);
        }

        /* renamed from: a */
        public C1622b m32554a(Format format) {
            return new C1622b(this.f6677a, format, this.f6679c, this.f6680d, this.f6681e, this.f6682f);
        }
    }

    public C1620e(String str, List<String> list, List<C1622b> list2, List<C1621a> list3, List<C1621a> list4, List<C1621a> list5, List<C1621a> list6, Format format, List<Format> list7, boolean z, Map<String, String> map, List<DrmInitData> list8) {
        super(str, list, z);
        this.f6666d = Collections.unmodifiableList(m32556a(list2, list3, list4, list5, list6));
        this.f6667e = Collections.unmodifiableList(list2);
        Collections.unmodifiableList(list3);
        this.f6668f = Collections.unmodifiableList(list4);
        this.f6669g = Collections.unmodifiableList(list5);
        Collections.unmodifiableList(list6);
        this.f6670h = format;
        this.f6671i = list7 != null ? Collections.unmodifiableList(list7) : null;
        this.f6672j = Collections.unmodifiableMap(map);
        this.f6673k = Collections.unmodifiableList(list8);
    }

    /* renamed from: a */
    public static C1620e m32559a(String str) {
        return new C1620e(null, Collections.emptyList(), Collections.singletonList(C1622b.m32555a(Uri.parse(str))), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, null, false, Collections.emptyMap(), Collections.emptyList());
    }

    /* renamed from: a */
    public static <T> List<T> m32558a(List<T> list, int i, List<StreamKey> list2) {
        ArrayList arrayList = new ArrayList(list2.size());
        for (int i2 = 0; i2 < list.size(); i2++) {
            T t = list.get(i2);
            int i3 = 0;
            while (true) {
                if (i3 < list2.size()) {
                    StreamKey streamKey = list2.get(i3);
                    if (streamKey.f1836b == i && streamKey.f1837c == i2) {
                        arrayList.add(t);
                        break;
                    }
                    i3++;
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static List<Uri> m32556a(List<C1622b> list, List<C1621a> list2, List<C1621a> list3, List<C1621a> list4, List<C1621a> list5) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            Uri uri = list.get(i).f6677a;
            if (!arrayList.contains(uri)) {
                arrayList.add(uri);
            }
        }
        m32557a(list2, arrayList);
        m32557a(list3, arrayList);
        m32557a(list4, arrayList);
        m32557a(list5, arrayList);
        return arrayList;
    }

    /* renamed from: a */
    public static void m32557a(List<C1621a> list, List<Uri> list2) {
        for (int i = 0; i < list.size(); i++) {
            Uri uri = list.get(i).f6674a;
            if (uri != null && !list2.contains(uri)) {
                list2.add(uri);
            }
        }
    }

    @Override // p012b.p076s.p078b.p079a.p101v0.AbstractC1529a
    /* renamed from: a */
    public AbstractC1625g mo32550a(List<StreamKey> list) {
        return new C1620e(this.f6707a, this.f6708b, m32558a(this.f6667e, 0, list), Collections.emptyList(), m32558a(this.f6668f, 1, list), m32558a(this.f6669g, 2, list), Collections.emptyList(), this.f6670h, this.f6671i, this.f6709c, this.f6672j, this.f6673k);
    }
}
