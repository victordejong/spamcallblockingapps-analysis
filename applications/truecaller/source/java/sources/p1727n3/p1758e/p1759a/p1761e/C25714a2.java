package p1727n3.p1758e.p1759a.p1761e;

import android.content.Context;
import android.graphics.Point;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.media.MediaRecorder;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.Rational;
import android.util.Size;
import android.view.WindowManager;
import com.amazon.device.ads.DtbConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import n3.e.b.j1.q0;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.C25764a;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.C25785e;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.C25795k;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.p1764p.C25818e;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.p1764p.C25819f;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.p1765q.C25829c;
import p1727n3.p1758e.p1767b.C26079n0;
import p1727n3.p1758e.p1767b.C26103y0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25989m1;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25994n1;
import p1727n3.p1758e.p1767b.p1768j1.C25986l1;
import p1727n3.p1758e.p1767b.p1768j1.C25995o;
import p1727n3.p1758e.p1767b.p1768j1.C25997p;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.e.a.e.a2 */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/a2.class */
public final class C25714a2 {

    /* renamed from: n */
    public static final Size f72007n = new Size(1920, 1080);

    /* renamed from: o */
    public static final Size f72008o = new Size(640, 480);

    /* renamed from: p */
    public static final Size f72009p = new Size(0, 0);

    /* renamed from: q */
    public static final Size f72010q = new Size(3840, 2160);

    /* renamed from: r */
    public static final Size f72011r = new Size(1920, 1080);

    /* renamed from: s */
    public static final Size f72012s = new Size(1280, 720);

    /* renamed from: t */
    public static final Size f72013t = new Size(720, 480);

    /* renamed from: u */
    public static final Rational f72014u = new Rational(4, 3);

    /* renamed from: v */
    public static final Rational f72015v = new Rational(3, 4);

    /* renamed from: w */
    public static final Rational f72016w = new Rational(16, 9);

    /* renamed from: x */
    public static final Rational f72017x = new Rational(9, 16);

    /* renamed from: a */
    public final List<C25986l1> f72018a;

    /* renamed from: c */
    public final String f72020c;

    /* renamed from: d */
    public final AbstractC25874x0 f72021d;

    /* renamed from: e */
    public final C25785e f72022e;

    /* renamed from: f */
    public final C25829c f72023f;

    /* renamed from: g */
    public final int f72024g;

    /* renamed from: h */
    public final boolean f72025h;

    /* renamed from: j */
    public boolean f72027j;

    /* renamed from: k */
    public boolean f72028k;

    /* renamed from: l */
    public AbstractC25994n1 f72029l;

    /* renamed from: b */
    public final Map<Integer, Size> f72019b = new HashMap();

    /* renamed from: i */
    public final Map<Integer, List<Size>> f72026i = new HashMap();

    /* renamed from: m */
    public Map<Integer, Size[]> f72030m = new HashMap();

    /* renamed from: n3.e.a.e.a2$a */
    /* loaded from: classes-dex2jar.jar:n3/e/a/e/a2$a.class */
    public static final class C25715a implements Comparator<Rational> {

        /* renamed from: a */
        public Rational f72031a;

        public C25715a(Rational rational) {
            this.f72031a = rational;
        }

        @Override // java.util.Comparator
        public int compare(Rational rational, Rational rational2) {
            int i;
            Rational rational3 = rational;
            Rational rational4 = rational2;
            if (rational3.equals(rational4)) {
                i = 0;
            } else {
                i = (int) Math.signum(Float.valueOf(Math.abs(rational3.floatValue() - this.f72031a.floatValue())).floatValue() - Float.valueOf(Math.abs(rational4.floatValue() - this.f72031a.floatValue())).floatValue());
            }
            return i;
        }
    }

    /* renamed from: n3.e.a.e.a2$b */
    /* loaded from: classes-dex2jar.jar:n3/e/a/e/a2$b.class */
    public static final class C25716b implements Comparator<Size> {

        /* renamed from: a */
        public boolean f72032a;

        public C25716b() {
            this.f72032a = false;
        }

        public C25716b(boolean z) {
            this.f72032a = false;
            this.f72032a = z;
        }

        @Override // java.util.Comparator
        public int compare(Size size, Size size2) {
            Size size3 = size;
            Size size4 = size2;
            int signum = Long.signum((size3.getWidth() * size3.getHeight()) - (size4.getWidth() * size4.getHeight()));
            int i = signum;
            if (this.f72032a) {
                i = signum * (-1);
            }
            return i;
        }
    }

    public C25714a2(Context context, String str, C25795k c25795k, AbstractC25874x0 abstractC25874x0) throws C26079n0 {
        ArrayList arrayList = new ArrayList();
        this.f72018a = arrayList;
        boolean z = false;
        this.f72027j = false;
        this.f72028k = false;
        Objects.requireNonNull(str);
        this.f72020c = str;
        Objects.requireNonNull(abstractC25874x0);
        this.f72021d = abstractC25874x0;
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        this.f72023f = new C25829c(str);
        try {
            C25785e m2990b = c25795k.m2990b(str);
            this.f72022e = m2990b;
            Integer num = (Integer) m2990b.m2995a(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL);
            int intValue = num != null ? num.intValue() : 2;
            this.f72024g = intValue;
            Size size = (Size) m2990b.m2995a(CameraCharacteristics.SENSOR_INFO_PIXEL_ARRAY_SIZE);
            this.f72025h = (size == null || size.getWidth() >= size.getHeight()) ? true : z;
            AbstractC25989m1.EnumC25991b enumC25991b = AbstractC25989m1.EnumC25991b.RAW;
            AbstractC25989m1.EnumC25990a enumC25990a = AbstractC25989m1.EnumC25990a.ANALYSIS;
            AbstractC25989m1.EnumC25991b enumC25991b2 = AbstractC25989m1.EnumC25991b.JPEG;
            AbstractC25989m1.EnumC25990a enumC25990a2 = AbstractC25989m1.EnumC25990a.PREVIEW;
            AbstractC25989m1.EnumC25991b enumC25991b3 = AbstractC25989m1.EnumC25991b.YUV;
            AbstractC25989m1.EnumC25990a enumC25990a3 = AbstractC25989m1.EnumC25990a.MAXIMUM;
            AbstractC25989m1.EnumC25991b enumC25991b4 = AbstractC25989m1.EnumC25991b.PRIV;
            ArrayList arrayList2 = new ArrayList();
            C25986l1 c25986l1 = new C25986l1();
            C25986l1 m8616h1 = C22128a.m8616h1(c25986l1.f72627a, new C25995o(enumC25991b4, enumC25990a3), arrayList2, c25986l1);
            C25986l1 m8616h12 = C22128a.m8616h1(m8616h1.f72627a, new C25995o(enumC25991b2, enumC25990a3), arrayList2, m8616h1);
            C25986l1 m8616h13 = C22128a.m8616h1(m8616h12.f72627a, new C25995o(enumC25991b3, enumC25990a3), arrayList2, m8616h12);
            C25986l1 m8616h14 = C22128a.m8616h1(m8616h13.f72627a, C22128a.m8620g1(m8616h13.f72627a, new C25995o(enumC25991b4, enumC25990a2), enumC25991b2, enumC25990a3), arrayList2, m8616h13);
            C25986l1 m8616h15 = C22128a.m8616h1(m8616h14.f72627a, C22128a.m8620g1(m8616h14.f72627a, new C25995o(enumC25991b3, enumC25990a2), enumC25991b2, enumC25990a3), arrayList2, m8616h14);
            C25986l1 m8616h16 = C22128a.m8616h1(m8616h15.f72627a, C22128a.m8620g1(m8616h15.f72627a, new C25995o(enumC25991b4, enumC25990a2), enumC25991b4, enumC25990a2), arrayList2, m8616h15);
            C25986l1 m8616h17 = C22128a.m8616h1(m8616h16.f72627a, C22128a.m8620g1(m8616h16.f72627a, new C25995o(enumC25991b4, enumC25990a2), enumC25991b3, enumC25990a2), arrayList2, m8616h16);
            m8616h17.f72627a.add(C22128a.m8620g1(m8616h17.f72627a, C22128a.m8620g1(m8616h17.f72627a, new C25995o(enumC25991b4, enumC25990a2), enumC25991b3, enumC25990a2), enumC25991b2, enumC25990a3));
            arrayList2.add(m8616h17);
            arrayList.addAll(arrayList2);
            if (intValue == 0 || intValue == 1 || intValue == 3) {
                ArrayList arrayList3 = new ArrayList();
                C25986l1 c25986l12 = new C25986l1();
                c25986l12.f72627a.add(new C25995o(enumC25991b4, enumC25990a2));
                AbstractC25989m1.EnumC25990a enumC25990a4 = AbstractC25989m1.EnumC25990a.RECORD;
                C25986l1 m8616h18 = C22128a.m8616h1(c25986l12.f72627a, new C25995o(enumC25991b4, enumC25990a4), arrayList3, c25986l12);
                C25986l1 m8616h19 = C22128a.m8616h1(m8616h18.f72627a, C22128a.m8620g1(m8616h18.f72627a, new C25995o(enumC25991b4, enumC25990a2), enumC25991b3, enumC25990a4), arrayList3, m8616h18);
                C25986l1 m8616h110 = C22128a.m8616h1(m8616h19.f72627a, C22128a.m8620g1(m8616h19.f72627a, new C25995o(enumC25991b3, enumC25990a2), enumC25991b3, enumC25990a4), arrayList3, m8616h19);
                C25986l1 m8616h111 = C22128a.m8616h1(m8616h110.f72627a, C22128a.m8620g1(m8616h110.f72627a, C22128a.m8620g1(m8616h110.f72627a, new C25995o(enumC25991b4, enumC25990a2), enumC25991b4, enumC25990a4), enumC25991b2, enumC25990a4), arrayList3, m8616h110);
                C25986l1 m8616h112 = C22128a.m8616h1(m8616h111.f72627a, C22128a.m8620g1(m8616h111.f72627a, C22128a.m8620g1(m8616h111.f72627a, new C25995o(enumC25991b4, enumC25990a2), enumC25991b3, enumC25990a4), enumC25991b2, enumC25990a4), arrayList3, m8616h111);
                m8616h112.f72627a.add(C22128a.m8620g1(m8616h112.f72627a, C22128a.m8620g1(m8616h112.f72627a, new C25995o(enumC25991b3, enumC25990a2), enumC25991b3, enumC25990a2), enumC25991b2, enumC25990a3));
                arrayList3.add(m8616h112);
                arrayList.addAll(arrayList3);
            }
            if (intValue == 1 || intValue == 3) {
                ArrayList arrayList4 = new ArrayList();
                C25986l1 c25986l13 = new C25986l1();
                C25986l1 m8616h113 = C22128a.m8616h1(c25986l13.f72627a, C22128a.m8620g1(c25986l13.f72627a, new C25995o(enumC25991b4, enumC25990a2), enumC25991b4, enumC25990a3), arrayList4, c25986l13);
                C25986l1 m8616h114 = C22128a.m8616h1(m8616h113.f72627a, C22128a.m8620g1(m8616h113.f72627a, new C25995o(enumC25991b4, enumC25990a2), enumC25991b3, enumC25990a3), arrayList4, m8616h113);
                C25986l1 m8616h115 = C22128a.m8616h1(m8616h114.f72627a, C22128a.m8620g1(m8616h114.f72627a, new C25995o(enumC25991b3, enumC25990a2), enumC25991b3, enumC25990a3), arrayList4, m8616h114);
                C25986l1 m8616h116 = C22128a.m8616h1(m8616h115.f72627a, C22128a.m8620g1(m8616h115.f72627a, C22128a.m8620g1(m8616h115.f72627a, new C25995o(enumC25991b4, enumC25990a2), enumC25991b4, enumC25990a2), enumC25991b2, enumC25990a3), arrayList4, m8616h115);
                C25986l1 m8616h117 = C22128a.m8616h1(m8616h116.f72627a, C22128a.m8620g1(m8616h116.f72627a, C22128a.m8620g1(m8616h116.f72627a, new C25995o(enumC25991b3, enumC25990a), enumC25991b4, enumC25990a2), enumC25991b3, enumC25990a3), arrayList4, m8616h116);
                m8616h117.f72627a.add(C22128a.m8620g1(m8616h117.f72627a, C22128a.m8620g1(m8616h117.f72627a, new C25995o(enumC25991b3, enumC25990a), enumC25991b3, enumC25990a2), enumC25991b3, enumC25990a3));
                arrayList4.add(m8616h117);
                arrayList.addAll(arrayList4);
            }
            int[] iArr = (int[]) m2990b.m2995a(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES);
            if (iArr != null) {
                for (int i : iArr) {
                    if (i == 3) {
                        this.f72027j = true;
                    } else if (i == 6) {
                        this.f72028k = true;
                    }
                }
            }
            if (this.f72027j) {
                List<C25986l1> list = this.f72018a;
                ArrayList arrayList5 = new ArrayList();
                C25986l1 c25986l14 = new C25986l1();
                C25986l1 m8616h118 = C22128a.m8616h1(c25986l14.f72627a, new C25995o(enumC25991b, enumC25990a3), arrayList5, c25986l14);
                C25986l1 m8616h119 = C22128a.m8616h1(m8616h118.f72627a, C22128a.m8620g1(m8616h118.f72627a, new C25995o(enumC25991b4, enumC25990a2), enumC25991b, enumC25990a3), arrayList5, m8616h118);
                C25986l1 m8616h120 = C22128a.m8616h1(m8616h119.f72627a, C22128a.m8620g1(m8616h119.f72627a, new C25995o(enumC25991b3, enumC25990a2), enumC25991b, enumC25990a3), arrayList5, m8616h119);
                C25986l1 m8616h121 = C22128a.m8616h1(m8616h120.f72627a, C22128a.m8620g1(m8616h120.f72627a, C22128a.m8620g1(m8616h120.f72627a, new C25995o(enumC25991b4, enumC25990a2), enumC25991b4, enumC25990a2), enumC25991b, enumC25990a3), arrayList5, m8616h120);
                C25986l1 m8616h122 = C22128a.m8616h1(m8616h121.f72627a, C22128a.m8620g1(m8616h121.f72627a, C22128a.m8620g1(m8616h121.f72627a, new C25995o(enumC25991b4, enumC25990a2), enumC25991b3, enumC25990a2), enumC25991b, enumC25990a3), arrayList5, m8616h121);
                C25986l1 m8616h123 = C22128a.m8616h1(m8616h122.f72627a, C22128a.m8620g1(m8616h122.f72627a, C22128a.m8620g1(m8616h122.f72627a, new C25995o(enumC25991b3, enumC25990a2), enumC25991b3, enumC25990a2), enumC25991b, enumC25990a3), arrayList5, m8616h122);
                C25986l1 m8616h124 = C22128a.m8616h1(m8616h123.f72627a, C22128a.m8620g1(m8616h123.f72627a, C22128a.m8620g1(m8616h123.f72627a, new C25995o(enumC25991b4, enumC25990a2), enumC25991b2, enumC25990a3), enumC25991b, enumC25990a3), arrayList5, m8616h123);
                m8616h124.f72627a.add(C22128a.m8620g1(m8616h124.f72627a, C22128a.m8620g1(m8616h124.f72627a, new C25995o(enumC25991b3, enumC25990a2), enumC25991b2, enumC25990a3), enumC25991b, enumC25990a3));
                arrayList5.add(m8616h124);
                list.addAll(arrayList5);
            }
            if (this.f72028k && this.f72024g == 0) {
                List<C25986l1> list2 = this.f72018a;
                ArrayList arrayList6 = new ArrayList();
                C25986l1 c25986l15 = new C25986l1();
                C25986l1 m8616h125 = C22128a.m8616h1(c25986l15.f72627a, C22128a.m8620g1(c25986l15.f72627a, new C25995o(enumC25991b4, enumC25990a2), enumC25991b4, enumC25990a3), arrayList6, c25986l15);
                C25986l1 m8616h126 = C22128a.m8616h1(m8616h125.f72627a, C22128a.m8620g1(m8616h125.f72627a, new C25995o(enumC25991b4, enumC25990a2), enumC25991b3, enumC25990a3), arrayList6, m8616h125);
                m8616h126.f72627a.add(C22128a.m8620g1(m8616h126.f72627a, new C25995o(enumC25991b3, enumC25990a2), enumC25991b3, enumC25990a3));
                arrayList6.add(m8616h126);
                list2.addAll(arrayList6);
            }
            if (this.f72024g == 3) {
                List<C25986l1> list3 = this.f72018a;
                ArrayList arrayList7 = new ArrayList();
                C25986l1 c25986l16 = new C25986l1();
                C25986l1 m8616h127 = C22128a.m8616h1(c25986l16.f72627a, C22128a.m8620g1(c25986l16.f72627a, C22128a.m8620g1(c25986l16.f72627a, C22128a.m8620g1(c25986l16.f72627a, new C25995o(enumC25991b4, enumC25990a2), enumC25991b4, enumC25990a), enumC25991b3, enumC25990a3), enumC25991b, enumC25990a3), arrayList7, c25986l16);
                m8616h127.f72627a.add(C22128a.m8620g1(m8616h127.f72627a, C22128a.m8620g1(m8616h127.f72627a, C22128a.m8620g1(m8616h127.f72627a, new C25995o(enumC25991b4, enumC25990a2), enumC25991b4, enumC25990a), enumC25991b2, enumC25990a3), enumC25991b, enumC25990a3));
                arrayList7.add(m8616h127);
                list3.addAll(arrayList7);
            }
            Size size2 = new Size(640, 480);
            Point point = new Point();
            windowManager.getDefaultDisplay().getRealSize(point);
            Size size3 = point.x > point.y ? new Size(point.x, point.y) : new Size(point.y, point.x);
            int i2 = 0;
            Size size4 = (Size) Collections.min(Arrays.asList(new Size(size3.getWidth(), size3.getHeight()), f72007n), new C25716b());
            Size size5 = f72013t;
            try {
                int parseInt = Integer.parseInt(this.f72020c);
                if (this.f72021d.mo2939a(parseInt, 8)) {
                    size5 = f72010q;
                } else if (this.f72021d.mo2939a(parseInt, 6)) {
                    size5 = f72011r;
                } else if (this.f72021d.mo2939a(parseInt, 5)) {
                    size5 = f72012s;
                } else {
                    this.f72021d.mo2939a(parseInt, 4);
                }
            } catch (NumberFormatException e) {
                StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) this.f72022e.m2995a(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
                if (streamConfigurationMap == null) {
                    throw new IllegalArgumentException("Can not retrieve SCALER_STREAM_CONFIGURATION_MAP");
                }
                Size[] outputSizes = streamConfigurationMap.getOutputSizes(MediaRecorder.class);
                if (outputSizes != null) {
                    Arrays.sort(outputSizes, new C25716b(true));
                    int length = outputSizes.length;
                    while (true) {
                        if (i2 >= length) {
                            size5 = f72013t;
                            break;
                        }
                        size5 = outputSizes[i2];
                        int width = size5.getWidth();
                        Size size6 = f72011r;
                        if (width <= size6.getWidth() && size5.getHeight() <= size6.getHeight()) {
                            break;
                        }
                        i2++;
                    }
                } else {
                    size5 = f72013t;
                }
            }
            this.f72029l = new C25997p(size2, size4, size5);
        } catch (C25764a e2) {
            throw MediaSessionCompat.m43289L(e2);
        }
    }

    /* renamed from: e */
    public static int m3030e(Size size) {
        return size.getHeight() * size.getWidth();
    }

    /* renamed from: g */
    public static boolean m3028g(int i, int i2, Rational rational) {
        MediaSessionCompat.m43217n(i2 % 16 == 0);
        double numerator = (rational.getNumerator() * i) / rational.getDenominator();
        return numerator > ((double) Math.max(0, i2 - 16)) && numerator < ((double) (i2 + 16));
    }

    /* renamed from: a */
    public boolean m3034a(List<AbstractC25989m1> list) {
        boolean z;
        boolean z2;
        Iterator<C25986l1> it = this.f72018a.iterator();
        boolean z3 = false;
        do {
            z = z3;
            if (!it.hasNext()) {
                break;
            }
            C25986l1 next = it.next();
            Objects.requireNonNull(next);
            z = true;
            if (!list.isEmpty()) {
                if (list.size() <= next.f72627a.size()) {
                    int size = next.f72627a.size();
                    ArrayList arrayList = new ArrayList();
                    C25986l1.m2827a(arrayList, size, new int[size], 0);
                    Iterator it2 = arrayList.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            z = false;
                            break;
                        }
                        int[] iArr = (int[]) it2.next();
                        int i = 0;
                        boolean z4 = true;
                        while (true) {
                            boolean z5 = z4;
                            z2 = z5;
                            if (i >= next.f72627a.size()) {
                                break;
                            }
                            boolean z6 = z5;
                            if (iArr[i] < list.size()) {
                                AbstractC25989m1 abstractC25989m1 = next.f72627a.get(i);
                                AbstractC25989m1 abstractC25989m12 = list.get(iArr[i]);
                                Objects.requireNonNull(abstractC25989m1);
                                boolean z7 = z5 & (abstractC25989m12.mo2819a().f72636a <= abstractC25989m1.mo2819a().f72636a && abstractC25989m12.mo2818b() == abstractC25989m1.mo2818b());
                                z6 = z7;
                                if (!z7) {
                                    z2 = z7;
                                    break;
                                }
                            }
                            i++;
                            z4 = z6;
                        }
                        if (z2) {
                            break;
                        }
                    }
                } else {
                    z = false;
                }
            }
            z3 = z;
        } while (!z);
        return z;
    }

    /* renamed from: b */
    public final Size[] m3033b(Size[] sizeArr, int i) {
        List<Size> list = this.f72026i.get(Integer.valueOf(i));
        ArrayList arrayList = list;
        if (list == null) {
            C25829c c25829c = this.f72023f;
            Objects.requireNonNull(c25829c);
            if (((C25819f) C25818e.m2968a(C25819f.class)) == null) {
                arrayList = new ArrayList();
            } else {
                String str = c25829c.f72268a;
                if (C25819f.m2967a()) {
                    ArrayList arrayList2 = new ArrayList();
                    arrayList = arrayList2;
                    if (str.equals(DtbConstants.NETWORK_TYPE_UNKNOWN)) {
                        arrayList = arrayList2;
                        if (i == 256) {
                            arrayList2.add(new Size(4160, 3120));
                            arrayList2.add(new Size(4000, 3000));
                            arrayList = arrayList2;
                        }
                    }
                } else if (C25819f.m2966b()) {
                    ArrayList arrayList3 = new ArrayList();
                    arrayList = arrayList3;
                    if (str.equals(DtbConstants.NETWORK_TYPE_UNKNOWN)) {
                        arrayList = arrayList3;
                        if (i == 256) {
                            arrayList3.add(new Size(4160, 3120));
                            arrayList3.add(new Size(4000, 3000));
                            arrayList = arrayList3;
                        }
                    }
                } else {
                    C26103y0.m2720e("ExcludedSupportedSizesQuirk", "Cannot retrieve list of supported sizes to exclude on this device.", null);
                    arrayList = Collections.emptyList();
                }
            }
            this.f72026i.put(Integer.valueOf(i), arrayList);
        }
        ArrayList arrayList4 = new ArrayList(Arrays.asList(sizeArr));
        arrayList4.removeAll(arrayList);
        return (Size[]) arrayList4.toArray(new Size[0]);
    }

    /* renamed from: c */
    public final Size m3032c(int i) {
        Size size = this.f72019b.get(Integer.valueOf(i));
        if (size != null) {
            return size;
        }
        Size size2 = (Size) Collections.max(Arrays.asList(m3031d(i)), new C25716b());
        this.f72019b.put(Integer.valueOf(i), size2);
        return size2;
    }

    /* renamed from: d */
    public final Size[] m3031d(int i) {
        Size[] sizeArr = this.f72030m.get(Integer.valueOf(i));
        Size[] sizeArr2 = sizeArr;
        if (sizeArr == null) {
            StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) this.f72022e.m2995a(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
            if (streamConfigurationMap == null) {
                throw new IllegalArgumentException("Can not retrieve SCALER_STREAM_CONFIGURATION_MAP");
            }
            Size[] outputSizes = streamConfigurationMap.getOutputSizes(i);
            if (outputSizes == null) {
                throw new IllegalArgumentException(C22128a.m8611i2("Can not get supported output size for the format: ", i));
            }
            sizeArr2 = m3033b(outputSizes, i);
            Arrays.sort(sizeArr2, new C25716b(true));
            this.f72030m.put(Integer.valueOf(i), sizeArr2);
        }
        return sizeArr2;
    }

    /* renamed from: f */
    public final Size m3029f(q0 q0Var) {
        boolean z = false;
        int n = q0Var.n(0);
        Size o = q0Var.o((Size) null);
        Size size = o;
        if (o != null) {
            Integer num = (Integer) this.f72022e.m2995a(CameraCharacteristics.SENSOR_ORIENTATION);
            MediaSessionCompat.m43196u(num, "Camera HAL in bad state, unable to retrieve the SENSOR_ORIENTATION");
            int m43314C1 = MediaSessionCompat.m43314C1(n);
            Integer num2 = (Integer) this.f72022e.m2995a(CameraCharacteristics.LENS_FACING);
            MediaSessionCompat.m43196u(num2, "Camera HAL in bad state, unable to retrieve the LENS_FACING");
            int m43192v0 = MediaSessionCompat.m43192v0(m43314C1, num.intValue(), 1 == num2.intValue());
            if (m43192v0 == 90 || m43192v0 == 270) {
                z = true;
            }
            size = o;
            if (z) {
                size = new Size(o.getHeight(), o.getWidth());
            }
        }
        return size;
    }

    /* renamed from: h */
    public final void m3027h(List<Size> list, Size size) {
        if (list == null || list.isEmpty()) {
            return;
        }
        int i = -1;
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= list.size()) {
                break;
            }
            Size size2 = list.get(i3);
            if (size2.getWidth() < size.getWidth() || size2.getHeight() < size.getHeight()) {
                break;
            }
            if (i >= 0) {
                arrayList.add(list.get(i));
            }
            i = i3;
            i2 = i3 + 1;
        }
        list.removeAll(arrayList);
    }

    /* renamed from: i */
    public AbstractC25989m1 m3026i(int i, Size size) {
        AbstractC25989m1.EnumC25990a enumC25990a;
        AbstractC25989m1.EnumC25990a enumC25990a2 = AbstractC25989m1.EnumC25990a.NOT_SUPPORT;
        AbstractC25989m1.EnumC25991b enumC25991b = i == 35 ? AbstractC25989m1.EnumC25991b.YUV : i == 256 ? AbstractC25989m1.EnumC25991b.JPEG : i == 32 ? AbstractC25989m1.EnumC25991b.RAW : AbstractC25989m1.EnumC25991b.PRIV;
        Size m3032c = m3032c(i);
        if (size.getHeight() * size.getWidth() <= this.f72029l.mo2816a().getHeight() * this.f72029l.mo2816a().getWidth()) {
            enumC25990a = AbstractC25989m1.EnumC25990a.ANALYSIS;
        } else {
            if (size.getHeight() * size.getWidth() <= this.f72029l.mo2815b().getHeight() * this.f72029l.mo2815b().getWidth()) {
                enumC25990a = AbstractC25989m1.EnumC25990a.PREVIEW;
            } else {
                if (size.getHeight() * size.getWidth() <= this.f72029l.mo2814c().getHeight() * this.f72029l.mo2814c().getWidth()) {
                    enumC25990a = AbstractC25989m1.EnumC25990a.RECORD;
                } else {
                    int width = size.getWidth();
                    int height = size.getHeight();
                    enumC25990a = enumC25990a2;
                    if (height * width <= m3032c.getHeight() * m3032c.getWidth()) {
                        enumC25990a = AbstractC25989m1.EnumC25990a.MAXIMUM;
                    }
                }
            }
        }
        return new C25995o(enumC25991b, enumC25990a);
    }
}
