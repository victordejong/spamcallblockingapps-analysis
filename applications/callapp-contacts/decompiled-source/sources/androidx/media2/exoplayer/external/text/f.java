package androidx.media2.exoplayer.external.text;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.text.a.c;
import androidx.media2.exoplayer.external.text.b.a;
import androidx.media2.exoplayer.external.text.h.b;
import androidx.media2.exoplayer.external.text.h.g;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/f.class */
public interface f {

    /* renamed from: a  reason: collision with root package name */
    public static final f f3875a = new f() { // from class: androidx.media2.exoplayer.external.text.f.1
        @Override // androidx.media2.exoplayer.external.text.f
        public final boolean a(Format format) {
            String str = format.sampleMimeType;
            return "text/vtt".equals(str) || "text/x-ssa".equals(str) || "application/ttml+xml".equals(str) || "application/x-mp4-vtt".equals(str) || "application/x-subrip".equals(str) || "application/x-quicktime-tx3g".equals(str) || "application/cea-608".equals(str) || "application/x-mp4-cea-608".equals(str) || "application/cea-708".equals(str) || "application/dvbsubs".equals(str) || "application/pgs".equals(str);
        }

        @Override // androidx.media2.exoplayer.external.text.f
        public final e b(Format format) {
            String str = format.sampleMimeType;
            str.hashCode();
            char c2 = 65535;
            switch (str.hashCode()) {
                case -1351681404:
                    if (str.equals("application/dvbsubs")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -1248334819:
                    if (str.equals("application/pgs")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case -1026075066:
                    if (str.equals("application/x-mp4-vtt")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case -1004728940:
                    if (str.equals("text/vtt")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 691401887:
                    if (str.equals("application/x-quicktime-tx3g")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case 822864842:
                    if (str.equals("text/x-ssa")) {
                        c2 = 5;
                        break;
                    }
                    break;
                case 930165504:
                    if (str.equals("application/x-mp4-cea-608")) {
                        c2 = 6;
                        break;
                    }
                    break;
                case 1566015601:
                    if (str.equals("application/cea-608")) {
                        c2 = 7;
                        break;
                    }
                    break;
                case 1566016562:
                    if (str.equals("application/cea-708")) {
                        c2 = '\b';
                        break;
                    }
                    break;
                case 1668750253:
                    if (str.equals("application/x-subrip")) {
                        c2 = '\t';
                        break;
                    }
                    break;
                case 1693976202:
                    if (str.equals("application/ttml+xml")) {
                        c2 = '\n';
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    return new a(format.initializationData);
                case 1:
                    return new androidx.media2.exoplayer.external.text.c.a();
                case 2:
                    return new b();
                case 3:
                    return new g();
                case 4:
                    return new androidx.media2.exoplayer.external.text.g.a(format.initializationData);
                case 5:
                    return new androidx.media2.exoplayer.external.text.d.a(format.initializationData);
                case 6:
                case 7:
                    return new androidx.media2.exoplayer.external.text.a.a(format.sampleMimeType, format.accessibilityChannel);
                case '\b':
                    return new c(format.accessibilityChannel, format.initializationData);
                case '\t':
                    return new androidx.media2.exoplayer.external.text.e.a();
                case '\n':
                    return new androidx.media2.exoplayer.external.text.f.a();
                default:
                    throw new IllegalArgumentException("Attempted to create decoder for unsupported format");
            }
        }
    };

    boolean a(Format format);

    e b(Format format);
}
