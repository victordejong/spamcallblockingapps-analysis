package com.callapp.contacts.activity.favorites;

import android.content.Context;
import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/DragItem.class */
public class DragItem {

    /* renamed from: a */
    View f22944a;

    /* renamed from: b */
    View f22945b;

    /* renamed from: c */
    float f22946c;

    /* renamed from: d */
    float f22947d;

    /* renamed from: e */
    float f22948e;

    /* renamed from: f */
    float f22949f;

    /* renamed from: g */
    float f22950g;

    /* renamed from: h */
    float f22951h;

    /* renamed from: j */
    private float f22953j;

    /* renamed from: k */
    private float f22954k;

    /* renamed from: l */
    private boolean f22955l = true;

    /* renamed from: i */
    boolean f22952i = true;

    public DragItem(Context context) {
        this.f22944a = new View(context);
        m30311a();
    }

    public DragItem(Context context, int i) {
        this.f22944a = View.inflate(context, i, null);
        m30311a();
    }

    /* renamed from: b */
    private void m30309b() {
        if (this.f22955l) {
            View view = this.f22944a;
            view.setX(((this.f22946c + this.f22953j) + this.f22950g) - (view.getMeasuredWidth() / 2));
        }
        View view2 = this.f22944a;
        view2.setY(((this.f22947d + this.f22954k) + this.f22951h) - (view2.getMeasuredHeight() / 2));
        this.f22944a.invalidate();
    }

    /* renamed from: a */
    public final void m30311a() {
        this.f22944a.setVisibility(8);
        this.f22945b = null;
    }

    /* renamed from: a */
    public final void m30310a(float f, float f2) {
        this.f22946c = f + this.f22948e;
        this.f22947d = f2 + this.f22949f;
        m30309b();
    }

    public View getDragItemView() {
        return this.f22944a;
    }

    public float getX() {
        return this.f22946c;
    }

    public float getY() {
        return this.f22947d;
    }

    public void setAnimationDY(float f) {
        this.f22951h = f;
        m30309b();
    }

    public void setAnimationDx(float f) {
        this.f22950g = f;
        m30309b();
    }

    public void setCanDragHorizontally(boolean z) {
        this.f22955l = z;
    }

    public void setSnapToTouch(boolean z) {
        this.f22952i = z;
    }
}
