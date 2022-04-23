package com.google.android.exoplayer2.extractor.d;

import android.util.Pair;
import android.util.SparseArray;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.a;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.h;
import com.google.android.exoplayer2.extractor.i;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.v;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.f;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.n;
import com.google.android.exoplayer2.util.o;
import com.google.android.exoplayer2.util.q;
import com.google.android.exoplayer2.util.s;
import com.google.android.exoplayer2.util.u;
import com.google.android.exoplayer2.video.ColorInfo;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.model.PropertyFlags;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/d/d.class */
public final class d implements h {

    /* renamed from: c  reason: collision with root package name */
    static final Map<String, Integer> f20970c;
    long A;
    int B;
    int C;
    int[] D;
    int E;
    int F;
    int G;
    int H;
    boolean I;
    j J;
    private final com.google.android.exoplayer2.extractor.d.c N;
    private final u O;
    private final u P;
    private final u Q;
    private final u R;
    private final u S;
    private final u T;
    private final u U;
    private ByteBuffer V;
    private long W;
    private boolean X;
    private int Y;
    private int Z;
    private int aa;
    private boolean ab;
    private boolean ac;
    private boolean ad;
    private int ae;
    private byte af;
    private boolean ag;

    /* renamed from: d  reason: collision with root package name */
    final f f20971d;
    final SparseArray<b> e;
    final boolean f;
    final u g;
    final u h;
    final u i;
    long j;
    long k;
    long l;
    long m;
    long n;
    b o;
    boolean p;
    int q;
    long r;
    boolean s;
    long t;
    long u;
    o v;
    o w;
    boolean x;
    int y;
    long z;

    /* renamed from: a  reason: collision with root package name */
    public static final l f20968a = _$$Lambda$d$3Jz_9Ap0zV8zZCESImMT84PV1Ns.INSTANCE;
    private static final byte[] K = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};

    /* renamed from: b  reason: collision with root package name */
    static final byte[] f20969b = af.c("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");
    private static final byte[] L = {68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};
    private static final UUID M = new UUID(72057594037932032L, -9223371306706625679L);

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/d/d$a.class */
    final class a implements com.google.android.exoplayer2.extractor.d.b {
        private a() {
        }

        @Override // com.google.android.exoplayer2.extractor.d.b
        public final int a(int i) {
            return d.a(i);
        }

        @Override // com.google.android.exoplayer2.extractor.d.b
        public final void a(int i, double d2) throws ParserException {
            d dVar = d.this;
            if (i == 181) {
                dVar.e(i).Q = (int) d2;
            } else if (i != 17545) {
                switch (i) {
                    case 21969:
                        dVar.e(i).D = (float) d2;
                        return;
                    case 21970:
                        dVar.e(i).E = (float) d2;
                        return;
                    case 21971:
                        dVar.e(i).F = (float) d2;
                        return;
                    case 21972:
                        dVar.e(i).G = (float) d2;
                        return;
                    case 21973:
                        dVar.e(i).H = (float) d2;
                        return;
                    case 21974:
                        dVar.e(i).I = (float) d2;
                        return;
                    case 21975:
                        dVar.e(i).J = (float) d2;
                        return;
                    case 21976:
                        dVar.e(i).K = (float) d2;
                        return;
                    case 21977:
                        dVar.e(i).L = (float) d2;
                        return;
                    case 21978:
                        dVar.e(i).M = (float) d2;
                        return;
                    default:
                        switch (i) {
                            case 30323:
                                dVar.e(i).s = (float) d2;
                                return;
                            case 30324:
                                dVar.e(i).t = (float) d2;
                                return;
                            case 30325:
                                dVar.e(i).u = (float) d2;
                                return;
                            default:
                                return;
                        }
                }
            } else {
                dVar.m = (long) d2;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r21v0 */
        /* JADX WARN: Type inference failed for: r21v1, types: [long] */
        /* JADX WARN: Type inference failed for: r21v2 */
        /* JADX WARN: Type inference failed for: r21v3, types: [long] */
        /* JADX WARN: Type inference failed for: r24v2, types: [long] */
        /* JADX WARN: Type inference failed for: r24v4 */
        /* JADX WARN: Type inference failed for: r24v5 */
        /* JADX WARN: Unknown variable types count: 2 */
        @Override // com.google.android.exoplayer2.extractor.d.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a(int r9, int r10, com.google.android.exoplayer2.extractor.i r11) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 1519
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.d.d.a.a(int, int, com.google.android.exoplayer2.extractor.i):void");
        }

        @Override // com.google.android.exoplayer2.extractor.d.b
        public final void a(int i, long j) throws ParserException {
            d dVar = d.this;
            if (i != 20529) {
                if (i != 20530) {
                    boolean z = false;
                    boolean z2 = false;
                    switch (i) {
                        case 131:
                            dVar.e(i).f20976d = (int) j;
                            return;
                        case 136:
                            b e = dVar.e(i);
                            if (j == 1) {
                                z = true;
                            }
                            e.V = z;
                            return;
                        case 155:
                            dVar.A = dVar.a(j);
                            return;
                        case 159:
                            dVar.e(i).O = (int) j;
                            return;
                        case 176:
                            dVar.e(i).m = (int) j;
                            return;
                        case 179:
                            dVar.d(i);
                            dVar.v.a(dVar.a(j));
                            return;
                        case 186:
                            dVar.e(i).n = (int) j;
                            return;
                        case 215:
                            dVar.e(i).f20975c = (int) j;
                            return;
                        case 231:
                            dVar.u = dVar.a(j);
                            return;
                        case 238:
                            dVar.H = (int) j;
                            return;
                        case 241:
                            if (!dVar.x) {
                                dVar.d(i);
                                dVar.w.a(j);
                                dVar.x = true;
                                return;
                            }
                            return;
                        case 251:
                            dVar.I = true;
                            return;
                        case 16871:
                            dVar.e(i).g = (int) j;
                            return;
                        case 16980:
                            if (j != 3) {
                                throw new ParserException("ContentCompAlgo " + j + " not supported");
                            }
                            return;
                        case 17029:
                            if (j < 1 || j > 2) {
                                throw new ParserException("DocTypeReadVersion " + j + " not supported");
                            }
                            return;
                        case 17143:
                            if (j != 1) {
                                throw new ParserException("EBMLReadVersion " + j + " not supported");
                            }
                            return;
                        case 18401:
                            if (j != 5) {
                                throw new ParserException("ContentEncAlgo " + j + " not supported");
                            }
                            return;
                        case 18408:
                            if (j != 1) {
                                throw new ParserException("AESSettingsCipherMode " + j + " not supported");
                            }
                            return;
                        case 21420:
                            dVar.r = j + dVar.k;
                            return;
                        case 21432:
                            int i2 = (int) j;
                            dVar.c(i);
                            if (i2 == 0) {
                                dVar.o.w = 0;
                                return;
                            } else if (i2 == 1) {
                                dVar.o.w = 2;
                                return;
                            } else if (i2 == 3) {
                                dVar.o.w = 1;
                                return;
                            } else if (i2 == 15) {
                                dVar.o.w = 3;
                                return;
                            } else {
                                return;
                            }
                        case 21680:
                            dVar.e(i).o = (int) j;
                            return;
                        case 21682:
                            dVar.e(i).q = (int) j;
                            return;
                        case 21690:
                            dVar.e(i).p = (int) j;
                            return;
                        case 21930:
                            b e2 = dVar.e(i);
                            if (j == 1) {
                                z2 = true;
                            }
                            e2.U = z2;
                            return;
                        case 21998:
                            dVar.e(i).f = (int) j;
                            return;
                        case 22186:
                            dVar.e(i).R = j;
                            return;
                        case 22203:
                            dVar.e(i).S = j;
                            return;
                        case 25188:
                            dVar.e(i).P = (int) j;
                            return;
                        case 30321:
                            dVar.c(i);
                            int i3 = (int) j;
                            if (i3 == 0) {
                                dVar.o.r = 0;
                                return;
                            } else if (i3 == 1) {
                                dVar.o.r = 1;
                                return;
                            } else if (i3 == 2) {
                                dVar.o.r = 2;
                                return;
                            } else if (i3 == 3) {
                                dVar.o.r = 3;
                                return;
                            } else {
                                return;
                            }
                        case 2352003:
                            dVar.e(i).e = (int) j;
                            return;
                        case 2807729:
                            dVar.l = j;
                            return;
                        default:
                            switch (i) {
                                case 21945:
                                    dVar.c(i);
                                    int i4 = (int) j;
                                    if (i4 == 1) {
                                        dVar.o.A = 2;
                                        return;
                                    } else if (i4 == 2) {
                                        dVar.o.A = 1;
                                        return;
                                    } else {
                                        return;
                                    }
                                case 21946:
                                    dVar.c(i);
                                    int i5 = (int) j;
                                    if (i5 != 1) {
                                        if (i5 == 16) {
                                            dVar.o.z = 6;
                                            return;
                                        } else if (i5 == 18) {
                                            dVar.o.z = 7;
                                            return;
                                        } else if (!(i5 == 6 || i5 == 7)) {
                                            return;
                                        }
                                    }
                                    dVar.o.z = 3;
                                    return;
                                case 21947:
                                    dVar.c(i);
                                    dVar.o.x = true;
                                    int i6 = (int) j;
                                    if (i6 == 1) {
                                        dVar.o.y = 1;
                                        return;
                                    } else if (i6 == 9) {
                                        dVar.o.y = 6;
                                        return;
                                    } else if (i6 == 4 || i6 == 5 || i6 == 6 || i6 == 7) {
                                        dVar.o.y = 2;
                                        return;
                                    } else {
                                        return;
                                    }
                                case 21948:
                                    dVar.e(i).B = (int) j;
                                    return;
                                case 21949:
                                    dVar.e(i).C = (int) j;
                                    return;
                                default:
                                    return;
                            }
                    }
                } else if (j != 1) {
                    throw new ParserException("ContentEncodingScope " + j + " not supported");
                }
            } else if (j != 0) {
                throw new ParserException("ContentEncodingOrder " + j + " not supported");
            }
        }

        @Override // com.google.android.exoplayer2.extractor.d.b
        public final void a(int i, long j, long j2) throws ParserException {
            d dVar = d.this;
            dVar.a();
            if (i == 160) {
                dVar.I = false;
            } else if (i == 174) {
                dVar.o = new b();
            } else if (i == 187) {
                dVar.x = false;
            } else if (i == 19899) {
                dVar.q = -1;
                dVar.r = -1L;
            } else if (i == 20533) {
                dVar.e(i).h = true;
            } else if (i == 21968) {
                dVar.e(i).x = true;
            } else if (i != 408125543) {
                if (i == 475249515) {
                    dVar.v = new o();
                    dVar.w = new o();
                } else if (i != 524531317 || dVar.p) {
                } else {
                    if (!dVar.f || dVar.t == -1) {
                        dVar.J.a(new v.b(dVar.n));
                        dVar.p = true;
                        return;
                    }
                    dVar.s = true;
                }
            } else if (dVar.k == -1 || dVar.k == j) {
                dVar.k = j;
                dVar.j = j2;
            } else {
                throw new ParserException("Multiple Segment elements not supported");
            }
        }

        @Override // com.google.android.exoplayer2.extractor.d.b
        public final void a(int i, String str) throws ParserException {
            d dVar = d.this;
            if (i == 134) {
                dVar.e(i).f20974b = str;
            } else if (i != 17026) {
                if (i == 21358) {
                    dVar.e(i).f20973a = str;
                } else if (i == 2274716) {
                    dVar.e(i).W = str;
                }
            } else if (!"webm".equals(str) && !"matroska".equals(str)) {
                throw new ParserException("DocType " + str + " not supported");
            }
        }

        @Override // com.google.android.exoplayer2.extractor.d.b
        public final boolean b(int i) {
            return d.b(i);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // com.google.android.exoplayer2.extractor.d.b
        public final void c(int i) throws ParserException {
            char c2;
            boolean z;
            char c3;
            int i2;
            List<byte[]> list;
            String str;
            int i3;
            int i4;
            ColorInfo colorInfo;
            byte[] bArr;
            v vVar;
            int i5;
            d dVar = d.this;
            dVar.a();
            if (i != 160) {
                if (i == 174) {
                    b bVar = (b) com.google.android.exoplayer2.util.a.a(dVar.o);
                    if (bVar.f20974b != null) {
                        String str2 = bVar.f20974b;
                        str2.hashCode();
                        switch (str2.hashCode()) {
                            case -2095576542:
                                if (str2.equals("V_MPEG4/ISO/AP")) {
                                    c2 = 0;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -2095575984:
                                if (str2.equals("V_MPEG4/ISO/SP")) {
                                    c2 = 1;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -1985379776:
                                if (str2.equals("A_MS/ACM")) {
                                    c2 = 2;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -1784763192:
                                if (str2.equals("A_TRUEHD")) {
                                    c2 = 3;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -1730367663:
                                if (str2.equals("A_VORBIS")) {
                                    c2 = 4;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -1482641358:
                                if (str2.equals("A_MPEG/L2")) {
                                    c2 = 5;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -1482641357:
                                if (str2.equals("A_MPEG/L3")) {
                                    c2 = 6;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -1373388978:
                                if (str2.equals("V_MS/VFW/FOURCC")) {
                                    c2 = 7;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -933872740:
                                if (str2.equals("S_DVBSUB")) {
                                    c2 = '\b';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -538363189:
                                if (str2.equals("V_MPEG4/ISO/ASP")) {
                                    c2 = '\t';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -538363109:
                                if (str2.equals("V_MPEG4/ISO/AVC")) {
                                    c2 = '\n';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -425012669:
                                if (str2.equals("S_VOBSUB")) {
                                    c2 = 11;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -356037306:
                                if (str2.equals("A_DTS/LOSSLESS")) {
                                    c2 = '\f';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 62923557:
                                if (str2.equals("A_AAC")) {
                                    c2 = '\r';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 62923603:
                                if (str2.equals("A_AC3")) {
                                    c2 = 14;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 62927045:
                                if (str2.equals("A_DTS")) {
                                    c2 = 15;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 82318131:
                                if (str2.equals("V_AV1")) {
                                    c2 = 16;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 82338133:
                                if (str2.equals("V_VP8")) {
                                    c2 = 17;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 82338134:
                                if (str2.equals("V_VP9")) {
                                    c2 = 18;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 99146302:
                                if (str2.equals("S_HDMV/PGS")) {
                                    c2 = 19;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 444813526:
                                if (str2.equals("V_THEORA")) {
                                    c2 = 20;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 542569478:
                                if (str2.equals("A_DTS/EXPRESS")) {
                                    c2 = 21;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 635596514:
                                if (str2.equals("A_PCM/FLOAT/IEEE")) {
                                    c2 = 22;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 725948237:
                                if (str2.equals("A_PCM/INT/BIG")) {
                                    c2 = 23;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 725957860:
                                if (str2.equals("A_PCM/INT/LIT")) {
                                    c2 = 24;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 738597099:
                                if (str2.equals("S_TEXT/ASS")) {
                                    c2 = 25;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 855502857:
                                if (str2.equals("V_MPEGH/ISO/HEVC")) {
                                    c2 = 26;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 1422270023:
                                if (str2.equals("S_TEXT/UTF8")) {
                                    c2 = 27;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 1809237540:
                                if (str2.equals("V_MPEG2")) {
                                    c2 = 28;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 1950749482:
                                if (str2.equals("A_EAC3")) {
                                    c2 = 29;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 1950789798:
                                if (str2.equals("A_FLAC")) {
                                    c2 = 30;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 1951062397:
                                if (str2.equals("A_OPUS")) {
                                    c2 = 31;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            default:
                                c2 = 65535;
                                break;
                        }
                        switch (c2) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case '\b':
                            case '\t':
                            case '\n':
                            case 11:
                            case '\f':
                            case '\r':
                            case 14:
                            case 15:
                            case 16:
                            case 17:
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                                z = true;
                                break;
                            default:
                                z = false;
                                break;
                        }
                        if (z) {
                            j jVar = dVar.J;
                            int i6 = bVar.f20975c;
                            String str3 = bVar.f20974b;
                            str3.hashCode();
                            switch (str3.hashCode()) {
                                case -2095576542:
                                    if (str3.equals("V_MPEG4/ISO/AP")) {
                                        c3 = 0;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case -2095575984:
                                    if (str3.equals("V_MPEG4/ISO/SP")) {
                                        c3 = 1;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case -1985379776:
                                    if (str3.equals("A_MS/ACM")) {
                                        c3 = 2;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case -1784763192:
                                    if (str3.equals("A_TRUEHD")) {
                                        c3 = 3;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case -1730367663:
                                    if (str3.equals("A_VORBIS")) {
                                        c3 = 4;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case -1482641358:
                                    if (str3.equals("A_MPEG/L2")) {
                                        c3 = 5;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case -1482641357:
                                    if (str3.equals("A_MPEG/L3")) {
                                        c3 = 6;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case -1373388978:
                                    if (str3.equals("V_MS/VFW/FOURCC")) {
                                        c3 = 7;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case -933872740:
                                    if (str3.equals("S_DVBSUB")) {
                                        c3 = '\b';
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case -538363189:
                                    if (str3.equals("V_MPEG4/ISO/ASP")) {
                                        c3 = '\t';
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case -538363109:
                                    if (str3.equals("V_MPEG4/ISO/AVC")) {
                                        c3 = '\n';
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case -425012669:
                                    if (str3.equals("S_VOBSUB")) {
                                        c3 = 11;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case -356037306:
                                    if (str3.equals("A_DTS/LOSSLESS")) {
                                        c3 = '\f';
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case 62923557:
                                    if (str3.equals("A_AAC")) {
                                        c3 = '\r';
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case 62923603:
                                    if (str3.equals("A_AC3")) {
                                        c3 = 14;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case 62927045:
                                    if (str3.equals("A_DTS")) {
                                        c3 = 15;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case 82318131:
                                    if (str3.equals("V_AV1")) {
                                        c3 = 16;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case 82338133:
                                    if (str3.equals("V_VP8")) {
                                        c3 = 17;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case 82338134:
                                    if (str3.equals("V_VP9")) {
                                        c3 = 18;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case 99146302:
                                    if (str3.equals("S_HDMV/PGS")) {
                                        c3 = 19;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case 444813526:
                                    if (str3.equals("V_THEORA")) {
                                        c3 = 20;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case 542569478:
                                    if (str3.equals("A_DTS/EXPRESS")) {
                                        c3 = 21;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case 635596514:
                                    if (str3.equals("A_PCM/FLOAT/IEEE")) {
                                        c3 = 22;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case 725948237:
                                    if (str3.equals("A_PCM/INT/BIG")) {
                                        c3 = 23;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case 725957860:
                                    if (str3.equals("A_PCM/INT/LIT")) {
                                        c3 = 24;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case 738597099:
                                    if (str3.equals("S_TEXT/ASS")) {
                                        c3 = 25;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case 855502857:
                                    if (str3.equals("V_MPEGH/ISO/HEVC")) {
                                        c3 = 26;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case 1422270023:
                                    if (str3.equals("S_TEXT/UTF8")) {
                                        c3 = 27;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case 1809237540:
                                    if (str3.equals("V_MPEG2")) {
                                        c3 = 28;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case 1950749482:
                                    if (str3.equals("A_EAC3")) {
                                        c3 = 29;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case 1950789798:
                                    if (str3.equals("A_FLAC")) {
                                        c3 = 30;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case 1951062397:
                                    if (str3.equals("A_OPUS")) {
                                        c3 = 31;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                default:
                                    c3 = 65535;
                                    break;
                            }
                            String str4 = "audio/raw";
                            switch (c3) {
                                case 0:
                                case 1:
                                case '\t':
                                    list = bVar.k == null ? null : Collections.singletonList(bVar.k);
                                    str4 = "video/mp4v-es";
                                    i3 = -1;
                                    str = null;
                                    i2 = -1;
                                    break;
                                case 2:
                                    if (b.b(new u(bVar.a(bVar.f20974b)))) {
                                        i2 = af.b(bVar.P);
                                        if (i2 == 0) {
                                            n.a("MatroskaExtractor", "Unsupported PCM bit depth: " + bVar.P + ". Setting mimeType to audio/x-unknown");
                                        }
                                        i3 = -1;
                                        str = null;
                                        list = null;
                                        break;
                                    } else {
                                        n.a("MatroskaExtractor", "Non-PCM MS/ACM is unsupported. Setting mimeType to ".concat("audio/x-unknown"));
                                    }
                                    str4 = "audio/x-unknown";
                                    i3 = -1;
                                    list = null;
                                    str = null;
                                    i2 = -1;
                                    break;
                                case 3:
                                    bVar.T = new c();
                                    str4 = "audio/true-hd";
                                    i3 = -1;
                                    list = null;
                                    str = null;
                                    i2 = -1;
                                    break;
                                case 4:
                                    i3 = PropertyFlags.UNSIGNED;
                                    list = b.a(bVar.a(bVar.f20974b));
                                    str4 = "audio/vorbis";
                                    str = null;
                                    i2 = -1;
                                    break;
                                case 5:
                                    i3 = 4096;
                                    str4 = "audio/mpeg-L2";
                                    list = null;
                                    str = null;
                                    i2 = -1;
                                    break;
                                case 6:
                                    i3 = 4096;
                                    str4 = "audio/mpeg";
                                    list = null;
                                    str = null;
                                    i2 = -1;
                                    break;
                                case 7:
                                    Pair<String, List<byte[]>> a2 = b.a(new u(bVar.a(bVar.f20974b)));
                                    str4 = (String) a2.first;
                                    list = (List) a2.second;
                                    i3 = -1;
                                    str = null;
                                    i2 = -1;
                                    break;
                                case '\b':
                                    byte[] bArr2 = new byte[4];
                                    System.arraycopy(bVar.a(bVar.f20974b), 0, bArr2, 0, 4);
                                    list = com.google.common.collect.v.a(bArr2);
                                    str4 = "application/dvbsubs";
                                    i3 = -1;
                                    str = null;
                                    i2 = -1;
                                    break;
                                case '\n':
                                    com.google.android.exoplayer2.video.a a3 = com.google.android.exoplayer2.video.a.a(new u(bVar.a(bVar.f20974b)));
                                    list = a3.f22365a;
                                    bVar.Y = a3.f22366b;
                                    str = a3.f;
                                    str4 = "video/avc";
                                    i2 = -1;
                                    i3 = -1;
                                    break;
                                case 11:
                                    list = com.google.common.collect.v.a(bVar.a(bVar.f20974b));
                                    str4 = "application/vobsub";
                                    i3 = -1;
                                    str = null;
                                    i2 = -1;
                                    break;
                                case '\f':
                                    str4 = "audio/vnd.dts.hd";
                                    i3 = -1;
                                    list = null;
                                    str = null;
                                    i2 = -1;
                                    break;
                                case '\r':
                                    list = Collections.singletonList(bVar.a(bVar.f20974b));
                                    a.C0421a a4 = com.google.android.exoplayer2.audio.a.a(bVar.k);
                                    bVar.Q = a4.f20726a;
                                    bVar.O = a4.f20727b;
                                    str = a4.f20728c;
                                    str4 = "audio/mp4a-latm";
                                    i2 = -1;
                                    i3 = -1;
                                    break;
                                case 14:
                                    str4 = "audio/ac3";
                                    i3 = -1;
                                    list = null;
                                    str = null;
                                    i2 = -1;
                                    break;
                                case 15:
                                case 21:
                                    str4 = "audio/vnd.dts";
                                    i3 = -1;
                                    list = null;
                                    str = null;
                                    i2 = -1;
                                    break;
                                case 16:
                                    str4 = "video/av01";
                                    i3 = -1;
                                    list = null;
                                    str = null;
                                    i2 = -1;
                                    break;
                                case 17:
                                    str4 = "video/x-vnd.on2.vp8";
                                    i3 = -1;
                                    list = null;
                                    str = null;
                                    i2 = -1;
                                    break;
                                case 18:
                                    str4 = "video/x-vnd.on2.vp9";
                                    i3 = -1;
                                    list = null;
                                    str = null;
                                    i2 = -1;
                                    break;
                                case 19:
                                    str4 = "application/pgs";
                                    i3 = -1;
                                    list = null;
                                    str = null;
                                    i2 = -1;
                                    break;
                                case 20:
                                    str4 = "video/x-unknown";
                                    i3 = -1;
                                    list = null;
                                    str = null;
                                    i2 = -1;
                                    break;
                                case 22:
                                    if (bVar.P == 32) {
                                        i3 = -1;
                                        str = null;
                                        list = null;
                                        i2 = 4;
                                        break;
                                    } else {
                                        n.a("MatroskaExtractor", "Unsupported floating point PCM bit depth: " + bVar.P + ". Setting mimeType to audio/x-unknown");
                                        str4 = "audio/x-unknown";
                                        i3 = -1;
                                        list = null;
                                        str = null;
                                        i2 = -1;
                                        break;
                                    }
                                case 23:
                                    if (bVar.P != 8) {
                                        if (bVar.P == 16) {
                                            i3 = -1;
                                            str = null;
                                            list = null;
                                            i2 = 268435456;
                                            break;
                                        } else {
                                            n.a("MatroskaExtractor", "Unsupported big endian PCM bit depth: " + bVar.P + ". Setting mimeType to audio/x-unknown");
                                            str4 = "audio/x-unknown";
                                            i3 = -1;
                                            list = null;
                                            str = null;
                                            i2 = -1;
                                            break;
                                        }
                                    } else {
                                        i3 = -1;
                                        str = null;
                                        list = null;
                                        i2 = 3;
                                        break;
                                    }
                                case 24:
                                    i2 = af.b(bVar.P);
                                    if (i2 == 0) {
                                        n.a("MatroskaExtractor", "Unsupported little endian PCM bit depth: " + bVar.P + ". Setting mimeType to audio/x-unknown");
                                        str4 = "audio/x-unknown";
                                        i3 = -1;
                                        list = null;
                                        str = null;
                                        i2 = -1;
                                        break;
                                    }
                                    i3 = -1;
                                    str = null;
                                    list = null;
                                    break;
                                case 25:
                                    list = com.google.common.collect.v.a(d.f20969b, bVar.a(bVar.f20974b));
                                    str4 = "text/x-ssa";
                                    i3 = -1;
                                    str = null;
                                    i2 = -1;
                                    break;
                                case 26:
                                    com.google.android.exoplayer2.video.d a5 = com.google.android.exoplayer2.video.d.a(new u(bVar.a(bVar.f20974b)));
                                    list = a5.f22397a;
                                    bVar.Y = a5.f22398b;
                                    str = a5.f22399c;
                                    str4 = "video/hevc";
                                    i2 = -1;
                                    i3 = -1;
                                    break;
                                case 27:
                                    str4 = "application/x-subrip";
                                    i3 = -1;
                                    list = null;
                                    str = null;
                                    i2 = -1;
                                    break;
                                case 28:
                                    str4 = "video/mpeg2";
                                    i3 = -1;
                                    list = null;
                                    str = null;
                                    i2 = -1;
                                    break;
                                case 29:
                                    str4 = "audio/eac3";
                                    i3 = -1;
                                    list = null;
                                    str = null;
                                    i2 = -1;
                                    break;
                                case 30:
                                    list = Collections.singletonList(bVar.a(bVar.f20974b));
                                    str4 = "audio/flac";
                                    i3 = -1;
                                    str = null;
                                    i2 = -1;
                                    break;
                                case 31:
                                    i3 = 5760;
                                    list = new ArrayList<>(3);
                                    list.add(bVar.a(bVar.f20974b));
                                    list.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(bVar.R).array());
                                    list.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(bVar.S).array());
                                    str4 = "audio/opus";
                                    str = null;
                                    i2 = -1;
                                    break;
                                default:
                                    throw new ParserException("Unrecognized codec identifier.");
                            }
                            String str5 = str;
                            String str6 = str4;
                            if (bVar.N != null) {
                                com.google.android.exoplayer2.video.b a6 = com.google.android.exoplayer2.video.b.a(new u(bVar.N));
                                str5 = str;
                                str6 = str4;
                                if (a6 != null) {
                                    str5 = a6.f22388c;
                                    str6 = "video/dolby-vision";
                                }
                            }
                            boolean z2 = bVar.V;
                            int i7 = bVar.U ? 2 : 0;
                            Format.a aVar = new Format.a();
                            if (q.a(str6)) {
                                aVar.x = bVar.O;
                                aVar.y = bVar.Q;
                                aVar.z = i2;
                                i4 = 1;
                            } else if (q.b(str6)) {
                                if (bVar.q == 0) {
                                    bVar.o = bVar.o == -1 ? bVar.m : bVar.o;
                                    bVar.p = bVar.p == -1 ? bVar.n : bVar.p;
                                }
                                float f = (bVar.o == -1 || bVar.p == -1) ? -1.0f : (bVar.n * bVar.o) / (bVar.m * bVar.p);
                                if (bVar.x) {
                                    if (bVar.D == -1.0f || bVar.E == -1.0f || bVar.F == -1.0f || bVar.G == -1.0f || bVar.H == -1.0f || bVar.I == -1.0f || bVar.J == -1.0f || bVar.K == -1.0f || bVar.L == -1.0f || bVar.M == -1.0f) {
                                        bArr = null;
                                    } else {
                                        bArr = new byte[25];
                                        ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                                        order.put((byte) 0);
                                        order.putShort((short) ((bVar.D * 50000.0f) + 0.5f));
                                        order.putShort((short) ((bVar.E * 50000.0f) + 0.5f));
                                        order.putShort((short) ((bVar.F * 50000.0f) + 0.5f));
                                        order.putShort((short) ((bVar.G * 50000.0f) + 0.5f));
                                        order.putShort((short) ((bVar.H * 50000.0f) + 0.5f));
                                        order.putShort((short) ((bVar.I * 50000.0f) + 0.5f));
                                        order.putShort((short) ((bVar.J * 50000.0f) + 0.5f));
                                        order.putShort((short) ((bVar.K * 50000.0f) + 0.5f));
                                        order.putShort((short) (bVar.L + 0.5f));
                                        order.putShort((short) (bVar.M + 0.5f));
                                        order.putShort((short) bVar.B);
                                        order.putShort((short) bVar.C);
                                    }
                                    colorInfo = new ColorInfo(bVar.y, bVar.A, bVar.z, bArr);
                                } else {
                                    colorInfo = null;
                                }
                                int intValue = (bVar.f20973a == null || !d.f20970c.containsKey(bVar.f20973a)) ? -1 : d.f20970c.get(bVar.f20973a).intValue();
                                if (bVar.r == 0 && Float.compare(bVar.s, BitmapDescriptorFactory.HUE_RED) == 0 && Float.compare(bVar.t, BitmapDescriptorFactory.HUE_RED) == 0) {
                                    if (Float.compare(bVar.u, BitmapDescriptorFactory.HUE_RED) == 0) {
                                        intValue = 0;
                                    } else if (Float.compare(bVar.t, 90.0f) == 0) {
                                        intValue = 90;
                                    } else if (Float.compare(bVar.t, -180.0f) == 0 || Float.compare(bVar.t, 180.0f) == 0) {
                                        intValue = 180;
                                    } else if (Float.compare(bVar.t, -90.0f) == 0) {
                                        intValue = 270;
                                    }
                                }
                                aVar.p = bVar.m;
                                aVar.q = bVar.n;
                                aVar.t = f;
                                aVar.s = intValue;
                                aVar.u = bVar.v;
                                aVar.v = bVar.w;
                                aVar.w = colorInfo;
                                i4 = 2;
                            } else {
                                i4 = 3;
                                if (!"application/x-subrip".equals(str6)) {
                                    i4 = 3;
                                    if (!"text/x-ssa".equals(str6)) {
                                        i4 = 3;
                                        if (!"application/vobsub".equals(str6)) {
                                            i4 = 3;
                                            if (!"application/pgs".equals(str6)) {
                                                if ("application/dvbsubs".equals(str6)) {
                                                    i4 = 3;
                                                } else {
                                                    throw new ParserException("Unexpected MIME type.");
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            if (bVar.f20973a != null && !d.f20970c.containsKey(bVar.f20973a)) {
                                aVar.f20604b = bVar.f20973a;
                            }
                            Format.a a7 = aVar.a(i6);
                            a7.k = str6;
                            a7.l = i3;
                            a7.f20605c = bVar.W;
                            a7.f20606d = (z2 ? 1 : 0) | 0 | i7;
                            a7.m = list;
                            a7.h = str5;
                            a7.n = bVar.l;
                            Format a8 = a7.a();
                            bVar.X = jVar.a(bVar.f20975c, i4);
                            bVar.X.a(a8);
                            dVar.e.put(bVar.f20975c, bVar);
                        }
                        dVar.o = null;
                        return;
                    }
                    throw new ParserException("CodecId is missing in TrackEntry element");
                } else if (i != 19899) {
                    if (i == 25152) {
                        dVar.c(i);
                        if (!dVar.o.h) {
                            return;
                        }
                        if (dVar.o.j != null) {
                            dVar.o.l = new DrmInitData(new DrmInitData.SchemeData(f.f21359a, "video/webm", dVar.o.j.f21337b));
                            return;
                        }
                        throw new ParserException("Encrypted Track found but ContentEncKeyID was not found");
                    } else if (i == 28032) {
                        dVar.c(i);
                        if (dVar.o.h && dVar.o.i != null) {
                            throw new ParserException("Combining encryption and compression is not supported");
                        }
                    } else if (i == 357149030) {
                        if (dVar.l == -9223372036854775807L) {
                            dVar.l = 1000000L;
                        }
                        if (dVar.m != -9223372036854775807L) {
                            dVar.n = dVar.a(dVar.m);
                        }
                    } else if (i != 374648427) {
                        if (i == 475249515) {
                            if (!dVar.p) {
                                j jVar2 = dVar.J;
                                o oVar = dVar.v;
                                o oVar2 = dVar.w;
                                if (dVar.k == -1 || dVar.n == -9223372036854775807L || oVar == null || oVar.f22310a == 0 || oVar2 == null || oVar2.f22310a != oVar.f22310a) {
                                    vVar = new v.b(dVar.n);
                                } else {
                                    int i8 = oVar.f22310a;
                                    int[] iArr = new int[i8];
                                    long[] jArr = new long[i8];
                                    long[] jArr2 = new long[i8];
                                    long[] jArr3 = new long[i8];
                                    for (int i9 = 0; i9 < i8; i9++) {
                                        jArr3[i9] = oVar.a(i9);
                                        jArr[i9] = dVar.k + oVar2.a(i9);
                                    }
                                    int i10 = 0;
                                    while (true) {
                                        i5 = i8 - 1;
                                        if (i10 >= i5) {
                                            break;
                                        }
                                        int i11 = i10 + 1;
                                        iArr[i10] = (int) (jArr[i11] - jArr[i10]);
                                        jArr2[i10] = jArr3[i11] - jArr3[i10];
                                        i10 = i11;
                                    }
                                    iArr[i5] = (int) ((dVar.k + dVar.j) - jArr[i5]);
                                    jArr2[i5] = dVar.n - jArr3[i5];
                                    long j = jArr2[i5];
                                    if (j <= 0) {
                                        n.a("MatroskaExtractor", "Discarding last cue point with unexpected duration: ".concat(String.valueOf(j)));
                                        iArr = Arrays.copyOf(iArr, i5);
                                        jArr = Arrays.copyOf(jArr, i5);
                                        jArr2 = Arrays.copyOf(jArr2, i5);
                                        jArr3 = Arrays.copyOf(jArr3, i5);
                                    }
                                    vVar = new com.google.android.exoplayer2.extractor.c(iArr, jArr, jArr2, jArr3);
                                }
                                jVar2.a(vVar);
                                dVar.p = true;
                            }
                            dVar.v = null;
                            dVar.w = null;
                        }
                    } else if (dVar.e.size() != 0) {
                        dVar.J.a();
                    } else {
                        throw new ParserException("No valid tracks were found");
                    }
                } else if (dVar.q == -1 || dVar.r == -1) {
                    throw new ParserException("Mandatory element SeekID or SeekPosition not found");
                } else if (dVar.q == 475249515) {
                    dVar.t = dVar.r;
                }
            } else if (dVar.y == 2) {
                int i12 = 0;
                for (int i13 = 0; i13 < dVar.C; i13++) {
                    i12 += dVar.D[i13];
                }
                b bVar2 = dVar.e.get(dVar.E);
                bVar2.a();
                for (int i14 = 0; i14 < dVar.C; i14++) {
                    long j2 = dVar.z;
                    long j3 = (bVar2.e * i14) / 1000;
                    int i15 = dVar.G;
                    int i16 = i15;
                    if (i14 == 0) {
                        i16 = i15;
                        if (!dVar.I) {
                            i16 = i15 | 1;
                        }
                    }
                    int i17 = dVar.D[i14];
                    i12 -= i17;
                    dVar.a(bVar2, j3 + j2, i16, i17, i12);
                }
                dVar.y = 0;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/d/d$b.class */
    public static final class b {
        public int A;
        public int B;
        public int C;
        public float D;
        public float E;
        public float F;
        public float G;
        public float H;
        public float I;
        public float J;
        public float K;
        public float L;
        public float M;
        public byte[] N;
        public int O;
        public int P;
        public int Q;
        public long R;
        public long S;
        public c T;
        public boolean U;
        public boolean V;
        String W;
        public x X;
        public int Y;

        /* renamed from: a  reason: collision with root package name */
        public String f20973a;

        /* renamed from: b  reason: collision with root package name */
        public String f20974b;

        /* renamed from: c  reason: collision with root package name */
        public int f20975c;

        /* renamed from: d  reason: collision with root package name */
        public int f20976d;
        public int e;
        public int f;
        int g;
        public boolean h;
        public byte[] i;
        public x.a j;
        public byte[] k;
        public DrmInitData l;
        public int m;
        public int n;
        public int o;
        public int p;
        public int q;
        public int r;
        public float s;
        public float t;
        public float u;
        public byte[] v;
        public int w;
        public boolean x;
        public int y;
        public int z;

        private b() {
            this.m = -1;
            this.n = -1;
            this.o = -1;
            this.p = -1;
            this.q = 0;
            this.r = -1;
            this.s = BitmapDescriptorFactory.HUE_RED;
            this.t = BitmapDescriptorFactory.HUE_RED;
            this.u = BitmapDescriptorFactory.HUE_RED;
            this.v = null;
            this.w = -1;
            this.x = false;
            this.y = -1;
            this.z = -1;
            this.A = -1;
            this.B = 1000;
            this.C = 200;
            this.D = -1.0f;
            this.E = -1.0f;
            this.F = -1.0f;
            this.G = -1.0f;
            this.H = -1.0f;
            this.I = -1.0f;
            this.J = -1.0f;
            this.K = -1.0f;
            this.L = -1.0f;
            this.M = -1.0f;
            this.O = 1;
            this.P = -1;
            this.Q = 8000;
            this.R = 0L;
            this.S = 0L;
            this.V = true;
            this.W = "eng";
        }

        static Pair<String, List<byte[]>> a(u uVar) throws ParserException {
            try {
                uVar.e(16);
                long i = uVar.i();
                if (i == 1482049860) {
                    return new Pair<>("video/divx", null);
                }
                if (i == 859189832) {
                    return new Pair<>("video/3gpp", null);
                }
                if (i == 826496599) {
                    byte[] bArr = uVar.f22335a;
                    for (int i2 = uVar.f22336b + 20; i2 < bArr.length - 4; i2++) {
                        if (bArr[i2] == 0 && bArr[i2 + 1] == 0 && bArr[i2 + 2] == 1 && bArr[i2 + 3] == 15) {
                            return new Pair<>("video/wvc1", Collections.singletonList(Arrays.copyOfRange(bArr, i2, bArr.length)));
                        }
                    }
                    throw new ParserException("Failed to find FourCC VC1 initialization data");
                }
                n.a("MatroskaExtractor", "Unknown FourCC. Setting mimeType to video/x-unknown");
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
                    while ((bArr[i] & 255) == 255) {
                        i2 += 255;
                        i++;
                    }
                    int i3 = i + 1;
                    int i4 = i2 + (bArr[i] & 255);
                    int i5 = 0;
                    while ((bArr[i3] & 255) == 255) {
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
                            int i8 = i7 + i5 + (b2 & 255);
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

        static boolean b(u uVar) throws ParserException {
            try {
                int e = uVar.e();
                if (e == 1) {
                    return true;
                }
                if (e != 65534) {
                    return false;
                }
                uVar.d(24);
                if (uVar.l() == d.M.getMostSignificantBits()) {
                    return uVar.l() == d.M.getLeastSignificantBits();
                }
                return false;
            } catch (ArrayIndexOutOfBoundsException e2) {
                throw new ParserException("Error parsing MS/ACM codec private");
            }
        }

        @EnsuresNonNull({"output"})
        final void a() {
            com.google.android.exoplayer2.util.a.b(this.X);
        }

        @EnsuresNonNull({"codecPrivate"})
        final byte[] a(String str) throws ParserException {
            byte[] bArr = this.k;
            if (bArr != null) {
                return bArr;
            }
            throw new ParserException("Missing CodecPrivate for codec ".concat(String.valueOf(str)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/d/d$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        final byte[] f20977a = new byte[10];

        /* renamed from: b  reason: collision with root package name */
        boolean f20978b;

        /* renamed from: c  reason: collision with root package name */
        int f20979c;

        /* renamed from: d  reason: collision with root package name */
        long f20980d;
        int e;
        int f;
        int g;

        @RequiresNonNull({"#1.output"})
        public final void a(b bVar) {
            if (this.f20979c > 0) {
                bVar.X.a(this.f20980d, this.e, this.f, this.g, bVar.j);
                this.f20979c = 0;
            }
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("htc_video_rotA-000", 0);
        hashMap.put("htc_video_rotA-090", 90);
        hashMap.put("htc_video_rotA-180", 180);
        hashMap.put("htc_video_rotA-270", 270);
        f20970c = Collections.unmodifiableMap(hashMap);
    }

    public d() {
        this(0);
    }

    public d(int i) {
        this(new com.google.android.exoplayer2.extractor.d.a(), i);
    }

    d(com.google.android.exoplayer2.extractor.d.c cVar, int i) {
        this.k = -1L;
        this.l = -9223372036854775807L;
        this.m = -9223372036854775807L;
        this.n = -9223372036854775807L;
        this.t = -1L;
        this.W = -1L;
        this.u = -9223372036854775807L;
        this.N = cVar;
        cVar.a(new a());
        this.f = (i & 1) == 0;
        this.f20971d = new f();
        this.e = new SparseArray<>();
        this.g = new u(4);
        this.Q = new u(ByteBuffer.allocate(4).putInt(-1).array());
        this.h = new u(4);
        this.O = new u(s.f22320a);
        this.P = new u(4);
        this.R = new u();
        this.S = new u();
        this.T = new u(8);
        this.U = new u();
        this.i = new u();
        this.D = new int[1];
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
            case 16871:
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
            case 16868:
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
            case 16877:
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

    private int a(i iVar, x xVar, int i) throws IOException {
        int i2;
        int a2 = this.R.a();
        if (a2 > 0) {
            i2 = Math.min(i, a2);
            xVar.b(this.R, i2);
        } else {
            i2 = xVar.b(iVar, i, false);
        }
        return i2;
    }

    private void a(i iVar, byte[] bArr, int i) throws IOException {
        int length = bArr.length + i;
        if (this.S.f22335a.length < length) {
            u uVar = this.S;
            byte[] copyOf = Arrays.copyOf(bArr, length + i);
            uVar.a(copyOf, copyOf.length);
        } else {
            System.arraycopy(bArr, 0, this.S.f22335a, 0, bArr.length);
        }
        iVar.b(this.S.f22335a, bArr.length, i);
        this.S.d(0);
        this.S.c(length);
    }

    private static byte[] a(long j, String str, long j2) {
        com.google.android.exoplayer2.util.a.a(j != -9223372036854775807L);
        int i = (int) (j / 3600000000L);
        long j3 = j - ((i * 3600) * 1000000);
        int i2 = (int) (j3 / 60000000);
        long j4 = j3 - ((i2 * 60) * 1000000);
        int i3 = (int) (j4 / 1000000);
        return af.c(String.format(Locale.US, str, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf((int) ((j4 - (i3 * 1000000)) / j2))));
    }

    static int[] a(int[] iArr, int i) {
        return iArr == null ? new int[i] : iArr.length >= i ? iArr : new int[Math.max(iArr.length * 2, i)];
    }

    protected static boolean b(int i) {
        return i == 357149030 || i == 524531317 || i == 475249515 || i == 374648427;
    }

    private int c() {
        int i = this.Z;
        d();
        return i;
    }

    private void d() {
        this.Y = 0;
        this.Z = 0;
        this.aa = 0;
        this.ab = false;
        this.ac = false;
        this.ad = false;
        this.ae = 0;
        this.af = (byte) 0;
        this.ag = false;
        this.R.a(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ h[] e() {
        return new h[]{new d()};
    }

    @RequiresNonNull({"#2.output"})
    int a(i iVar, b bVar, int i) throws IOException {
        int i2;
        if ("S_TEXT/UTF8".equals(bVar.f20974b)) {
            a(iVar, K, i);
            return c();
        } else if ("S_TEXT/ASS".equals(bVar.f20974b)) {
            a(iVar, L, i);
            return c();
        } else {
            x xVar = bVar.X;
            if (!this.ab) {
                if (bVar.h) {
                    this.G &= -1073741825;
                    int i3 = 128;
                    if (!this.ac) {
                        iVar.b(this.g.f22335a, 0, 1);
                        this.Y++;
                        if ((this.g.f22335a[0] & 128) != 128) {
                            this.af = this.g.f22335a[0];
                            this.ac = true;
                        } else {
                            throw new ParserException("Extension bit is set in signal byte");
                        }
                    }
                    byte b2 = this.af;
                    if ((b2 & 1) == 1) {
                        boolean z = (b2 & 2) == 2;
                        this.G |= 1073741824;
                        if (!this.ag) {
                            iVar.b(this.T.f22335a, 0, 8);
                            this.Y += 8;
                            this.ag = true;
                            byte[] bArr = this.g.f22335a;
                            if (!z) {
                                i3 = 0;
                            }
                            bArr[0] = (byte) (i3 | 8);
                            this.g.d(0);
                            xVar.a(this.g, 1);
                            this.Z++;
                            this.T.d(0);
                            xVar.a(this.T, 8);
                            this.Z += 8;
                        }
                        if (z) {
                            if (!this.ad) {
                                iVar.b(this.g.f22335a, 0, 1);
                                this.Y++;
                                this.g.d(0);
                                this.ae = this.g.c();
                                this.ad = true;
                            }
                            int i4 = this.ae * 4;
                            this.g.a(i4);
                            iVar.b(this.g.f22335a, 0, i4);
                            this.Y += i4;
                            short s = (short) ((this.ae / 2) + 1);
                            int i5 = (s * 6) + 2;
                            ByteBuffer byteBuffer = this.V;
                            if (byteBuffer == null || byteBuffer.capacity() < i5) {
                                this.V = ByteBuffer.allocate(i5);
                            }
                            this.V.position(0);
                            this.V.putShort(s);
                            int i6 = 0;
                            int i7 = 0;
                            while (true) {
                                i2 = this.ae;
                                if (i6 >= i2) {
                                    break;
                                }
                                int o = this.g.o();
                                if (i6 % 2 == 0) {
                                    this.V.putShort((short) (o - i7));
                                } else {
                                    this.V.putInt(o - i7);
                                }
                                i6++;
                                i7 = o;
                            }
                            int i8 = (i - this.Y) - i7;
                            if (i2 % 2 == 1) {
                                this.V.putInt(i8);
                            } else {
                                this.V.putShort((short) i8);
                                this.V.putInt(0);
                            }
                            this.U.a(this.V.array(), i5);
                            xVar.a(this.U, i5);
                            this.Z += i5;
                        }
                    }
                } else if (bVar.i != null) {
                    this.R.a(bVar.i, bVar.i.length);
                }
                if (bVar.f > 0) {
                    this.G |= 268435456;
                    this.i.a(0);
                    this.g.a(4);
                    this.g.f22335a[0] = (byte) ((i >> 24) & 255);
                    this.g.f22335a[1] = (byte) ((i >> 16) & 255);
                    this.g.f22335a[2] = (byte) ((i >> 8) & 255);
                    this.g.f22335a[3] = (byte) (i & 255);
                    xVar.a(this.g, 4);
                    this.Z += 4;
                }
                this.ab = true;
            }
            int i9 = i + this.R.f22337c;
            if (!"V_MPEG4/ISO/AVC".equals(bVar.f20974b) && !"V_MPEGH/ISO/HEVC".equals(bVar.f20974b)) {
                if (bVar.T != null) {
                    com.google.android.exoplayer2.util.a.b(this.R.f22337c == 0);
                    c cVar = bVar.T;
                    if (!cVar.f20978b) {
                        iVar.d(cVar.f20977a, 0, 10);
                        iVar.a();
                        if (com.google.android.exoplayer2.audio.b.b(cVar.f20977a) != 0) {
                            cVar.f20978b = true;
                        }
                    }
                }
                while (true) {
                    int i10 = this.Y;
                    if (i10 >= i9) {
                        break;
                    }
                    int a2 = a(iVar, xVar, i9 - i10);
                    this.Y += a2;
                    this.Z += a2;
                }
            } else {
                byte[] bArr2 = this.P.f22335a;
                bArr2[0] = (byte) 0;
                bArr2[1] = (byte) 0;
                bArr2[2] = (byte) 0;
                int i11 = bVar.Y;
                int i12 = 4 - bVar.Y;
                while (this.Y < i9) {
                    int i13 = this.aa;
                    if (i13 == 0) {
                        int min = Math.min(i11, this.R.a());
                        iVar.b(bArr2, i12 + min, i11 - min);
                        if (min > 0) {
                            this.R.a(bArr2, i12, min);
                        }
                        this.Y += i11;
                        this.P.d(0);
                        this.aa = this.P.o();
                        this.O.d(0);
                        xVar.b(this.O, 4);
                        this.Z += 4;
                    } else {
                        int a3 = a(iVar, xVar, i13);
                        this.Y += a3;
                        this.Z += a3;
                        this.aa -= a3;
                    }
                }
            }
            if ("A_VORBIS".equals(bVar.f20974b)) {
                this.Q.d(0);
                xVar.b(this.Q, 4);
                this.Z += 4;
            }
            return c();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0085 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x000a A[SYNTHETIC] */
    @Override // com.google.android.exoplayer2.extractor.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(com.google.android.exoplayer2.extractor.i r6, com.google.android.exoplayer2.extractor.u r7) throws java.io.IOException {
        /*
            r5 = this;
            r0 = 0
            r8 = r0
            r0 = r5
            r1 = 0
            r0.X = r1
            r0 = 1
            r9 = r0
        L_0x000a:
            r0 = r9
            if (r0 == 0) goto L_0x0087
            r0 = r5
            boolean r0 = r0.X
            if (r0 != 0) goto L_0x0087
            r0 = r5
            com.google.android.exoplayer2.extractor.d.c r0 = r0.N
            r1 = r6
            boolean r0 = r0.a(r1)
            r10 = r0
            r0 = r10
            r9 = r0
            r0 = r10
            if (r0 == 0) goto L_0x000a
            r0 = r6
            long r0 = r0.c()
            r11 = r0
            r0 = r5
            boolean r0 = r0.s
            if (r0 == 0) goto L_0x0053
            r0 = r5
            r1 = r11
            r0.W = r1
            r0 = r7
            r1 = r5
            long r1 = r1.t
            r0.f21328a = r1
            r0 = r5
            r1 = 0
            r0.s = r1
        L_0x004d:
            r0 = 1
            r13 = r0
            goto L_0x007c
        L_0x0053:
            r0 = r5
            boolean r0 = r0.p
            if (r0 == 0) goto L_0x0079
            r0 = r5
            long r0 = r0.W
            r11 = r0
            r0 = r11
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0079
            r0 = r7
            r1 = r11
            r0.f21328a = r1
            r0 = r5
            r1 = -1
            r0.W = r1
            goto L_0x004d
        L_0x0079:
            r0 = 0
            r13 = r0
        L_0x007c:
            r0 = r10
            r9 = r0
            r0 = r13
            if (r0 == 0) goto L_0x000a
            r0 = 1
            return r0
        L_0x0087:
            r0 = r9
            if (r0 != 0) goto L_0x00c3
            r0 = r8
            r13 = r0
        L_0x008f:
            r0 = r13
            r1 = r5
            android.util.SparseArray<com.google.android.exoplayer2.extractor.d.d$b> r1 = r1.e
            int r1 = r1.size()
            if (r0 >= r1) goto L_0x00c1
            r0 = r5
            android.util.SparseArray<com.google.android.exoplayer2.extractor.d.d$b> r0 = r0.e
            r1 = r13
            java.lang.Object r0 = r0.valueAt(r1)
            com.google.android.exoplayer2.extractor.d.d$b r0 = (com.google.android.exoplayer2.extractor.d.d.b) r0
            r6 = r0
            r0 = r6
            r0.a()
            r0 = r6
            com.google.android.exoplayer2.extractor.d.d$c r0 = r0.T
            if (r0 == 0) goto L_0x00bb
            r0 = r6
            com.google.android.exoplayer2.extractor.d.d$c r0 = r0.T
            r1 = r6
            r0.a(r1)
        L_0x00bb:
            int r13 = r13 + 1
            goto L_0x008f
        L_0x00c1:
            r0 = -1
            return r0
        L_0x00c3:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.d.d.a(com.google.android.exoplayer2.extractor.i, com.google.android.exoplayer2.extractor.u):int");
    }

    final long a(long j) throws ParserException {
        long j2 = this.l;
        if (j2 != -9223372036854775807L) {
            return af.b(j, j2, 1000L);
        }
        throw new ParserException("Can't scale timecode prior to timecodeScale being set.");
    }

    @EnsuresNonNull({"extractorOutput"})
    final void a() {
        com.google.android.exoplayer2.util.a.a(this.J);
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final void a(long j, long j2) {
        this.u = -9223372036854775807L;
        this.y = 0;
        this.N.a();
        this.f20971d.a();
        d();
        for (int i = 0; i < this.e.size(); i++) {
            b valueAt = this.e.valueAt(i);
            if (valueAt.T != null) {
                c cVar = valueAt.T;
                cVar.f20978b = false;
                cVar.f20979c = 0;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0187  */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"#1.output"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void a(com.google.android.exoplayer2.extractor.d.d.b r9, long r10, int r12, int r13, int r14) {
        /*
            Method dump skipped, instructions count: 475
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.d.d.a(com.google.android.exoplayer2.extractor.d.d$b, long, int, int, int):void");
    }

    void a(i iVar, int i) throws IOException {
        if (this.g.f22337c < i) {
            if (this.g.f22335a.length < i) {
                u uVar = this.g;
                uVar.b(Math.max(uVar.f22335a.length * 2, i));
            }
            iVar.b(this.g.f22335a, this.g.f22337c, i - this.g.f22337c);
            this.g.c(i);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final void a(j jVar) {
        this.J = jVar;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.google.android.exoplayer2.extractor.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(com.google.android.exoplayer2.extractor.i r6) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.d.d.a(com.google.android.exoplayer2.extractor.i):boolean");
    }

    @EnsuresNonNull({"currentTrack"})
    final void c(int i) throws ParserException {
        if (this.o == null) {
            throw new ParserException("Element " + i + " must be in a TrackEntry");
        }
    }

    @EnsuresNonNull({"cueTimesUs", "cueClusterPositions"})
    final void d(int i) throws ParserException {
        if (this.v == null || this.w == null) {
            throw new ParserException("Element " + i + " must be in a Cues");
        }
    }

    final b e(int i) throws ParserException {
        c(i);
        return this.o;
    }
}
