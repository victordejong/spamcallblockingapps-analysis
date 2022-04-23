package com.facebook.appevents.g;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/g/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    float[] f19576a;

    /* renamed from: b  reason: collision with root package name */
    int[] f19577b;

    /* renamed from: c  reason: collision with root package name */
    int f19578c;

    public a(int[] iArr) {
        this.f19577b = iArr;
        int a2 = a(iArr);
        this.f19578c = a2;
        this.f19576a = new float[a2];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int[] iArr) {
        int i = 1;
        for (int i2 : iArr) {
            i *= i2;
        }
        return i;
    }
}
