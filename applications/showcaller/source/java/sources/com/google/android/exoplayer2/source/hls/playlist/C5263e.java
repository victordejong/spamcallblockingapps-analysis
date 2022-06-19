package com.google.android.exoplayer2.source.hls.playlist;

import android.net.Uri;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.offline.StreamKey;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.exoplayer2.source.hls.playlist.e */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/playlist/e.class */
public final class C5263e extends AbstractC5268g {

    /* renamed from: d */
    public static final C5263e f16642d = new C5263e("", Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, Collections.emptyList(), false, Collections.emptyMap(), Collections.emptyList());

    /* renamed from: e */
    public final List<Uri> f16643e;

    /* renamed from: f */
    public final List<C5265b> f16644f;

    /* renamed from: g */
    public final List<C5264a> f16645g;

    /* renamed from: h */
    public final List<C5264a> f16646h;

    /* renamed from: i */
    public final List<C5264a> f16647i;

    /* renamed from: j */
    public final List<C5264a> f16648j;

    /* renamed from: k */
    public final Format f16649k;

    /* renamed from: l */
    public final List<Format> f16650l;

    /* renamed from: m */
    public final Map<String, String> f16651m;

    /* renamed from: n */
    public final List<DrmInitData> f16652n;

    /* renamed from: com.google.android.exoplayer2.source.hls.playlist.e$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/playlist/e$a.class */
    public static final class C5264a {

        /* renamed from: a */
        public final Uri f16653a;

        /* renamed from: b */
        public final Format f16654b;

        /* renamed from: c */
        public final String f16655c;

        /* renamed from: d */
        public final String f16656d;

        public C5264a(Uri uri, Format format, String str, String str2) {
            this.f16653a = uri;
            this.f16654b = format;
            this.f16655c = str;
            this.f16656d = str2;
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.hls.playlist.e$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/playlist/e$b.class */
    public static final class C5265b {

        /* renamed from: a */
        public final Uri f16657a;

        /* renamed from: b */
        public final Format f16658b;

        /* renamed from: c */
        public final String f16659c;

        /* renamed from: d */
        public final String f16660d;

        /* renamed from: e */
        public final String f16661e;

        /* renamed from: f */
        public final String f16662f;

        public C5265b(Uri uri, Format format, String str, String str2, String str3, String str4) {
            this.f16657a = uri;
            this.f16658b = format;
            this.f16659c = str;
            this.f16660d = str2;
            this.f16661e = str3;
            this.f16662f = str4;
        }

        /* renamed from: b */
        public static C5265b m19908b(Uri uri) {
            return new C5265b(uri, Format.m21739r("0", null, "application/x-mpegURL", null, null, -1, 0, 0, null), null, null, null, null);
        }

        /* renamed from: a */
        public C5265b m19909a(Format format) {
            return new C5265b(this.f16657a, format, this.f16659c, this.f16660d, this.f16661e, this.f16662f);
        }
    }

    public C5263e(String str, List<String> list, List<C5265b> list2, List<C5264a> list3, List<C5264a> list4, List<C5264a> list5, List<C5264a> list6, Format format, List<Format> list7, boolean z, Map<String, String> map, List<DrmInitData> list8) {
        super(str, list, z);
        this.f16643e = Collections.unmodifiableList(m19910f(list2, list3, list4, list5, list6));
        this.f16644f = Collections.unmodifiableList(list2);
        this.f16645g = Collections.unmodifiableList(list3);
        this.f16646h = Collections.unmodifiableList(list4);
        this.f16647i = Collections.unmodifiableList(list5);
        this.f16648j = Collections.unmodifiableList(list6);
        this.f16649k = format;
        this.f16650l = list7 != null ? Collections.unmodifiableList(list7) : null;
        this.f16651m = Collections.unmodifiableMap(map);
        this.f16652n = Collections.unmodifiableList(list8);
    }

    /* renamed from: b */
    private static void m19914b(List<C5264a> list, List<Uri> list2) {
        for (int i = 0; i < list.size(); i++) {
            Uri uri = list.get(i).f16653a;
            if (uri != null && !list2.contains(uri)) {
                list2.add(uri);
            }
        }
    }

    /* renamed from: d */
    private static <T> List<T> m19912d(List<T> list, int i, List<StreamKey> list2) {
        ArrayList arrayList = new ArrayList(list2.size());
        for (int i2 = 0; i2 < list.size(); i2++) {
            T t = list.get(i2);
            int i3 = 0;
            while (true) {
                if (i3 < list2.size()) {
                    StreamKey streamKey = list2.get(i3);
                    if (streamKey.f16239e == i && streamKey.f16240f == i2) {
                        arrayList.add(t);
                        break;
                    }
                    i3++;
                }
            }
        }
        return arrayList;
    }

    /* renamed from: e */
    public static C5263e m19911e(String str) {
        return new C5263e("", Collections.emptyList(), Collections.singletonList(C5265b.m19908b(Uri.parse(str))), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, null, false, Collections.emptyMap(), Collections.emptyList());
    }

    /* renamed from: f */
    private static List<Uri> m19910f(List<C5265b> list, List<C5264a> list2, List<C5264a> list3, List<C5264a> list4, List<C5264a> list5) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            Uri uri = list.get(i).f16657a;
            if (!arrayList.contains(uri)) {
                arrayList.add(uri);
            }
        }
        m19914b(list2, arrayList);
        m19914b(list3, arrayList);
        m19914b(list4, arrayList);
        m19914b(list5, arrayList);
        return arrayList;
    }

    /* renamed from: c */
    public C5263e mo19907a(List<StreamKey> list) {
        return new C5263e(this.f16688a, this.f16689b, m19912d(this.f16644f, 0, list), Collections.emptyList(), m19912d(this.f16646h, 1, list), m19912d(this.f16647i, 2, list), Collections.emptyList(), this.f16649k, this.f16650l, this.f16690c, this.f16651m, this.f16652n);
    }
}
