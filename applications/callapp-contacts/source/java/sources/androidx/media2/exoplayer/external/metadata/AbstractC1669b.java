package androidx.media2.exoplayer.external.metadata;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.metadata.emsg.C1675a;
import androidx.media2.exoplayer.external.metadata.icy.C1681a;
import androidx.media2.exoplayer.external.metadata.id3.C1693a;
import androidx.media2.exoplayer.external.metadata.scte35.C1705a;
/* renamed from: androidx.media2.exoplayer.external.metadata.b */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/b.class */
public interface AbstractC1669b {

    /* renamed from: a */
    public static final AbstractC1669b f6663a = new AbstractC1669b() { // from class: androidx.media2.exoplayer.external.metadata.b.1
        @Override // androidx.media2.exoplayer.external.metadata.AbstractC1669b
        /* renamed from: a */
        public final boolean mo41193a(Format format) {
            String str = format.sampleMimeType;
            return "application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str) || "application/x-icy".equals(str);
        }

        @Override // androidx.media2.exoplayer.external.metadata.AbstractC1669b
        /* renamed from: b */
        public final AbstractC1668a mo41192b(Format format) {
            String str = format.sampleMimeType;
            str.hashCode();
            boolean z = true;
            switch (str.hashCode()) {
                case -1348231605:
                    if (str.equals("application/x-icy")) {
                        z = false;
                        break;
                    }
                    break;
                case -1248341703:
                    if (str.equals("application/id3")) {
                        z = true;
                        break;
                    }
                    break;
                case 1154383568:
                    if (str.equals("application/x-emsg")) {
                        z = true;
                        break;
                    }
                    break;
                case 1652648887:
                    if (str.equals("application/x-scte35")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    return new C1681a();
                case true:
                    return new C1693a();
                case true:
                    return new C1675a();
                case true:
                    return new C1705a();
                default:
                    throw new IllegalArgumentException("Attempted to create decoder for unsupported format");
            }
        }
    };

    /* renamed from: a */
    boolean mo41193a(Format format);

    /* renamed from: b */
    AbstractC1668a mo41192b(Format format);
}
