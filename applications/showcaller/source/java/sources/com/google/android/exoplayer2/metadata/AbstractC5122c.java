package com.google.android.exoplayer2.metadata;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.emsg.C5127a;
import com.google.android.exoplayer2.metadata.icy.C5134a;
import com.google.android.exoplayer2.metadata.id3.C5147b;
import com.google.android.exoplayer2.metadata.scte35.C5158a;
/* renamed from: com.google.android.exoplayer2.metadata.c */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/c.class */
public interface AbstractC5122c {

    /* renamed from: a */
    public static final AbstractC5122c f16086a = new C5123a();

    /* renamed from: com.google.android.exoplayer2.metadata.c$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/c$a.class */
    static final class C5123a implements AbstractC5122c {
        C5123a() {
        }

        @Override // com.google.android.exoplayer2.metadata.AbstractC5122c
        /* renamed from: a */
        public AbstractC5121b mo20387a(Format format) {
            String str = format.f14461l;
            if (str != null) {
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
                        return new C5134a();
                    case true:
                        return new C5147b();
                    case true:
                        return new C5127a();
                    case true:
                        return new C5158a();
                }
            }
            throw new IllegalArgumentException("Attempted to create decoder for unsupported MIME type: " + str);
        }

        @Override // com.google.android.exoplayer2.metadata.AbstractC5122c
        /* renamed from: b */
        public boolean mo20386b(Format format) {
            String str = format.f14461l;
            return "application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str) || "application/x-icy".equals(str);
        }
    }

    /* renamed from: a */
    AbstractC5121b mo20387a(Format format);

    /* renamed from: b */
    boolean mo20386b(Format format);
}
