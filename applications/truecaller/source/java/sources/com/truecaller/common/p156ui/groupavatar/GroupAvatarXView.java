package com.truecaller.common.p156ui.groupavatar;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.C3700R;
import io.agora.rtc.Constants;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.Metadata;
import p1727n3.p1734b.p1741e.C25453c;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1406z3.C21853e;
import p193e.p194a.p372b0.p373a.p378c.AbstractC8264c;
import p193e.p194a.p372b0.p373a.p378c.AbstractC8265d;
import p193e.p194a.p372b0.p373a.p378c.C8261b;
import p193e.p194a.p372b0.p373a.p378c.C8268g;
import p193e.p194a.p372b0.p373a.p378c.C8273l;
import p193e.p194a.p372b0.p373a.p378c.p379a.C8251a;
import p193e.p194a.p372b0.p373a.p378c.p379a.C8257c;
import p193e.p194a.p372b0.p373a.p378c.p380m.AbstractC8274a;
import p193e.p194a.p372b0.p373a.p378c.p380m.C8279b;
import q3.a.g0;
import q3.a.i0;
import q3.a.j0;
import q3.a.n;
import q3.a.n0;
import q3.a.t0;
import q3.a.y2.q;
import s1.g;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.a0;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010$\n\u0002\b\u0003\u0018��2\u00020\u00012\u00020\u0002J\u000f\u0010\u0004\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u0004\u0010\u0005J!\u0010\t\u001a\u00020\u00032\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0096@ø\u0001��¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\r\u001a\u00020\u00032\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0014¢\u0006\u0004\b\r\u0010\u000eJ/\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u000fH\u0014¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u000fH\u0014¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u001a\u0010\u0005J\u001b\u0010\u001c\u001a\u00020\u00032\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u001b0\u0006¢\u0006\u0004\b\u001c\u0010\u001dJ+\u0010 \u001a\u00020\u001f2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u001b0\u00062\b\b\u0001\u0010\u001e\u001a\u00020\u000fH\u0086@ø\u0001��¢\u0006\u0004\b \u0010!J\u0013\u0010\"\u001a\u00020\u0003H\u0082@ø\u0001��¢\u0006\u0004\b\"\u0010#J\u0017\u0010%\u001a\u00020$*\u00020\u0007H\u0082@ø\u0001��¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u0003H\u0002¢\u0006\u0004\b'\u0010\u0005R\u0016\u0010+\u001a\u00020(8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010.\u001a\u00020,8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b \u0010-R\u001d\u00103\u001a\u00020/8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u00100\u001a\u0004\b1\u00102R\u0016\u00106\u001a\u0002048\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\t\u00105R\u0016\u00108\u001a\u00020/8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b7\u00102R\u001d\u0010<\u001a\u0002098B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u00100\u001a\u0004\b:\u0010;R\u001d\u0010@\u001a\u00020=8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b'\u00100\u001a\u0004\b>\u0010?R\u0016\u0010B\u001a\u0002048\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bA\u00105R\u0016\u0010D\u001a\u00020/8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bC\u00102R\"\u0010G\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020$0E8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010F\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006H"}, d2 = {"Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;", "Landroid/view/View;", "Le/a/b0/a/c/d;", "Ls1/s;", "onAttachedToWindow", "()V", "", "Le/a/b0/a/c/m/a;", "configs", "a", "(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "", "w", "h", "oldw", "oldh", "onSizeChanged", "(IIII)V", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "onDetachedFromWindow", "Le/a/b0/a/c/m/b;", "setConfigs", "(Ljava/util/List;)V", "sizeDimen", "Landroid/graphics/Bitmap;", "d", "(Ljava/util/List;ILs1/w/d;)Ljava/lang/Object;", "g", "(Ls1/w/d;)Ljava/lang/Object;", "Landroid/graphics/drawable/Drawable;", "e", "(Le/a/b0/a/c/m/a;Ls1/w/d;)Ljava/lang/Object;", "f", "Le/a/b0/a/c/c;", AbstractC2405c.f7629a, "Le/a/b0/a/c/c;", "presenter", "Le/a/p5/h0;", "Le/a/p5/h0;", "resourceProvider", "", "Ls1/g;", "getBaseUnit", "()F", "baseUnit", "Ls1/w/f;", "Ls1/w/f;", "uiContext", "getDividerSize", "dividerSize", "Landroid/graphics/Paint;", "getCircularClipPaint", "()Landroid/graphics/Paint;", "circularClipPaint", "Le/a/z3/e;", "getGlideApp", "()Le/a/z3/e;", "glideApp", C22021b.f61237c, "cpuContext", "getTileInnerMargin", "tileInnerMargin", "", "Ljava/util/Map;", "configDrawables", "common-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.common.ui.groupavatar.GroupAvatarXView */
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/groupavatar/GroupAvatarXView.class */
public final class GroupAvatarXView extends View implements AbstractC8265d {

    /* renamed from: i */
    public static final /* synthetic */ int f11196i = 0;

    /* renamed from: a */
    public f f11197a;

    /* renamed from: b */
    public f f11198b;

    /* renamed from: c */
    public AbstractC8264c f11199c;

    /* renamed from: d */
    public AbstractC19233h0 f11200d;

    /* renamed from: e */
    public Map<AbstractC8274a, ? extends Drawable> f11201e;

    /* renamed from: f */
    public final g f11202f;

    /* renamed from: g */
    public final g f11203g;

    /* renamed from: h */
    public final g f11204h;

    @e(c = "com.truecaller.common.ui.groupavatar.GroupAvatarXView", f = "GroupAvatarXView.kt", l = {148, Constants.ERR_PUBLISH_STREAM_CDN_ERROR}, m = "createBitmap")
    /* renamed from: com.truecaller.common.ui.groupavatar.GroupAvatarXView$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/groupavatar/GroupAvatarXView$a.class */
    public static final class C3721a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f11205d;

        /* renamed from: e */
        public int f11206e;

        /* renamed from: g */
        public Object f11208g;

        /* renamed from: h */
        public Object f11209h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3721a(d dVar) {
            super(dVar);
            GroupAvatarXView.this = r4;
        }

        /* renamed from: s */
        public final Object m35678s(Object obj) {
            this.f11205d = obj;
            this.f11206e |= Integer.MIN_VALUE;
            return GroupAvatarXView.this.m35682d(null, 0, this);
        }
    }

    @e(c = "com.truecaller.common.ui.groupavatar.GroupAvatarXView$createBitmap$bitmap$1", f = "GroupAvatarXView.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.truecaller.common.ui.groupavatar.GroupAvatarXView$b */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/groupavatar/GroupAvatarXView$b.class */
    public static final class C3722b extends i implements p<i0, d<? super Bitmap>, Object> {

        /* renamed from: f */
        public final /* synthetic */ a0 f11211f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3722b(a0 a0Var, d dVar) {
            super(2, dVar);
            GroupAvatarXView.this = r5;
            this.f11211f = a0Var;
        }

        /* renamed from: i */
        public final d<s> m35677i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C3722b(this.f11211f, dVar);
        }

        /* renamed from: k */
        public final Object m35676k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            GroupAvatarXView groupAvatarXView = GroupAvatarXView.this;
            a0 a0Var = this.f11211f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            int i = a0Var.a;
            Bitmap createBitmap = Bitmap.createBitmap(i, i, Bitmap.Config.ARGB_8888);
            groupAvatarXView.draw(new Canvas(createBitmap));
            int i2 = a0Var.a;
            Bitmap createBitmap2 = Bitmap.createBitmap(i2, i2, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap2);
            float f = a0Var.a / 2.0f;
            groupAvatarXView.getCircularClipPaint().setXfermode(null);
            canvas.drawCircle(f, f, f, groupAvatarXView.getCircularClipPaint());
            groupAvatarXView.getCircularClipPaint().setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
            canvas.drawBitmap(createBitmap, 0.0f, 0.0f, groupAvatarXView.getCircularClipPaint());
            return createBitmap2;
        }

        /* renamed from: s */
        public final Object m35675s(Object obj) {
            C25225a.m3932a3(obj);
            int i = this.f11211f.a;
            Bitmap createBitmap = Bitmap.createBitmap(i, i, Bitmap.Config.ARGB_8888);
            GroupAvatarXView.this.draw(new Canvas(createBitmap));
            int i2 = this.f11211f.a;
            Bitmap createBitmap2 = Bitmap.createBitmap(i2, i2, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap2);
            float f = this.f11211f.a / 2.0f;
            GroupAvatarXView.this.getCircularClipPaint().setXfermode(null);
            canvas.drawCircle(f, f, f, GroupAvatarXView.this.getCircularClipPaint());
            GroupAvatarXView.this.getCircularClipPaint().setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
            canvas.drawBitmap(createBitmap, 0.0f, 0.0f, GroupAvatarXView.this.getCircularClipPaint());
            return createBitmap2;
        }
    }

    @e(c = "com.truecaller.common.ui.groupavatar.GroupAvatarXView", f = "GroupAvatarXView.kt", l = {299, 299}, m = "createDrawable")
    /* renamed from: com.truecaller.common.ui.groupavatar.GroupAvatarXView$c */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/groupavatar/GroupAvatarXView$c.class */
    public static final class C3723c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f11212d;

        /* renamed from: e */
        public int f11213e;

        /* renamed from: g */
        public Object f11215g;

        /* renamed from: h */
        public Object f11216h;

        /* renamed from: i */
        public Object f11217i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3723c(d dVar) {
            super(dVar);
            GroupAvatarXView.this = r4;
        }

        /* renamed from: s */
        public final Object m35674s(Object obj) {
            this.f11212d = obj;
            this.f11213e |= Integer.MIN_VALUE;
            return GroupAvatarXView.this.m35681e(null, this);
        }
    }

    /* renamed from: com.truecaller.common.ui.groupavatar.GroupAvatarXView$d */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/groupavatar/GroupAvatarXView$d.class */
    public static final class C3724d extends m implements a<s> {

        /* renamed from: c */
        public final /* synthetic */ List f11219c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3724d(List list) {
            super(0);
            GroupAvatarXView.this = r4;
            this.f11219c = list;
        }

        public Object invoke() {
            AbstractC8264c abstractC8264c = GroupAvatarXView.this.f11199c;
            if (abstractC8264c != null) {
                abstractC8264c.mo28709ub(this.f11219c);
                return s.a;
            }
            l.l("presenter");
            throw null;
        }
    }

    @e(c = "com.truecaller.common.ui.groupavatar.GroupAvatarXView$showTiles$2", f = "GroupAvatarXView.kt", l = {88, 91, 98}, m = "invokeSuspend")
    /* renamed from: com.truecaller.common.ui.groupavatar.GroupAvatarXView$e */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/groupavatar/GroupAvatarXView$e.class */
    public static final class C3725e extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f11220e;

        /* renamed from: f */
        public Object f11221f;

        /* renamed from: g */
        public Object f11222g;

        /* renamed from: h */
        public Object f11223h;

        /* renamed from: i */
        public Object f11224i;

        /* renamed from: j */
        public int f11225j;

        /* renamed from: l */
        public final /* synthetic */ List f11227l;

        @e(c = "com.truecaller.common.ui.groupavatar.GroupAvatarXView$showTiles$2$asyncDrawables$1", f = "GroupAvatarXView.kt", l = {}, m = "invokeSuspend")
        /* renamed from: com.truecaller.common.ui.groupavatar.GroupAvatarXView$e$a */
        /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a.class */
        public static final class C3726a extends i implements p<i0, d<? super Map<AbstractC8274a, ? extends n0<? extends Drawable>>>, Object> {

            /* renamed from: e */
            public /* synthetic */ Object f11228e;

            @e(c = "com.truecaller.common.ui.groupavatar.GroupAvatarXView$showTiles$2$asyncDrawables$1$1$1", f = "GroupAvatarXView.kt", l = {93}, m = "invokeSuspend")
            /* renamed from: com.truecaller.common.ui.groupavatar.GroupAvatarXView$e$a$a */
            /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a$a.class */
            public static final class C3727a extends i implements p<i0, d<? super Drawable>, Object> {

                /* renamed from: e */
                public int f11230e;

                /* renamed from: f */
                public final /* synthetic */ AbstractC8274a f11231f;

                /* renamed from: g */
                public final /* synthetic */ C3726a f11232g;

                /* renamed from: h */
                public final /* synthetic */ i0 f11233h;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C3727a(AbstractC8274a abstractC8274a, d dVar, C3726a c3726a, i0 i0Var) {
                    super(2, dVar);
                    this.f11231f = abstractC8274a;
                    this.f11232g = c3726a;
                    this.f11233h = i0Var;
                }

                /* renamed from: i */
                public final d<s> m35667i(Object obj, d<?> dVar) {
                    l.e(dVar, "completion");
                    return new C3727a(this.f11231f, dVar, this.f11232g, this.f11233h);
                }

                /* renamed from: k */
                public final Object m35666k(Object obj, Object obj2) {
                    d dVar = (d) obj2;
                    l.e(dVar, "completion");
                    return new C3727a(this.f11231f, dVar, this.f11232g, this.f11233h).m35665s(s.a);
                }

                /* renamed from: s */
                public final Object m35665s(Object obj) {
                    s1.w.j.a aVar = s1.w.j.a.a;
                    int i = this.f11230e;
                    if (i == 0) {
                        C25225a.m3932a3(obj);
                        GroupAvatarXView groupAvatarXView = GroupAvatarXView.this;
                        AbstractC8274a abstractC8274a = this.f11231f;
                        this.f11230e = 1;
                        Object m35681e = groupAvatarXView.m35681e(abstractC8274a, this);
                        obj = m35681e;
                        if (m35681e == aVar) {
                            return aVar;
                        }
                    } else if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    } else {
                        C25225a.m3932a3(obj);
                    }
                    return obj;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C3726a(d dVar) {
                super(2, dVar);
                C3725e.this = r5;
            }

            /* renamed from: i */
            public final d<s> m35670i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                C3726a c3726a = new C3726a(dVar);
                c3726a.f11228e = obj;
                return c3726a;
            }

            /* renamed from: k */
            public final Object m35669k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C3726a c3726a = new C3726a(dVar);
                c3726a.f11228e = obj;
                return c3726a.m35668s(s.a);
            }

            /* renamed from: s */
            public final Object m35668s(Object obj) {
                C25225a.m3932a3(obj);
                i0 i0Var = (i0) this.f11228e;
                List<AbstractC8274a> list = C3725e.this.f11227l;
                ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
                for (AbstractC8274a abstractC8274a : list) {
                    arrayList.add(new k(abstractC8274a, s1.a.a.a.v0.f.d.H(i0Var, (f) null, (j0) null, new C3727a(abstractC8274a, null, this, i0Var), 3, (Object) null)));
                }
                return s1.u.i.V0(arrayList);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3725e(List list, d dVar) {
            super(2, dVar);
            GroupAvatarXView.this = r5;
            this.f11227l = list;
        }

        /* renamed from: i */
        public final d<s> m35673i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C3725e(this.f11227l, dVar);
        }

        /* renamed from: k */
        public final Object m35672k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C3725e(this.f11227l, dVar).m35671s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x00e4  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0186  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x013f -> B:31:0x015f). Please submit an issue!!! */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m35671s(java.lang.Object r6) {
            /*
                Method dump skipped, instructions count: 411
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.truecaller.common.p156ui.groupavatar.GroupAvatarXView.C3725e.m35671s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.common.ui.groupavatar.GroupAvatarXView", f = "GroupAvatarXView.kt", l = {326}, m = "waitForSizeReady")
    /* renamed from: com.truecaller.common.ui.groupavatar.GroupAvatarXView$f */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/groupavatar/GroupAvatarXView$f.class */
    public static final class C3728f extends c {

        /* renamed from: d */
        public /* synthetic */ Object f11234d;

        /* renamed from: e */
        public int f11235e;

        /* renamed from: g */
        public Object f11237g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3728f(d dVar) {
            super(dVar);
            GroupAvatarXView.this = r4;
        }

        /* renamed from: s */
        public final Object m35664s(Object obj) {
            this.f11234d = obj;
            this.f11235e |= Integer.MIN_VALUE;
            return GroupAvatarXView.this.m35679g(this);
        }
    }

    /* renamed from: com.truecaller.common.ui.groupavatar.GroupAvatarXView$g */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/groupavatar/GroupAvatarXView$g.class */
    public static final class C3729g extends m implements a<s> {

        /* renamed from: b */
        public final /* synthetic */ n f11238b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3729g(n nVar) {
            super(0);
            this.f11238b = nVar;
        }

        public Object invoke() {
            n nVar = this.f11238b;
            s sVar = s.a;
            C19291g.m13552f1(nVar, sVar);
            return sVar;
        }
    }

    public GroupAvatarXView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public GroupAvatarXView(android.content.Context r6, android.util.AttributeSet r7, int r8, int r9) {
        /*
            r5 = this;
            r0 = r9
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L9
            r0 = 0
            r7 = r0
        L9:
            r0 = r9
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L12
            r0 = 0
            r8 = r0
        L12:
            r0 = r6
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r8
            r0.<init>(r1, r2, r3)
            r0 = r5
            s1.u.t r1 = s1.u.t.a
            r0.f11201e = r1
            r0 = r5
            e.a.b0.a.c.j r1 = new e.a.b0.a.c.j
            r2 = r1
            r3 = r6
            r2.<init>(r3)
            s1.g r1 = p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3978P1(r1)
            r0.f11202f = r1
            r0 = r5
            e.a.b0.a.c.e r1 = new e.a.b0.a.c.e
            r2 = r1
            r3 = r5
            r2.<init>(r3)
            s1.g r1 = p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3978P1(r1)
            r0.f11203g = r1
            r0 = r5
            e.a.b0.a.c.f r1 = p193e.p194a.p372b0.p373a.p378c.C8267f.f25502b
            s1.g r1 = p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3978P1(r1)
            r0.f11204h = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.common.p156ui.groupavatar.GroupAvatarXView.<init>(android.content.Context, android.util.AttributeSet, int, int):void");
    }

    private final float getBaseUnit() {
        return ((Number) this.f11203g.getValue()).floatValue();
    }

    public final Paint getCircularClipPaint() {
        return (Paint) this.f11204h.getValue();
    }

    private final float getDividerSize() {
        return getBaseUnit() * getWidth() * 2;
    }

    public final C21853e getGlideApp() {
        return (C21853e) this.f11202f.getValue();
    }

    private final float getTileInnerMargin() {
        return getBaseUnit() * getWidth() * 1.5f;
    }

    @Override // p193e.p194a.p372b0.p373a.p378c.AbstractC8265d
    /* renamed from: a */
    public Object mo28708a(List<? extends AbstractC8274a> list, d<? super s> dVar) {
        f fVar = this.f11197a;
        if (fVar != null) {
            Object a4 = s1.a.a.a.v0.f.d.a4(fVar, new C3725e(list, null), dVar);
            return a4 == s1.w.j.a.a ? a4 : s.a;
        }
        l.l("uiContext");
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0190  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m35682d(java.util.List<p193e.p194a.p372b0.p373a.p378c.p380m.C8279b> r7, int r8, s1.w.d<? super android.graphics.Bitmap> r9) {
        /*
            Method dump skipped, instructions count: 424
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.common.p156ui.groupavatar.GroupAvatarXView.m35682d(java.util.List, int, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x01b9  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m35681e(p193e.p194a.p372b0.p373a.p378c.p380m.AbstractC8274a r9, s1.w.d<? super android.graphics.drawable.Drawable> r10) {
        /*
            Method dump skipped, instructions count: 667
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.common.p156ui.groupavatar.GroupAvatarXView.m35681e(e.a.b0.a.c.m.a, s1.w.d):java.lang.Object");
    }

    /* renamed from: f */
    public final void m35680f() {
        if (!isInEditMode()) {
            t0 t0Var = t0.a;
            this.f11197a = q.c;
            this.f11198b = t0.b;
            Context context = getContext();
            l.d(context, AnalyticsConstants.CONTEXT);
            this.f11200d = new C19235i0(C17422k.m16113E(context, true));
        } else {
            g0 g0Var = t0.c;
            this.f11197a = g0Var;
            this.f11198b = g0Var;
            this.f11200d = new C19235i0(new C25453c(getContext(), C3700R.style.ThemeX_Light));
        }
        f fVar = this.f11197a;
        if (fVar == null) {
            l.l("uiContext");
            throw null;
        }
        AbstractC19233h0 abstractC19233h0 = this.f11200d;
        if (abstractC19233h0 != null) {
            this.f11199c = new C8261b(fVar, abstractC19233h0);
        } else {
            l.l("resourceProvider");
            throw null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00d0 A[SYNTHETIC] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m35679g(s1.w.d<? super s1.s> r6) {
        /*
            Method dump skipped, instructions count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.common.p156ui.groupavatar.GroupAvatarXView.m35679g(s1.w.d):java.lang.Object");
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m35680f();
        setOutlineProvider(new C8268g());
        setClipToOutline(true);
        AbstractC8264c abstractC8264c = this.f11199c;
        if (abstractC8264c == null) {
            l.l("presenter");
            throw null;
        }
        abstractC8264c.mo9029Y0(this);
        if (!isInEditMode()) {
            return;
        }
        C19286f.m13654y(this, new C8273l(this));
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        AbstractC8264c abstractC8264c = this.f11199c;
        if (abstractC8264c != null) {
            if (abstractC8264c == null) {
                l.l("presenter");
                throw null;
            }
            abstractC8264c.mo9806c();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (canvas == null) {
            return;
        }
        for (Drawable drawable : this.f11201e.values()) {
            drawable.draw(canvas);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        float width = getWidth();
        for (Map.Entry<AbstractC8274a, ? extends Drawable> entry : this.f11201e.entrySet()) {
            AbstractC8274a key = entry.getKey();
            Drawable value = entry.getValue();
            RectF calculateMargin = key.mo28700a().calculateMargin(getTileInnerMargin());
            if (value instanceof C8251a) {
                C8251a c8251a = (C8251a) value;
                Objects.requireNonNull(c8251a);
                l.e(calculateMargin, "<set-?>");
                c8251a.f25466f = calculateMargin;
            } else if (value instanceof C8257c) {
                C8257c c8257c = (C8257c) value;
                Objects.requireNonNull(c8257c);
                l.e(calculateMargin, "<set-?>");
                c8257c.f25485e = calculateMargin;
            }
            RectF calculateBounds = key.mo28700a().calculateBounds(width, getDividerSize());
            Rect rect = new Rect();
            calculateBounds.round(rect);
            value.setBounds(rect);
        }
    }

    public final void setConfigs(List<C8279b> list) {
        l.e(list, "configs");
        C19286f.m13656w(this, new C3724d(list));
    }
}
