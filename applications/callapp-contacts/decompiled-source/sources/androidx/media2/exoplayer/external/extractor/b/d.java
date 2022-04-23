package androidx.media2.exoplayer.external.extractor.b;

import android.util.Pair;
import android.util.SparseArray;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.extractor.g;
import androidx.media2.exoplayer.external.extractor.h;
import androidx.media2.exoplayer.external.extractor.i;
import androidx.media2.exoplayer.external.extractor.j;
import androidx.media2.exoplayer.external.extractor.o;
import androidx.media2.exoplayer.external.extractor.q;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.k;
import androidx.media2.exoplayer.external.util.n;
import androidx.media2.exoplayer.external.util.p;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/b/d.class */
public final class d implements g {
    int A;
    int B;
    int[] C;
    int D;
    int E;
    int F;
    int G;
    boolean H;
    i I;
    private final androidx.media2.exoplayer.external.extractor.b.c O;
    private final p P;
    private final p Q;
    private final p R;
    private final p S;
    private final p T;
    private final p U;
    private final p V;
    private ByteBuffer W;
    private long X;
    private int Y;
    private boolean Z;
    private boolean aa;
    private boolean ab;
    private boolean ac;
    private byte ad;
    private int ae;
    private int af;
    private int ag;
    private boolean ah;

    /* renamed from: c  reason: collision with root package name */
    final g f3037c;

    /* renamed from: d  reason: collision with root package name */
    final SparseArray<b> f3038d;
    final boolean e;
    final p f;
    final p g;
    final p h;
    long i;
    long j;
    long k;
    long l;
    long m;
    b n;
    boolean o;
    int p;
    long q;
    boolean r;
    long s;
    long t;
    k u;
    k v;
    boolean w;
    int x;
    long y;
    long z;

    /* renamed from: a  reason: collision with root package name */
    public static final j f3035a = e.f3048a;
    private static final byte[] J = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
    private static final byte[] K = {32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32};

    /* renamed from: b  reason: collision with root package name */
    static final byte[] f3036b = ac.c("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");
    private static final byte[] L = {68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};
    private static final byte[] M = {32, 32, 32, 32, 32, 32, 32, 32, 32, 32};
    private static final UUID N = new UUID(72057594037932032L, -9223371306706625679L);

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/b/d$a.class */
    final class a implements androidx.media2.exoplayer.external.extractor.b.b {
        private a() {
        }

        @Override // androidx.media2.exoplayer.external.extractor.b.b
        public final int a(int i) {
            return d.a(i);
        }

        @Override // androidx.media2.exoplayer.external.extractor.b.b
        public final void a(int i, double d2) throws ParserException {
            d dVar = d.this;
            if (i == 181) {
                dVar.n.O = (int) d2;
            } else if (i != 17545) {
                switch (i) {
                    case 21969:
                        dVar.n.C = (float) d2;
                        return;
                    case 21970:
                        dVar.n.D = (float) d2;
                        return;
                    case 21971:
                        dVar.n.E = (float) d2;
                        return;
                    case 21972:
                        dVar.n.F = (float) d2;
                        return;
                    case 21973:
                        dVar.n.G = (float) d2;
                        return;
                    case 21974:
                        dVar.n.H = (float) d2;
                        return;
                    case 21975:
                        dVar.n.I = (float) d2;
                        return;
                    case 21976:
                        dVar.n.J = (float) d2;
                        return;
                    case 21977:
                        dVar.n.K = (float) d2;
                        return;
                    case 21978:
                        dVar.n.L = (float) d2;
                        return;
                    default:
                        switch (i) {
                            case 30323:
                                dVar.n.r = (float) d2;
                                return;
                            case 30324:
                                dVar.n.s = (float) d2;
                                return;
                            case 30325:
                                dVar.n.t = (float) d2;
                                return;
                            default:
                                return;
                        }
                }
            } else {
                dVar.l = (long) d2;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r21v2, types: [long] */
        /* JADX WARN: Type inference failed for: r21v4 */
        /* JADX WARN: Type inference failed for: r21v5 */
        /* JADX WARN: Type inference failed for: r23v0 */
        /* JADX WARN: Type inference failed for: r23v1, types: [long] */
        /* JADX WARN: Type inference failed for: r23v2 */
        /* JADX WARN: Type inference failed for: r23v3, types: [long] */
        /* JADX WARN: Unknown variable types count: 2 */
        @Override // androidx.media2.exoplayer.external.extractor.b.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a(int r9, int r10, androidx.media2.exoplayer.external.extractor.h r11) throws java.io.IOException, java.lang.InterruptedException {
            /*
                Method dump skipped, instructions count: 1464
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.b.d.a.a(int, int, androidx.media2.exoplayer.external.extractor.h):void");
        }

        @Override // androidx.media2.exoplayer.external.extractor.b.b
        public final void a(int i, long j) throws ParserException {
            d dVar = d.this;
            if (i != 20529) {
                if (i != 20530) {
                    boolean z = false;
                    boolean z2 = false;
                    switch (i) {
                        case 131:
                            dVar.n.f3043d = (int) j;
                            return;
                        case 136:
                            b bVar = dVar.n;
                            if (j == 1) {
                                z = true;
                            }
                            bVar.T = z;
                            return;
                        case 155:
                            dVar.z = dVar.a(j);
                            return;
                        case 159:
                            dVar.n.M = (int) j;
                            return;
                        case 176:
                            dVar.n.l = (int) j;
                            return;
                        case 179:
                            dVar.u.a(dVar.a(j));
                            return;
                        case 186:
                            dVar.n.m = (int) j;
                            return;
                        case 215:
                            dVar.n.f3042c = (int) j;
                            return;
                        case 231:
                            dVar.t = dVar.a(j);
                            return;
                        case 238:
                            dVar.G = (int) j;
                            return;
                        case 241:
                            if (!dVar.w) {
                                dVar.v.a(j);
                                dVar.w = true;
                                return;
                            }
                            return;
                        case 251:
                            dVar.H = true;
                            return;
                        case 16980:
                            if (j != 3) {
                                StringBuilder sb = new StringBuilder(50);
                                sb.append("ContentCompAlgo ");
                                sb.append(j);
                                sb.append(" not supported");
                                throw new ParserException(sb.toString());
                            }
                            return;
                        case 17029:
                            if (j < 1 || j > 2) {
                                StringBuilder sb2 = new StringBuilder(53);
                                sb2.append("DocTypeReadVersion ");
                                sb2.append(j);
                                sb2.append(" not supported");
                                throw new ParserException(sb2.toString());
                            }
                            return;
                        case 17143:
                            if (j != 1) {
                                StringBuilder sb3 = new StringBuilder(50);
                                sb3.append("EBMLReadVersion ");
                                sb3.append(j);
                                sb3.append(" not supported");
                                throw new ParserException(sb3.toString());
                            }
                            return;
                        case 18401:
                            if (j != 5) {
                                StringBuilder sb4 = new StringBuilder(49);
                                sb4.append("ContentEncAlgo ");
                                sb4.append(j);
                                sb4.append(" not supported");
                                throw new ParserException(sb4.toString());
                            }
                            return;
                        case 18408:
                            if (j != 1) {
                                StringBuilder sb5 = new StringBuilder(56);
                                sb5.append("AESSettingsCipherMode ");
                                sb5.append(j);
                                sb5.append(" not supported");
                                throw new ParserException(sb5.toString());
                            }
                            return;
                        case 21420:
                            dVar.q = j + dVar.j;
                            return;
                        case 21432:
                            int i2 = (int) j;
                            if (i2 == 0) {
                                dVar.n.v = 0;
                                return;
                            } else if (i2 == 1) {
                                dVar.n.v = 2;
                                return;
                            } else if (i2 == 3) {
                                dVar.n.v = 1;
                                return;
                            } else if (i2 == 15) {
                                dVar.n.v = 3;
                                return;
                            } else {
                                return;
                            }
                        case 21680:
                            dVar.n.n = (int) j;
                            return;
                        case 21682:
                            dVar.n.p = (int) j;
                            return;
                        case 21690:
                            dVar.n.o = (int) j;
                            return;
                        case 21930:
                            b bVar2 = dVar.n;
                            if (j == 1) {
                                z2 = true;
                            }
                            bVar2.S = z2;
                            return;
                        case 21998:
                            dVar.n.f = (int) j;
                            return;
                        case 22186:
                            dVar.n.P = j;
                            return;
                        case 22203:
                            dVar.n.Q = j;
                            return;
                        case 25188:
                            dVar.n.N = (int) j;
                            return;
                        case 30321:
                            int i3 = (int) j;
                            if (i3 == 0) {
                                dVar.n.q = 0;
                                return;
                            } else if (i3 == 1) {
                                dVar.n.q = 1;
                                return;
                            } else if (i3 == 2) {
                                dVar.n.q = 2;
                                return;
                            } else if (i3 == 3) {
                                dVar.n.q = 3;
                                return;
                            } else {
                                return;
                            }
                        case 2352003:
                            dVar.n.e = (int) j;
                            return;
                        case 2807729:
                            dVar.k = j;
                            return;
                        default:
                            switch (i) {
                                case 21945:
                                    int i4 = (int) j;
                                    if (i4 == 1) {
                                        dVar.n.z = 2;
                                        return;
                                    } else if (i4 == 2) {
                                        dVar.n.z = 1;
                                        return;
                                    } else {
                                        return;
                                    }
                                case 21946:
                                    int i5 = (int) j;
                                    if (i5 != 1) {
                                        if (i5 == 16) {
                                            dVar.n.y = 6;
                                            return;
                                        } else if (i5 == 18) {
                                            dVar.n.y = 7;
                                            return;
                                        } else if (!(i5 == 6 || i5 == 7)) {
                                            return;
                                        }
                                    }
                                    dVar.n.y = 3;
                                    return;
                                case 21947:
                                    dVar.n.w = true;
                                    int i6 = (int) j;
                                    if (i6 == 1) {
                                        dVar.n.x = 1;
                                        return;
                                    } else if (i6 == 9) {
                                        dVar.n.x = 6;
                                        return;
                                    } else if (i6 == 4 || i6 == 5 || i6 == 6 || i6 == 7) {
                                        dVar.n.x = 2;
                                        return;
                                    } else {
                                        return;
                                    }
                                case 21948:
                                    dVar.n.A = (int) j;
                                    return;
                                case 21949:
                                    dVar.n.B = (int) j;
                                    return;
                                default:
                                    return;
                            }
                    }
                } else if (j != 1) {
                    StringBuilder sb6 = new StringBuilder(55);
                    sb6.append("ContentEncodingScope ");
                    sb6.append(j);
                    sb6.append(" not supported");
                    throw new ParserException(sb6.toString());
                }
            } else if (j != 0) {
                StringBuilder sb7 = new StringBuilder(55);
                sb7.append("ContentEncodingOrder ");
                sb7.append(j);
                sb7.append(" not supported");
                throw new ParserException(sb7.toString());
            }
        }

        @Override // androidx.media2.exoplayer.external.extractor.b.b
        public final void a(int i, long j, long j2) throws ParserException {
            d dVar = d.this;
            if (i == 160) {
                dVar.H = false;
            } else if (i == 174) {
                dVar.n = new b();
            } else if (i == 187) {
                dVar.w = false;
            } else if (i == 19899) {
                dVar.p = -1;
                dVar.q = -1L;
            } else if (i == 20533) {
                dVar.n.g = true;
            } else if (i == 21968) {
                dVar.n.w = true;
            } else if (i != 408125543) {
                if (i == 475249515) {
                    dVar.u = new k();
                    dVar.v = new k();
                } else if (i != 524531317 || dVar.o) {
                } else {
                    if (!dVar.e || dVar.s == -1) {
                        dVar.I.a(new o.b(dVar.m));
                        dVar.o = true;
                        return;
                    }
                    dVar.r = true;
                }
            } else if (dVar.j == -1 || dVar.j == j) {
                dVar.j = j;
                dVar.i = j2;
            } else {
                throw new ParserException("Multiple Segment elements not supported");
            }
        }

        @Override // androidx.media2.exoplayer.external.extractor.b.b
        public final void a(int i, String str) throws ParserException {
            d dVar = d.this;
            if (i == 134) {
                dVar.n.f3041b = str;
            } else if (i != 17026) {
                if (i == 21358) {
                    dVar.n.f3040a = str;
                } else if (i == 2274716) {
                    dVar.n.U = str;
                }
            } else if (!"webm".equals(str) && !"matroska".equals(str)) {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 22);
                sb.append("DocType ");
                sb.append(str);
                sb.append(" not supported");
                throw new ParserException(sb.toString());
            }
        }

        @Override // androidx.media2.exoplayer.external.extractor.b.b
        public final boolean b(int i) {
            return d.b(i);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Removed duplicated region for block: B:291:0x0b09  */
        /* JADX WARN: Removed duplicated region for block: B:292:0x0b0f  */
        /* JADX WARN: Removed duplicated region for block: B:295:0x0b23  */
        /* JADX WARN: Removed duplicated region for block: B:296:0x0b51  */
        @Override // androidx.media2.exoplayer.external.extractor.b.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void c(int r17) throws androidx.media2.exoplayer.external.ParserException {
            /*
                Method dump skipped, instructions count: 4019
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.b.d.a.c(int):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/b/d$b.class */
    public static final class b {
        public int A;
        public int B;
        public float C;
        public float D;
        public float E;
        public float F;
        public float G;
        public float H;
        public float I;
        public float J;
        public float K;
        public float L;
        public int M;
        public int N;
        public int O;
        public long P;
        public long Q;
        public c R;
        public boolean S;
        public boolean T;
        String U;
        public q V;
        public int W;

        /* renamed from: a  reason: collision with root package name */
        public String f3040a;

        /* renamed from: b  reason: collision with root package name */
        public String f3041b;

        /* renamed from: c  reason: collision with root package name */
        public int f3042c;

        /* renamed from: d  reason: collision with root package name */
        public int f3043d;
        public int e;
        public int f;
        public boolean g;
        public byte[] h;
        public q.a i;
        public byte[] j;
        public DrmInitData k;
        public int l;
        public int m;
        public int n;
        public int o;
        public int p;
        public int q;
        public float r;
        public float s;
        public float t;
        public byte[] u;
        public int v;
        public boolean w;
        public int x;
        public int y;
        public int z;

        private b() {
            this.l = -1;
            this.m = -1;
            this.n = -1;
            this.o = -1;
            this.p = 0;
            this.q = -1;
            this.r = BitmapDescriptorFactory.HUE_RED;
            this.s = BitmapDescriptorFactory.HUE_RED;
            this.t = BitmapDescriptorFactory.HUE_RED;
            this.u = null;
            this.v = -1;
            this.w = false;
            this.x = -1;
            this.y = -1;
            this.z = -1;
            this.A = 1000;
            this.B = 200;
            this.C = -1.0f;
            this.D = -1.0f;
            this.E = -1.0f;
            this.F = -1.0f;
            this.G = -1.0f;
            this.H = -1.0f;
            this.I = -1.0f;
            this.J = -1.0f;
            this.K = -1.0f;
            this.L = -1.0f;
            this.M = 1;
            this.N = -1;
            this.O = 8000;
            this.P = 0L;
            this.Q = 0L;
            this.T = true;
            this.U = "eng";
        }

        static Pair<String, List<byte[]>> a(p pVar) throws ParserException {
            try {
                pVar.d(16);
                long h = pVar.h();
                if (h == 1482049860) {
                    return new Pair<>("video/divx", null);
                }
                if (h == 859189832) {
                    return new Pair<>("video/3gpp", null);
                }
                if (h == 826496599) {
                    byte[] bArr = pVar.f4166a;
                    for (int i = pVar.f4167b + 20; i < bArr.length - 4; i++) {
                        if (bArr[i] == 0 && bArr[i + 1] == 0 && bArr[i + 2] == 1 && bArr[i + 3] == 15) {
                            return new Pair<>("video/wvc1", Collections.singletonList(Arrays.copyOfRange(bArr, i, bArr.length)));
                        }
                    }
                    throw new ParserException("Failed to find FourCC VC1 initialization data");
                }
                androidx.media2.exoplayer.external.util.j.a("MatroskaExtractor", "Unknown FourCC. Setting mimeType to video/x-unknown");
                return new Pair<>("video/x-unknown", null);
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new ParserException("Error parsing FourCC private data");
            }
        }

        static List<byte[]> a(byte[] bArr) throws ParserException {
            try {
                if (bArr[0] == 2) {
                    int i = 1;
                    int i2 = 0;
                    while (bArr[i] == -1) {
                        i2 += 255;
                        i++;
                    }
                    int i3 = i + 1;
                    int i4 = i2 + bArr[i];
                    int i5 = 0;
                    while (bArr[i3] == -1) {
                        i5 += 255;
                        i3++;
                    }
                    int i6 = i3 + 1;
                    byte b2 = bArr[i3];
                    if (bArr[i6] == 1) {
                        byte[] bArr2 = new byte[i4];
                        System.arraycopy(bArr, i6, bArr2, 0, i4);
                        int i7 = i6 + i4;
                        if (bArr[i7] == 3) {
                            int i8 = i7 + i5 + b2;
                            if (bArr[i8] == 5) {
                                byte[] bArr3 = new byte[bArr.length - i8];
                                System.arraycopy(bArr, i8, bArr3, 0, bArr.length - i8);
                                ArrayList arrayList = new ArrayList(2);
                                arrayList.add(bArr2);
                                arrayList.add(bArr3);
                                return arrayList;
                            }
                            throw new ParserException("Error parsing vorbis codec private");
                        }
                        throw new ParserException("Error parsing vorbis codec private");
                    }
                    throw new ParserException("Error parsing vorbis codec private");
                }
                throw new ParserException("Error parsing vorbis codec private");
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new ParserException("Error parsing vorbis codec private");
            }
        }

        static boolean b(p pVar) throws ParserException {
            try {
                int e = pVar.e();
                if (e == 1) {
                    return true;
                }
                if (e != 65534) {
                    return false;
                }
                pVar.c(24);
                if (pVar.k() == d.N.getMostSignificantBits()) {
                    return pVar.k() == d.N.getLeastSignificantBits();
                }
                return false;
            } catch (ArrayIndexOutOfBoundsException e2) {
                throw new ParserException("Error parsing MS/ACM codec private");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/b/d$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        final byte[] f3044a = new byte[10];

        /* renamed from: b  reason: collision with root package name */
        boolean f3045b;

        /* renamed from: c  reason: collision with root package name */
        int f3046c;

        /* renamed from: d  reason: collision with root package name */
        int f3047d;
        long e;
        int f;

        public final void a(b bVar, long j) {
            if (this.f3045b) {
                int i = this.f3046c;
                int i2 = i + 1;
                this.f3046c = i2;
                if (i == 0) {
                    this.e = j;
                }
                if (i2 >= 16) {
                    bVar.V.a(this.e, this.f, this.f3047d, 0, bVar.i);
                    this.f3046c = 0;
                }
            }
        }
    }

    public d() {
        this(0);
    }

    public d(int i) {
        this(new androidx.media2.exoplayer.external.extractor.b.a(), i);
    }

    d(androidx.media2.exoplayer.external.extractor.b.c cVar, int i) {
        this.j = -1L;
        this.k = -9223372036854775807L;
        this.l = -9223372036854775807L;
        this.m = -9223372036854775807L;
        this.s = -1L;
        this.X = -1L;
        this.t = -9223372036854775807L;
        this.O = cVar;
        cVar.a(new a());
        this.e = (i & 1) != 0 ? false : true;
        this.f3037c = new g();
        this.f3038d = new SparseArray<>();
        this.f = new p(4);
        this.R = new p(ByteBuffer.allocate(4).putInt(-1).array());
        this.g = new p(4);
        this.P = new p(n.f4151a);
        this.Q = new p(4);
        this.S = new p();
        this.T = new p();
        this.U = new p(8);
        this.V = new p();
        this.h = new p();
    }

    protected static int a(int i) {
        switch (i) {
            case 131:
            case 136:
            case 155:
            case 159:
            case 176:
            case 179:
            case 186:
            case 215:
            case 231:
            case 238:
            case 241:
            case 251:
            case 16980:
            case 17029:
            case 17143:
            case 18401:
            case 18408:
            case 20529:
            case 20530:
            case 21420:
            case 21432:
            case 21680:
            case 21682:
            case 21690:
            case 21930:
            case 21945:
            case 21946:
            case 21947:
            case 21948:
            case 21949:
            case 21998:
            case 22186:
            case 22203:
            case 25188:
            case 30321:
            case 2352003:
            case 2807729:
                return 2;
            case 134:
            case 17026:
            case 21358:
            case 2274716:
                return 3;
            case 160:
            case 166:
            case 174:
            case 183:
            case 187:
            case 224:
            case 225:
            case 18407:
            case 19899:
            case 20532:
            case 20533:
            case 21936:
            case 21968:
            case 25152:
            case 28032:
            case 30113:
            case 30320:
            case 290298740:
            case 357149030:
            case 374648427:
            case 408125543:
            case 440786851:
            case 475249515:
            case 524531317:
                return 1;
            case 161:
            case 163:
            case 165:
            case 16981:
            case 18402:
            case 21419:
            case 25506:
            case 30322:
                return 4;
            case 181:
            case 17545:
            case 21969:
            case 21970:
            case 21971:
            case 21972:
            case 21973:
            case 21974:
            case 21975:
            case 21976:
            case 21977:
            case 21978:
            case 30323:
            case 30324:
            case 30325:
                return 5;
            default:
                return 0;
        }
    }

    private int a(h hVar, q qVar, int i) throws IOException, InterruptedException {
        int i2;
        int b2 = this.S.b();
        if (b2 > 0) {
            i2 = Math.min(i, b2);
            qVar.a(this.S, i2);
        } else {
            i2 = qVar.a(hVar, i, false);
        }
        this.Y += i2;
        this.ag += i2;
        return i2;
    }

    private void a(b bVar, String str, int i, long j, byte[] bArr) {
        a(this.T.f4166a, this.z, str, i, j, bArr);
        q qVar = bVar.V;
        p pVar = this.T;
        qVar.a(pVar, pVar.f4168c);
        this.ag += this.T.f4168c;
    }

    private void a(h hVar, byte[] bArr, int i) throws IOException, InterruptedException {
        int length = bArr.length + i;
        if (this.T.f4166a.length < length) {
            this.T.f4166a = Arrays.copyOf(bArr, length + i);
        } else {
            System.arraycopy(bArr, 0, this.T.f4166a, 0, bArr.length);
        }
        hVar.b(this.T.f4166a, bArr.length, i);
        this.T.a(length);
    }

    private static void a(byte[] bArr, long j, String str, int i, long j2, byte[] bArr2) {
        byte[] bArr3;
        if (j == -9223372036854775807L) {
            bArr3 = bArr2;
        } else {
            int i2 = (int) (j / 3600000000L);
            long j3 = j - ((i2 * 3600) * 1000000);
            int i3 = (int) (j3 / 60000000);
            long j4 = j3 - ((i3 * 60) * 1000000);
            int i4 = (int) (j4 / 1000000);
            bArr3 = ac.c(String.format(Locale.US, str, Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf((int) ((j4 - (i4 * 1000000)) / j2))));
        }
        System.arraycopy(bArr3, 0, bArr, i, bArr2.length);
    }

    static int[] a(int[] iArr, int i) {
        return iArr == null ? new int[i] : iArr.length >= i ? iArr : new int[Math.max(iArr.length * 2, i)];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ g[] a() {
        return new g[]{new d()};
    }

    protected static boolean b(int i) {
        return i == 357149030 || i == 524531317 || i == 475249515 || i == 374648427;
    }

    private void c() {
        this.Y = 0;
        this.ag = 0;
        this.af = 0;
        this.Z = false;
        this.aa = false;
        this.ac = false;
        this.ae = 0;
        this.ad = (byte) 0;
        this.ab = false;
        this.S.a();
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x007f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0007 A[SYNTHETIC] */
    @Override // androidx.media2.exoplayer.external.extractor.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(androidx.media2.exoplayer.external.extractor.h r9, androidx.media2.exoplayer.external.extractor.n r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.b.d.a(androidx.media2.exoplayer.external.extractor.h, androidx.media2.exoplayer.external.extractor.n):int");
    }

    final long a(long j) throws ParserException {
        long j2 = this.k;
        if (j2 != -9223372036854775807L) {
            return ac.b(j, j2, 1000L);
        }
        throw new ParserException("Can't scale timecode prior to timecodeScale being set.");
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final void a(long j, long j2) {
        this.t = -9223372036854775807L;
        this.x = 0;
        this.O.a();
        this.f3037c.a();
        c();
        for (int i = 0; i < this.f3038d.size(); i++) {
            b valueAt = this.f3038d.valueAt(i);
            if (valueAt.R != null) {
                valueAt.R.f3045b = false;
            }
        }
    }

    final void a(b bVar, long j) {
        if (bVar.R != null) {
            bVar.R.a(bVar, j);
        } else {
            if ("S_TEXT/UTF8".equals(bVar.f3041b)) {
                a(bVar, "%02d:%02d:%02d,%03d", 19, 1000L, K);
            } else if ("S_TEXT/ASS".equals(bVar.f3041b)) {
                a(bVar, "%01d:%02d:%02d:%02d", 21, 10000L, M);
            }
            if ((this.F & 268435456) != 0) {
                int i = this.h.f4168c;
                bVar.V.a(this.h, i);
                this.ag += i;
            }
            bVar.V.a(j, this.F, this.ag, 0, bVar.i);
        }
        this.ah = true;
        c();
    }

    void a(h hVar, int i) throws IOException, InterruptedException {
        if (this.f.f4168c < i) {
            if (this.f.f4166a.length < i) {
                p pVar = this.f;
                pVar.a(Arrays.copyOf(pVar.f4166a, Math.max(this.f.f4166a.length * 2, i)), this.f.f4168c);
            }
            hVar.b(this.f.f4166a, this.f.f4168c, i - this.f.f4168c);
            this.f.b(i);
        }
    }

    void a(h hVar, b bVar, int i) throws IOException, InterruptedException {
        int i2;
        if ("S_TEXT/UTF8".equals(bVar.f3041b)) {
            a(hVar, J, i);
        } else if ("S_TEXT/ASS".equals(bVar.f3041b)) {
            a(hVar, L, i);
        } else {
            q qVar = bVar.V;
            if (!this.Z) {
                if (bVar.g) {
                    this.F &= -1073741825;
                    int i3 = 128;
                    if (!this.aa) {
                        hVar.b(this.f.f4166a, 0, 1);
                        this.Y++;
                        if ((this.f.f4166a[0] & 128) != 128) {
                            this.ad = this.f.f4166a[0];
                            this.aa = true;
                        } else {
                            throw new ParserException("Extension bit is set in signal byte");
                        }
                    }
                    byte b2 = this.ad;
                    if ((b2 & 1) == 1) {
                        boolean z = (b2 & 2) == 2;
                        this.F |= 1073741824;
                        if (!this.ab) {
                            hVar.b(this.U.f4166a, 0, 8);
                            this.Y += 8;
                            this.ab = true;
                            byte[] bArr = this.f.f4166a;
                            if (!z) {
                                i3 = 0;
                            }
                            bArr[0] = (byte) (i3 | 8);
                            this.f.c(0);
                            qVar.a(this.f, 1);
                            this.ag++;
                            this.U.c(0);
                            qVar.a(this.U, 8);
                            this.ag += 8;
                        }
                        if (z) {
                            if (!this.ac) {
                                hVar.b(this.f.f4166a, 0, 1);
                                this.Y++;
                                this.f.c(0);
                                this.ae = this.f.c();
                                this.ac = true;
                            }
                            int i4 = this.ae * 4;
                            this.f.a(i4);
                            hVar.b(this.f.f4166a, 0, i4);
                            this.Y += i4;
                            short s = (short) ((this.ae / 2) + 1);
                            int i5 = (s * 6) + 2;
                            ByteBuffer byteBuffer = this.W;
                            if (byteBuffer == null || byteBuffer.capacity() < i5) {
                                this.W = ByteBuffer.allocate(i5);
                            }
                            this.W.position(0);
                            this.W.putShort(s);
                            int i6 = 0;
                            int i7 = 0;
                            while (true) {
                                i2 = this.ae;
                                if (i6 >= i2) {
                                    break;
                                }
                                int n = this.f.n();
                                if (i6 % 2 == 0) {
                                    this.W.putShort((short) (n - i7));
                                } else {
                                    this.W.putInt(n - i7);
                                }
                                i6++;
                                i7 = n;
                            }
                            int i8 = (i - this.Y) - i7;
                            if (i2 % 2 == 1) {
                                this.W.putInt(i8);
                            } else {
                                this.W.putShort((short) i8);
                                this.W.putInt(0);
                            }
                            this.V.a(this.W.array(), i5);
                            qVar.a(this.V, i5);
                            this.ag += i5;
                        }
                    }
                } else if (bVar.h != null) {
                    this.S.a(bVar.h, bVar.h.length);
                }
                if (bVar.f > 0) {
                    this.F |= 268435456;
                    this.h.a();
                    this.f.a(4);
                    this.f.f4166a[0] = (byte) ((i >> 24) & 255);
                    this.f.f4166a[1] = (byte) ((i >> 16) & 255);
                    this.f.f4166a[2] = (byte) ((i >> 8) & 255);
                    this.f.f4166a[3] = (byte) (i & 255);
                    qVar.a(this.f, 4);
                    this.ag += 4;
                }
                this.Z = true;
            }
            int i9 = i + this.S.f4168c;
            if (!"V_MPEG4/ISO/AVC".equals(bVar.f3041b) && !"V_MPEGH/ISO/HEVC".equals(bVar.f3041b)) {
                if (bVar.R != null) {
                    androidx.media2.exoplayer.external.util.a.b(this.S.f4168c == 0);
                    c cVar = bVar.R;
                    int i10 = this.F;
                    if (!cVar.f3045b) {
                        hVar.c(cVar.f3044a, 0, 10);
                        hVar.a();
                        if (androidx.media2.exoplayer.external.audio.a.b(cVar.f3044a) != 0) {
                            cVar.f3045b = true;
                            cVar.f3046c = 0;
                        }
                    }
                    if (cVar.f3046c == 0) {
                        cVar.f = i10;
                        cVar.f3047d = 0;
                    }
                    cVar.f3047d += i9;
                }
                while (true) {
                    int i11 = this.Y;
                    if (i11 >= i9) {
                        break;
                    }
                    a(hVar, qVar, i9 - i11);
                }
            } else {
                byte[] bArr2 = this.Q.f4166a;
                bArr2[0] = (byte) 0;
                bArr2[1] = (byte) 0;
                bArr2[2] = (byte) 0;
                int i12 = bVar.W;
                int i13 = 4 - bVar.W;
                while (this.Y < i9) {
                    int i14 = this.af;
                    if (i14 == 0) {
                        int min = Math.min(i12, this.S.b());
                        hVar.b(bArr2, i13 + min, i12 - min);
                        if (min > 0) {
                            this.S.a(bArr2, i13, min);
                        }
                        this.Y += i12;
                        this.Q.c(0);
                        this.af = this.Q.n();
                        this.P.c(0);
                        qVar.a(this.P, 4);
                        this.ag += 4;
                    } else {
                        this.af = i14 - a(hVar, qVar, i14);
                    }
                }
            }
            if ("A_VORBIS".equals(bVar.f3041b)) {
                this.R.c(0);
                qVar.a(this.R, 4);
                this.ag += 4;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final void a(i iVar) {
        this.I = iVar;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // androidx.media2.exoplayer.external.extractor.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(androidx.media2.exoplayer.external.extractor.h r6) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.b.d.a(androidx.media2.exoplayer.external.extractor.h):boolean");
    }
}
