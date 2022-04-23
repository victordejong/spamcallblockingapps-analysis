package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dyn.class */
final class dyn implements dyi {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ dyl f27408a;

    private dyn(dyl dylVar) {
        this.f27408a = dylVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ dyn(dyl dylVar, dyk dykVar) {
        this(dylVar);
    }

    @Override // com.google.android.gms.internal.ads.dyi
    public final int a(int i) {
        return dyl.a(i);
    }

    @Override // com.google.android.gms.internal.ads.dyi
    public final void a(int i, double d2) throws zzhw {
        dyl dylVar = this.f27408a;
        if (i == 181) {
            dylVar.k.I = (int) d2;
        } else if (i != 17545) {
            switch (i) {
                case 21969:
                    dylVar.k.w = (float) d2;
                    return;
                case 21970:
                    dylVar.k.x = (float) d2;
                    return;
                case 21971:
                    dylVar.k.y = (float) d2;
                    return;
                case 21972:
                    dylVar.k.z = (float) d2;
                    return;
                case 21973:
                    dylVar.k.A = (float) d2;
                    return;
                case 21974:
                    dylVar.k.B = (float) d2;
                    return;
                case 21975:
                    dylVar.k.C = (float) d2;
                    return;
                case 21976:
                    dylVar.k.D = (float) d2;
                    return;
                case 21977:
                    dylVar.k.E = (float) d2;
                    return;
                case 21978:
                    dylVar.k.F = (float) d2;
                    return;
                default:
                    return;
            }
        } else {
            dylVar.i = (long) d2;
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
    @Override // com.google.android.gms.internal.ads.dyi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(int r9, int r10, com.google.android.gms.internal.ads.dxt r11) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 1372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dyn.a(int, int, com.google.android.gms.internal.ads.dxt):void");
    }

    @Override // com.google.android.gms.internal.ads.dyi
    public final void a(int i, long j) throws zzhw {
        dyl dylVar = this.f27408a;
        if (i != 20529) {
            if (i != 20530) {
                boolean z = false;
                boolean z2 = false;
                switch (i) {
                    case 131:
                        dylVar.k.f27406c = (int) j;
                        return;
                    case 136:
                        dym dymVar = dylVar.k;
                        if (j == 1) {
                            z = true;
                        }
                        dymVar.L = z;
                        return;
                    case 155:
                        dylVar.w = dylVar.a(j);
                        return;
                    case 159:
                        dylVar.k.G = (int) j;
                        return;
                    case 176:
                        dylVar.k.j = (int) j;
                        return;
                    case 179:
                        dylVar.r.a(dylVar.a(j));
                        return;
                    case 186:
                        dylVar.k.k = (int) j;
                        return;
                    case 215:
                        dylVar.k.f27405b = (int) j;
                        return;
                    case 231:
                        dylVar.q = dylVar.a(j);
                        return;
                    case 241:
                        if (!dylVar.t) {
                            dylVar.s.a(j);
                            dylVar.t = true;
                            return;
                        }
                        return;
                    case 251:
                        dylVar.D = true;
                        return;
                    case 16980:
                        if (j != 3) {
                            StringBuilder sb = new StringBuilder(50);
                            sb.append("ContentCompAlgo ");
                            sb.append(j);
                            sb.append(" not supported");
                            throw new zzhw(sb.toString());
                        }
                        return;
                    case 17029:
                        if (j < 1 || j > 2) {
                            StringBuilder sb2 = new StringBuilder(53);
                            sb2.append("DocTypeReadVersion ");
                            sb2.append(j);
                            sb2.append(" not supported");
                            throw new zzhw(sb2.toString());
                        }
                        return;
                    case 17143:
                        if (j != 1) {
                            StringBuilder sb3 = new StringBuilder(50);
                            sb3.append("EBMLReadVersion ");
                            sb3.append(j);
                            sb3.append(" not supported");
                            throw new zzhw(sb3.toString());
                        }
                        return;
                    case 18401:
                        if (j != 5) {
                            StringBuilder sb4 = new StringBuilder(49);
                            sb4.append("ContentEncAlgo ");
                            sb4.append(j);
                            sb4.append(" not supported");
                            throw new zzhw(sb4.toString());
                        }
                        return;
                    case 18408:
                        if (j != 1) {
                            StringBuilder sb5 = new StringBuilder(56);
                            sb5.append("AESSettingsCipherMode ");
                            sb5.append(j);
                            sb5.append(" not supported");
                            throw new zzhw(sb5.toString());
                        }
                        return;
                    case 21420:
                        dylVar.n = j + dylVar.g;
                        return;
                    case 21432:
                        int i2 = (int) j;
                        if (i2 == 0) {
                            dylVar.k.p = 0;
                            return;
                        } else if (i2 == 1) {
                            dylVar.k.p = 2;
                            return;
                        } else if (i2 == 3) {
                            dylVar.k.p = 1;
                            return;
                        } else if (i2 == 15) {
                            dylVar.k.p = 3;
                            return;
                        } else {
                            return;
                        }
                    case 21680:
                        dylVar.k.l = (int) j;
                        return;
                    case 21682:
                        dylVar.k.n = (int) j;
                        return;
                    case 21690:
                        dylVar.k.m = (int) j;
                        return;
                    case 21930:
                        dym dymVar2 = dylVar.k;
                        if (j == 1) {
                            z2 = true;
                        }
                        dymVar2.M = z2;
                        return;
                    case 22186:
                        dylVar.k.J = j;
                        return;
                    case 22203:
                        dylVar.k.K = j;
                        return;
                    case 25188:
                        dylVar.k.H = (int) j;
                        return;
                    case 2352003:
                        dylVar.k.f27407d = (int) j;
                        return;
                    case 2807729:
                        dylVar.h = j;
                        return;
                    default:
                        switch (i) {
                            case 21945:
                                int i3 = (int) j;
                                if (i3 == 1) {
                                    dylVar.k.t = 2;
                                    return;
                                } else if (i3 == 2) {
                                    dylVar.k.t = 1;
                                    return;
                                } else {
                                    return;
                                }
                            case 21946:
                                int i4 = (int) j;
                                if (i4 != 1) {
                                    if (i4 == 16) {
                                        dylVar.k.s = 6;
                                        return;
                                    } else if (i4 == 18) {
                                        dylVar.k.s = 7;
                                        return;
                                    } else if (!(i4 == 6 || i4 == 7)) {
                                        return;
                                    }
                                }
                                dylVar.k.s = 3;
                                return;
                            case 21947:
                                dylVar.k.q = true;
                                int i5 = (int) j;
                                if (i5 == 1) {
                                    dylVar.k.r = 1;
                                    return;
                                } else if (i5 == 9) {
                                    dylVar.k.r = 6;
                                    return;
                                } else if (i5 == 4 || i5 == 5 || i5 == 6 || i5 == 7) {
                                    dylVar.k.r = 2;
                                    return;
                                } else {
                                    return;
                                }
                            case 21948:
                                dylVar.k.u = (int) j;
                                return;
                            case 21949:
                                dylVar.k.v = (int) j;
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
                throw new zzhw(sb6.toString());
            }
        } else if (j != 0) {
            StringBuilder sb7 = new StringBuilder(55);
            sb7.append("ContentEncodingOrder ");
            sb7.append(j);
            sb7.append(" not supported");
            throw new zzhw(sb7.toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.dyi
    public final void a(int i, long j, long j2) throws zzhw {
        dyl dylVar = this.f27408a;
        if (i == 160) {
            dylVar.D = false;
        } else if (i == 174) {
            dylVar.k = new dym(null);
        } else if (i == 187) {
            dylVar.t = false;
        } else if (i == 19899) {
            dylVar.m = -1;
            dylVar.n = -1L;
        } else if (i == 20533) {
            dylVar.k.e = true;
        } else if (i == 21968) {
            dylVar.k.q = true;
        } else if (i != 408125543) {
            if (i == 475249515) {
                dylVar.r = new ecs();
                dylVar.s = new ecs();
            } else if (i != 524531317 || dylVar.l) {
            } else {
                if (!dylVar.f27402c || dylVar.p == -1) {
                    dylVar.E.a(new dyd(dylVar.j));
                    dylVar.l = true;
                    return;
                }
                dylVar.o = true;
            }
        } else if (dylVar.g == -1 || dylVar.g == j) {
            dylVar.g = j;
            dylVar.f = j2;
        } else {
            throw new zzhw("Multiple Segment elements not supported");
        }
    }

    @Override // com.google.android.gms.internal.ads.dyi
    public final void a(int i, String str) throws zzhw {
        dyl dylVar = this.f27408a;
        if (i == 134) {
            dylVar.k.f27404a = str;
        } else if (i != 17026) {
            if (i == 2274716) {
                dylVar.k.N = str;
            }
        } else if (!"webm".equals(str) && !"matroska".equals(str)) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 22);
            sb.append("DocType ");
            sb.append(str);
            sb.append(" not supported");
            throw new zzhw(sb.toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.dyi
    public final boolean b(int i) {
        return dyl.b(i);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:282:0x0a9e  */
    /* JADX WARN: Removed duplicated region for block: B:283:0x0aa3  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x0ab4  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x0adf  */
    @Override // com.google.android.gms.internal.ads.dyi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(int r17) throws com.google.android.gms.internal.ads.zzhw {
        /*
            Method dump skipped, instructions count: 3605
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dyn.c(int):void");
    }
}
