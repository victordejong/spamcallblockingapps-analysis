package com.google.android.exoplayer2.text;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.text.p252l.C5328a;
import com.google.android.exoplayer2.text.p252l.C5332c;
import com.google.android.exoplayer2.text.p253m.C5342a;
import com.google.android.exoplayer2.text.p254n.C5353a;
import com.google.android.exoplayer2.text.p255o.C5356a;
import com.google.android.exoplayer2.text.p256p.C5362a;
import com.google.android.exoplayer2.text.p257q.C5364a;
import com.google.android.exoplayer2.text.p258r.C5373a;
import com.google.android.exoplayer2.text.p259s.C5376b;
import com.google.android.exoplayer2.text.p259s.C5385g;
/* renamed from: com.google.android.exoplayer2.text.g */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/g.class */
public interface AbstractC5322g {

    /* renamed from: a */
    public static final AbstractC5322g f16920a = new C5323a();

    /* renamed from: com.google.android.exoplayer2.text.g$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/g$a.class */
    static final class C5323a implements AbstractC5322g {
        C5323a() {
        }

        @Override // com.google.android.exoplayer2.text.AbstractC5322g
        /* renamed from: a */
        public AbstractC5321f mo19680a(Format format) {
            String str = format.f14461l;
            if (str != null) {
                boolean z = true;
                switch (str.hashCode()) {
                    case -1351681404:
                        if (str.equals("application/dvbsubs")) {
                            z = false;
                            break;
                        }
                        break;
                    case -1248334819:
                        if (str.equals("application/pgs")) {
                            z = true;
                            break;
                        }
                        break;
                    case -1026075066:
                        if (str.equals("application/x-mp4-vtt")) {
                            z = true;
                            break;
                        }
                        break;
                    case -1004728940:
                        if (str.equals("text/vtt")) {
                            z = true;
                            break;
                        }
                        break;
                    case 691401887:
                        if (str.equals("application/x-quicktime-tx3g")) {
                            z = true;
                            break;
                        }
                        break;
                    case 822864842:
                        if (str.equals("text/x-ssa")) {
                            z = true;
                            break;
                        }
                        break;
                    case 930165504:
                        if (str.equals("application/x-mp4-cea-608")) {
                            z = true;
                            break;
                        }
                        break;
                    case 1566015601:
                        if (str.equals("application/cea-608")) {
                            z = true;
                            break;
                        }
                        break;
                    case 1566016562:
                        if (str.equals("application/cea-708")) {
                            z = true;
                            break;
                        }
                        break;
                    case 1668750253:
                        if (str.equals("application/x-subrip")) {
                            z = true;
                            break;
                        }
                        break;
                    case 1693976202:
                        if (str.equals("application/ttml+xml")) {
                            z = true;
                            break;
                        }
                        break;
                }
                switch (z) {
                    case false:
                        return new C5342a(format.f14463n);
                    case true:
                        return new C5353a();
                    case true:
                        return new C5376b();
                    case true:
                        return new C5385g();
                    case true:
                        return new C5373a(format.f14463n);
                    case true:
                        return new C5356a(format.f14463n);
                    case true:
                    case true:
                        return new C5328a(str, format.f14450E);
                    case true:
                        return new C5332c(format.f14450E, format.f14463n);
                    case true:
                        return new C5362a();
                    case true:
                        return new C5364a();
                }
            }
            throw new IllegalArgumentException("Attempted to create decoder for unsupported MIME type: " + str);
        }

        @Override // com.google.android.exoplayer2.text.AbstractC5322g
        /* renamed from: b */
        public boolean mo19679b(Format format) {
            String str = format.f14461l;
            return "text/vtt".equals(str) || "text/x-ssa".equals(str) || "application/ttml+xml".equals(str) || "application/x-mp4-vtt".equals(str) || "application/x-subrip".equals(str) || "application/x-quicktime-tx3g".equals(str) || "application/cea-608".equals(str) || "application/x-mp4-cea-608".equals(str) || "application/cea-708".equals(str) || "application/dvbsubs".equals(str) || "application/pgs".equals(str);
        }
    }

    /* renamed from: a */
    AbstractC5321f mo19680a(Format format);

    /* renamed from: b */
    boolean mo19679b(Format format);
}
