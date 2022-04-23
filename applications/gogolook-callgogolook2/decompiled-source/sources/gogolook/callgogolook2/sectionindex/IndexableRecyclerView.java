package gogolook.callgogolook2.sectionindex;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import androidx.recyclerview.widget.RecyclerView;
import com.criteo.publisher.model.C2052w;
import com.flurry.sdk.C3496r;
import kotlin.Metadata;
import p459j.p460a.p560q0.AbstractC13383c;
import p459j.p460a.p560q0.C13381b;
import p459j.p460a.p560q0.C13385e;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0015\u0018��2\u00020\u00012\u00020\u0002B\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005B\u0017\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bB\u001f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0010\u0010 \u001a\u00020\u00152\u0006\u0010!\u001a\u00020\"H\u0016J0\u0010#\u001a\u00020\u001d2\u0006\u0010$\u001a\u00020\u00152\u0006\u0010%\u001a\u00020\n2\u0006\u0010&\u001a\u00020\n2\u0006\u0010'\u001a\u00020\n2\u0006\u0010(\u001a\u00020\nH\u0014J(\u0010)\u001a\u00020\u001d2\u0006\u0010*\u001a\u00020\n2\u0006\u0010+\u001a\u00020\n2\u0006\u0010,\u001a\u00020\n2\u0006\u0010-\u001a\u00020\nH\u0014J\u0012\u0010.\u001a\u00020\u00152\b\u0010/\u001a\u0004\u0018\u00010\"H\u0016J\u0010\u00100\u001a\u00020\u001d2\u0006\u00101\u001a\u00020\u0015H\u0002J\u0010\u00102\u001a\u00020\u001d2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u000e\u00103\u001a\u00020\u001d2\u0006\u00104\u001a\u00020\u0015J\u0010\u00105\u001a\u00020\u001d2\u0006\u00106\u001a\u00020\nH\u0016R\u001b\u0010\f\u001a\u00020\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000e\u0010\u000fR\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n��R\u001b\u0010\u0016\u001a\u00020\u00178FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u0011\u001a\u0004\b\u0018\u0010\u0019R\u000e\u0010\u001b\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n��¨\u00067"}, m815d2 = {"Lgogolook/callgogolook2/sectionindex/IndexableRecyclerView;", "Landroidx/recyclerview/widget/RecyclerView;", "Lgogolook/callgogolook2/sectionindex/IndexableView;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "attributeSet", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyle", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "gestureDetector", "Landroid/view/GestureDetector;", "getGestureDetector", "()Landroid/view/GestureDetector;", "gestureDetector$delegate", "Lkotlin/Lazy;", "indexer", "Lgogolook/callgogolook2/sectionindex/SmartSectionIndexer;", "isFastScrollEnabled", "", "scroller", "Lgogolook/callgogolook2/sectionindex/IndexScroller;", "getScroller", "()Lgogolook/callgogolook2/sectionindex/IndexScroller;", "scroller$delegate", "showSectionIndex", "draw", "", "canvas", "Landroid/graphics/Canvas;", "onInterceptTouchEvent", "ev", "Landroid/view/MotionEvent;", "onLayout", "changed", "l", "t", C3496r.f6031a, "b", "onSizeChanged", C2052w.f2268l, "h", "oldw", "oldh", "onTouchEvent", "e", "setFastScrollEnabled", "enabled", "setSectionIndex", "setSectionIndexEnabled", "isEnabled", "setSelection", "position", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/sectionindex/IndexableRecyclerView.class */
public final class IndexableRecyclerView extends RecyclerView implements AbstractC13383c {

    /* renamed from: f */
    public static final /* synthetic */ AbstractC14906i[] f12765f;

    /* renamed from: a */
    public C13385e f12766a;

    /* renamed from: b */
    public boolean f12767b;

    /* renamed from: c */
    public boolean f12768c = true;

    /* renamed from: d */
    public final AbstractC14974f f12769d = C14975g.m662a(new C5161a());

    /* renamed from: e */
    public final AbstractC14974f f12770e = C14975g.m662a(new C5163b());

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m815d2 = {"<anonymous>", "Landroid/view/GestureDetector;", "invoke"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: gogolook.callgogolook2.sectionindex.IndexableRecyclerView$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/sectionindex/IndexableRecyclerView$a.class */
    public static final class C5161a extends AbstractC15150l implements AbstractC15107a<GestureDetector> {

        /* renamed from: gogolook.callgogolook2.sectionindex.IndexableRecyclerView$a$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/sectionindex/IndexableRecyclerView$a$a.class */
        public static final class C5162a extends GestureDetector.SimpleOnGestureListener {
            public C5162a() {
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                IndexableRecyclerView.this.m26174b().m4093c();
                return true;
            }
        }

        public C5161a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final GestureDetector invoke() {
            return new GestureDetector(IndexableRecyclerView.this.getContext(), new C5162a());
        }
    }

    /* renamed from: gogolook.callgogolook2.sectionindex.IndexableRecyclerView$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/sectionindex/IndexableRecyclerView$b.class */
    public static final class C5163b extends AbstractC15150l implements AbstractC15107a<C13381b> {
        public C5163b() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C13381b invoke() {
            Context context = IndexableRecyclerView.this.getContext();
            IndexableRecyclerView indexableRecyclerView = IndexableRecyclerView.this;
            return new C13381b(context, indexableRecyclerView, indexableRecyclerView.f12766a);
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(IndexableRecyclerView.class), "gestureDetector", "getGestureDetector()Landroid/view/GestureDetector;");
        C15131a0.m412a(sVar);
        C15157s sVar2 = new C15157s(C15131a0.m419a(IndexableRecyclerView.class), "scroller", "getScroller()Lgogolook/callgogolook2/sectionindex/IndexScroller;");
        C15131a0.m412a(sVar2);
        f12765f = new AbstractC14906i[]{sVar, sVar2};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IndexableRecyclerView(Context context) {
        super(context);
        C15149k.m377b(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IndexableRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        C15149k.m377b(context, "context");
        C15149k.m377b(attributeSet, "attributeSet");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IndexableRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C15149k.m377b(context, "context");
        C15149k.m377b(attributeSet, "attributeSet");
    }

    /* renamed from: a */
    public final GestureDetector m26178a() {
        AbstractC14974f fVar = this.f12769d;
        AbstractC14906i iVar = f12765f[0];
        return (GestureDetector) fVar.getValue();
    }

    /* renamed from: a */
    public final void m26176a(C13385e eVar) {
        this.f12766a = eVar;
        m26174b().m4096a(eVar);
    }

    /* renamed from: a */
    public final void m26175a(boolean z) {
        this.f12767b = z;
        if (this.f12767b) {
            m26174b().m4093c();
        } else {
            m26174b().m4095b();
        }
    }

    /* renamed from: b */
    public final C13381b m26174b() {
        AbstractC14974f fVar = this.f12770e;
        AbstractC14906i iVar = f12765f[1];
        return (C13381b) fVar.getValue();
    }

    /* renamed from: b */
    public final void m26173b(boolean z) {
        this.f12768c = z;
        m26175a(z);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public void draw(Canvas canvas) {
        C15149k.m377b(canvas, "canvas");
        super.draw(canvas);
        if (this.f12768c) {
            m26174b().m4102a(canvas);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        C15149k.m377b(motionEvent, "ev");
        return (m26174b().m4108a() == 3 || m26174b().m4108a() == 0 || !m26174b().m4106a(motionEvent.getX(), motionEvent.getY())) ? super.onInterceptTouchEvent(motionEvent) : true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m26174b().m4104a(getWidth(), getHeight(), 0, 0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m26174b().m4104a(i, i2, i3, i4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (m26174b().m4101a(motionEvent)) {
            return true;
        }
        m26178a().onTouchEvent(motionEvent);
        return super.onTouchEvent(motionEvent);
    }

    @Override // p459j.p460a.p560q0.AbstractC13383c
    public void setSelection(int i) {
        scrollToPosition(i);
    }
}
