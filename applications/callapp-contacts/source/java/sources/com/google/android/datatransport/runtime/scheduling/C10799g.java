package com.google.android.datatransport.runtime.scheduling;

import android.content.Context;
import android.os.Build;
import com.google.android.datatransport.runtime.p316a.p317a.AbstractC10685b;
import com.google.android.datatransport.runtime.p316a.p317a.C10688e;
import com.google.android.datatransport.runtime.p320d.AbstractC10719a;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.AbstractC10808g;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.AbstractC10824s;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.C10800a;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.C10806e;
import com.google.android.datatransport.runtime.scheduling.p322a.AbstractC10762c;
import javax.p517a.AbstractC18213a;
/* renamed from: com.google.android.datatransport.runtime.scheduling.g */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/g.class */
public final class C10799g implements AbstractC10685b<AbstractC10824s> {

    /* renamed from: a */
    private final AbstractC18213a<Context> f34703a;

    /* renamed from: b */
    private final AbstractC18213a<AbstractC10762c> f34704b;

    /* renamed from: c */
    private final AbstractC18213a<AbstractC10808g> f34705c;

    /* renamed from: d */
    private final AbstractC18213a<AbstractC10719a> f34706d;

    public C10799g(AbstractC18213a<Context> abstractC18213a, AbstractC18213a<AbstractC10762c> abstractC18213a2, AbstractC18213a<AbstractC10808g> abstractC18213a3, AbstractC18213a<AbstractC10719a> abstractC18213a4) {
        this.f34703a = abstractC18213a;
        this.f34704b = abstractC18213a2;
        this.f34705c = abstractC18213a3;
        this.f34706d = abstractC18213a4;
    }

    @Override // javax.p517a.AbstractC18213a
    /* renamed from: a */
    public final /* synthetic */ Object mo4304a() {
        Context mo4304a = this.f34703a.mo4304a();
        AbstractC10762c mo4304a2 = this.f34704b.mo4304a();
        AbstractC10808g mo4304a3 = this.f34705c.mo4304a();
        return (AbstractC10824s) C10688e.m22519a(Build.VERSION.SDK_INT >= 21 ? new C10806e(mo4304a, mo4304a2, mo4304a3) : new C10800a(mo4304a, mo4304a2, this.f34706d.mo4304a(), mo4304a3), "Cannot return null from a non-@Nullable @Provides method");
    }
}
