package p131c.p396i.p397a.p406i.p411f;

import android.content.Context;
import android.view.ViewGroup;
import com.library.p518ad.core.BaseAdResult;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import p131c.p396i.p397a.C6489a;
import p131c.p396i.p397a.p398e.AbstractC6514f;
import p131c.p396i.p397a.p398e.AbstractViewTreeObserver$OnScrollChangedListenerC6512e;
/* renamed from: c.i.a.i.f.d */
/* loaded from: classes2-dex2jar.jar:c/i/a/i/f/d.class */
public class C6584d<AdData> extends AbstractC6580b<AdData> {

    /* renamed from: c.i.a.i.f.d$a */
    /* loaded from: classes2-dex2jar.jar:c/i/a/i/f/d$a.class */
    public class RunnableC6585a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ ViewGroup f20390a;

        public RunnableC6585a(C6584d dVar, ViewGroup viewGroup) {
            this.f20390a = viewGroup;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f20390a.requestLayout();
        }
    }

    public C6584d(BaseAdResult baseAdResult) {
        super(baseAdResult);
    }

    /* renamed from: a */
    public AbstractViewTreeObserver$OnScrollChangedListenerC6512e<AdData> m20453a(Class<? extends AbstractViewTreeObserver$OnScrollChangedListenerC6512e<AdData>> cls) {
        try {
            Constructor<? extends AbstractViewTreeObserver$OnScrollChangedListenerC6512e<AdData>> declaredConstructor = cls.getDeclaredConstructor(Context.class);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return (AbstractViewTreeObserver$OnScrollChangedListenerC6512e) declaredConstructor.newInstance(C6489a.m20718b().getApplicationContext());
        } catch (Exception e) {
            this.f20384a.m5309i();
            return null;
        }
    }

    @Override // p131c.p396i.p397a.p406i.p411f.AbstractC6580b
    /* renamed from: a */
    public void mo20446a() {
    }

    @Override // p131c.p396i.p397a.p406i.p411f.AbstractC6580b
    /* renamed from: a */
    public boolean mo20445a(ViewGroup viewGroup, AbstractC6514f<AdData> fVar) {
        if (!m20452b(viewGroup, fVar)) {
            return false;
        }
        int min = Math.min(fVar.m20608c(), fVar.m20609b().size());
        for (int i = 0; i < min; i++) {
            AdData addata = fVar.m20609b().get(i);
            if (addata != null) {
                AbstractViewTreeObserver$OnScrollChangedListenerC6512e<AdData> a = m20453a(this.f20384a.m5313e());
                if (a != null) {
                    a.setAdInfo(this.f20384a.m5320b()).setLayoutIndex(this.f20384a.m5311g()).setPosition(i).setClickViews(this.f20384a.m5320b().getClickViews()).bindAdData(addata, this.f20384a.m5331a());
                    viewGroup.addView(a);
                    this.f20384a.m5316c();
                } else {
                    this.f20384a.m5309i();
                    BaseAdResult baseAdResult = this.f20384a;
                    baseAdResult.m5326a(baseAdResult.m5320b(), BaseAdResult.BindViewCode.FAIL_INIT_AD_VIEW_CLASS);
                }
            }
        }
        if (viewGroup.getChildCount() == 0) {
            this.f20384a.m5309i();
            viewGroup.setVisibility(8);
            BaseAdResult baseAdResult2 = this.f20384a;
            baseAdResult2.m5326a(baseAdResult2.m5320b(), BaseAdResult.BindViewCode.FAIL_BIND_DATA);
            return false;
        }
        viewGroup.post(new RunnableC6585a(this, viewGroup));
        return true;
    }

    /* renamed from: b */
    public boolean m20452b(ViewGroup viewGroup, AbstractC6514f<?> fVar) {
        ArrayList<BaseAdResult.BindViewCode> arrayList = new ArrayList();
        if (this.f20384a.m5313e() == null) {
            this.f20384a.m5309i();
            arrayList.add(BaseAdResult.BindViewCode.NULL_AD_VIEW_CLASS);
        }
        if (viewGroup == null) {
            this.f20384a.m5309i();
            arrayList.add(BaseAdResult.BindViewCode.NULL_AD_CONTAINER);
        }
        if (fVar == null) {
            this.f20384a.m5309i();
            arrayList.add(BaseAdResult.BindViewCode.NULL_AD_RESOURCE);
        }
        if (arrayList.isEmpty()) {
            return true;
        }
        if (this.f20384a.m5308j() == null) {
            return false;
        }
        for (BaseAdResult.BindViewCode bindViewCode : arrayList) {
            this.f20384a.m5308j().mo5306a(this.f20384a.m5320b(), bindViewCode);
        }
        return false;
    }
}
