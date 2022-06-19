package com.google.android.exoplayer2.text;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.text.p337a.C11344a;
import com.google.android.exoplayer2.text.p337a.C11347b;
import com.google.android.exoplayer2.text.p338b.C11359a;
import com.google.android.exoplayer2.text.p339c.C11371a;
import com.google.android.exoplayer2.text.p341e.C11380a;
import com.google.android.exoplayer2.text.p342f.C11387a;
import com.google.android.exoplayer2.text.p343g.C11393c;
import com.google.android.exoplayer2.text.p344h.C11403a;
import com.google.android.exoplayer2.text.p345i.C11407b;
import com.google.android.exoplayer2.text.p345i.C11417g;
/* renamed from: com.google.android.exoplayer2.text.g */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/g.class */
public interface AbstractC11389g {

    /* renamed from: a */
    public static final AbstractC11389g f37561a = new AbstractC11389g() { // from class: com.google.android.exoplayer2.text.g.1
        @Override // com.google.android.exoplayer2.text.AbstractC11389g
        /* renamed from: a */
        public final boolean mo20700a(Format format) {
            String str = format.sampleMimeType;
            return "text/vtt".equals(str) || "text/x-ssa".equals(str) || "application/ttml+xml".equals(str) || "application/x-mp4-vtt".equals(str) || "application/x-subrip".equals(str) || "application/x-quicktime-tx3g".equals(str) || "application/cea-608".equals(str) || "application/x-mp4-cea-608".equals(str) || "application/cea-708".equals(str) || "application/dvbsubs".equals(str) || "application/pgs".equals(str);
        }

        @Override // com.google.android.exoplayer2.text.AbstractC11389g
        /* renamed from: b */
        public final AbstractC11386f mo20699b(Format format) {
            String str = format.sampleMimeType;
            if (str != null) {
                str.hashCode();
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
                        return new C11359a(format.initializationData);
                    case true:
                        return new C11371a();
                    case true:
                        return new C11407b();
                    case true:
                        return new C11417g();
                    case true:
                        return new C11403a(format.initializationData);
                    case true:
                        return new C11380a(format.initializationData);
                    case true:
                    case true:
                        return new C11344a(str, format.accessibilityChannel, 16000L);
                    case true:
                        return new C11347b(format.accessibilityChannel, format.initializationData);
                    case true:
                        return new C11387a();
                    case true:
                        return new C11393c();
                }
            }
            throw new IllegalArgumentException("Attempted to create decoder for unsupported MIME type: ".concat(String.valueOf(str)));
        }
    };

    /* renamed from: a */
    boolean mo20700a(Format format);

    /* renamed from: b */
    AbstractC11386f mo20699b(Format format);
}
