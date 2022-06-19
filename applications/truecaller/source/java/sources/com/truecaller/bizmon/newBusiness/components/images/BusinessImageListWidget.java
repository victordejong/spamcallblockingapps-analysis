package com.truecaller.bizmon.newBusiness.components.images;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.bizmon.C3478R;
import java.util.List;
import kotlin.Metadata;
import p193e.p1451f.p1452a.ComponentCallbacks2C22236i;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p294b.p295a.p308b.p310j.C7659c;
import p193e.p194a.p294b.p295a.p308b.p310j.C7660d;
import p193e.p194a.p294b.p295a.p308b.p310j.C7661e;
import p193e.p194a.p294b.p355m.C8064f1;
import s1.g;
import s1.s;
import s1.u.i;
import s1.z.b.l;
import s1.z.c.b;
import s1.z.c.j;
@Metadata(bv = {1, 0, 3}, d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0005\u0018��2\u00020\u0001:\u0001\u001fJ-\u0010\n\u001a\u00020\t2\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\n\u0010\u000bR\u0018\u0010\u000f\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u001d\u0010\u0015\u001a\u00020\u00108B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001d\u0010\u001a\u001a\u00020\u00168B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0012\u001a\u0004\b\u0018\u0010\u0019R\u001e\u0010\u001e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u001b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006 "}, d2 = {"Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "", "", "imageUrls", "Le/f/a/i;", "requestManager", "Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget$a;", "listener", "Ls1/s;", "f1", "(Ljava/util/List;Le/f/a/i;Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget$a;)V", "Le/a/b/a/b/j/c;", "v", "Le/a/b/a/b/j/c;", "businessImageListAdapter", "Le/a/b/m/f1;", "w", "Ls1/g;", "getBinding", "()Le/a/b/m/f1;", "binding", "", "t", "getMaxImageCount", "()I", "maxImageCount", "", "u", "[Ljava/lang/String;", "imageUrlsArray", "a", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget.class */
public final class BusinessImageListWidget extends ConstraintLayout {

    /* renamed from: t */
    public final g f10317t;

    /* renamed from: v */
    public C7659c f10319v;

    /* renamed from: u */
    public final String[] f10318u = new String[getMaxImageCount()];

    /* renamed from: w */
    public final g f10320w = C25225a.m3978P1(new C7660d(this));

    /* renamed from: com.truecaller.bizmon.newBusiness.components.images.BusinessImageListWidget$a */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget$a.class */
    public interface AbstractC3496a {
        /* renamed from: bl */
        void mo29517bl(String str);

        /* renamed from: o8 */
        void mo29515o8(int i);
    }

    /* renamed from: com.truecaller.bizmon.newBusiness.components.images.BusinessImageListWidget$b */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget$b.class */
    public static final /* synthetic */ class C3497b extends j implements l<String, s> {
        public C3497b(AbstractC3496a abstractC3496a) {
            super(1, abstractC3496a, AbstractC3496a.class, "onViewImage", "onViewImage(Ljava/lang/String;)V", 0);
        }

        /* renamed from: d */
        public Object m35867d(Object obj) {
            String str = (String) obj;
            s1.z.c.l.e(str, "p1");
            ((AbstractC3496a) ((b) this).b).mo29517bl(str);
            return s.a;
        }
    }

    /* renamed from: com.truecaller.bizmon.newBusiness.components.images.BusinessImageListWidget$c */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget$c.class */
    public static final /* synthetic */ class C3498c extends j implements l<Integer, s> {
        public C3498c(AbstractC3496a abstractC3496a) {
            super(1, abstractC3496a, AbstractC3496a.class, "onAddImage", "onAddImage(I)V", 0);
        }

        /* renamed from: d */
        public Object m35866d(Object obj) {
            ((AbstractC3496a) ((b) this).b).mo29515o8(((Number) obj).intValue());
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BusinessImageListWidget(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        this.f10317t = C25225a.m3978P1(new C7661e(context));
        View.inflate(C17422k.m16113E(context, true), C3478R.layout.layout_image_list_widget, this);
        RecyclerView recyclerView = getBinding().f24885b;
        s1.z.c.l.d(recyclerView, "binding.imageList");
        recyclerView.setLayoutManager(new LinearLayoutManager(context, 0, false));
    }

    private final C8064f1 getBinding() {
        return (C8064f1) this.f10320w.getValue();
    }

    private final int getMaxImageCount() {
        return ((Number) this.f10317t.getValue()).intValue();
    }

    /* renamed from: f1 */
    public final void m35868f1(List<String> list, ComponentCallbacks2C22236i componentCallbacks2C22236i, AbstractC3496a abstractC3496a) {
        s1.z.c.l.e(componentCallbacks2C22236i, "requestManager");
        s1.z.c.l.e(abstractC3496a, "listener");
        int i = 0;
        if (this.f10319v == null) {
            if (list != null) {
                for (Object obj : i.K0(list, getMaxImageCount())) {
                    if (i < 0) {
                        i.N0();
                        throw null;
                    }
                    this.f10318u[i] = (String) obj;
                    i++;
                }
            }
            this.f10319v = new C7659c(this.f10318u, componentCallbacks2C22236i, new C3497b(abstractC3496a), new C3498c(abstractC3496a));
            RecyclerView recyclerView = getBinding().f24885b;
            s1.z.c.l.d(recyclerView, "binding.imageList");
            recyclerView.setAdapter(this.f10319v);
            return;
        }
        String[] strArr = new String[getMaxImageCount()];
        if (list != null) {
            int i2 = 0;
            for (Object obj2 : i.K0(list, getMaxImageCount())) {
                if (i2 < 0) {
                    i.N0();
                    throw null;
                } else {
                    strArr[i2] = (String) obj2;
                    i2++;
                }
            }
        }
        C7659c c7659c = this.f10319v;
        if (c7659c != null) {
            c7659c.m29456g(strArr);
        }
        if (list == null || list.size() != 1) {
            return;
        }
        getBinding().f24885b.scrollToPosition(0);
    }
}
