package com.callapp.contacts.activity.favorites;

import android.content.Context;
import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/DragItem.class */
public class DragItem {

    /* renamed from: a  reason: collision with root package name */
    View f12838a;

    /* renamed from: b  reason: collision with root package name */
    View f12839b;

    /* renamed from: c  reason: collision with root package name */
    float f12840c;

    /* renamed from: d  reason: collision with root package name */
    float f12841d;
    float e;
    float f;
    float g;
    float h;
    private float j;
    private float k;
    private boolean l = true;
    boolean i = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DragItem(Context context) {
        this.f12838a = new View(context);
        a();
    }

    public DragItem(Context context, int i) {
        this.f12838a = View.inflate(context, i, null);
        a();
    }

    private void b() {
        if (this.l) {
            View view = this.f12838a;
            view.setX(((this.f12840c + this.j) + this.g) - (view.getMeasuredWidth() / 2));
        }
        View view2 = this.f12838a;
        view2.setY(((this.f12841d + this.k) + this.h) - (view2.getMeasuredHeight() / 2));
        this.f12838a.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        this.f12838a.setVisibility(8);
        this.f12839b = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(float f, float f2) {
        this.f12840c = f + this.e;
        this.f12841d = f2 + this.f;
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View getDragItemView() {
        return this.f12838a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getX() {
        return this.f12840c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getY() {
        return this.f12841d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAnimationDY(float f) {
        this.h = f;
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAnimationDx(float f) {
        this.g = f;
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCanDragHorizontally(boolean z) {
        this.l = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setSnapToTouch(boolean z) {
        this.i = z;
    }
}
