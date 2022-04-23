package com.callerid.block.customview;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListView;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callerid/block/customview/ObservableListView.class */
public class ObservableListView extends ListView {

    /* renamed from: b */
    private int f4192b;

    /* renamed from: d */
    private int f4194d;

    /* renamed from: e */
    private int f4195e;

    /* renamed from: f */
    private int f4196f;

    /* renamed from: g */
    private SparseIntArray f4197g;

    /* renamed from: h */
    private AbstractC0941c f4198h;

    /* renamed from: i */
    private List<AbstractC0941c> f4199i;

    /* renamed from: j */
    private ScrollState f4200j;

    /* renamed from: k */
    private boolean f4201k;

    /* renamed from: l */
    private boolean f4202l;

    /* renamed from: m */
    private boolean f4203m;

    /* renamed from: n */
    private MotionEvent f4204n;

    /* renamed from: o */
    private ViewGroup f4205o;

    /* renamed from: p */
    private AbsListView.OnScrollListener f4206p;

    /* renamed from: c */
    private int f4193c = -1;

    /* renamed from: q */
    private AbsListView.OnScrollListener f4207q = new C0933a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/customview/ObservableListView$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0932a();

        /* renamed from: b */
        int f4208b;

        /* renamed from: c */
        int f4209c;

        /* renamed from: d */
        int f4210d;

        /* renamed from: e */
        int f4211e;

        /* renamed from: f */
        int f4212f;

        /* renamed from: g */
        SparseIntArray f4213g;

        /* renamed from: com.callerid.block.customview.ObservableListView$SavedState$a */
        /* loaded from: classes-dex2jar.jar:com/callerid/block/customview/ObservableListView$SavedState$a.class */
        static final class C0932a implements Parcelable.Creator<SavedState> {
            C0932a() {
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* renamed from: b */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f4209c = -1;
            this.f4208b = parcel.readInt();
            this.f4209c = parcel.readInt();
            this.f4210d = parcel.readInt();
            this.f4211e = parcel.readInt();
            this.f4212f = parcel.readInt();
            this.f4213g = new SparseIntArray();
            int readInt = parcel.readInt();
            if (readInt > 0) {
                for (int i = 0; i < readInt; i++) {
                    this.f4213g.put(parcel.readInt(), parcel.readInt());
                }
            }
        }

        /* synthetic */ SavedState(Parcel parcel, C0933a aVar) {
            this(parcel);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
            this.f4209c = -1;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f4208b);
            parcel.writeInt(this.f4209c);
            parcel.writeInt(this.f4210d);
            parcel.writeInt(this.f4211e);
            parcel.writeInt(this.f4212f);
            SparseIntArray sparseIntArray = this.f4213g;
            int size = sparseIntArray == null ? 0 : sparseIntArray.size();
            parcel.writeInt(size);
            if (size > 0) {
                for (int i2 = 0; i2 < size; i2++) {
                    parcel.writeInt(this.f4213g.keyAt(i2));
                    parcel.writeInt(this.f4213g.valueAt(i2));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callerid.block.customview.ObservableListView$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/customview/ObservableListView$a.class */
    public class C0933a implements AbsListView.OnScrollListener {
        C0933a() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            if (ObservableListView.this.f4206p != null) {
                ObservableListView.this.f4206p.onScroll(absListView, i, i2, i3);
            }
            ObservableListView.this.m10526h();
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
            if (ObservableListView.this.f4206p != null) {
                ObservableListView.this.f4206p.onScrollStateChanged(absListView, i);
            }
        }
    }

    /* renamed from: com.callerid.block.customview.ObservableListView$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/customview/ObservableListView$b.class */
    class RunnableC0934b implements Runnable {

        /* renamed from: b */
        final /* synthetic */ ViewGroup f4215b;

        /* renamed from: c */
        final /* synthetic */ MotionEvent f4216c;

        RunnableC0934b(ObservableListView observableListView, ViewGroup viewGroup, MotionEvent motionEvent) {
            this.f4215b = viewGroup;
            this.f4216c = motionEvent;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f4215b.dispatchTouchEvent(this.f4216c);
        }
    }

    public ObservableListView(Context context) {
        super(context);
        m10527g();
    }

    public ObservableListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m10527g();
    }

    public ObservableListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m10527g();
    }

    /* renamed from: c */
    private void m10531c() {
        AbstractC0941c cVar = this.f4198h;
        if (cVar != null) {
            cVar.m10490a();
        }
        if (this.f4199i != null) {
            for (int i = 0; i < this.f4199i.size(); i++) {
                this.f4199i.get(i).m10490a();
            }
        }
    }

    /* renamed from: d */
    private void m10530d(int i, boolean z, boolean z2) {
        AbstractC0941c cVar = this.f4198h;
        if (cVar != null) {
            cVar.m10488c(i, z, z2);
        }
        if (this.f4199i != null) {
            for (int i2 = 0; i2 < this.f4199i.size(); i2++) {
                this.f4199i.get(i2).m10488c(i, z, z2);
            }
        }
    }

    /* renamed from: e */
    private void m10529e(ScrollState scrollState) {
        AbstractC0941c cVar = this.f4198h;
        if (cVar != null) {
            cVar.m10489b(scrollState);
        }
        if (this.f4199i != null) {
            for (int i = 0; i < this.f4199i.size(); i++) {
                this.f4199i.get(i).m10489b(scrollState);
            }
        }
    }

    /* renamed from: f */
    private boolean m10528f() {
        return this.f4198h == null && this.f4199i == null;
    }

    /* renamed from: g */
    private void m10527g() {
        this.f4197g = new SparseIntArray();
        super.setOnScrollListener(this.f4207q);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01a0  */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m10526h() {
        /*
            Method dump skipped, instructions count: 443
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callerid.block.customview.ObservableListView.m10526h():void");
    }

    public int getCurrentScrollY() {
        return this.f4196f;
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (m10528f()) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        if (motionEvent.getActionMasked() == 0) {
            this.f4202l = true;
            this.f4201k = true;
            m10531c();
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.AbsListView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        this.f4192b = savedState.f4208b;
        this.f4193c = savedState.f4209c;
        this.f4194d = savedState.f4210d;
        this.f4195e = savedState.f4211e;
        this.f4196f = savedState.f4212f;
        this.f4197g = savedState.f4213g;
        super.onRestoreInstanceState(savedState.getSuperState());
    }

    @Override // android.widget.AbsListView, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f4208b = this.f4192b;
        savedState.f4209c = this.f4193c;
        savedState.f4210d = this.f4194d;
        savedState.f4211e = this.f4195e;
        savedState.f4212f = this.f4196f;
        savedState.f4213g = this.f4197g;
        return savedState;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001e, code lost:
        if (r0 != 3) goto L_0x012f;
     */
    @Override // android.widget.AbsListView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r6) {
        /*
            Method dump skipped, instructions count: 321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callerid.block.customview.ObservableListView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.AbsListView
    public void setOnScrollListener(AbsListView.OnScrollListener onScrollListener) {
        this.f4206p = onScrollListener;
    }

    public void setScrollViewCallbacks(AbstractC0941c cVar) {
        this.f4198h = cVar;
    }

    public void setTouchInterceptionViewGroup(ViewGroup viewGroup) {
        this.f4205o = viewGroup;
    }
}
