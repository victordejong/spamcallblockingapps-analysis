package com.google.android.play.core.assetpacks;

import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/ap.class */
public final class ap {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, Double> f31125a = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final double a(String str, bd bdVar) {
        double d2;
        synchronized (this) {
            d2 = (((aj) bdVar).e + 1.0d) / ((aj) bdVar).f;
            this.f31125a.put(str, Double.valueOf(d2));
        }
        return d2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str) {
        synchronized (this) {
            this.f31125a.put(str, Double.valueOf(0.0d));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final double b(String str) {
        synchronized (this) {
            Double d2 = this.f31125a.get(str);
            if (d2 == null) {
                return 0.0d;
            }
            return d2.doubleValue();
        }
    }
}
