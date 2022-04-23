package androidx.media2.session;

import androidx.media2.common.MediaItem;
import androidx.media2.common.ParcelImplListSlice;
import androidx.media2.session.MediaLibraryService;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.util.List;
import p012b.p076s.p116d.AbstractC1800l;
import p012b.p076s.p116d.C1796i;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/LibraryResult.class */
public class LibraryResult extends CustomVersionedParcelable implements AbstractC1800l {

    /* renamed from: a */
    public int f2183a;

    /* renamed from: b */
    public long f2184b;

    /* renamed from: c */
    public MediaItem f2185c;

    /* renamed from: d */
    public MediaItem f2186d;

    /* renamed from: e */
    public MediaLibraryService.LibraryParams f2187e;

    /* renamed from: f */
    public List<MediaItem> f2188f;

    /* renamed from: g */
    public ParcelImplListSlice f2189g;

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    /* renamed from: a */
    public void mo32076a(boolean z) {
        this.f2186d = C1796i.m32079a(this.f2185c);
        this.f2189g = C1796i.m32077a(this.f2188f);
    }

    @Override // p012b.p076s.p077a.AbstractC1154a
    /* renamed from: e */
    public int mo34562e() {
        return this.f2183a;
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    /* renamed from: f */
    public void mo32075f() {
        this.f2185c = this.f2186d;
        this.f2186d = null;
        this.f2188f = C1796i.m32078a(this.f2189g);
        this.f2189g = null;
    }
}
