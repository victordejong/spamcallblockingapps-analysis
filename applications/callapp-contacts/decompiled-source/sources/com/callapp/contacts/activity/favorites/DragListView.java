package com.callapp.contacts.activity.favorites;

import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.c;
import com.callapp.contacts.activity.favorites.DragItemAdapter;
import com.callapp.contacts.activity.favorites.DragItemRecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/DragListView.class */
public class DragListView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private DragItemRecyclerView f12850a;

    /* renamed from: b  reason: collision with root package name */
    private DragListListener f12851b;

    /* renamed from: c  reason: collision with root package name */
    private DragListCallback f12852c;

    /* renamed from: d  reason: collision with root package name */
    private DragItem f12853d;
    private float e;
    private float f;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/DragListView$DragListCallback.class */
    public interface DragListCallback {
        boolean a(int i);

        boolean b(int i);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/DragListView$DragListCallbackAdapter.class */
    public static abstract class DragListCallbackAdapter implements DragListCallback {
        @Override // com.callapp.contacts.activity.favorites.DragListView.DragListCallback
        public boolean a(int i) {
            return true;
        }

        @Override // com.callapp.contacts.activity.favorites.DragListView.DragListCallback
        public boolean b(int i) {
            return true;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/DragListView$DragListListener.class */
    public interface DragListListener {
        void a();
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/DragListView$DragListListenerAdapter.class */
    public static abstract class DragListListenerAdapter implements DragListListener {
        @Override // com.callapp.contacts.activity.favorites.DragListView.DragListListener
        public void a() {
        }
    }

    public DragListView(Context context) {
        super(context);
    }

    public DragListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public DragListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private boolean a(MotionEvent motionEvent) {
        this.e = motionEvent.getX();
        this.f = motionEvent.getY();
        if (!isDragging()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 1) {
            if (action == 2) {
                this.f12850a.a(motionEvent.getX(), motionEvent.getY());
                return true;
            } else if (action != 3) {
                return true;
            }
        }
        this.f12850a.j();
        return true;
    }

    public RecyclerView getRecyclerView() {
        return this.f12850a;
    }

    public boolean isDragging() {
        return this.f12850a.isDragging();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f12853d = new DragItem(getContext());
        DragItemRecyclerView dragItemRecyclerView = (DragItemRecyclerView) LayoutInflater.from(getContext()).inflate(2131558643, (ViewGroup) this, false);
        dragItemRecyclerView.setMotionEventSplittingEnabled(false);
        dragItemRecyclerView.setItemAnimator(new c());
        dragItemRecyclerView.setVerticalScrollBarEnabled(false);
        dragItemRecyclerView.setHorizontalScrollBarEnabled(false);
        dragItemRecyclerView.setDragItemListener(new DragItemRecyclerView.DragItemListener() { // from class: com.callapp.contacts.activity.favorites.DragListView.1

            /* renamed from: b  reason: collision with root package name */
            private int f12855b;

            @Override // com.callapp.contacts.activity.favorites.DragItemRecyclerView.DragItemListener
            public final void a() {
                if (DragListView.this.f12851b != null) {
                    DragListListener unused = DragListView.this.f12851b;
                }
            }

            @Override // com.callapp.contacts.activity.favorites.DragItemRecyclerView.DragItemListener
            public final void a(int i) {
                DragListView.this.getParent().requestDisallowInterceptTouchEvent(true);
                this.f12855b = i;
                if (DragListView.this.f12851b != null) {
                    DragListListener unused = DragListView.this.f12851b;
                }
            }

            @Override // com.callapp.contacts.activity.favorites.DragItemRecyclerView.DragItemListener
            public final void b() {
                if (DragListView.this.f12851b != null) {
                    DragListView.this.f12851b.a();
                }
            }
        });
        dragItemRecyclerView.setDragItemCallback(new DragItemRecyclerView.DragItemCallback() { // from class: com.callapp.contacts.activity.favorites.DragListView.2
            @Override // com.callapp.contacts.activity.favorites.DragItemRecyclerView.DragItemCallback
            public final boolean a(int i) {
                return DragListView.this.f12852c == null || DragListView.this.f12852c.a(i);
            }

            @Override // com.callapp.contacts.activity.favorites.DragItemRecyclerView.DragItemCallback
            public final boolean b(int i) {
                return DragListView.this.f12852c == null || DragListView.this.f12852c.b(i);
            }
        });
        this.f12850a = dragItemRecyclerView;
        dragItemRecyclerView.setDragItem(this.f12853d);
        addView(this.f12850a);
        addView(this.f12853d.getDragItemView());
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return a(motionEvent) || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return a(motionEvent) || super.onTouchEvent(motionEvent);
    }

    public void setAdapter(DragItemAdapter dragItemAdapter, boolean z) {
        this.f12850a.setHasFixedSize(z);
        this.f12850a.setAdapter(dragItemAdapter);
        dragItemAdapter.setDragStartedListener(new DragItemAdapter.DragStartCallback() { // from class: com.callapp.contacts.activity.favorites.DragListView.3
            @Override // com.callapp.contacts.activity.favorites.DragItemAdapter.DragStartCallback
            public final boolean a(View view, long j) {
                DragItemRecyclerView dragItemRecyclerView = DragListView.this.f12850a;
                float f = DragListView.this.e;
                float f2 = DragListView.this.f;
                int a2 = dragItemRecyclerView.T.a(j);
                if (!dragItemRecyclerView.ac) {
                    return false;
                }
                if (dragItemRecyclerView.aa && a2 == 0) {
                    return false;
                }
                if (dragItemRecyclerView.ab && a2 == dragItemRecyclerView.T.getItemCount() - 1) {
                    return false;
                }
                if (dragItemRecyclerView.R != null && !dragItemRecyclerView.R.a(a2)) {
                    return false;
                }
                dragItemRecyclerView.getParent().requestDisallowInterceptTouchEvent(false);
                dragItemRecyclerView.S = DragItemRecyclerView.DragState.DRAG_STARTED;
                dragItemRecyclerView.V = j;
                DragItem dragItem = dragItemRecyclerView.U;
                dragItem.f12838a.setVisibility(0);
                dragItem.f12839b = view;
                View view2 = dragItem.f12838a;
                Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
                view.draw(new Canvas(createBitmap));
                view2.setBackground(new BitmapDrawable(view.getResources(), createBitmap));
                View view3 = dragItem.f12838a;
                view3.setLayoutParams(new FrameLayout.LayoutParams(view.getMeasuredWidth(), view.getMeasuredHeight()));
                view3.measure(View.MeasureSpec.makeMeasureSpec(view.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 1073741824));
                float x = (view.getX() - ((dragItem.f12838a.getMeasuredWidth() - view.getMeasuredWidth()) / 2)) + (dragItem.f12838a.getMeasuredWidth() / 2);
                float y = (view.getY() - ((dragItem.f12838a.getMeasuredHeight() - view.getMeasuredHeight()) / 2)) + (dragItem.f12838a.getMeasuredHeight() / 2);
                if (dragItem.i) {
                    dragItem.e = BitmapDescriptorFactory.HUE_RED;
                    dragItem.f = BitmapDescriptorFactory.HUE_RED;
                    dragItem.a(f, f2);
                    dragItem.setAnimationDx(x - f);
                    dragItem.setAnimationDY(y - f2);
                    ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(dragItem, PropertyValuesHolder.ofFloat("AnimationDx", dragItem.g, BitmapDescriptorFactory.HUE_RED), PropertyValuesHolder.ofFloat("AnimationDY", dragItem.h, BitmapDescriptorFactory.HUE_RED));
                    ofPropertyValuesHolder.setInterpolator(new DecelerateInterpolator());
                    ofPropertyValuesHolder.setDuration(250L);
                    ofPropertyValuesHolder.start();
                } else {
                    dragItem.e = x - f;
                    dragItem.f = y - f2;
                    dragItem.a(f, f2);
                }
                dragItemRecyclerView.W = a2;
                dragItemRecyclerView.i();
                dragItemRecyclerView.T.setDragItemId(dragItemRecyclerView.V);
                dragItemRecyclerView.T.notifyDataSetChanged();
                if (dragItemRecyclerView.Q != null) {
                    DragItemRecyclerView.DragItemListener dragItemListener = dragItemRecyclerView.Q;
                    int i = dragItemRecyclerView.W;
                    dragItemRecyclerView.U.getX();
                    dragItemRecyclerView.U.getY();
                    dragItemListener.a(i);
                }
                dragItemRecyclerView.invalidate();
                return true;
            }
        });
    }

    public void setCanDragHorizontally(boolean z) {
        this.f12853d.setCanDragHorizontally(z);
    }

    public void setCanNotDragAboveTopItem(boolean z) {
        this.f12850a.setCanNotDragAboveTopItem(z);
    }

    public void setCanNotDragBelowBottomItem(boolean z) {
        this.f12850a.setCanNotDragBelowBottomItem(z);
    }

    public void setDisableReorderWhenDragging(boolean z) {
        this.f12850a.setDisableReorderWhenDragging(z);
    }

    public void setDragEnabled(boolean z) {
        this.f12850a.setDragEnabled(z);
    }

    public void setDragListCallback(DragListCallback dragListCallback) {
        this.f12852c = dragListCallback;
    }

    public void setDragListListener(DragListListener dragListListener) {
        this.f12851b = dragListListener;
    }

    public void setDropTargetDrawables(Drawable drawable, Drawable drawable2) {
        this.f12850a.setDropTargetDrawables(drawable, drawable2);
    }

    public void setLayoutManager(RecyclerView.i iVar) {
        this.f12850a.setLayoutManager(iVar);
    }

    public void setScrollingEnabled(boolean z) {
        this.f12850a.setScrollingEnabled(z);
    }

    public void setSnapDragItemToTouch(boolean z) {
        this.f12853d.setSnapToTouch(z);
    }
}
