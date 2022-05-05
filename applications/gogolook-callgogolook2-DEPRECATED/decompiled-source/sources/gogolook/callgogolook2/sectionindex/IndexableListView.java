package gogolook.callgogolook2.sectionindex;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.widget.ListView;
import p459j.p460a.p560q0.AbstractC13383c;
import p459j.p460a.p560q0.C13381b;
import p459j.p460a.p560q0.C13385e;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/sectionindex/IndexableListView.class */
public class IndexableListView extends ListView implements AbstractC13383c {

    /* renamed from: a */
    public boolean f12759a = false;

    /* renamed from: b */
    public C13381b f12760b = null;

    /* renamed from: c */
    public C13385e f12761c = null;

    /* renamed from: d */
    public GestureDetector f12762d = null;

    /* renamed from: e */
    public boolean f12763e = true;

    /* renamed from: gogolook.callgogolook2.sectionindex.IndexableListView$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/sectionindex/IndexableListView$a.class */
    public class C5160a extends GestureDetector.SimpleOnGestureListener {
        public C5160a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            IndexableListView.this.f12760b.m4093c();
            return super.onFling(motionEvent, motionEvent2, f, f2);
        }
    }

    public IndexableListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m26180a(context);
    }

    public IndexableListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m26180a(context);
    }

    /* renamed from: a */
    public final void m26180a(Context context) {
        this.f12761c = new C13385e();
        this.f12760b = new C13381b(context, this, this.f12761c);
        this.f12760b.m4093c();
    }

    @Override // android.widget.AbsListView, android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        C13381b bVar = this.f12760b;
        if (bVar != null && this.f12763e) {
            bVar.m4102a(canvas);
        }
    }

    @Override // android.widget.AbsListView
    public boolean isFastScrollEnabled() {
        return this.f12759a;
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        C13381b bVar = this.f12760b;
        if (bVar == null || ((bVar.m4108a() != 3 && this.f12760b.m4108a() != 1) || !this.f12760b.m4106a(motionEvent.getX(), motionEvent.getY()))) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        C13381b bVar = this.f12760b;
        if (bVar != null) {
            bVar.m4104a(i, i2, i3, i4);
        }
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        C13381b bVar = this.f12760b;
        if (bVar == null) {
            return super.onTouchEvent(motionEvent);
        }
        if (bVar.m4101a(motionEvent)) {
            return true;
        }
        if (this.f12762d == null) {
            this.f12762d = new GestureDetector(getContext(), new C5160a());
        }
        this.f12762d.onTouchEvent(motionEvent);
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.AbsListView
    public void setFastScrollEnabled(boolean z) {
        this.f12759a = z;
        if (this.f12759a) {
            if (this.f12760b == null) {
                this.f12760b = new C13381b(getContext(), this, this.f12761c);
            }
            this.f12760b.m4093c();
            return;
        }
        C13381b bVar = this.f12760b;
        if (bVar != null) {
            bVar.m4095b();
        }
    }
}
