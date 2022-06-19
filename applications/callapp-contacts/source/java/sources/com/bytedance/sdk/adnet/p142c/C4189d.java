package com.bytedance.sdk.adnet.p142c;

import com.explorestack.iab.vast.VastError;
import java.util.Map;
/* renamed from: com.bytedance.sdk.adnet.c.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/c/d.class */
public class C4189d {

    /* renamed from: a */
    public boolean f15325a = false;

    /* renamed from: b */
    public boolean f15326b = true;

    /* renamed from: c */
    public Map<String, Integer> f15327c = null;

    /* renamed from: d */
    public Map<String, String> f15328d = null;

    /* renamed from: e */
    public int f15329e = 10;

    /* renamed from: f */
    public int f15330f = 1;

    /* renamed from: g */
    public int f15331g = 1;

    /* renamed from: h */
    public int f15332h = 10;

    /* renamed from: i */
    public int f15333i = 1;

    /* renamed from: j */
    public int f15334j = 1;

    /* renamed from: k */
    public int f15335k = VastError.ERROR_CODE_UNKNOWN;

    /* renamed from: l */
    public int f15336l = 120;

    /* renamed from: m */
    public String f15337m = null;

    /* renamed from: n */
    public int f15338n = 0;

    /* renamed from: o */
    public long f15339o = 0;

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(" localEnable: ");
        sb.append(this.f15325a);
        sb.append(" probeEnable: ");
        sb.append(this.f15326b);
        sb.append(" hostFilter: ");
        Map<String, Integer> map = this.f15327c;
        sb.append(map != null ? map.size() : 0);
        sb.append(" hostMap: ");
        Map<String, String> map2 = this.f15328d;
        int i = 0;
        if (map2 != null) {
            i = map2.size();
        }
        sb.append(i);
        sb.append(" reqTo: ");
        sb.append(this.f15329e);
        sb.append("#");
        sb.append(this.f15330f);
        sb.append("#");
        sb.append(this.f15331g);
        sb.append(" reqErr: ");
        sb.append(this.f15332h);
        sb.append("#");
        sb.append(this.f15333i);
        sb.append("#");
        sb.append(this.f15334j);
        sb.append(" updateInterval: ");
        sb.append(this.f15335k);
        sb.append(" updateRandom: ");
        sb.append(this.f15336l);
        sb.append(" httpBlack: ");
        sb.append(this.f15337m);
        return sb.toString();
    }
}
