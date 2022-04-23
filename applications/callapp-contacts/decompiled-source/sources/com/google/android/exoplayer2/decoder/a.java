package com.google.android.exoplayer2.decoder;

import com.callapp.contacts.activity.base.BaseViewTypeData;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/decoder/a.class */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    public int f20826a;

    public final boolean E_() {
        return b(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
    }

    public void a() {
        this.f20826a = 0;
    }

    public final void a(int i) {
        this.f20826a = i | this.f20826a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean b(int i) {
        return (this.f20826a & i) == i;
    }

    public final boolean c() {
        return b(4);
    }

    public final boolean d() {
        return b(1);
    }

    public final boolean e() {
        return b(268435456);
    }
}
