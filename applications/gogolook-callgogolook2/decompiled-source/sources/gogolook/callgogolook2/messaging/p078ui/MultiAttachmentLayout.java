package gogolook.callgogolook2.messaging.p078ui;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationSet;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import android.widget.TextView;
import gogolook.callgogolook2.R$dimen;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.messaging.datamodel.data.MediaPickerMessagePartData;
import gogolook.callgogolook2.messaging.datamodel.data.MessagePartData;
import gogolook.callgogolook2.messaging.datamodel.data.PendingAttachmentData;
import gogolook.callgogolook2.messaging.p078ui.AsyncImageView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import p459j.p460a.p474c0.p491g.C11904a;
import p459j.p460a.p474c0.p499h.C12143b;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12212s0;
/* renamed from: gogolook.callgogolook2.messaging.ui.MultiAttachmentLayout */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/MultiAttachmentLayout.class */
public class MultiAttachmentLayout extends FrameLayout {

    /* renamed from: g */
    public static final C4691a[] f11492g = {null, null, new C4691a(new C4693c[]{C4693c.m27344c(0, 0), C4693c.m27344c(2, 0)}), new C4691a(new C4693c[]{C4693c.m27344c(0, 0), C4693c.m27342e(2, 0), C4693c.m27342e(2, 1)}), new C4691a(new C4693c[]{C4693c.m27344c(0, 0), C4693c.m27342e(2, 0), C4693c.m27343d(2, 1), C4693c.m27343d(3, 1)})};

    /* renamed from: h */
    public static final C4691a[] f11493h = {null, null, new C4691a(new C4693c[]{C4693c.m27344c(2, 0), C4693c.m27344c(0, 0)}), new C4691a(new C4693c[]{C4693c.m27344c(2, 0), C4693c.m27342e(0, 0), C4693c.m27342e(0, 1)}), new C4691a(new C4693c[]{C4693c.m27344c(2, 0), C4693c.m27342e(0, 0), C4693c.m27343d(1, 1), C4693c.m27343d(0, 1)})};

    /* renamed from: a */
    public C4691a f11494a;

    /* renamed from: b */
    public ArrayList<C4694d> f11495b = new ArrayList<>();

    /* renamed from: c */
    public int f11496c;

    /* renamed from: d */
    public TextView f11497d;

    /* renamed from: e */
    public AbstractC4692b f11498e;

    /* renamed from: f */
    public AsyncImageView.C4678b f11499f;

    /* renamed from: gogolook.callgogolook2.messaging.ui.MultiAttachmentLayout$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/MultiAttachmentLayout$a.class */
    public static class C4691a {

        /* renamed from: a */
        public final List<C4693c> f11500a;

        public C4691a(C4693c[] cVarArr) {
            this.f11500a = Arrays.asList(cVarArr);
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.MultiAttachmentLayout$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/MultiAttachmentLayout$b.class */
    public interface AbstractC4692b {
        /* renamed from: a */
        boolean mo27122a(MessagePartData messagePartData, Rect rect);

        /* renamed from: b */
        boolean mo27113b(MessagePartData messagePartData, Rect rect);
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.MultiAttachmentLayout$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/MultiAttachmentLayout$c.class */
    public static class C4693c {

        /* renamed from: a */
        public final int f11501a;

        /* renamed from: b */
        public final int f11502b;

        /* renamed from: c */
        public final int f11503c;

        public C4693c(int i, int i2, int i3) {
            this.f11501a = i;
            this.f11502b = i2;
            this.f11503c = i3;
        }

        /* renamed from: c */
        public static C4693c m27344c(int i, int i2) {
            return new C4693c(0, i, i2);
        }

        /* renamed from: d */
        public static C4693c m27343d(int i, int i2) {
            return new C4693c(2, i, i2);
        }

        /* renamed from: e */
        public static C4693c m27342e(int i, int i2) {
            return new C4693c(1, i, i2);
        }

        /* renamed from: a */
        public int m27348a(int i, int i2) {
            if (this.f11501a != 0) {
                i = i2;
            }
            return View.MeasureSpec.makeMeasureSpec(i, 1073741824);
        }

        /* renamed from: a */
        public int m27347a(int i, int i2, int i3) {
            int i4 = this.f11502b;
            if (i4 <= 0) {
                return 0;
            }
            int i5 = i + i3;
            int i6 = i5;
            if (i4 > 2) {
                i6 = i5 + i2 + i3;
            }
            return i6;
        }

        /* renamed from: b */
        public int m27346b(int i, int i2) {
            if (this.f11501a == 2) {
                i = i2;
            }
            return View.MeasureSpec.makeMeasureSpec(i, 1073741824);
        }

        /* renamed from: b */
        public int m27345b(int i, int i2, int i3) {
            return this.f11503c == 1 ? i2 + i3 : 0;
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.MultiAttachmentLayout$d */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/MultiAttachmentLayout$d.class */
    public static class C4694d {

        /* renamed from: a */
        public final View f11504a;

        /* renamed from: b */
        public final MessagePartData f11505b;

        /* renamed from: c */
        public boolean f11506c;

        /* renamed from: d */
        public int f11507d;

        /* renamed from: e */
        public int f11508e;

        /* renamed from: f */
        public int f11509f;

        /* renamed from: g */
        public int f11510g;

        public C4694d(View view, MessagePartData messagePartData) {
            this.f11504a = view;
            this.f11505b = messagePartData;
        }
    }

    public MultiAttachmentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    public View m27355a(MessagePartData messagePartData) {
        Iterator<C4694d> it = this.f11495b.iterator();
        while (it.hasNext()) {
            C4694d next = it.next();
            if (next.f11505b.equals(messagePartData) && !(next.f11505b instanceof PendingAttachmentData)) {
                return next.f11504a;
            }
        }
        return null;
    }

    /* renamed from: a */
    public void m27357a() {
        Iterator<C4694d> it = this.f11495b.iterator();
        while (it.hasNext()) {
            C4694d next = it.next();
            View view = next.f11504a;
            if (view instanceof AsyncImageView) {
                ((AsyncImageView) view).clearColorFilter();
            }
            View view2 = next.f11504a;
            if (view2 instanceof MaskAsyncImageView) {
                int childCount = ((MaskAsyncImageView) view2).getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = ((MaskAsyncImageView) next.f11504a).getChildAt(i);
                    if (childAt != null && (childAt instanceof AsyncImageView)) {
                        ((AsyncImageView) childAt).clearColorFilter();
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public void m27356a(int i) {
        Iterator<C4694d> it = this.f11495b.iterator();
        while (it.hasNext()) {
            C4694d next = it.next();
            View view = next.f11504a;
            if (view instanceof AsyncImageView) {
                ((AsyncImageView) view).setColorFilter(i);
            }
            View view2 = next.f11504a;
            if (view2 instanceof MaskAsyncImageView) {
                int childCount = ((MaskAsyncImageView) view2).getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = ((MaskAsyncImageView) next.f11504a).getChildAt(i2);
                    if (childAt != null && (childAt instanceof AsyncImageView)) {
                        ((AsyncImageView) childAt).setColorFilter(i);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public void m27354a(AsyncImageView.C4678b bVar) {
        this.f11499f = bVar;
    }

    /* renamed from: a */
    public void m27353a(AbstractC4692b bVar) {
        this.f11498e = bVar;
    }

    /* renamed from: a */
    public final void m27352a(C4694d dVar) {
        if (dVar.f11505b instanceof MediaPickerMessagePartData) {
            View view = dVar.f11504a;
            int left = dVar.f11507d - view.getLeft();
            int top = dVar.f11508e - view.getTop();
            float width = dVar.f11509f / view.getWidth();
            float height = dVar.f11510g / view.getHeight();
            if (left != 0 || top != 0 || width != 1.0f || height != 1.0f) {
                AnimationSet animationSet = new AnimationSet(true);
                animationSet.addAnimation(new TranslateAnimation(left, 0.0f, top, 0.0f));
                animationSet.addAnimation(new ScaleAnimation(width, 1.0f, height, 1.0f));
                animationSet.setDuration(C12212s0.f27369a);
                animationSet.setInterpolator(C12212s0.f27372d);
                view.startAnimation(animationSet);
                view.invalidate();
                dVar.f11507d = view.getLeft();
                dVar.f11508e = view.getTop();
                dVar.f11509f = view.getWidth();
                dVar.f11510g = view.getHeight();
            }
        }
    }

    /* renamed from: a */
    public final void m27351a(Iterable<MessagePartData> iterable, int i) {
        boolean z = false;
        C12151d.m6999b(iterable != null);
        if (C12143b.m7029a(getRootView())) {
            C4691a[] aVarArr = f11493h;
            this.f11494a = aVarArr[Math.min(i, aVarArr.length - 1)];
        } else {
            C4691a[] aVarArr2 = f11492g;
            this.f11494a = aVarArr2[Math.min(i, aVarArr2.length - 1)];
        }
        C12151d.m7000b(this.f11494a);
        this.f11496c = i - this.f11494a.f11500a.size();
        if (this.f11496c >= 0) {
            z = true;
        }
        C12151d.m6999b(z);
    }

    /* renamed from: a */
    public void m27350a(Iterable<MessagePartData> iterable, Rect rect, int i) {
        ArrayList<C4694d> arrayList = this.f11495b;
        this.f11495b = new ArrayList<>();
        removeView(this.f11497d);
        this.f11497d = null;
        m27351a(iterable, i);
        m27349a(iterable, arrayList, rect);
        Iterator<C4694d> it = arrayList.iterator();
        while (it.hasNext()) {
            removeView(it.next().f11504a);
        }
        requestLayout();
    }

    /* renamed from: a */
    public final void m27349a(Iterable<MessagePartData> iterable, ArrayList<C4694d> arrayList, Rect rect) {
        AsyncImageView.C4678b bVar;
        LayoutInflater from = LayoutInflater.from(getContext());
        int size = this.f11494a.f11500a.size();
        Iterator<MessagePartData> it = iterable.iterator();
        int i = 0;
        while (true) {
            C4694d dVar = null;
            boolean z = true;
            if (!it.hasNext() || i >= size) {
                break;
            }
            MessagePartData next = it.next();
            int i2 = 0;
            while (true) {
                if (i2 >= arrayList.size()) {
                    break;
                }
                dVar = arrayList.get(i2);
                if (dVar.f11505b.equals(next) && !(dVar.f11505b instanceof PendingAttachmentData)) {
                    arrayList.remove(i2);
                    break;
                }
                i2++;
            }
            if (dVar == null) {
                View a = C11904a.m7956a(from, next, this, 2, false, this.f11498e);
                if (a != null) {
                    if ((a instanceof MaskAsyncImageView) && (bVar = this.f11499f) != null) {
                        ((MaskAsyncImageView) a).m27361a(bVar);
                    }
                    addView(a);
                    C4694d dVar2 = new C4694d(a, next);
                    dVar = dVar2;
                    if (size == 2) {
                        dVar = dVar2;
                        if (i == 1) {
                            dVar = dVar2;
                            if (rect != null) {
                                dVar2.f11507d = rect.left;
                                dVar2.f11508e = rect.top;
                                dVar2.f11509f = rect.width();
                                dVar2.f11510g = rect.height();
                                dVar = dVar2;
                            }
                        }
                    }
                }
            }
            i++;
            C12151d.m7000b(dVar);
            this.f11495b.add(dVar);
            if (i == 0) {
                AttachmentPreview.m27433a(next, dVar.f11504a);
            }
            if (i <= 0) {
                z = false;
            }
            dVar.f11506c = z;
        }
        int i3 = 0;
        while (i3 < this.f11495b.size()) {
            View findViewById = this.f11495b.get(i3).f11504a.findViewById(R$id.video_thumbnail_play_button);
            if (findViewById != null) {
                ((FrameLayout.LayoutParams) findViewById.getLayoutParams()).gravity = (i3 == 0 || (size == 2 && i3 == 1)) ? 8388693 : 17;
            }
            i3++;
        }
        if (this.f11496c > 0) {
            this.f11497d = (TextView) from.inflate(R$layout.attachment_more_text_view, (ViewGroup) null);
            this.f11497d.setText(getResources().getString(R$string.attachment_more_items_default, Integer.valueOf(this.f11496c)));
            addView(this.f11497d);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        TextView textView;
        int dimensionPixelOffset = getResources().getDimensionPixelOffset(R$dimen.app_multiple_attachment_preview_padding);
        int measuredHeight = getMeasuredHeight();
        int i5 = (measuredHeight - dimensionPixelOffset) / 2;
        int size = this.f11495b.size();
        for (int i6 = 0; i6 < size; i6++) {
            C4694d dVar = this.f11495b.get(i6);
            View view = dVar.f11504a;
            C4693c cVar = this.f11494a.f11500a.get(i6);
            int a = cVar.m27347a(measuredHeight, i5, dimensionPixelOffset);
            int b = cVar.m27345b(measuredHeight, i5, dimensionPixelOffset);
            view.layout(a, b, view.getMeasuredWidth() + a, view.getMeasuredHeight() + b);
            if (dVar.f11506c) {
                m27352a(dVar);
                dVar.f11506c = false;
            } else {
                dVar.f11507d = view.getLeft();
                dVar.f11508e = view.getTop();
                dVar.f11509f = view.getWidth();
                dVar.f11510g = view.getHeight();
            }
            if (i6 == size - 1 && (textView = this.f11497d) != null) {
                textView.layout(a, b, textView.getMeasuredWidth() + a, this.f11497d.getMeasuredHeight() + b);
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        TextView textView;
        int dimensionPixelSize = getResources().getDimensionPixelSize(R$dimen.app_multiple_attachment_preview_width);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R$dimen.app_multiple_attachment_preview_height);
        int min = Math.min(View.MeasureSpec.getSize(i), dimensionPixelSize);
        int dimensionPixelOffset = (dimensionPixelSize2 - getResources().getDimensionPixelOffset(R$dimen.app_multiple_attachment_preview_padding)) / 2;
        int size = this.f11495b.size();
        for (int i3 = 0; i3 < size; i3++) {
            View view = this.f11495b.get(i3).f11504a;
            C4693c cVar = this.f11494a.f11500a.get(i3);
            view.measure(cVar.m27346b(dimensionPixelSize2, dimensionPixelOffset), cVar.m27348a(dimensionPixelSize2, dimensionPixelOffset));
            if (view instanceof MaskAsyncImageView) {
                ((MaskAsyncImageView) view).m27360a(C11904a.m7955a(this.f11495b.get(i3).f11505b, view.getMeasuredWidth(), view.getMeasuredHeight()));
            }
            if (view instanceof AsyncImageView) {
                ((AsyncImageView) view).m27439b(C11904a.m7955a(this.f11495b.get(i3).f11505b, view.getMeasuredWidth(), view.getMeasuredHeight()));
            }
            if (i3 == size - 1 && (textView = this.f11497d) != null) {
                textView.measure(cVar.m27346b(dimensionPixelSize2, dimensionPixelOffset), cVar.m27348a(dimensionPixelSize2, dimensionPixelOffset));
            }
        }
        setMeasuredDimension(min, dimensionPixelSize2);
    }
}
