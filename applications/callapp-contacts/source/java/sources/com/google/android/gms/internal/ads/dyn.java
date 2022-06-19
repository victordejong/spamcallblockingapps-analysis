package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dyn.class */
public final class dyn implements dyi {

    /* renamed from: a */
    private final /* synthetic */ dyl f48104a;

    private dyn(dyl dylVar) {
        this.f48104a = dylVar;
    }

    public /* synthetic */ dyn(dyl dylVar, dyk dykVar) {
        this(dylVar);
    }

    @Override // com.google.android.gms.internal.ads.dyi
    /* renamed from: a */
    public final int mo15468a(int i) {
        return dyl.m15480a(i);
    }

    @Override // com.google.android.gms.internal.ads.dyi
    /* renamed from: a */
    public final void mo15467a(int i, double d) throws zzhw {
        dyl dylVar = this.f48104a;
        if (i == 181) {
            dylVar.f48046k.f48070I = (int) d;
        } else if (i == 17545) {
            dylVar.f48044i = (long) d;
        } else {
            switch (i) {
                case 21969:
                    dylVar.f48046k.f48100w = (float) d;
                    return;
                case 21970:
                    dylVar.f48046k.f48101x = (float) d;
                    return;
                case 21971:
                    dylVar.f48046k.f48102y = (float) d;
                    return;
                case 21972:
                    dylVar.f48046k.f48103z = (float) d;
                    return;
                case 21973:
                    dylVar.f48046k.f48062A = (float) d;
                    return;
                case 21974:
                    dylVar.f48046k.f48063B = (float) d;
                    return;
                case 21975:
                    dylVar.f48046k.f48064C = (float) d;
                    return;
                case 21976:
                    dylVar.f48046k.f48065D = (float) d;
                    return;
                case 21977:
                    dylVar.f48046k.f48066E = (float) d;
                    return;
                case 21978:
                    dylVar.f48046k.f48067F = (float) d;
                    return;
                default:
                    return;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v129, types: [long] */
    /* JADX WARN: Type inference failed for: r0v137, types: [long] */
    /* JADX WARN: Type inference failed for: r0v141, types: [long] */
    @Override // com.google.android.gms.internal.ads.dyi
    /* renamed from: a */
    public final void mo15466a(int i, int i2, dxt dxtVar) throws IOException, InterruptedException {
        char c;
        int i3;
        dyl dylVar = this.f48104a;
        if (i != 161 && i != 163) {
            if (i == 16981) {
                dylVar.f48046k.f48083f = new byte[i2];
                dxtVar.mo15493b(dylVar.f48046k.f48083f, 0, i2);
                return;
            } else if (i == 18402) {
                byte[] bArr = new byte[i2];
                dxtVar.mo15493b(bArr, 0, i2);
                dylVar.f48046k.f48084g = new dyf(1, bArr);
                return;
            } else if (i == 21419) {
                Arrays.fill(dylVar.f48040e.f48724a, (byte) 0);
                dxtVar.mo15493b(dylVar.f48040e.f48724a, 4 - i2, i2);
                dylVar.f48040e.m15226c(0);
                dylVar.f48048m = (int) dylVar.f48040e.m15221f();
                return;
            } else if (i == 25506) {
                dylVar.f48046k.f48085h = new byte[i2];
                dxtVar.mo15493b(dylVar.f48046k.f48085h, 0, i2);
                return;
            } else if (i == 30322) {
                dylVar.f48046k.f48092o = new byte[i2];
                dxtVar.mo15493b(dylVar.f48046k.f48092o, 0, i2);
                return;
            } else {
                StringBuilder sb = new StringBuilder(26);
                sb.append("Unexpected id: ");
                sb.append(i);
                throw new zzhw(sb.toString());
            }
        }
        if (dylVar.f48056u == 0) {
            dylVar.f48011A = (int) dylVar.f48033a.m15458a(dxtVar, false, true, 8);
            dylVar.f48012B = dylVar.f48033a.f48106a;
            dylVar.f48058w = -9223372036854775807L;
            dylVar.f48056u = 1;
            dylVar.f48039d.m15233a();
        }
        dym dymVar = dylVar.f48037b.get(dylVar.f48011A);
        if (dymVar == null) {
            dxtVar.mo15494b(i2 - dylVar.f48012B);
            dylVar.f48056u = 0;
            return;
        }
        if (dylVar.f48056u == 1) {
            dylVar.m15478a(dxtVar, 3);
            int i4 = (dylVar.f48039d.f48724a[2] & 6) >> 1;
            if (i4 == 0) {
                dylVar.f48060y = 1;
                dylVar.f48061z = dyl.m15474a(dylVar.f48061z, 1);
                dylVar.f48061z[0] = (i2 - dylVar.f48012B) - 3;
            } else if (i != 163) {
                throw new zzhw("Lacing only supported in SimpleBlocks.");
            } else {
                int i5 = 4;
                dylVar.m15478a(dxtVar, 4);
                dylVar.f48060y = (dylVar.f48039d.f48724a[3] & 255) + 1;
                dylVar.f48061z = dyl.m15474a(dylVar.f48061z, dylVar.f48060y);
                if (i4 == 2) {
                    Arrays.fill(dylVar.f48061z, 0, dylVar.f48060y, ((i2 - dylVar.f48012B) - 4) / dylVar.f48060y);
                } else if (i4 == 1) {
                    int i6 = 0;
                    for (int i7 = 0; i7 < dylVar.f48060y - 1; i7++) {
                        dylVar.f48061z[i7] = 0;
                        int i8 = i5;
                        do {
                            i5 = i8 + 1;
                            dylVar.m15478a(dxtVar, i5);
                            i3 = dylVar.f48039d.f48724a[i5 - 1] & 255;
                            int[] iArr = dylVar.f48061z;
                            iArr[i7] = iArr[i7] + i3;
                            i8 = i5;
                        } while (i3 == 255);
                        i6 += dylVar.f48061z[i7];
                    }
                    dylVar.f48061z[dylVar.f48060y - 1] = ((i2 - dylVar.f48012B) - i5) - i6;
                } else if (i4 != 3) {
                    StringBuilder sb2 = new StringBuilder(36);
                    sb2.append("Unexpected lacing value: ");
                    sb2.append(i4);
                    throw new zzhw(sb2.toString());
                } else {
                    int i9 = 0;
                    for (int i10 = 0; i10 < dylVar.f48060y - 1; i10++) {
                        dylVar.f48061z[i10] = 0;
                        int i11 = i5 + 1;
                        dylVar.m15478a(dxtVar, i11);
                        byte[] bArr2 = dylVar.f48039d.f48724a;
                        int i12 = i11 - 1;
                        if (bArr2[i12] == 0) {
                            throw new zzhw("No valid varint length mask found");
                        }
                        int i13 = 0;
                        while (true) {
                            i5 = i11;
                            c = 0;
                            if (i13 >= 8) {
                                break;
                            }
                            int i14 = 1 << (7 - i13);
                            if ((dylVar.f48039d.f48724a[i12] & i14) != 0) {
                                int i15 = i11 + i13;
                                dylVar.m15478a(dxtVar, i15);
                                char c2 = dylVar.f48039d.f48724a[i12] & 255 & (i14 ^ (-1));
                                for (int i16 = i12 + 1; i16 < i15; i16++) {
                                    c2 = (c2 << '\b') | (dylVar.f48039d.f48724a[i16] & 255);
                                }
                                i5 = i15;
                                c = c2;
                                if (i10 > 0) {
                                    c = c2 - ((1 << ((i13 * 7) + 6)) - 1);
                                    i5 = i15;
                                }
                            } else {
                                i13++;
                            }
                        }
                        if (c < -2147483648L || c > 2147483647L) {
                            throw new zzhw("EBML lacing sample size out of range.");
                        }
                        int i17 = c;
                        int[] iArr2 = dylVar.f48061z;
                        if (i10 != 0) {
                            i17 += dylVar.f48061z[i10 - 1];
                        }
                        iArr2[i10] = i17;
                        i9 += dylVar.f48061z[i10];
                    }
                    dylVar.f48061z[dylVar.f48060y - 1] = ((i2 - dylVar.f48012B) - i5) - i9;
                }
            }
            dylVar.f48057v = dylVar.f48052q + dylVar.m15479a((dylVar.f48039d.f48724a[0] << 8) | (dylVar.f48039d.f48724a[1] & 255));
            dylVar.f48013C = ((dylVar.f48039d.f48724a[2] & 8) == 8 ? Integer.MIN_VALUE : 0) | ((dymVar.f48080c == 2 || (i == 163 && (dylVar.f48039d.f48724a[2] & 128) == 128)) ? 1 : 0);
            dylVar.f48056u = 2;
            dylVar.f48059x = 0;
        }
        if (i != 163) {
            dylVar.m15476a(dxtVar, dymVar, dylVar.f48061z[0]);
            return;
        }
        while (dylVar.f48059x < dylVar.f48060y) {
            dylVar.m15476a(dxtVar, dymVar, dylVar.f48061z[dylVar.f48059x]);
            dylVar.m15475a(dymVar, dylVar.f48057v + ((dylVar.f48059x * dymVar.f48081d) / 1000));
            dylVar.f48059x++;
        }
        dylVar.f48056u = 0;
    }

    @Override // com.google.android.gms.internal.ads.dyi
    /* renamed from: a */
    public final void mo15465a(int i, long j) throws zzhw {
        dyl dylVar = this.f48104a;
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
                    dylVar.f48046k.f48080c = (int) j;
                    return;
                case 136:
                    dym dymVar = dylVar.f48046k;
                    boolean z2 = false;
                    if (j == 1) {
                        z2 = true;
                    }
                    dymVar.f48073L = z2;
                    return;
                case 155:
                    dylVar.f48058w = dylVar.m15479a(j);
                    return;
                case 159:
                    dylVar.f48046k.f48068G = (int) j;
                    return;
                case 176:
                    dylVar.f48046k.f48087j = (int) j;
                    return;
                case 179:
                    dylVar.f48053r.m15244a(dylVar.m15479a(j));
                    return;
                case 186:
                    dylVar.f48046k.f48088k = (int) j;
                    return;
                case 215:
                    dylVar.f48046k.f48079b = (int) j;
                    return;
                case 231:
                    dylVar.f48052q = dylVar.m15479a(j);
                    return;
                case 241:
                    if (dylVar.f48055t) {
                        return;
                    }
                    dylVar.f48054s.m15244a(j);
                    dylVar.f48055t = true;
                    return;
                case 251:
                    dylVar.f48014D = true;
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
                    dylVar.f48049n = j + dylVar.f48042g;
                    return;
                case 21432:
                    int i2 = (int) j;
                    if (i2 == 0) {
                        dylVar.f48046k.f48093p = 0;
                        return;
                    } else if (i2 == 1) {
                        dylVar.f48046k.f48093p = 2;
                        return;
                    } else if (i2 == 3) {
                        dylVar.f48046k.f48093p = 1;
                        return;
                    } else if (i2 != 15) {
                        return;
                    } else {
                        dylVar.f48046k.f48093p = 3;
                        return;
                    }
                case 21680:
                    dylVar.f48046k.f48089l = (int) j;
                    return;
                case 21682:
                    dylVar.f48046k.f48091n = (int) j;
                    return;
                case 21690:
                    dylVar.f48046k.f48090m = (int) j;
                    return;
                case 21930:
                    dym dymVar2 = dylVar.f48046k;
                    if (j == 1) {
                        z = true;
                    }
                    dymVar2.f48074M = z;
                    return;
                case 22186:
                    dylVar.f48046k.f48071J = j;
                    return;
                case 22203:
                    dylVar.f48046k.f48072K = j;
                    return;
                case 25188:
                    dylVar.f48046k.f48069H = (int) j;
                    return;
                case 2352003:
                    dylVar.f48046k.f48081d = (int) j;
                    return;
                case 2807729:
                    dylVar.f48043h = j;
                    return;
                default:
                    switch (i) {
                        case 21945:
                            int i3 = (int) j;
                            if (i3 == 1) {
                                dylVar.f48046k.f48097t = 2;
                                return;
                            } else if (i3 != 2) {
                                return;
                            } else {
                                dylVar.f48046k.f48097t = 1;
                                return;
                            }
                        case 21946:
                            int i4 = (int) j;
                            if (i4 != 1) {
                                if (i4 == 16) {
                                    dylVar.f48046k.f48096s = 6;
                                    return;
                                } else if (i4 == 18) {
                                    dylVar.f48046k.f48096s = 7;
                                    return;
                                } else if (i4 != 6 && i4 != 7) {
                                    return;
                                }
                            }
                            dylVar.f48046k.f48096s = 3;
                            return;
                        case 21947:
                            dylVar.f48046k.f48094q = true;
                            int i5 = (int) j;
                            if (i5 == 1) {
                                dylVar.f48046k.f48095r = 1;
                                return;
                            } else if (i5 == 9) {
                                dylVar.f48046k.f48095r = 6;
                                return;
                            } else if (i5 != 4 && i5 != 5 && i5 != 6 && i5 != 7) {
                                return;
                            } else {
                                dylVar.f48046k.f48095r = 2;
                                return;
                            }
                        case 21948:
                            dylVar.f48046k.f48098u = (int) j;
                            return;
                        case 21949:
                            dylVar.f48046k.f48099v = (int) j;
                            return;
                        default:
                            return;
                    }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dyi
    /* renamed from: a */
    public final void mo15464a(int i, long j, long j2) throws zzhw {
        dyl dylVar = this.f48104a;
        if (i == 160) {
            dylVar.f48014D = false;
        } else if (i == 174) {
            dylVar.f48046k = new dym(null);
        } else if (i == 187) {
            dylVar.f48055t = false;
        } else if (i == 19899) {
            dylVar.f48048m = -1;
            dylVar.f48049n = -1L;
        } else if (i == 20533) {
            dylVar.f48046k.f48082e = true;
        } else if (i == 21968) {
            dylVar.f48046k.f48094q = true;
        } else if (i == 408125543) {
            if (dylVar.f48042g != -1 && dylVar.f48042g != j) {
                throw new zzhw("Multiple Segment elements not supported");
            }
            dylVar.f48042g = j;
            dylVar.f48041f = j2;
        } else if (i == 475249515) {
            dylVar.f48053r = new ecs();
            dylVar.f48054s = new ecs();
        } else if (i != 524531317 || dylVar.f48047l) {
        } else {
            if (dylVar.f48038c && dylVar.f48051p != -1) {
                dylVar.f48050o = true;
                return;
            }
            dylVar.f48015E.mo15373a(new dyd(dylVar.f48045j));
            dylVar.f48047l = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.dyi
    /* renamed from: a */
    public final void mo15463a(int i, String str) throws zzhw {
        dyl dylVar = this.f48104a;
        if (i == 134) {
            dylVar.f48046k.f48078a = str;
        } else if (i != 17026) {
            if (i != 2274716) {
                return;
            }
            dylVar.f48046k.f48075N = str;
        } else if ("webm".equals(str) || "matroska".equals(str)) {
        } else {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 22);
            sb.append("DocType ");
            sb.append(str);
            sb.append(" not supported");
            throw new zzhw(sb.toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.dyi
    /* renamed from: b */
    public final boolean mo15462b(int i) {
        return dyl.m15472b(i);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:282:0x0a9e  */
    /* JADX WARN: Removed duplicated region for block: B:283:0x0aa3  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x0ab4  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x0adf  */
    @Override // com.google.android.gms.internal.ads.dyi
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo15461c(int r17) throws com.google.android.gms.internal.ads.zzhw {
        /*
            Method dump skipped, instructions count: 3605
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dyn.mo15461c(int):void");
    }
}
