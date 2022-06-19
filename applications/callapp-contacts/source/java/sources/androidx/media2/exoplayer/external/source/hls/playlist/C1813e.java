package androidx.media2.exoplayer.external.source.hls.playlist;

import android.net.Uri;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.offline.StreamKey;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: androidx.media2.exoplayer.external.source.hls.playlist.e */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/e.class */
public final class C1813e extends AbstractC1818g {

    /* renamed from: a */
    public static final C1813e f7224a = new C1813e("", Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, Collections.emptyList(), false, Collections.emptyMap(), Collections.emptyList());

    /* renamed from: b */
    public final List<Uri> f7225b;

    /* renamed from: c */
    public final List<C1815b> f7226c;

    /* renamed from: d */
    public final List<C1814a> f7227d;

    /* renamed from: e */
    public final List<C1814a> f7228e;

    /* renamed from: f */
    public final List<C1814a> f7229f;

    /* renamed from: g */
    public final List<C1814a> f7230g;

    /* renamed from: h */
    public final Format f7231h;

    /* renamed from: i */
    public final List<Format> f7232i;

    /* renamed from: j */
    public final Map<String, String> f7233j;

    /* renamed from: k */
    public final List<DrmInitData> f7234k;

    /* renamed from: androidx.media2.exoplayer.external.source.hls.playlist.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/e$a.class */
    public static final class C1814a {

        /* renamed from: a */
        public final Uri f7235a;

        /* renamed from: b */
        public final Format f7236b;

        /* renamed from: c */
        public final String f7237c;

        /* renamed from: d */
        public final String f7238d;

        public C1814a(Uri uri, Format format, String str, String str2) {
            this.f7235a = uri;
            this.f7236b = format;
            this.f7237c = str;
            this.f7238d = str2;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.source.hls.playlist.e$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/e$b.class */
    public static final class C1815b {

        /* renamed from: a */
        public final Uri f7239a;

        /* renamed from: b */
        public final Format f7240b;

        /* renamed from: c */
        public final String f7241c;

        /* renamed from: d */
        public final String f7242d;

        /* renamed from: e */
        public final String f7243e;

        /* renamed from: f */
        public final String f7244f;

        public C1815b(Uri uri, Format format, String str, String str2, String str3, String str4) {
            this.f7239a = uri;
            this.f7240b = format;
            this.f7241c = str;
            this.f7242d = str2;
            this.f7243e = str3;
            this.f7244f = str4;
        }
    }

    public C1813e(String str, List<String> list, List<C1815b> list2, List<C1814a> list3, List<C1814a> list4, List<C1814a> list5, List<C1814a> list6, Format format, List<Format> list7, boolean z, Map<String, String> map, List<DrmInitData> list8) {
        super(str, list, z);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list2.size(); i++) {
            Uri uri = list2.get(i).f7239a;
            if (!arrayList.contains(uri)) {
                arrayList.add(uri);
            }
        }
        m42147a(list3, arrayList);
        m42147a(list4, arrayList);
        m42147a(list5, arrayList);
        m42147a(list6, arrayList);
        this.f7225b = Collections.unmodifiableList(arrayList);
        this.f7226c = Collections.unmodifiableList(list2);
        this.f7227d = Collections.unmodifiableList(list3);
        this.f7228e = Collections.unmodifiableList(list4);
        this.f7229f = Collections.unmodifiableList(list5);
        this.f7230g = Collections.unmodifiableList(list6);
        this.f7231h = format;
        this.f7232i = list7 != null ? Collections.unmodifiableList(list7) : null;
        this.f7233j = Collections.unmodifiableMap(map);
        this.f7234k = Collections.unmodifiableList(list8);
    }

    /* renamed from: a */
    public static C1813e m42149a(String str) {
        return new C1813e(null, Collections.emptyList(), Collections.singletonList(new C1815b(Uri.parse(str), Format.createContainerFormat("0", null, "application/x-mpegURL", null, null, -1, 0, 0, null), null, null, null, null)), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, null, false, Collections.emptyMap(), Collections.emptyList());
    }

    /* renamed from: a */
    private static <T> List<T> m42148a(List<T> list, int i, List<StreamKey> list2) {
        ArrayList arrayList = new ArrayList(list2.size());
        for (int i2 = 0; i2 < list.size(); i2++) {
            T t = list.get(i2);
            int i3 = 0;
            while (true) {
                if (i3 < list2.size()) {
                    StreamKey streamKey = list2.get(i3);
                    if (streamKey.groupIndex == i && streamKey.trackIndex == i2) {
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
    private static void m42147a(List<C1814a> list, List<Uri> list2) {
        for (int i = 0; i < list.size(); i++) {
            Uri uri = list.get(i).f7235a;
            if (uri != null && !list2.contains(uri)) {
                list2.add(uri);
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.offline.AbstractC1709a
    /* renamed from: a */
    public final /* synthetic */ AbstractC1818g mo42145a(List list) {
        return new C1813e(this.f7270n, this.f7271o, m42148a(this.f7226c, 0, list), Collections.emptyList(), m42148a(this.f7228e, 1, list), m42148a(this.f7229f, 2, list), Collections.emptyList(), this.f7231h, this.f7232i, this.f7272p, this.f7233j, this.f7234k);
    }
}
