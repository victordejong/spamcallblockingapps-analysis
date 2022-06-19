package androidx.media2.exoplayer.external.p063b;

import com.callapp.contacts.activity.base.BaseViewTypeData;
/* renamed from: androidx.media2.exoplayer.external.b.a */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/b/a.class */
public abstract class AbstractC1436a {

    /* renamed from: a */
    public int f5471a;

    /* renamed from: a */
    public void mo41916a() {
        this.f5471a = 0;
    }

    /* renamed from: a */
    public final void m42913a(int i) {
        this.f5471a = i | this.f5471a;
    }

    /* renamed from: b */
    public final boolean m42912b(int i) {
        return (this.f5471a & i) == i;
    }

    /* renamed from: c */
    public final boolean m42911c() {
        return m42912b(4);
    }

    /* renamed from: d */
    public final boolean m42910d() {
        return m42912b(1);
    }

    /* renamed from: e */
    public final boolean m42909e() {
        return m42912b(268435456);
    }

    /* renamed from: l_ */
    public final boolean m42908l_() {
        return m42912b(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
    }
}
