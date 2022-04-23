package androidx.media2.exoplayer.external.b;

import com.callapp.contacts.activity.base.BaseViewTypeData;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/b/a.class */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    public int f2937a;

    public void a() {
        this.f2937a = 0;
    }

    public final void a(int i) {
        this.f2937a = i | this.f2937a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean b(int i) {
        return (this.f2937a & i) == i;
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

    public final boolean l_() {
        return b(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
    }
}
