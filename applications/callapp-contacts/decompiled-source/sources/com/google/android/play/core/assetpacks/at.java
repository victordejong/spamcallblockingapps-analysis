package com.google.android.play.core.assetpacks;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/at.class */
public final /* synthetic */ class at implements ba {

    /* renamed from: a  reason: collision with root package name */
    private final bb f31134a;

    /* renamed from: b  reason: collision with root package name */
    private final int f31135b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ int f31136c = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public at(bb bbVar, int i) {
        this.f31134a = bbVar;
        this.f31135b = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public at(bb bbVar, int i, byte[] bArr) {
        this.f31134a = bbVar;
        this.f31135b = i;
    }

    @Override // com.google.android.play.core.assetpacks.ba
    public final Object a() {
        if (this.f31136c != 0) {
            this.f31134a.b(this.f31135b).f31149c.f31145c = 5;
            return null;
        }
        bb bbVar = this.f31134a;
        int i = this.f31135b;
        ay b2 = bbVar.b(i);
        if (bj.b(b2.f31149c.f31145c)) {
            w wVar = bbVar.f31155b;
            ax axVar = b2.f31149c;
            wVar.f(axVar.f31143a, b2.f31148b, axVar.f31144b);
            ax axVar2 = b2.f31149c;
            int i2 = axVar2.f31145c;
            if (i2 != 5 && i2 != 6) {
                return null;
            }
            w wVar2 = bbVar.f31155b;
            String str = axVar2.f31143a;
            int i3 = b2.f31148b;
            long j = axVar2.f31144b;
            if (!wVar2.a(str, i3, j).exists()) {
                return null;
            }
            w.b(wVar2.a(str, i3, j));
            return null;
        }
        throw new al(String.format("Could not safely delete session %d because it is not in a terminal state.", Integer.valueOf(i)), i);
    }
}
