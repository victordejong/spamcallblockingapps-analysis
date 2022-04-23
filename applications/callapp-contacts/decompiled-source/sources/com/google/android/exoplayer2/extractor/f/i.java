package com.google.android.exoplayer2.extractor.f;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.metadata.mp4.SlowMotionData;
import com.google.android.exoplayer2.util.u;
import com.google.common.base.c;
import com.google.common.base.o;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/i.class */
final class i {

    /* renamed from: d  reason: collision with root package name */
    private static final o f21067d = o.a(c.a(':'));
    private static final o e = o.a(c.a('*'));

    /* renamed from: a  reason: collision with root package name */
    final List<a> f21068a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    int f21069b = 0;

    /* renamed from: c  reason: collision with root package name */
    int f21070c;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/i$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f21071a;

        /* renamed from: b  reason: collision with root package name */
        public final long f21072b;

        /* renamed from: c  reason: collision with root package name */
        public final int f21073c;

        public a(int i, long j, int i2) {
            this.f21071a = i;
            this.f21072b = j;
            this.f21073c = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(String str) throws ParserException {
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1711564334:
                if (str.equals("SlowMotion_Data")) {
                    c2 = 0;
                    break;
                }
                break;
            case -1332107749:
                if (str.equals("Super_SlowMotion_Edit_Data")) {
                    c2 = 1;
                    break;
                }
                break;
            case -1251387154:
                if (str.equals("Super_SlowMotion_Data")) {
                    c2 = 2;
                    break;
                }
                break;
            case -830665521:
                if (str.equals("Super_SlowMotion_Deflickering_On")) {
                    c2 = 3;
                    break;
                }
                break;
            case 1760745220:
                if (str.equals("Super_SlowMotion_BGM")) {
                    c2 = 4;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return 2192;
            case 1:
                return 2819;
            case 2:
                return 2816;
            case 3:
                return 2820;
            case 4:
                return 2817;
            default:
                throw new ParserException("Invalid SEF name");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SlowMotionData a(u uVar, int i) throws ParserException {
        ArrayList arrayList = new ArrayList();
        List<String> a2 = e.a(uVar.f(i));
        for (int i2 = 0; i2 < a2.size(); i2++) {
            List<String> a3 = f21067d.a(a2.get(i2));
            if (a3.size() == 3) {
                try {
                    arrayList.add(new SlowMotionData.Segment(Long.parseLong(a3.get(0)), Long.parseLong(a3.get(1)), 1 << (Integer.parseInt(a3.get(2)) - 1)));
                } catch (NumberFormatException e2) {
                    throw new ParserException(e2);
                }
            } else {
                throw new ParserException();
            }
        }
        return new SlowMotionData(arrayList);
    }

    public final void a() {
        this.f21068a.clear();
        this.f21069b = 0;
    }
}
