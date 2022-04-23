package com.google.firebase.components;

import com.google.firebase.b.a;
import com.google.firebase.b.b;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/components/t.class */
public final /* synthetic */ class t implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final Map.Entry f32281a;

    /* renamed from: b  reason: collision with root package name */
    private final a f32282b;

    private t(Map.Entry entry, a aVar) {
        this.f32281a = entry;
        this.f32282b = aVar;
    }

    public static Runnable a(Map.Entry entry, a aVar) {
        return new t(entry, aVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        ((b) this.f32281a.getKey()).a(this.f32282b);
    }
}
