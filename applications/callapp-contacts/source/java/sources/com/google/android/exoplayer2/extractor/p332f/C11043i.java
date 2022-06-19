package com.google.android.exoplayer2.extractor.p332f;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.metadata.mp4.SlowMotionData;
import com.google.android.exoplayer2.util.C11628u;
import com.google.common.base.AbstractC15369c;
import com.google.common.base.C15393o;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.extractor.f.i */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/i.class */
final class C11043i {

    /* renamed from: d */
    private static final C15393o f35918d = C15393o.m8929a(AbstractC15369c.m8970a(':'));

    /* renamed from: e */
    private static final C15393o f35919e = C15393o.m8929a(AbstractC15369c.m8970a('*'));

    /* renamed from: a */
    final List<C11044a> f35920a = new ArrayList();

    /* renamed from: b */
    int f35921b = 0;

    /* renamed from: c */
    int f35922c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.extractor.f.i$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/i$a.class */
    public static final class C11044a {

        /* renamed from: a */
        public final int f35923a;

        /* renamed from: b */
        public final long f35924b;

        /* renamed from: c */
        public final int f35925c;

        public C11044a(int i, long j, int i2) {
            this.f35923a = i;
            this.f35924b = j;
            this.f35925c = i2;
        }
    }

    /* renamed from: a */
    public static int m21602a(String str) throws ParserException {
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case -1711564334:
                if (str.equals("SlowMotion_Data")) {
                    z = false;
                    break;
                }
                break;
            case -1332107749:
                if (str.equals("Super_SlowMotion_Edit_Data")) {
                    z = true;
                    break;
                }
                break;
            case -1251387154:
                if (str.equals("Super_SlowMotion_Data")) {
                    z = true;
                    break;
                }
                break;
            case -830665521:
                if (str.equals("Super_SlowMotion_Deflickering_On")) {
                    z = true;
                    break;
                }
                break;
            case 1760745220:
                if (str.equals("Super_SlowMotion_BGM")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                return 2192;
            case true:
                return 2819;
            case true:
                return 2816;
            case true:
                return 2820;
            case true:
                return 2817;
            default:
                throw new ParserException("Invalid SEF name");
        }
    }

    /* renamed from: a */
    public static SlowMotionData m21603a(C11628u c11628u, int i) throws ParserException {
        ArrayList arrayList = new ArrayList();
        List<String> m8928a = f35919e.m8928a(c11628u.m19797f(i));
        for (int i2 = 0; i2 < m8928a.size(); i2++) {
            List<String> m8928a2 = f35918d.m8928a(m8928a.get(i2));
            if (m8928a2.size() != 3) {
                throw new ParserException();
            }
            try {
                arrayList.add(new SlowMotionData.Segment(Long.parseLong(m8928a2.get(0)), Long.parseLong(m8928a2.get(1)), 1 << (Integer.parseInt(m8928a2.get(2)) - 1)));
            } catch (NumberFormatException e) {
                throw new ParserException(e);
            }
        }
        return new SlowMotionData(arrayList);
    }

    /* renamed from: a */
    public final void m21604a() {
        this.f35920a.clear();
        this.f35921b = 0;
    }
}
