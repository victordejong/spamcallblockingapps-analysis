package com.google.android.gms.internal.ads;

import com.mp4parser.iso14496.part15.AvcConfigurationBox;
import com.mp4parser.iso14496.part15.HevcConfigurationBox;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dyr.class */
class dyr {
    public final int aR;

    /* renamed from: d  reason: collision with root package name */
    public static final int f27419d = ede.c("ftyp");
    public static final int e = ede.c("avc1");
    public static final int f = ede.c("avc3");
    public static final int g = ede.c("hvc1");
    public static final int h = ede.c("hev1");
    public static final int i = ede.c("s263");
    public static final int j = ede.c("d263");
    public static final int k = ede.c("mdat");
    public static final int l = ede.c("mp4a");
    public static final int m = ede.c(".mp3");
    public static final int n = ede.c("wave");
    public static final int o = ede.c("lpcm");
    public static final int p = ede.c("sowt");
    public static final int q = ede.c("ac-3");
    public static final int r = ede.c("dac3");
    public static final int s = ede.c("ec-3");
    public static final int t = ede.c("dec3");
    public static final int u = ede.c("dtsc");
    public static final int v = ede.c("dtsh");
    public static final int w = ede.c("dtsl");
    public static final int x = ede.c("dtse");
    public static final int y = ede.c("ddts");
    public static final int z = ede.c("tfdt");
    public static final int A = ede.c("tfhd");
    public static final int B = ede.c("trex");
    public static final int C = ede.c("trun");
    public static final int D = ede.c("sidx");
    public static final int E = ede.c("moov");
    public static final int F = ede.c("mvhd");
    public static final int G = ede.c("trak");
    public static final int H = ede.c("mdia");
    public static final int I = ede.c("minf");
    public static final int J = ede.c("stbl");
    public static final int K = ede.c(AvcConfigurationBox.TYPE);
    public static final int L = ede.c(HevcConfigurationBox.TYPE);
    public static final int M = ede.c("esds");
    public static final int N = ede.c("moof");
    public static final int O = ede.c("traf");
    public static final int P = ede.c("mvex");
    public static final int Q = ede.c("mehd");
    public static final int R = ede.c("tkhd");
    public static final int S = ede.c("edts");
    public static final int T = ede.c("elst");
    public static final int U = ede.c("mdhd");
    public static final int V = ede.c("hdlr");
    public static final int W = ede.c("stsd");
    public static final int X = ede.c("pssh");
    public static final int Y = ede.c("sinf");
    public static final int Z = ede.c("schm");
    public static final int aa = ede.c("schi");
    public static final int ab = ede.c("tenc");
    public static final int ac = ede.c("encv");
    public static final int ad = ede.c("enca");
    public static final int ae = ede.c("frma");
    public static final int af = ede.c("saiz");
    public static final int ag = ede.c("saio");
    public static final int ah = ede.c("sbgp");
    public static final int ai = ede.c("sgpd");
    public static final int aj = ede.c("uuid");
    public static final int ak = ede.c("senc");
    public static final int al = ede.c("pasp");
    public static final int am = ede.c("TTML");

    /* renamed from: a  reason: collision with root package name */
    private static final int f27418a = ede.c("vmhd");
    public static final int an = ede.c("mp4v");
    public static final int ao = ede.c("stts");
    public static final int ap = ede.c("stss");
    public static final int aq = ede.c("ctts");
    public static final int ar = ede.c("stsc");
    public static final int as = ede.c("stsz");
    public static final int at = ede.c("stz2");
    public static final int au = ede.c("stco");
    public static final int av = ede.c("co64");
    public static final int aw = ede.c("tx3g");
    public static final int ax = ede.c("wvtt");
    public static final int ay = ede.c("stpp");
    public static final int az = ede.c("c608");
    public static final int aA = ede.c("samr");
    public static final int aB = ede.c("sawb");
    public static final int aC = ede.c("udta");
    public static final int aD = ede.c("meta");
    public static final int aE = ede.c("ilst");
    public static final int aF = ede.c("mean");
    public static final int aG = ede.c("name");
    public static final int aH = ede.c("data");
    public static final int aI = ede.c("emsg");
    public static final int aJ = ede.c("st3d");
    public static final int aK = ede.c("sv3d");
    public static final int aL = ede.c("proj");
    public static final int aM = ede.c("vp08");
    public static final int aN = ede.c("vp09");
    public static final int aO = ede.c("vpcC");
    public static final int aP = ede.c("camm");
    public static final int aQ = ede.c("alac");

    public dyr(int i2) {
        this.aR = i2;
    }

    public static int c(int i2) {
        return (i2 >> 24) & 255;
    }

    public static int d(int i2) {
        return i2 & 16777215;
    }

    public static String e(int i2) {
        StringBuilder sb = new StringBuilder(4);
        sb.append((char) (i2 >>> 24));
        sb.append((char) ((i2 >> 16) & 255));
        sb.append((char) ((i2 >> 8) & 255));
        sb.append((char) (i2 & 255));
        return sb.toString();
    }

    public String toString() {
        return e(this.aR);
    }
}
