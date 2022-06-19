package com.google.android.exoplayer2.metadata;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.dvbsi.C11200a;
import com.google.android.exoplayer2.metadata.emsg.C11203a;
import com.google.android.exoplayer2.metadata.icy.C11210a;
import com.google.android.exoplayer2.metadata.id3.C11222a;
import com.google.android.exoplayer2.metadata.scte35.C11238a;
/* renamed from: com.google.android.exoplayer2.metadata.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/b.class */
public interface AbstractC11195b {

    /* renamed from: a */
    public static final AbstractC11195b f36751a = new AbstractC11195b() { // from class: com.google.android.exoplayer2.metadata.b.1
        @Override // com.google.android.exoplayer2.metadata.AbstractC11195b
        /* renamed from: a */
        public final boolean mo21215a(Format format) {
            String str = format.sampleMimeType;
            return "application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str) || "application/x-icy".equals(str) || "application/vnd.dvb.ait".equals(str);
        }

        @Override // com.google.android.exoplayer2.metadata.AbstractC11195b
        /* renamed from: b */
        public final AbstractC11194a mo21214b(Format format) {
            String str = format.sampleMimeType;
            if (str != null) {
                str.hashCode();
                boolean z = true;
                switch (str.hashCode()) {
                    case -1354451219:
                        if (str.equals("application/vnd.dvb.ait")) {
                            z = false;
                            break;
                        }
                        break;
                    case -1348231605:
                        if (str.equals("application/x-icy")) {
                            z = true;
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
                        return new C11200a();
                    case true:
                        return new C11210a();
                    case true:
                        return new C11222a();
                    case true:
                        return new C11203a();
                    case true:
                        return new C11238a();
                }
            }
            throw new IllegalArgumentException("Attempted to create decoder for unsupported MIME type: ".concat(String.valueOf(str)));
        }
    };

    /* renamed from: a */
    boolean mo21215a(Format format);

    /* renamed from: b */
    AbstractC11194a mo21214b(Format format);
}
