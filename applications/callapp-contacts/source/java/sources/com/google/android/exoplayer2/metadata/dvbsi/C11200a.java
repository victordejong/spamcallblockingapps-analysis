package com.google.android.exoplayer2.metadata.dvbsi;

import com.google.android.exoplayer2.metadata.AbstractC11205f;
import com.google.android.exoplayer2.metadata.C11197c;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.C11627t;
import com.google.common.base.C15374d;
import java.nio.ByteBuffer;
import java.util.ArrayList;
/* renamed from: com.google.android.exoplayer2.metadata.dvbsi.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/dvbsi/a.class */
public final class C11200a extends AbstractC11205f {
    @Override // com.google.android.exoplayer2.metadata.AbstractC11205f
    /* renamed from: a */
    public final Metadata mo21187a(C11197c c11197c, ByteBuffer byteBuffer) {
        String str;
        String str2;
        String str3;
        if (byteBuffer.get() == 116) {
            C11627t c11627t = new C11627t(byteBuffer.array(), byteBuffer.limit());
            c11627t.m19822b(12);
            int m19819c = c11627t.m19819c(12);
            int m19820c = c11627t.m19820c();
            c11627t.m19822b(44);
            c11627t.m19816d(c11627t.m19819c(12));
            c11627t.m19822b(16);
            ArrayList arrayList = new ArrayList();
            while (c11627t.m19820c() < (m19820c + m19819c) - 4) {
                c11627t.m19822b(48);
                int m19819c2 = c11627t.m19819c(8);
                c11627t.m19822b(4);
                int m19820c2 = c11627t.m19820c() + c11627t.m19819c(12);
                String str4 = null;
                String str5 = null;
                while (true) {
                    str = str5;
                    if (c11627t.m19820c() >= m19820c2) {
                        break;
                    }
                    int m19819c3 = c11627t.m19819c(8);
                    int m19819c4 = c11627t.m19819c(8);
                    int m19820c3 = c11627t.m19820c() + m19819c4;
                    if (m19819c3 == 2) {
                        int m19819c5 = c11627t.m19819c(16);
                        c11627t.m19822b(8);
                        str3 = str4;
                        str2 = str;
                        if (m19819c5 != 3) {
                        }
                        while (true) {
                            str3 = str4;
                            str2 = str;
                            if (c11627t.m19820c() < m19820c3) {
                                String m19825a = c11627t.m19825a(c11627t.m19819c(8), C15374d.f55618a);
                                int m19819c6 = c11627t.m19819c(8);
                                int i = 0;
                                while (true) {
                                    str4 = m19825a;
                                    if (i < m19819c6) {
                                        c11627t.m19816d(c11627t.m19819c(8));
                                        i++;
                                    }
                                }
                            }
                        }
                    } else {
                        str3 = str4;
                        str2 = str;
                        if (m19819c3 == 21) {
                            str2 = c11627t.m19825a(m19819c4, C15374d.f55618a);
                            str3 = str4;
                        }
                    }
                    c11627t.m19826a(m19820c3 * 8);
                    str4 = str3;
                    str5 = str2;
                }
                c11627t.m19826a(m19820c2 * 8);
                if (str4 != null && str != null) {
                    arrayList.add(new AppInfoTable(m19819c2, str4 + str));
                }
            }
            if (arrayList.isEmpty()) {
                return null;
            }
            return new Metadata(arrayList);
        }
        return null;
    }
}
