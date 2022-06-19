package androidx.media2.exoplayer.external.text;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.text.p071a.C1857a;
import androidx.media2.exoplayer.external.text.p071a.C1861c;
import androidx.media2.exoplayer.external.text.p072b.C1871a;
import androidx.media2.exoplayer.external.text.p073c.C1883a;
import androidx.media2.exoplayer.external.text.p074d.C1887a;
import androidx.media2.exoplayer.external.text.p075e.C1890a;
import androidx.media2.exoplayer.external.text.p076f.C1894a;
import androidx.media2.exoplayer.external.text.p077g.C1903a;
import androidx.media2.exoplayer.external.text.p078h.C1907b;
import androidx.media2.exoplayer.external.text.p078h.C1916g;
/* renamed from: androidx.media2.exoplayer.external.text.f */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/f.class */
public interface AbstractC1892f {

    /* renamed from: a */
    public static final AbstractC1892f f7593a = new AbstractC1892f() { // from class: androidx.media2.exoplayer.external.text.f.1
        @Override // androidx.media2.exoplayer.external.text.AbstractC1892f
        /* renamed from: a */
        public final boolean mo41947a(Format format) {
            String str = format.sampleMimeType;
            return "text/vtt".equals(str) || "text/x-ssa".equals(str) || "application/ttml+xml".equals(str) || "application/x-mp4-vtt".equals(str) || "application/x-subrip".equals(str) || "application/x-quicktime-tx3g".equals(str) || "application/cea-608".equals(str) || "application/x-mp4-cea-608".equals(str) || "application/cea-708".equals(str) || "application/dvbsubs".equals(str) || "application/pgs".equals(str);
        }

        @Override // androidx.media2.exoplayer.external.text.AbstractC1892f
        /* renamed from: b */
        public final AbstractC1889e mo41946b(Format format) {
            String str = format.sampleMimeType;
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
                    return new C1871a(format.initializationData);
                case true:
                    return new C1883a();
                case true:
                    return new C1907b();
                case true:
                    return new C1916g();
                case true:
                    return new C1903a(format.initializationData);
                case true:
                    return new C1887a(format.initializationData);
                case true:
                case true:
                    return new C1857a(format.sampleMimeType, format.accessibilityChannel);
                case true:
                    return new C1861c(format.accessibilityChannel, format.initializationData);
                case true:
                    return new C1890a();
                case true:
                    return new C1894a();
                default:
                    throw new IllegalArgumentException("Attempted to create decoder for unsupported format");
            }
        }
    };

    /* renamed from: a */
    boolean mo41947a(Format format);

    /* renamed from: b */
    AbstractC1889e mo41946b(Format format);
}
