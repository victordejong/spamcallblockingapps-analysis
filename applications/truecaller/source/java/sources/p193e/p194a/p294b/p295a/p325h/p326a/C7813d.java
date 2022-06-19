package p193e.p194a.p294b.p295a.p325h.p326a;

import androidx.lifecycle.LiveData;
import com.truecaller.placepicker.data.GeocodedPlace;
import javax.inject.Inject;
import p193e.p194a.p294b.p295a.p325h.p327b.AbstractC7816a;
import s1.z.c.l;
/* renamed from: e.a.b.a.h.a.d */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/h/a/d.class */
public final class C7813d implements AbstractC7812c {

    /* renamed from: a */
    public final AbstractC7816a f24329a;

    @Inject
    public C7813d(AbstractC7816a abstractC7816a) {
        l.e(abstractC7816a, "subPlaceRepository");
        this.f24329a = abstractC7816a;
    }

    @Override // p193e.p194a.p294b.p295a.p325h.p326a.AbstractC7812c
    /* renamed from: a */
    public LiveData<GeocodedPlace> mo29281a(int i) {
        return this.f24329a.mo29279a(i);
    }
}
