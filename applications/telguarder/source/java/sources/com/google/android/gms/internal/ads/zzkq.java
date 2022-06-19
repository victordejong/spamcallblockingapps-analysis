package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure;
import com.androidplot.BuildConfig;
import com.google.firebase.FirebaseError;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Locale;
import java.util.UUID;
import kotlin.text.Typography;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzkq.class */
public final class zzkq implements zzka {
    private static final zzkb zzapk = new zzkp();
    private static final byte[] zzapl = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
    private static final byte[] zzapm = {32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32};
    private static final UUID zzapn = new UUID(72057594037932032L, -9223371306706625679L);
    private long zzaip;
    private final zzkt zzapc;
    private final zzko zzapo;
    private final SparseArray<zzkr> zzapp;
    private final boolean zzapq;
    private final zzpn zzapr;
    private final zzpn zzaps;
    private final zzpn zzapt;
    private final zzpn zzapu;
    private final zzpn zzapv;
    private final zzpn zzapw;
    private final zzpn zzapx;
    private final zzpn zzapy;
    private final zzpn zzapz;
    private ByteBuffer zzaqa;
    private long zzaqb;
    private long zzaqc;
    private long zzaqd;
    private long zzaqe;
    private zzkr zzaqf;
    private boolean zzaqg;
    private int zzaqh;
    private long zzaqi;
    private boolean zzaqj;
    private long zzaqk;
    private long zzaql;
    private long zzaqm;
    private zzph zzaqn;
    private zzph zzaqo;
    private boolean zzaqp;
    private int zzaqq;
    private long zzaqr;
    private long zzaqs;
    private int zzaqt;
    private int zzaqu;
    private int[] zzaqv;
    private int zzaqw;
    private int zzaqx;
    private int zzaqy;
    private int zzaqz;
    private boolean zzara;
    private boolean zzarb;
    private boolean zzarc;
    private boolean zzard;
    private byte zzare;
    private int zzarf;
    private int zzarg;
    private int zzarh;
    private boolean zzari;
    private boolean zzarj;
    private zzkc zzark;

    public zzkq() {
        this(0);
    }

    private zzkq(int i) {
        this(new zzkj(), 0);
    }

    private zzkq(zzko zzkoVar, int i) {
        this.zzaqc = -1L;
        this.zzaqd = -9223372036854775807L;
        this.zzaqe = -9223372036854775807L;
        this.zzaip = -9223372036854775807L;
        this.zzaqk = -1L;
        this.zzaql = -1L;
        this.zzaqm = -9223372036854775807L;
        this.zzapo = zzkoVar;
        zzkoVar.zza(new zzks(this, null));
        this.zzapq = true;
        this.zzapc = new zzkt();
        this.zzapp = new SparseArray<>();
        this.zzapt = new zzpn(4);
        this.zzapu = new zzpn(ByteBuffer.allocate(4).putInt(-1).array());
        this.zzapv = new zzpn(4);
        this.zzapr = new zzpn(zzpm.zzbjt);
        this.zzaps = new zzpn(4);
        this.zzapw = new zzpn();
        this.zzapx = new zzpn();
        this.zzapy = new zzpn(8);
        this.zzapz = new zzpn();
    }

    private final int zza(zzjz zzjzVar, zzkh zzkhVar, int i) throws IOException, InterruptedException {
        int i2;
        int zziv = this.zzapw.zziv();
        if (zziv > 0) {
            i2 = Math.min(i, zziv);
            zzkhVar.zza(this.zzapw, i2);
        } else {
            i2 = zzkhVar.zza(zzjzVar, i, false);
        }
        this.zzaqz += i2;
        this.zzarh += i2;
        return i2;
    }

    private final void zza(zzjz zzjzVar, zzkr zzkrVar, int i) throws IOException, InterruptedException {
        int i2;
        int i3;
        if ("S_TEXT/UTF8".equals(zzkrVar.zzarl)) {
            byte[] bArr = zzapl;
            int length = bArr.length + i;
            if (this.zzapx.capacity() < length) {
                this.zzapx.data = Arrays.copyOf(bArr, length + i);
            }
            zzjzVar.readFully(this.zzapx.data, bArr.length, i);
            this.zzapx.zzbi(0);
            this.zzapx.zzbh(length);
            return;
        }
        zzkh zzkhVar = zzkrVar.zzasp;
        if (!this.zzara) {
            if (zzkrVar.zzarn) {
                this.zzaqy &= -1073741825;
                int i4 = 128;
                if (!this.zzarb) {
                    zzjzVar.readFully(this.zzapt.data, 0, 1);
                    this.zzaqz++;
                    if ((this.zzapt.data[0] & 128) == 128) {
                        throw new zzhw("Extension bit is set in signal byte");
                    }
                    this.zzare = this.zzapt.data[0];
                    this.zzarb = true;
                }
                byte b = this.zzare;
                if ((b & 1) == 1) {
                    boolean z = (b & 2) == 2;
                    this.zzaqy |= BasicMeasure.EXACTLY;
                    if (!this.zzarc) {
                        zzjzVar.readFully(this.zzapy.data, 0, 8);
                        this.zzaqz += 8;
                        this.zzarc = true;
                        byte[] bArr2 = this.zzapt.data;
                        if (!z) {
                            i4 = 0;
                        }
                        bArr2[0] = (byte) (i4 | 8);
                        this.zzapt.zzbi(0);
                        zzkhVar.zza(this.zzapt, 1);
                        this.zzarh++;
                        this.zzapy.zzbi(0);
                        zzkhVar.zza(this.zzapy, 8);
                        this.zzarh += 8;
                    }
                    if (z) {
                        if (!this.zzard) {
                            zzjzVar.readFully(this.zzapt.data, 0, 1);
                            this.zzaqz++;
                            this.zzapt.zzbi(0);
                            this.zzarf = this.zzapt.readUnsignedByte();
                            this.zzard = true;
                        }
                        int i5 = this.zzarf << 2;
                        this.zzapt.reset(i5);
                        zzjzVar.readFully(this.zzapt.data, 0, i5);
                        this.zzaqz += i5;
                        short s = (short) ((this.zzarf / 2) + 1);
                        int i6 = (s * 6) + 2;
                        ByteBuffer byteBuffer = this.zzaqa;
                        if (byteBuffer == null || byteBuffer.capacity() < i6) {
                            this.zzaqa = ByteBuffer.allocate(i6);
                        }
                        this.zzaqa.position(0);
                        this.zzaqa.putShort(s);
                        int i7 = 0;
                        int i8 = 0;
                        while (true) {
                            i2 = i8;
                            i3 = this.zzarf;
                            if (i7 >= i3) {
                                break;
                            }
                            int zzja = this.zzapt.zzja();
                            if (i7 % 2 == 0) {
                                this.zzaqa.putShort((short) (zzja - i2));
                            } else {
                                this.zzaqa.putInt(zzja - i2);
                            }
                            i7++;
                            i8 = zzja;
                        }
                        int i9 = (i - this.zzaqz) - i2;
                        if (i3 % 2 == 1) {
                            this.zzaqa.putInt(i9);
                        } else {
                            this.zzaqa.putShort((short) i9);
                            this.zzaqa.putInt(0);
                        }
                        this.zzapz.zzc(this.zzaqa.array(), i6);
                        zzkhVar.zza(this.zzapz, i6);
                        this.zzarh += i6;
                    }
                }
            } else if (zzkrVar.zzaro != null) {
                this.zzapw.zzc(zzkrVar.zzaro, zzkrVar.zzaro.length);
            }
            this.zzara = true;
        }
        int limit = i + this.zzapw.limit();
        if (!"V_MPEG4/ISO/AVC".equals(zzkrVar.zzarl) && !"V_MPEGH/ISO/HEVC".equals(zzkrVar.zzarl)) {
            while (true) {
                int i10 = this.zzaqz;
                if (i10 >= limit) {
                    break;
                }
                zza(zzjzVar, zzkhVar, limit - i10);
            }
        } else {
            byte[] bArr3 = this.zzaps.data;
            bArr3[0] = (byte) 0;
            bArr3[1] = (byte) 0;
            bArr3[2] = (byte) 0;
            int i11 = zzkrVar.zzasq;
            int i12 = 4 - zzkrVar.zzasq;
            while (this.zzaqz < limit) {
                int i13 = this.zzarg;
                if (i13 == 0) {
                    int min = Math.min(i11, this.zzapw.zziv());
                    zzjzVar.readFully(bArr3, i12 + min, i11 - min);
                    if (min > 0) {
                        this.zzapw.zze(bArr3, i12, min);
                    }
                    this.zzaqz += i11;
                    this.zzaps.zzbi(0);
                    this.zzarg = this.zzaps.zzja();
                    this.zzapr.zzbi(0);
                    zzkhVar.zza(this.zzapr, 4);
                    this.zzarh += 4;
                } else {
                    this.zzarg = i13 - zza(zzjzVar, zzkhVar, i13);
                }
            }
        }
        if (!"A_VORBIS".equals(zzkrVar.zzarl)) {
            return;
        }
        this.zzapu.zzbi(0);
        zzkhVar.zza(this.zzapu, 4);
        this.zzarh += 4;
    }

    private final void zza(zzkr zzkrVar, long j) {
        byte[] bArr;
        int i;
        if ("S_TEXT/UTF8".equals(zzkrVar.zzarl)) {
            byte[] bArr2 = this.zzapx.data;
            long j2 = this.zzaqs;
            if (j2 == -9223372036854775807L) {
                bArr = zzapm;
            } else {
                int i2 = (int) (j2 / 3600000000L);
                long j3 = j2 - (i2 * 3600000000L);
                int i3 = (int) (j3 / 60000000);
                long j4 = j3 - (60000000 * i3);
                bArr = zzpt.zzbg(String.format(Locale.US, "%02d:%02d:%02d,%03d", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf((int) (j4 / 1000000)), Integer.valueOf((int) ((j4 - (1000000 * i)) / 1000))));
            }
            System.arraycopy(bArr, 0, bArr2, 19, 12);
            zzkh zzkhVar = zzkrVar.zzasp;
            zzpn zzpnVar = this.zzapx;
            zzkhVar.zza(zzpnVar, zzpnVar.limit());
            this.zzarh += this.zzapx.limit();
        }
        zzkrVar.zzasp.zza(j, this.zzaqy, this.zzarh, 0, zzkrVar.zzarp);
        this.zzari = true;
        zzgu();
    }

    private static int[] zza(int[] iArr, int i) {
        return iArr == null ? new int[i] : iArr.length >= i ? iArr : new int[Math.max(iArr.length << 1, i)];
    }

    public static int zzal(int i) {
        switch (i) {
            case 131:
            case 136:
            case 155:
            case 159:
            case Typography.degree /* 176 */:
            case 179:
            case 186:
            case Typography.times /* 215 */:
            case 231:
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
            case 22186:
            case 22203:
            case 25188:
            case 2352003:
            case 2807729:
                return 2;
            case 134:
            case FirebaseError.ERROR_WEAK_PASSWORD /* 17026 */:
            case 2274716:
                return 3;
            case Typography.nbsp /* 160 */:
            case Typography.registered /* 174 */:
            case Typography.middleDot /* 183 */:
            case Typography.rightGuillemete /* 187 */:
            case 224:
            case BuildConfig.VERSION_CODE /* 225 */:
            case 18407:
            case 19899:
            case 20532:
            case 20533:
            case 21936:
            case 21968:
            case 25152:
            case 28032:
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
            case Typography.pound /* 163 */:
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
                return 5;
            default:
                return 0;
        }
    }

    public static boolean zzam(int i) {
        return i == 357149030 || i == 524531317 || i == 475249515 || i == 374648427;
    }

    private final void zzb(zzjz zzjzVar, int i) throws IOException, InterruptedException {
        if (this.zzapt.limit() >= i) {
            return;
        }
        if (this.zzapt.capacity() < i) {
            zzpn zzpnVar = this.zzapt;
            zzpnVar.zzc(Arrays.copyOf(zzpnVar.data, Math.max(this.zzapt.data.length << 1, i)), this.zzapt.limit());
        }
        zzjzVar.readFully(this.zzapt.data, this.zzapt.limit(), i - this.zzapt.limit());
        this.zzapt.zzbh(i);
    }

    private final long zzea(long j) throws zzhw {
        long j2 = this.zzaqd;
        if (j2 != -9223372036854775807L) {
            return zzpt.zza(j, j2, 1000L);
        }
        throw new zzhw("Can't scale timecode prior to timecodeScale being set.");
    }

    private final void zzgu() {
        this.zzaqz = 0;
        this.zzarh = 0;
        this.zzarg = 0;
        this.zzara = false;
        this.zzarb = false;
        this.zzard = false;
        this.zzarf = 0;
        this.zzare = (byte) 0;
        this.zzarc = false;
        this.zzapw.reset();
    }

    @Override // com.google.android.gms.internal.ads.zzka
    public final void release() {
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x007f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0007 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzka
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(com.google.android.gms.internal.ads.zzjz r6, com.google.android.gms.internal.ads.zzkg r7) throws java.io.IOException, java.lang.InterruptedException {
        /*
            r5 = this;
            r0 = r5
            r1 = 0
            r0.zzari = r1
            r0 = 1
            r8 = r0
        L7:
            r0 = r8
            if (r0 == 0) goto L81
            r0 = r5
            boolean r0 = r0.zzari
            if (r0 != 0) goto L81
            r0 = r5
            com.google.android.gms.internal.ads.zzko r0 = r0.zzapo
            r1 = r6
            boolean r0 = r0.zzb(r1)
            r9 = r0
            r0 = r9
            r8 = r0
            r0 = r9
            if (r0 == 0) goto L7
            r0 = r6
            long r0 = r0.getPosition()
            r10 = r0
            r0 = r5
            boolean r0 = r0.zzaqj
            if (r0 == 0) goto L4e
            r0 = r5
            r1 = r10
            r0.zzaql = r1
            r0 = r7
            r1 = r5
            long r1 = r1.zzaqk
            r0.position = r1
            r0 = r5
            r1 = 0
            r0.zzaqj = r1
        L48:
            r0 = 1
            r12 = r0
            goto L77
        L4e:
            r0 = r5
            boolean r0 = r0.zzaqg
            if (r0 == 0) goto L74
            r0 = r5
            long r0 = r0.zzaql
            r10 = r0
            r0 = r10
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L74
            r0 = r7
            r1 = r10
            r0.position = r1
            r0 = r5
            r1 = -1
            r0.zzaql = r1
            goto L48
        L74:
            r0 = 0
            r12 = r0
        L77:
            r0 = r9
            r8 = r0
            r0 = r12
            if (r0 == 0) goto L7
            r0 = 1
            return r0
        L81:
            r0 = r8
            if (r0 == 0) goto L87
            r0 = 0
            return r0
        L87:
            r0 = -1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkq.zza(com.google.android.gms.internal.ads.zzjz, com.google.android.gms.internal.ads.zzkg):int");
    }

    public final void zza(int i, double d) {
        if (i == 181) {
            this.zzaqf.zzahp = (int) d;
        } else if (i == 17545) {
            this.zzaqe = (long) d;
        } else {
            switch (i) {
                case 21969:
                    this.zzaqf.zzasa = (float) d;
                    return;
                case 21970:
                    this.zzaqf.zzasb = (float) d;
                    return;
                case 21971:
                    this.zzaqf.zzasc = (float) d;
                    return;
                case 21972:
                    this.zzaqf.zzasd = (float) d;
                    return;
                case 21973:
                    this.zzaqf.zzase = (float) d;
                    return;
                case 21974:
                    this.zzaqf.zzasf = (float) d;
                    return;
                case 21975:
                    this.zzaqf.zzasg = (float) d;
                    return;
                case 21976:
                    this.zzaqf.zzash = (float) d;
                    return;
                case 21977:
                    this.zzaqf.zzasi = (float) d;
                    return;
                case 21978:
                    this.zzaqf.zzasj = (float) d;
                    return;
                default:
                    return;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v136, types: [long] */
    /* JADX WARN: Type inference failed for: r0v144, types: [long] */
    /* JADX WARN: Type inference failed for: r0v154, types: [long] */
    public final void zza(int i, int i2, zzjz zzjzVar) throws IOException, InterruptedException {
        char c;
        int i3;
        int i4;
        int[] iArr;
        if (i != 161 && i != 163) {
            if (i == 16981) {
                this.zzaqf.zzaro = new byte[i2];
                zzjzVar.readFully(this.zzaqf.zzaro, 0, i2);
                return;
            } else if (i == 18402) {
                byte[] bArr = new byte[i2];
                zzjzVar.readFully(bArr, 0, i2);
                this.zzaqf.zzarp = new zzkk(1, bArr);
                return;
            } else if (i == 21419) {
                Arrays.fill(this.zzapv.data, (byte) 0);
                zzjzVar.readFully(this.zzapv.data, 4 - i2, i2);
                this.zzapv.zzbi(0);
                this.zzaqh = (int) this.zzapv.zzix();
                return;
            } else if (i == 25506) {
                this.zzaqf.zzarq = new byte[i2];
                zzjzVar.readFully(this.zzaqf.zzarq, 0, i2);
                return;
            } else if (i == 30322) {
                this.zzaqf.zzahm = new byte[i2];
                zzjzVar.readFully(this.zzaqf.zzahm, 0, i2);
                return;
            } else {
                StringBuilder sb = new StringBuilder(26);
                sb.append("Unexpected id: ");
                sb.append(i);
                throw new zzhw(sb.toString());
            }
        }
        if (this.zzaqq == 0) {
            this.zzaqw = (int) this.zzapc.zza(zzjzVar, false, true, 8);
            this.zzaqx = this.zzapc.zzgw();
            this.zzaqs = -9223372036854775807L;
            this.zzaqq = 1;
            this.zzapt.reset();
        }
        zzkr zzkrVar = this.zzapp.get(this.zzaqw);
        if (zzkrVar == null) {
            zzjzVar.zzag(i2 - this.zzaqx);
            this.zzaqq = 0;
            return;
        }
        if (this.zzaqq == 1) {
            zzb(zzjzVar, 3);
            int i5 = (this.zzapt.data[2] & 6) >> 1;
            if (i5 == 0) {
                this.zzaqu = 1;
                int[] zza = zza(this.zzaqv, 1);
                this.zzaqv = zza;
                zza[0] = (i2 - this.zzaqx) - 3;
            } else if (i != 163) {
                throw new zzhw("Lacing only supported in SimpleBlocks.");
            } else {
                int i6 = 4;
                zzb(zzjzVar, 4);
                int i7 = (this.zzapt.data[3] & 255) + 1;
                this.zzaqu = i7;
                int[] zza2 = zza(this.zzaqv, i7);
                this.zzaqv = zza2;
                if (i5 == 2) {
                    int i8 = this.zzaqx;
                    int i9 = this.zzaqu;
                    Arrays.fill(zza2, 0, i9, ((i2 - i8) - 4) / i9);
                } else if (i5 != 1) {
                    if (i5 != 3) {
                        StringBuilder sb2 = new StringBuilder(36);
                        sb2.append("Unexpected lacing value: ");
                        sb2.append(i5);
                        throw new zzhw(sb2.toString());
                    }
                    int i10 = 0;
                    int i11 = 0;
                    while (true) {
                        int i12 = this.zzaqu;
                        if (i10 >= i12 - 1) {
                            this.zzaqv[i12 - 1] = ((i2 - this.zzaqx) - i6) - i11;
                            break;
                        }
                        this.zzaqv[i10] = 0;
                        int i13 = i6 + 1;
                        zzb(zzjzVar, i13);
                        int i14 = i13 - 1;
                        if (this.zzapt.data[i14] == 0) {
                            throw new zzhw("No valid varint length mask found");
                        }
                        int i15 = 0;
                        while (true) {
                            i6 = i13;
                            c = 0;
                            if (i15 >= 8) {
                                break;
                            }
                            int i16 = 1 << (7 - i15);
                            if ((this.zzapt.data[i14] & i16) != 0) {
                                int i17 = i13 + i15;
                                zzb(zzjzVar, i17);
                                char c2 = (i16 ^ (-1)) & this.zzapt.data[i14] & 255;
                                int i18 = i14 + 1;
                                while (i18 < i17) {
                                    long j = this.zzapt.data[i18] & 255;
                                    i18++;
                                    c2 = (c2 << '\b') | j;
                                }
                                i6 = i17;
                                c = c2;
                                if (i10 > 0) {
                                    c = c2 - ((1 << ((i15 * 7) + 6)) - 1);
                                    i6 = i17;
                                }
                            } else {
                                i15++;
                            }
                        }
                        if (c < -2147483648L || c > 2147483647L) {
                            break;
                        }
                        int i19 = c;
                        int[] iArr2 = this.zzaqv;
                        if (i10 != 0) {
                            i19 += iArr2[i10 - 1];
                        }
                        iArr2[i10] = i19;
                        i11 += iArr2[i10];
                        i10++;
                    }
                    throw new zzhw("EBML lacing sample size out of range.");
                } else {
                    int i20 = 0;
                    int i21 = 0;
                    while (true) {
                        i3 = this.zzaqu;
                        if (i20 >= i3 - 1) {
                            break;
                        }
                        this.zzaqv[i20] = 0;
                        int i22 = i6;
                        do {
                            i6 = i22 + 1;
                            zzb(zzjzVar, i6);
                            i4 = this.zzapt.data[i6 - 1] & 255;
                            iArr = this.zzaqv;
                            iArr[i20] = iArr[i20] + i4;
                            i22 = i6;
                        } while (i4 == 255);
                        i21 += iArr[i20];
                        i20++;
                    }
                    this.zzaqv[i3 - 1] = ((i2 - this.zzaqx) - i6) - i21;
                }
            }
            this.zzaqr = this.zzaqm + zzea((this.zzapt.data[0] << 8) | (this.zzapt.data[1] & 255));
            this.zzaqy = ((this.zzapt.data[2] & 8) == 8 ? Integer.MIN_VALUE : 0) | ((zzkrVar.type == 2 || (i == 163 && (this.zzapt.data[2] & 128) == 128)) ? 1 : 0);
            this.zzaqq = 2;
            this.zzaqt = 0;
        }
        if (i != 163) {
            zza(zzjzVar, zzkrVar, this.zzaqv[0]);
            return;
        }
        while (true) {
            int i23 = this.zzaqt;
            if (i23 >= this.zzaqu) {
                this.zzaqq = 0;
                return;
            }
            zza(zzjzVar, zzkrVar, this.zzaqv[i23]);
            zza(zzkrVar, this.zzaqr + ((this.zzaqt * zzkrVar.zzarm) / 1000));
            this.zzaqt++;
        }
    }

    public final void zza(int i, String str) throws zzhw {
        if (i == 134) {
            this.zzaqf.zzarl = str;
        } else if (i != 17026) {
            if (i != 2274716) {
                return;
            }
            this.zzaqf.zzahv = str;
        } else if ("webm".equals(str) || "matroska".equals(str)) {
        } else {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 22);
            sb.append("DocType ");
            sb.append(str);
            sb.append(" not supported");
            throw new zzhw(sb.toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzka
    public final void zza(zzkc zzkcVar) {
        this.zzark = zzkcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzka
    public final boolean zza(zzjz zzjzVar) throws IOException, InterruptedException {
        return new zzku().zza(zzjzVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:134:0x039a, code lost:
        if ("S_DVBSUB".equals(r0) != false) goto L135;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzan(int r13) throws com.google.android.gms.internal.ads.zzhw {
        /*
            Method dump skipped, instructions count: 1029
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkq.zzan(int):void");
    }

    @Override // com.google.android.gms.internal.ads.zzka
    public final void zzc(long j, long j2) {
        this.zzaqm = -9223372036854775807L;
        this.zzaqq = 0;
        this.zzapo.reset();
        this.zzapc.reset();
        zzgu();
    }

    public final void zzd(int i, long j) throws zzhw {
        if (i == 20529) {
            if (j == 0) {
                return;
            }
            StringBuilder sb = new StringBuilder(55);
            sb.append("ContentEncodingOrder ");
            sb.append(j);
            sb.append(" not supported");
            throw new zzhw(sb.toString());
        } else if (i == 20530) {
            if (j == 1) {
                return;
            }
            StringBuilder sb2 = new StringBuilder(55);
            sb2.append("ContentEncodingScope ");
            sb2.append(j);
            sb2.append(" not supported");
            throw new zzhw(sb2.toString());
        } else {
            boolean z = false;
            switch (i) {
                case 131:
                    this.zzaqf.type = (int) j;
                    return;
                case 136:
                    zzkr zzkrVar = this.zzaqf;
                    boolean z2 = false;
                    if (j == 1) {
                        z2 = true;
                    }
                    zzkrVar.zzasn = z2;
                    return;
                case 155:
                    this.zzaqs = zzea(j);
                    return;
                case 159:
                    this.zzaqf.zzaho = (int) j;
                    return;
                case Typography.degree /* 176 */:
                    this.zzaqf.width = (int) j;
                    return;
                case 179:
                    this.zzaqn.add(zzea(j));
                    return;
                case 186:
                    this.zzaqf.height = (int) j;
                    return;
                case Typography.times /* 215 */:
                    this.zzaqf.number = (int) j;
                    return;
                case 231:
                    this.zzaqm = zzea(j);
                    return;
                case 241:
                    if (this.zzaqp) {
                        return;
                    }
                    this.zzaqo.add(j);
                    this.zzaqp = true;
                    return;
                case 251:
                    this.zzarj = true;
                    return;
                case 16980:
                    if (j == 3) {
                        return;
                    }
                    StringBuilder sb3 = new StringBuilder(50);
                    sb3.append("ContentCompAlgo ");
                    sb3.append(j);
                    sb3.append(" not supported");
                    throw new zzhw(sb3.toString());
                case 17029:
                    if (j >= 1 && j <= 2) {
                        return;
                    }
                    StringBuilder sb4 = new StringBuilder(53);
                    sb4.append("DocTypeReadVersion ");
                    sb4.append(j);
                    sb4.append(" not supported");
                    throw new zzhw(sb4.toString());
                case 17143:
                    if (j == 1) {
                        return;
                    }
                    StringBuilder sb5 = new StringBuilder(50);
                    sb5.append("EBMLReadVersion ");
                    sb5.append(j);
                    sb5.append(" not supported");
                    throw new zzhw(sb5.toString());
                case 18401:
                    if (j == 5) {
                        return;
                    }
                    StringBuilder sb6 = new StringBuilder(49);
                    sb6.append("ContentEncAlgo ");
                    sb6.append(j);
                    sb6.append(" not supported");
                    throw new zzhw(sb6.toString());
                case 18408:
                    if (j == 1) {
                        return;
                    }
                    StringBuilder sb7 = new StringBuilder(56);
                    sb7.append("AESSettingsCipherMode ");
                    sb7.append(j);
                    sb7.append(" not supported");
                    throw new zzhw(sb7.toString());
                case 21420:
                    this.zzaqi = j + this.zzaqc;
                    return;
                case 21432:
                    int i2 = (int) j;
                    if (i2 == 0) {
                        this.zzaqf.zzahl = 0;
                        return;
                    } else if (i2 == 1) {
                        this.zzaqf.zzahl = 2;
                        return;
                    } else if (i2 == 3) {
                        this.zzaqf.zzahl = 1;
                        return;
                    } else if (i2 != 15) {
                        return;
                    } else {
                        this.zzaqf.zzahl = 3;
                        return;
                    }
                case 21680:
                    this.zzaqf.zzarr = (int) j;
                    return;
                case 21682:
                    this.zzaqf.zzart = (int) j;
                    return;
                case 21690:
                    this.zzaqf.zzars = (int) j;
                    return;
                case 21930:
                    zzkr zzkrVar2 = this.zzaqf;
                    if (j == 1) {
                        z = true;
                    }
                    zzkrVar2.zzaso = z;
                    return;
                case 22186:
                    this.zzaqf.zzasl = j;
                    return;
                case 22203:
                    this.zzaqf.zzasm = j;
                    return;
                case 25188:
                    this.zzaqf.zzask = (int) j;
                    return;
                case 2352003:
                    this.zzaqf.zzarm = (int) j;
                    return;
                case 2807729:
                    this.zzaqd = j;
                    return;
                default:
                    switch (i) {
                        case 21945:
                            int i3 = (int) j;
                            if (i3 == 1) {
                                this.zzaqf.zzarx = 2;
                                return;
                            } else if (i3 != 2) {
                                return;
                            } else {
                                this.zzaqf.zzarx = 1;
                                return;
                            }
                        case 21946:
                            int i4 = (int) j;
                            if (i4 != 1) {
                                if (i4 == 16) {
                                    this.zzaqf.zzarw = 6;
                                    return;
                                } else if (i4 == 18) {
                                    this.zzaqf.zzarw = 7;
                                    return;
                                } else if (i4 != 6 && i4 != 7) {
                                    return;
                                }
                            }
                            this.zzaqf.zzarw = 3;
                            return;
                        case 21947:
                            this.zzaqf.zzaru = true;
                            int i5 = (int) j;
                            if (i5 == 1) {
                                this.zzaqf.zzarv = 1;
                                return;
                            } else if (i5 == 9) {
                                this.zzaqf.zzarv = 6;
                                return;
                            } else if (i5 != 4 && i5 != 5 && i5 != 6 && i5 != 7) {
                                return;
                            } else {
                                this.zzaqf.zzarv = 2;
                                return;
                            }
                        case 21948:
                            this.zzaqf.zzary = (int) j;
                            return;
                        case 21949:
                            this.zzaqf.zzarz = (int) j;
                            return;
                        default:
                            return;
                    }
            }
        }
    }

    public final void zzd(int i, long j, long j2) throws zzhw {
        if (i == 160) {
            this.zzarj = false;
        } else if (i == 174) {
            this.zzaqf = new zzkr(null);
        } else if (i == 187) {
            this.zzaqp = false;
        } else if (i == 19899) {
            this.zzaqh = -1;
            this.zzaqi = -1L;
        } else if (i == 20533) {
            this.zzaqf.zzarn = true;
        } else if (i == 21968) {
            this.zzaqf.zzaru = true;
        } else if (i == 408125543) {
            long j3 = this.zzaqc;
            if (j3 != -1 && j3 != j) {
                throw new zzhw("Multiple Segment elements not supported");
            }
            this.zzaqc = j;
            this.zzaqb = j2;
        } else if (i == 475249515) {
            this.zzaqn = new zzph();
            this.zzaqo = new zzph();
        } else if (i != 524531317 || this.zzaqg) {
        } else {
            if (this.zzapq && this.zzaqk != -1) {
                this.zzaqj = true;
                return;
            }
            this.zzark.zza(new zzki(this.zzaip));
            this.zzaqg = true;
        }
    }
}
