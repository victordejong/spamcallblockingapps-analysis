package com.bytedance.sdk.openadsdk.l.a;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/l/a/c.class */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final String f9815a;

    /* renamed from: b  reason: collision with root package name */
    private int f9816b;

    /* renamed from: c  reason: collision with root package name */
    private int f9817c;

    /* renamed from: d  reason: collision with root package name */
    private int f9818d;
    private long e;
    private long f;
    private long g;
    private long h;
    private int i;

    public c(String str, int i, int i2, long j, long j2, long j3, long j4, int i3) {
        this.f9816b = 0;
        this.f9817c = 0;
        this.e = 0L;
        this.f = 0L;
        this.g = 0L;
        this.h = 0L;
        this.i = 0;
        this.f9815a = str;
        this.f9816b = i;
        this.f9817c = i2;
        this.e = j;
        this.f = j2;
        this.g = j3;
        this.h = j4;
        this.i = i3;
    }

    public String a() {
        return this.f9815a;
    }

    public void a(int i) {
        this.i += i;
    }

    public void a(long j) {
        this.e = j;
    }

    public long b() {
        return this.e;
    }

    public void b(int i) {
        this.f9818d = i;
    }

    public void b(long j) {
        this.f += j;
    }

    public long c() {
        return this.g;
    }

    public void c(long j) {
        this.g = j;
    }

    public int d() {
        return this.i;
    }

    public void d(long j) {
        this.h += j;
    }
}
