package com.google.android.exoplayer2.metadata;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.dvbsi.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/b.class */
public interface b {

    /* renamed from: a  reason: collision with root package name */
    public static final b f21436a = new b() { // from class: com.google.android.exoplayer2.metadata.b.1
        @Override // com.google.android.exoplayer2.metadata.b
        public final boolean a(Format format) {
            String str = format.sampleMimeType;
            return "application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str) || "application/x-icy".equals(str) || "application/vnd.dvb.ait".equals(str);
        }

        @Override // com.google.android.exoplayer2.metadata.b
        public final a b(Format format) {
            String str = format.sampleMimeType;
            if (str != null) {
                str.hashCode();
                char c2 = 65535;
                switch (str.hashCode()) {
                    case -1354451219:
                        if (str.equals("application/vnd.dvb.ait")) {
                            c2 = 0;
                            break;
                        }
                        break;
                    case -1348231605:
                        if (str.equals("application/x-icy")) {
                            c2 = 1;
                            break;
                        }
                        break;
                    case -1248341703:
                        if (str.equals("application/id3")) {
                            c2 = 2;
                            break;
                        }
                        break;
                    case 1154383568:
                        if (str.equals("application/x-emsg")) {
                            c2 = 3;
                            break;
                        }
                        break;
                    case 1652648887:
                        if (str.equals("application/x-scte35")) {
                            c2 = 4;
                            break;
                        }
                        break;
                }
                switch (c2) {
                    case 0:
                        return new a();
                    case 1:
                        return new com.google.android.exoplayer2.metadata.icy.a();
                    case 2:
                        return new com.google.android.exoplayer2.metadata.id3.a();
                    case 3:
                        return new com.google.android.exoplayer2.metadata.emsg.a();
                    case 4:
                        return new com.google.android.exoplayer2.metadata.scte35.a();
                }
            }
            throw new IllegalArgumentException("Attempted to create decoder for unsupported MIME type: ".concat(String.valueOf(str)));
        }
    };

    boolean a(Format format);

    a b(Format format);
}
