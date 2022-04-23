package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.beb;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dus.class */
public abstract class dus implements Callable {

    /* renamed from: a  reason: collision with root package name */
    protected final dtg f27237a;

    /* renamed from: b  reason: collision with root package name */
    protected final beb.a.b f27238b;

    /* renamed from: c  reason: collision with root package name */
    protected Method f27239c;

    /* renamed from: d  reason: collision with root package name */
    private final String f27240d = getClass().getSimpleName();
    private final String e;
    private final String f;
    private final int g;
    private final int h;

    public dus(dtg dtgVar, String str, String str2, beb.a.b bVar, int i, int i2) {
        this.f27237a = dtgVar;
        this.e = str;
        this.f = str2;
        this.f27238b = bVar;
        this.g = i;
        this.h = i2;
    }

    protected abstract void a() throws IllegalAccessException, InvocationTargetException;

    /* renamed from: b */
    public Void call() throws Exception {
        try {
            long nanoTime = System.nanoTime();
            Method a2 = this.f27237a.a(this.e, this.f);
            this.f27239c = a2;
            if (a2 == null) {
                return null;
            }
            a();
            cwd cwdVar = this.f27237a.h;
            if (cwdVar == null) {
                return null;
            }
            int i = this.g;
            if (i == Integer.MIN_VALUE) {
                return null;
            }
            cwdVar.a(this.h, i, (System.nanoTime() - nanoTime) / 1000);
            return null;
        } catch (IllegalAccessException | InvocationTargetException e) {
            return null;
        }
    }
}
