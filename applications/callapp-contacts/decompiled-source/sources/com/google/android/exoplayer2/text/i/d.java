package com.google.android.exoplayer2.text.i;

import android.text.TextUtils;
import java.util.Collections;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/i/d.class */
public final class d {
    int f;
    int h;
    float o;

    /* renamed from: a  reason: collision with root package name */
    String f21865a = "";

    /* renamed from: b  reason: collision with root package name */
    String f21866b = "";

    /* renamed from: c  reason: collision with root package name */
    Set<String> f21867c = Collections.emptySet();

    /* renamed from: d  reason: collision with root package name */
    String f21868d = "";
    String e = null;
    boolean g = false;
    boolean i = false;
    int j = -1;
    int k = -1;
    int l = -1;
    int m = -1;
    int n = -1;
    int p = -1;
    boolean q = false;

    private static int a(int i, String str, String str2, int i2) {
        if (str.isEmpty() || i == -1) {
            return i;
        }
        if (str.equals(str2)) {
            return i + i2;
        }
        return -1;
    }

    public final int a() {
        int i = this.l;
        if (i == -1 && this.m == -1) {
            return -1;
        }
        int i2 = 0;
        int i3 = i == 1 ? 1 : 0;
        if (this.m == 1) {
            i2 = 2;
        }
        return i3 | i2;
    }

    public final int a(String str, String str2, Set<String> set, String str3) {
        if (this.f21865a.isEmpty() && this.f21866b.isEmpty() && this.f21867c.isEmpty() && this.f21868d.isEmpty()) {
            return TextUtils.isEmpty(str2) ? 1 : 0;
        }
        int a2 = a(a(a(0, this.f21865a, str, 1073741824), this.f21866b, str2, 2), this.f21868d, str3, 4);
        if (a2 == -1 || !set.containsAll(this.f21867c)) {
            return 0;
        }
        return a2 + (this.f21867c.size() * 4);
    }
}
