package p1727n3.p1874y.p1906c;

import android.media.MediaFormat;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import androidx.media2.common.MediaItem;
import androidx.media2.common.SessionPlayer;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector;
import androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector$Parameters;
import androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector$c;
import androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters;
import java.util.HashMap;
import java.util.Map;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
/* renamed from: n3.y.c.d1 */
/* loaded from: classes-dex2jar.jar:n3/y/c/d1.class */
public final class C27470d1 {

    /* renamed from: a */
    public int f77321a;

    /* renamed from: b */
    public MediaItem f77322b;

    /* renamed from: c */
    public final b1 f77323c;

    /* renamed from: d */
    public final DefaultTrackSelector f77324d;

    /* renamed from: i */
    public boolean f77329i;

    /* renamed from: e */
    public final SparseArray<C27471b> f77325e = new SparseArray<>();

    /* renamed from: f */
    public final SparseArray<C27471b> f77326f = new SparseArray<>();

    /* renamed from: g */
    public final SparseArray<C27471b> f77327g = new SparseArray<>();

    /* renamed from: h */
    public final SparseArray<a> f77328h = new SparseArray<>();

    /* renamed from: j */
    public C27471b f77330j = null;

    /* renamed from: k */
    public C27471b f77331k = null;

    /* renamed from: l */
    public C27471b f77332l = null;

    /* renamed from: m */
    public a f77333m = null;

    /* renamed from: n */
    public int f77334n = -1;

    /* renamed from: n3.y.c.d1$b */
    /* loaded from: classes-dex2jar.jar:n3/y/c/d1$b.class */
    public static class C27471b {

        /* renamed from: a */
        public final int f77335a;

        /* renamed from: b */
        public final SessionPlayer.TrackInfo f77336b;

        public C27471b(int i, int i2, MediaFormat mediaFormat, int i3) {
            this.f77335a = i;
            this.f77336b = new SessionPlayer.TrackInfo(i3, i2, mediaFormat, i2 == 1 ? false : true);
        }
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector$c, androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters$b] */
    public C27470d1(b1 b1Var) {
        this.f77323c = b1Var;
        DefaultTrackSelector defaultTrackSelector = new DefaultTrackSelector();
        this.f77324d = defaultTrackSelector;
        ?? r0 = new TrackSelectionParameters.C0253b(DefaultTrackSelector$Parameters.f1062B) { // from class: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector$c

            /* renamed from: e */
            public int f1104e;

            /* renamed from: f */
            public int f1105f;

            /* renamed from: g */
            public int f1106g;

            /* renamed from: h */
            public int f1107h;

            /* renamed from: i */
            public boolean f1108i;

            /* renamed from: j */
            public boolean f1109j;

            /* renamed from: k */
            public boolean f1110k;

            /* renamed from: l */
            public int f1111l;

            /* renamed from: m */
            public int f1112m;

            /* renamed from: n */
            public boolean f1113n;

            /* renamed from: o */
            public int f1114o;

            /* renamed from: p */
            public int f1115p;

            /* renamed from: q */
            public boolean f1116q;

            /* renamed from: r */
            public boolean f1117r;

            /* renamed from: s */
            public boolean f1118s;

            /* renamed from: t */
            public boolean f1119t;

            /* renamed from: u */
            public boolean f1120u;

            /* renamed from: v */
            public boolean f1121v;

            /* renamed from: w */
            public boolean f1122w;

            /* renamed from: x */
            public int f1123x;

            /* renamed from: y */
            public final SparseArray<Map<TrackGroupArray, DefaultTrackSelector$SelectionOverride>> f1124y;

            /* renamed from: z */
            public final SparseBooleanArray f1125z;

            {
                super(defaultTrackSelector$Parameters);
                this.f1104e = defaultTrackSelector$Parameters.f1064f;
                this.f1105f = defaultTrackSelector$Parameters.f1065g;
                this.f1106g = defaultTrackSelector$Parameters.f1066h;
                this.f1107h = defaultTrackSelector$Parameters.f1067i;
                this.f1108i = defaultTrackSelector$Parameters.f1068j;
                this.f1109j = defaultTrackSelector$Parameters.f1069k;
                this.f1110k = defaultTrackSelector$Parameters.f1070l;
                this.f1111l = defaultTrackSelector$Parameters.f1071m;
                this.f1112m = defaultTrackSelector$Parameters.f1072n;
                this.f1113n = defaultTrackSelector$Parameters.f1073o;
                this.f1114o = defaultTrackSelector$Parameters.f1074p;
                this.f1115p = defaultTrackSelector$Parameters.f1075q;
                this.f1116q = defaultTrackSelector$Parameters.f1076r;
                this.f1117r = defaultTrackSelector$Parameters.f1077s;
                this.f1118s = defaultTrackSelector$Parameters.f1078t;
                this.f1119t = defaultTrackSelector$Parameters.f1079u;
                this.f1120u = defaultTrackSelector$Parameters.f1080v;
                this.f1121v = defaultTrackSelector$Parameters.f1081w;
                this.f1122w = defaultTrackSelector$Parameters.f1082x;
                this.f1123x = defaultTrackSelector$Parameters.f1083y;
                SparseArray<Map<TrackGroupArray, DefaultTrackSelector$SelectionOverride>> sparseArray = defaultTrackSelector$Parameters.f1084z;
                SparseArray<Map<TrackGroupArray, DefaultTrackSelector$SelectionOverride>> sparseArray2 = new SparseArray<>();
                for (int i = 0; i < sparseArray.size(); i++) {
                    sparseArray2.put(sparseArray.keyAt(i), new HashMap(sparseArray.valueAt(i)));
                }
                this.f1124y = sparseArray2;
                this.f1125z = defaultTrackSelector$Parameters.f1063A.clone();
            }

            /* renamed from: a */
            public DefaultTrackSelector$Parameters m42823a() {
                return new DefaultTrackSelector$Parameters(this.f1104e, this.f1105f, this.f1106g, this.f1107h, this.f1108i, this.f1109j, this.f1110k, this.f1111l, this.f1112m, this.f1113n, this.f1137a, this.f1114o, this.f1115p, this.f1116q, this.f1117r, this.f1118s, this.f1119t, this.f1138b, this.f1139c, this.f1140d, this.f1120u, this.f1121v, this.f1122w, this.f1123x, this.f1124y, this.f1125z);
            }

            /* renamed from: b */
            public final DefaultTrackSelector$c m42822b(int i, boolean z) {
                if (this.f1125z.get(i) == z) {
                    return this;
                }
                if (z) {
                    this.f1125z.put(i, true);
                } else {
                    this.f1125z.delete(i);
                }
                return this;
            }

            /* renamed from: c */
            public final DefaultTrackSelector$c m42821c(int i, TrackGroupArray trackGroupArray, DefaultTrackSelector$SelectionOverride defaultTrackSelector$SelectionOverride) {
                Map<TrackGroupArray, DefaultTrackSelector$SelectionOverride> map = this.f1124y.get(i);
                HashMap hashMap = map;
                if (map == null) {
                    hashMap = new HashMap();
                    this.f1124y.put(i, hashMap);
                }
                if (!hashMap.containsKey(trackGroupArray) || !C27445x.m286a(hashMap.get(trackGroupArray), defaultTrackSelector$SelectionOverride)) {
                    hashMap.put(trackGroupArray, defaultTrackSelector$SelectionOverride);
                    return this;
                }
                return this;
            }
        };
        r0.f1139c = true;
        r0.m42822b(3, true);
        defaultTrackSelector.m((DefaultTrackSelector$c) r0);
    }

    /* renamed from: a */
    public SessionPlayer.TrackInfo m232a(int i) {
        SessionPlayer.TrackInfo trackInfo = null;
        if (i == 1) {
            C27471b c27471b = this.f77331k;
            return c27471b == null ? null : c27471b.f77336b;
        } else if (i == 2) {
            C27471b c27471b2 = this.f77330j;
            return c27471b2 == null ? null : c27471b2.f77336b;
        } else if (i == 4) {
            a aVar = this.f77333m;
            return aVar == null ? null : aVar.f77336b;
        } else if (i != 5) {
            return null;
        } else {
            C27471b c27471b3 = this.f77332l;
            if (c27471b3 != null) {
                trackInfo = c27471b3.f77336b;
            }
            return trackInfo;
        }
    }
}
