package com.android.contacts.dialpad;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.widget.ListView;
import com.android.contacts.dialpad.ResultListFragment;
import java.util.Iterator;
import java.util.LinkedList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/SmartDialListView.class */
public class SmartDialListView extends ListView {

    /* renamed from: a  reason: collision with root package name */
    LinkedList<ResultListFragment.g> f974a;

    /* renamed from: b  reason: collision with root package name */
    private GestureDetector f975b;

    public SmartDialListView(Context context) {
        super(context);
        this.f974a = new LinkedList<>();
        this.f975b = new GestureDetector(new GestureDetector.OnGestureListener() { // from class: com.android.contacts.dialpad.SmartDialListView.1
            @Override // android.view.GestureDetector.OnGestureListener
            public final boolean onDown(MotionEvent motionEvent) {
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public final void onLongPress(MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                Iterator it = SmartDialListView.this.f974a.iterator();
                while (it.hasNext()) {
                    ResultListFragment.g gVar = (ResultListFragment.g) it.next();
                    if (gVar != null) {
                        gVar.h();
                    }
                }
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public final void onShowPress(MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public final boolean onSingleTapUp(MotionEvent motionEvent) {
                return false;
            }
        });
    }

    public SmartDialListView(Context context, AttributeSet attributeSet) {
        this(context);
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.f975b.onTouchEvent(motionEvent);
        return super.onTouchEvent(motionEvent);
    }
}
