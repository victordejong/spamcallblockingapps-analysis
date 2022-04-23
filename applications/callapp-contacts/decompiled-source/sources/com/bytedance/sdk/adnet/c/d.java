package com.bytedance.sdk.adnet.c;

import com.explorestack.iab.vast.VastError;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/c/d.class */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public boolean f8250a = false;

    /* renamed from: b  reason: collision with root package name */
    public boolean f8251b = true;

    /* renamed from: c  reason: collision with root package name */
    public Map<String, Integer> f8252c = null;

    /* renamed from: d  reason: collision with root package name */
    public Map<String, String> f8253d = null;
    public int e = 10;
    public int f = 1;
    public int g = 1;
    public int h = 10;
    public int i = 1;
    public int j = 1;
    public int k = VastError.ERROR_CODE_UNKNOWN;
    public int l = 120;
    public String m = null;
    public int n = 0;
    public long o = 0;

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(" localEnable: ");
        sb.append(this.f8250a);
        sb.append(" probeEnable: ");
        sb.append(this.f8251b);
        sb.append(" hostFilter: ");
        Map<String, Integer> map = this.f8252c;
        int i = 0;
        sb.append(map != null ? map.size() : 0);
        sb.append(" hostMap: ");
        Map<String, String> map2 = this.f8253d;
        if (map2 != null) {
            i = map2.size();
        }
        sb.append(i);
        sb.append(" reqTo: ");
        sb.append(this.e);
        sb.append("#");
        sb.append(this.f);
        sb.append("#");
        sb.append(this.g);
        sb.append(" reqErr: ");
        sb.append(this.h);
        sb.append("#");
        sb.append(this.i);
        sb.append("#");
        sb.append(this.j);
        sb.append(" updateInterval: ");
        sb.append(this.k);
        sb.append(" updateRandom: ");
        sb.append(this.l);
        sb.append(" httpBlack: ");
        sb.append(this.m);
        return sb.toString();
    }
}
