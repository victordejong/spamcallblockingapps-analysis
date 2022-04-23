package androidx.media2.exoplayer.external.source.hls.playlist;

import android.net.Uri;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.offline.StreamKey;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/e.class */
public final class e extends g {

    /* renamed from: a  reason: collision with root package name */
    public static final e f3694a = new e("", Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, Collections.emptyList(), false, Collections.emptyMap(), Collections.emptyList());

    /* renamed from: b  reason: collision with root package name */
    public final List<Uri> f3695b;

    /* renamed from: c  reason: collision with root package name */
    public final List<b> f3696c;

    /* renamed from: d  reason: collision with root package name */
    public final List<a> f3697d;
    public final List<a> e;
    public final List<a> f;
    public final List<a> g;
    public final Format h;
    public final List<Format> i;
    public final Map<String, String> j;
    public final List<DrmInitData> k;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/e$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f3698a;

        /* renamed from: b  reason: collision with root package name */
        public final Format f3699b;

        /* renamed from: c  reason: collision with root package name */
        public final String f3700c;

        /* renamed from: d  reason: collision with root package name */
        public final String f3701d;

        public a(Uri uri, Format format, String str, String str2) {
            this.f3698a = uri;
            this.f3699b = format;
            this.f3700c = str;
            this.f3701d = str2;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/e$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f3702a;

        /* renamed from: b  reason: collision with root package name */
        public final Format f3703b;

        /* renamed from: c  reason: collision with root package name */
        public final String f3704c;

        /* renamed from: d  reason: collision with root package name */
        public final String f3705d;
        public final String e;
        public final String f;

        public b(Uri uri, Format format, String str, String str2, String str3, String str4) {
            this.f3702a = uri;
            this.f3703b = format;
            this.f3704c = str;
            this.f3705d = str2;
            this.e = str3;
            this.f = str4;
        }
    }

    public e(String str, List<String> list, List<b> list2, List<a> list3, List<a> list4, List<a> list5, List<a> list6, Format format, List<Format> list7, boolean z, Map<String, String> map, List<DrmInitData> list8) {
        super(str, list, z);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list2.size(); i++) {
            Uri uri = list2.get(i).f3702a;
            if (!arrayList.contains(uri)) {
                arrayList.add(uri);
            }
        }
        a(list3, arrayList);
        a(list4, arrayList);
        a(list5, arrayList);
        a(list6, arrayList);
        this.f3695b = Collections.unmodifiableList(arrayList);
        this.f3696c = Collections.unmodifiableList(list2);
        this.f3697d = Collections.unmodifiableList(list3);
        this.e = Collections.unmodifiableList(list4);
        this.f = Collections.unmodifiableList(list5);
        this.g = Collections.unmodifiableList(list6);
        this.h = format;
        this.i = list7 != null ? Collections.unmodifiableList(list7) : null;
        this.j = Collections.unmodifiableMap(map);
        this.k = Collections.unmodifiableList(list8);
    }

    public static e a(String str) {
        return new e(null, Collections.emptyList(), Collections.singletonList(new b(Uri.parse(str), Format.createContainerFormat("0", null, "application/x-mpegURL", null, null, -1, 0, 0, null), null, null, null, null)), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, null, false, Collections.emptyMap(), Collections.emptyList());
    }

    private static <T> List<T> a(List<T> list, int i, List<StreamKey> list2) {
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

    private static void a(List<a> list, List<Uri> list2) {
        for (int i = 0; i < list.size(); i++) {
            Uri uri = list.get(i).f3698a;
            if (uri != null && !list2.contains(uri)) {
                list2.add(uri);
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.offline.a
    public final /* synthetic */ g a(List list) {
        return new e(this.n, this.o, a(this.f3696c, 0, list), Collections.emptyList(), a(this.e, 1, list), a(this.f, 2, list), Collections.emptyList(), this.h, this.i, this.p, this.j, this.k);
    }
}
