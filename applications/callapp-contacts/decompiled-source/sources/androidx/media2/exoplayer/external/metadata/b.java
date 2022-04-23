package androidx.media2.exoplayer.external.metadata;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.metadata.icy.a;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/b.class */
public interface b {

    /* renamed from: a  reason: collision with root package name */
    public static final b f3445a = new b() { // from class: androidx.media2.exoplayer.external.metadata.b.1
        @Override // androidx.media2.exoplayer.external.metadata.b
        public final boolean a(Format format) {
            String str = format.sampleMimeType;
            return "application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str) || "application/x-icy".equals(str);
        }

        @Override // androidx.media2.exoplayer.external.metadata.b
        public final a b(Format format) {
            String str = format.sampleMimeType;
            str.hashCode();
            char c2 = 65535;
            switch (str.hashCode()) {
                case -1348231605:
                    if (str.equals("application/x-icy")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -1248341703:
                    if (str.equals("application/id3")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 1154383568:
                    if (str.equals("application/x-emsg")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 1652648887:
                    if (str.equals("application/x-scte35")) {
                        c2 = 3;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    return new a();
                case 1:
                    return new androidx.media2.exoplayer.external.metadata.id3.a();
                case 2:
                    return new androidx.media2.exoplayer.external.metadata.emsg.a();
                case 3:
                    return new androidx.media2.exoplayer.external.metadata.scte35.a();
                default:
                    throw new IllegalArgumentException("Attempted to create decoder for unsupported format");
            }
        }
    };

    boolean a(Format format);

    a b(Format format);
}
