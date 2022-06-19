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
import androidx.recyclerview.widget.C2669c;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.favorites.DragItemAdapter;
import com.callapp.contacts.activity.favorites.DragItemRecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/DragListView.class */
public class DragListView extends FrameLayout {

    /* renamed from: a */
    private DragItemRecyclerView f22987a;

    /* renamed from: b */
    private DragListListener f22988b;

    /* renamed from: c */
    private DragListCallback f22989c;

    /* renamed from: d */
    private DragItem f22990d;

    /* renamed from: e */
    private float f22991e;

    /* renamed from: f */
    private float f22992f;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/DragListView$DragListCallback.class */
    public interface DragListCallback {
        /* renamed from: a */
        boolean mo30277a(int i);

        /* renamed from: b */
        boolean mo30276b(int i);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/DragListView$DragListCallbackAdapter.class */
    public static abstract class DragListCallbackAdapter implements DragListCallback {
        @Override // com.callapp.contacts.activity.favorites.DragListView.DragListCallback
        /* renamed from: a */
        public boolean mo30277a(int i) {
            return true;
        }

        @Override // com.callapp.contacts.activity.favorites.DragListView.DragListCallback
        /* renamed from: b */
        public boolean mo30276b(int i) {
            return true;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/DragListView$DragListListener.class */
    public interface DragListListener {
        /* renamed from: a */
        void mo30275a();
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/DragListView$DragListListenerAdapter.class */
    public static abstract class DragListListenerAdapter implements DragListListener {
        @Override // com.callapp.contacts.activity.favorites.DragListView.DragListListener
        /* renamed from: a */
        public void mo30275a() {
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

    /* renamed from: a */
    private boolean m30289a(MotionEvent motionEvent) {
        this.f22991e = motionEvent.getX();
        this.f22992f = motionEvent.getY();
        if (isDragging()) {
            int action = motionEvent.getAction();
            if (action != 1) {
                if (action == 2) {
                    this.f22987a.m30304a(motionEvent.getX(), motionEvent.getY());
                    return true;
                } else if (action != 3) {
                    return true;
                }
            }
            this.f22987a.m30293j();
            return true;
        }
        return false;
    }

    public RecyclerView getRecyclerView() {
        return this.f22987a;
    }

    public boolean isDragging() {
        return this.f22987a.isDragging();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f22990d = new DragItem(getContext());
        DragItemRecyclerView dragItemRecyclerView = (DragItemRecyclerView) LayoutInflater.from(getContext()).inflate(2131558643, (ViewGroup) this, false);
        dragItemRecyclerView.setMotionEventSplittingEnabled(false);
        dragItemRecyclerView.setItemAnimator(new C2669c());
        dragItemRecyclerView.setVerticalScrollBarEnabled(false);
        dragItemRecyclerView.setHorizontalScrollBarEnabled(false);
        dragItemRecyclerView.setDragItemListener(new DragItemRecyclerView.DragItemListener() { // from class: com.callapp.contacts.activity.favorites.DragListView.1

            /* renamed from: b */
            private int f22994b;

            @Override // com.callapp.contacts.activity.favorites.DragItemRecyclerView.DragItemListener
            /* renamed from: a */
            public final void mo30283a() {
                if (DragListView.this.f22988b != null) {
                    DragListListener unused = DragListView.this.f22988b;
                }
            }

            @Override // com.callapp.contacts.activity.favorites.DragItemRecyclerView.DragItemListener
            /* renamed from: a */
            public final void mo30282a(int i) {
                DragListView.this.getParent().requestDisallowInterceptTouchEvent(true);
                this.f22994b = i;
                if (DragListView.this.f22988b != null) {
                    DragListListener unused = DragListView.this.f22988b;
                }
            }

            @Override // com.callapp.contacts.activity.favorites.DragItemRecyclerView.DragItemListener
            /* renamed from: b */
            public final void mo30281b() {
                if (DragListView.this.f22988b != null) {
                    DragListView.this.f22988b.mo30275a();
                }
            }
        });
        dragItemRecyclerView.setDragItemCallback(new DragItemRecyclerView.DragItemCallback() { // from class: com.callapp.contacts.activity.favorites.DragListView.2
            @Override // com.callapp.contacts.activity.favorites.DragItemRecyclerView.DragItemCallback
            /* renamed from: a */
            public final boolean mo30280a(int i) {
                return DragListView.this.f22989c == null || DragListView.this.f22989c.mo30277a(i);
            }

            @Override // com.callapp.contacts.activity.favorites.DragItemRecyclerView.DragItemCallback
            /* renamed from: b */
            public final boolean mo30279b(int i) {
                return DragListView.this.f22989c == null || DragListView.this.f22989c.mo30276b(i);
            }
        });
        this.f22987a = dragItemRecyclerView;
        dragItemRecyclerView.setDragItem(this.f22990d);
        addView(this.f22987a);
        addView(this.f22990d.getDragItemView());
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return m30289a(motionEvent) || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return m30289a(motionEvent) || super.onTouchEvent(motionEvent);
    }

    public void setAdapter(DragItemAdapter dragItemAdapter, boolean z) {
        this.f22987a.setHasFixedSize(z);
        this.f22987a.setAdapter(dragItemAdapter);
        dragItemAdapter.setDragStartedListener(new DragItemAdapter.DragStartCallback() { // from class: com.callapp.contacts.activity.favorites.DragListView.3
            @Override // com.callapp.contacts.activity.favorites.DragItemAdapter.DragStartCallback
            /* renamed from: a */
            public final boolean mo30278a(View view, long j) {
                DragItemRecyclerView dragItemRecyclerView = DragListView.this.f22987a;
                float f = DragListView.this.f22991e;
                float f2 = DragListView.this.f22992f;
                int m30307a = dragItemRecyclerView.f22967T.m30307a(j);
                if (dragItemRecyclerView.f22973ac) {
                    if (dragItemRecyclerView.f22971aa && m30307a == 0) {
                        return false;
                    }
                    if (dragItemRecyclerView.f22972ab && m30307a == dragItemRecyclerView.f22967T.getItemCount() - 1) {
                        return false;
                    }
                    if (dragItemRecyclerView.f22965R != null && !dragItemRecyclerView.f22965R.mo30280a(m30307a)) {
                        return false;
                    }
                    dragItemRecyclerView.getParent().requestDisallowInterceptTouchEvent(false);
                    dragItemRecyclerView.f22966S = DragItemRecyclerView.DragState.DRAG_STARTED;
                    dragItemRecyclerView.f22969V = j;
                    DragItem dragItem = dragItemRecyclerView.f22968U;
                    dragItem.f22944a.setVisibility(0);
                    dragItem.f22945b = view;
                    View view2 = dragItem.f22944a;
                    Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
                    view.draw(new Canvas(createBitmap));
                    view2.setBackground(new BitmapDrawable(view.getResources(), createBitmap));
                    View view3 = dragItem.f22944a;
                    view3.setLayoutParams(new FrameLayout.LayoutParams(view.getMeasuredWidth(), view.getMeasuredHeight()));
                    view3.measure(View.MeasureSpec.makeMeasureSpec(view.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 1073741824));
                    float x = (view.getX() - ((dragItem.f22944a.getMeasuredWidth() - view.getMeasuredWidth()) / 2)) + (dragItem.f22944a.getMeasuredWidth() / 2);
                    float y = (view.getY() - ((dragItem.f22944a.getMeasuredHeight() - view.getMeasuredHeight()) / 2)) + (dragItem.f22944a.getMeasuredHeight() / 2);
                    if (dragItem.f22952i) {
                        dragItem.f22948e = BitmapDescriptorFactory.HUE_RED;
                        dragItem.f22949f = BitmapDescriptorFactory.HUE_RED;
                        dragItem.m30310a(f, f2);
                        dragItem.setAnimationDx(x - f);
                        dragItem.setAnimationDY(y - f2);
                        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(dragItem, PropertyValuesHolder.ofFloat("AnimationDx", dragItem.f22950g, BitmapDescriptorFactory.HUE_RED), PropertyValuesHolder.ofFloat("AnimationDY", dragItem.f22951h, BitmapDescriptorFactory.HUE_RED));
                        ofPropertyValuesHolder.setInterpolator(new DecelerateInterpolator());
                        ofPropertyValuesHolder.setDuration(250L);
                        ofPropertyValuesHolder.start();
                    } else {
                        dragItem.f22948e = x - f;
                        dragItem.f22949f = y - f2;
                        dragItem.m30310a(f, f2);
                    }
                    dragItemRecyclerView.f22970W = m30307a;
                    dragItemRecyclerView.m30294i();
                    dragItemRecyclerView.f22967T.setDragItemId(dragItemRecyclerView.f22969V);
                    dragItemRecyclerView.f22967T.notifyDataSetChanged();
                    if (dragItemRecyclerView.f22964Q != null) {
                        DragItemRecyclerView.DragItemListener dragItemListener = dragItemRecyclerView.f22964Q;
                        int i = dragItemRecyclerView.f22970W;
                        dragItemRecyclerView.f22968U.getX();
                        dragItemRecyclerView.f22968U.getY();
                        dragItemListener.mo30282a(i);
                    }
                    dragItemRecyclerView.invalidate();
                    return true;
                }
                return false;
            }
        });
    }

    public void setCanDragHorizontally(boolean z) {
        this.f22990d.setCanDragHorizontally(z);
    }

    public void setCanNotDragAboveTopItem(boolean z) {
        this.f22987a.setCanNotDragAboveTopItem(z);
    }

    public void setCanNotDragBelowBottomItem(boolean z) {
        this.f22987a.setCanNotDragBelowBottomItem(z);
    }

    public void setDisableReorderWhenDragging(boolean z) {
        this.f22987a.setDisableReorderWhenDragging(z);
    }

    public void setDragEnabled(boolean z) {
        this.f22987a.setDragEnabled(z);
    }

    public void setDragListCallback(DragListCallback dragListCallback) {
        this.f22989c = dragListCallback;
    }

    public void setDragListListener(DragListListener dragListListener) {
        this.f22988b = dragListListener;
    }

    public void setDropTargetDrawables(Drawable drawable, Drawable drawable2) {
        this.f22987a.setDropTargetDrawables(drawable, drawable2);
    }

    public void setLayoutManager(RecyclerView.AbstractC2637i abstractC2637i) {
        this.f22987a.setLayoutManager(abstractC2637i);
    }

    public void setScrollingEnabled(boolean z) {
        this.f22987a.setScrollingEnabled(z);
    }

    public void setSnapDragItemToTouch(boolean z) {
        this.f22990d.setSnapToTouch(z);
    }
}
