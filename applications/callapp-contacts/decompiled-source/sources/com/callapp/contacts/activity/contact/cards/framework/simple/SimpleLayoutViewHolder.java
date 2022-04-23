package com.callapp.contacts.activity.contact.cards.framework.simple;

import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.d.e;
import com.bumptech.glide.e.a.j;
import com.bumptech.glide.e.g;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.engine.GlideException;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.cards.framework.simple.SimpleCardListObject;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.util.StringUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import it.gmariotti.cardslib.library.a.k;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder.class */
public class SimpleLayoutViewHolder<O extends SimpleCardListObject> {

    /* renamed from: a  reason: collision with root package name */
    final View f11933a;

    /* renamed from: b  reason: collision with root package name */
    private final View f11934b;

    /* renamed from: c  reason: collision with root package name */
    private final ViewGroup f11935c;

    /* renamed from: d  reason: collision with root package name */
    private final ViewGroup f11936d;
    private final TextView e;
    private final TextView f;
    private final ImageView g;
    private final ProfilePictureView h;
    private final ImageView i;
    private final ImageView j;
    private final ImageView k;
    private final ImageView l;
    private Task m;
    private int n = 16;
    private final Drawable o;
    private final Drawable p;
    private final Drawable q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.contact.cards.framework.simple.SimpleLayoutViewHolder$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1.class */
    public class AnonymousClass1 extends Task {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SimpleCardListObject f11937a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ LeftIconType f11938b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Context f11939c;

        AnonymousClass1(SimpleCardListObject simpleCardListObject, LeftIconType leftIconType, Context context) {
            this.f11937a = simpleCardListObject;
            this.f11938b = leftIconType;
            this.f11939c = context;
        }

        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            if (!isCancelled()) {
                final String imageUrl = this.f11937a.getImageUrl();
                if (StringUtils.b((CharSequence) imageUrl)) {
                    GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(imageUrl);
                    glideRequestBuilder.n = new g<Drawable>() { // from class: com.callapp.contacts.activity.contact.cards.framework.simple.SimpleLayoutViewHolder.1.1
                        @Override // com.bumptech.glide.e.g
                        public final boolean a(GlideException glideException, Object obj, j<Drawable> jVar, boolean z) {
                            if (AnonymousClass1.this.isCancelled()) {
                                return false;
                            }
                            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.framework.simple.SimpleLayoutViewHolder.1.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (!AnonymousClass1.this.isCancelled()) {
                                        SimpleLayoutViewHolder.this.a(AnonymousClass1.this.f11938b, (LeftIconType) AnonymousClass1.this.f11937a);
                                    }
                                }
                            });
                            return false;
                        }

                        @Override // com.bumptech.glide.e.g
                        public final /* synthetic */ boolean a(Drawable drawable, Object obj, j<Drawable> jVar, a aVar, boolean z) {
                            Drawable drawable2 = drawable;
                            String str = null;
                            AnonymousClass1.this.f11937a.setLeftImage(drawable2 != null ? drawable2 : null);
                            SimpleCardListObject simpleCardListObject = AnonymousClass1.this.f11937a;
                            if (drawable2 != null) {
                                str = imageUrl;
                            }
                            simpleCardListObject.setLoadedImageUrl(str);
                            if (AnonymousClass1.this.isCancelled()) {
                                return false;
                            }
                            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.framework.simple.SimpleLayoutViewHolder.1.1.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (!AnonymousClass1.this.isCancelled()) {
                                        SimpleLayoutViewHolder.this.a(AnonymousClass1.this.f11938b, (LeftIconType) AnonymousClass1.this.f11937a);
                                    }
                                }
                            });
                            return false;
                        }
                    };
                    glideRequestBuilder.e = this.f11939c;
                    glideRequestBuilder.c();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.contact.cards.framework.simple.SimpleLayoutViewHolder$2  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$2.class */
    public static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f11945a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[LeftIconType.values().length];
            f11945a = iArr;
            try {
                iArr[LeftIconType.SIMPLE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f11945a[LeftIconType.LOADED_IMAGE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType.class */
    public enum LeftIconType {
        SIMPLE,
        LOADED_IMAGE;

        /* JADX INFO: Access modifiers changed from: private */
        public static LeftIconType getType(SimpleCardListObject simpleCardListObject) {
            return StringUtils.b((CharSequence) simpleCardListObject.getImageUrl()) ? LOADED_IMAGE : SIMPLE;
        }
    }

    public SimpleLayoutViewHolder(View view) {
        this.f11934b = view;
        ViewGroup viewGroup = (ViewGroup) view.findViewById(2131362252);
        this.f11935c = viewGroup;
        this.q = viewGroup.getBackground();
        this.f11936d = (ViewGroup) view.findViewById(2131362259);
        this.e = (TextView) view.findViewById(2131363131);
        this.f = (TextView) view.findViewById(2131363129);
        ImageView imageView = (ImageView) view.findViewById(2131362254);
        this.g = imageView;
        this.o = imageView.getBackground();
        this.k = (ImageView) view.findViewById(2131362255);
        ImageView imageView2 = (ImageView) view.findViewById(2131362257);
        this.l = imageView2;
        this.h = (ProfilePictureView) view.findViewById(2131363560);
        this.i = (ImageView) view.findViewById(2131362256);
        this.j = (ImageView) view.findViewById(2131362253);
        this.p = imageView2.getBackground();
        this.f11933a = view.findViewById(2131362269);
    }

    private void a(int i, Integer num, int i2) {
        a(this.l, i, num, i2, true);
    }

    private void a(int i, Integer num, int i2, boolean z) {
        a(this.i, i, num, i2, z);
    }

    private void a(Pair<String, String> pair, int i, Integer num, int i2, PorterDuff.Mode mode) {
        a(this.h, pair, i, num, i2, mode);
    }

    private static void a(View view, View.OnClickListener onClickListener, Drawable drawable) {
        if (view != null) {
            view.setOnClickListener(onClickListener);
            view.setClickable(onClickListener != null);
            if (Build.VERSION.SDK_INT >= 21) {
                Drawable drawable2 = drawable;
                if (onClickListener == null) {
                    drawable2 = drawable;
                    if (drawable instanceof RippleDrawable) {
                        drawable2 = null;
                    }
                }
                view.setBackground(drawable2);
            }
        }
    }

    private static void a(ImageView imageView, int i, Integer num, int i2, boolean z) {
        if (imageView != null) {
            if (i == 0) {
                i2 = 8;
            }
            imageView.setVisibility(i2);
            ImageUtils.a(imageView, i, (ColorFilter) null);
            a(imageView, num);
            imageView.setEnabled(z);
        }
    }

    private static void a(ImageView imageView, Drawable drawable, Drawable drawable2, Integer num, int i) {
        if (imageView != null) {
            if (drawable2 == null) {
                ImageUtils.a(imageView, drawable);
            } else {
                ImageUtils.a(imageView, drawable2);
            }
            imageView.setVisibility(i);
            a(imageView, num);
        }
    }

    private static void a(ImageView imageView, Integer num) {
        if (num == null) {
            return;
        }
        if (num.intValue() == 0) {
            imageView.setColorFilter((ColorFilter) null);
        } else {
            imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.a(CallAppApplication.get(), num.intValue()), PorterDuff.Mode.SRC_IN));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(LeftIconType leftIconType, O o) {
        int i = AnonymousClass2.f11945a[leftIconType.ordinal()];
        if (i == 1) {
            a(this.g, o.getLeftIconDefaultDrawable(), o.getLeftIconDrawable(), Integer.valueOf(o.getLeftIconTintColor()), o.getLeftIconVisibility());
            this.k.setVisibility(8);
        } else if (i == 2) {
            a(this.k, o.getLeftIconDefaultDrawable(), o.getLeftIconDrawable(), (Integer) null, o.getLeftIconVisibility());
            this.g.setVisibility(8);
        }
    }

    private static void a(ProfilePictureView profilePictureView, Pair<String, String> pair, int i, Integer num, int i2, PorterDuff.Mode mode) {
        if (profilePictureView != null) {
            profilePictureView.setVisibility(i);
            if (pair.first != null) {
                GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder((String) pair.first);
                glideRequestBuilder.j = true;
                glideRequestBuilder.l = true;
                GlideUtils.GlideRequestBuilder a2 = glideRequestBuilder.a(i2, mode);
                a2.g = num;
                profilePictureView.a(a2);
            }
            profilePictureView.setText(StringUtils.r((String) pair.second));
        }
    }

    private void a(String str, int i) {
        TextView textView = this.f;
        if (textView != null) {
            textView.setVisibility(StringUtils.a((CharSequence) str) ? 8 : 0);
            this.f.setText(str);
            this.f.setCompoundDrawablesWithIntrinsicBounds(i, 0, 0, 0);
        }
    }

    private void b(int i, Integer num, int i2, boolean z) {
        a(this.j, i, num, i2, z);
    }

    private void setAllClickListeners(O o) {
        if (this.f11935c != null) {
            View.OnClickListener rowClickListener = o.getRowClickListener();
            View.OnLongClickListener rowLongClickListener = o.getRowLongClickListener();
            this.f11935c.setOnClickListener(rowClickListener);
            this.f11935c.setOnLongClickListener(rowLongClickListener);
            boolean z = (rowClickListener == null && rowLongClickListener == null) ? false : true;
            this.f11935c.setClickable(z);
            if (Build.VERSION.SDK_INT >= 21) {
                this.f11935c.setBackground((z || !(this.q instanceof RippleDrawable)) ? this.q : null);
            }
        }
        a(this.g, o.getLeftIconClickListener(), this.o);
        a(this.l, o.getRightIconClickListener(), this.p);
        a(this.i, o.getMiddleIconClickListener(), this.p);
        a(this.j, o.getEndIconClickListener(), this.p);
    }

    private void setBackground(Drawable drawable) {
        ViewGroup viewGroup = this.f11935c;
        if (viewGroup == null) {
            return;
        }
        if (drawable != null) {
            ViewUtils.a(viewGroup, drawable);
        } else if (Build.VERSION.SDK_INT < 21 || this.f11935c.isClickable() || !(this.q instanceof RippleDrawable)) {
            ViewUtils.a(this.f11935c, this.q);
        } else {
            ViewUtils.a(this.f11935c, (Drawable) null);
        }
    }

    private void setCardContentLayoutGravity(int i) {
        int a2 = (int) Activities.a(8.0f);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f11936d.getLayoutParams();
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.g.getLayoutParams();
        if (i == 16) {
            layoutParams.gravity = 16;
            layoutParams.topMargin = 0;
            layoutParams.bottomMargin = 0;
            ((LinearLayout) this.f11936d).setGravity(16);
            this.e.setGravity(16);
            TextView textView = this.e;
            textView.setPadding(textView.getPaddingLeft(), 0, this.e.getPaddingRight(), 0);
            layoutParams2.gravity = 16;
            layoutParams2.topMargin = 0;
            layoutParams2.bottomMargin = 0;
        } else if (i == 48) {
            layoutParams.gravity = 48;
            layoutParams.topMargin = a2;
            layoutParams.bottomMargin = 0;
            ((LinearLayout) this.f11936d).setGravity(48);
            TextView textView2 = this.e;
            textView2.setPadding(textView2.getPaddingLeft(), (int) Activities.a(10.0f), this.e.getPaddingRight(), 0);
            layoutParams2.gravity = 48;
            layoutParams2.topMargin = (int) Activities.a(14.0f);
            layoutParams2.bottomMargin = 0;
        } else if (i == 80) {
            layoutParams.gravity = 80;
            layoutParams.topMargin = 0;
            layoutParams.bottomMargin = a2;
            ((LinearLayout) this.f11936d).setGravity(80);
            this.e.setGravity(80);
            TextView textView3 = this.e;
            textView3.setPadding(textView3.getPaddingLeft(), 0, this.e.getPaddingRight(), (int) Activities.a(10.0f));
            layoutParams2.gravity = 80;
            layoutParams2.topMargin = 0;
            layoutParams2.bottomMargin = (int) Activities.a(14.0f);
        }
        this.f11936d.setLayoutParams(layoutParams);
        this.g.setLayoutParams(layoutParams2);
        this.n = i;
    }

    private void setRowTextContainerBackground(Drawable drawable) {
        ViewUtils.a(this.f11936d, drawable);
    }

    private void setSubtitleTextColor(int i) {
        TextView textView = this.f;
        if (textView != null) {
            textView.setTextColor(ThemeUtils.getColor(2131099923));
        }
    }

    private void setSubtitleTextStyle(int i) {
        TextView textView = this.f;
        if (textView != null) {
            textView.setGravity(ThemeUtils.a(textView.getContext(), i, this.f.getGravity()));
            ViewUtils.a(this.f, i);
        }
    }

    private void setTitleAllCaps(boolean z) {
        TextView textView = this.e;
        if (textView != null) {
            textView.setAllCaps(z);
        }
    }

    private void setTitleText(String str) {
        TextView textView = this.e;
        if (textView != null) {
            textView.setText(androidx.core.d.a.a(Locale.getDefault()).a(str, e.f));
        }
    }

    private void setTitleTextColor(int i) {
        TextView textView = this.e;
        if (textView != null) {
            textView.setTextColor(ThemeUtils.a(CallAppApplication.get(), i));
        }
    }

    private void setTitleTextStyle(int i) {
        TextView textView = this.e;
        if (textView != null) {
            textView.setGravity(ThemeUtils.a(textView.getContext(), i, this.e.getGravity()));
            ViewUtils.a(this.e, i);
        }
    }

    public final void a(O o, int i, Context context) {
        Task task = this.m;
        if (task != null) {
            task.markAsCancelWithoutCancelling();
        }
        if (o != null) {
            if (o.getViewHeight() > 0) {
                setViewHeight(o.getViewHeight());
            } else {
                setViewHeight(i);
            }
            setAllClickListeners(o);
            if (o.getCardContentGravity() != this.n) {
                setCardContentLayoutGravity(o.getCardContentGravity());
            }
            setBackground(o.getBackgroundDrawable());
            setRowTextContainerBackground(o.getTextBackgroundDrawable());
            setTitleText(o.getTitle());
            setTitleAllCaps(o.isTitleAllCaps());
            setTitleTextStyle(o.getFirstItemTitleStyle());
            setTitleTextColor(o.getFirstItemTitleColor());
            a(o.getSubtitle(), o.getSubTextIconResId());
            setSubtitleTextStyle(o.getFirstItemSubTitleStyle());
            setSubtitleTextColor(o.getFirstItemSubTitleColor());
            a(o.getRightIconResId(), Integer.valueOf(o.getRightIconTintColor()), o.getRightIconVisibility());
            a(o.getMiddleIconResId(), Integer.valueOf(o.getMiddleIconTintColor()), o.getMiddleIconVisibility(), o.getMiddleIconEnabled());
            b(o.getEndIconResId(), Integer.valueOf(o.getEndIconTintColor()), o.getEndIconVisibility(), o.getEndIconIsEnable());
            a(o.getProfilePicturePhotoAndName(), o.getProfilePictureViewVisibility(), o.getBackgroundColor(), o.getColorFilter(), o.getColorFilterMode());
            LeftIconType type = LeftIconType.getType(o);
            a(type, (LeftIconType) o);
            if (type == LeftIconType.LOADED_IMAGE && !StringUtils.b(o.getImageUrl(), o.getLoadedImageUrl())) {
                this.m = new AnonymousClass1(o, type, context).execute();
            }
        }
    }

    public final void a(SimpleExpandableCard simpleExpandableCard, boolean z) {
        int i = 8;
        if (z) {
            View view = this.f11933a;
            if (simpleExpandableCard.showShouldExpandButton()) {
                i = 0;
            }
            view.setVisibility(i);
            this.f11933a.setRotation(simpleExpandableCard.isExpanded() ? 180.0f : BitmapDescriptorFactory.HUE_RED);
            simpleExpandableCard.setViewToClickToExpand(k.a().a(this.f11933a));
            return;
        }
        i = simpleExpandableCard.alignRowsWithFirstRowExpandButton() ? 4 : 8;
        View view2 = this.f11933a;
        if (simpleExpandableCard.showShouldExpandButton()) {
        }
        view2.setVisibility(i);
    }

    public View getRoot() {
        return this.f11934b;
    }

    public void setRowContainerOpacity(boolean z) {
        ViewGroup viewGroup = this.f11935c;
        if (viewGroup != null && this.g != null && this.l != null) {
            if (z) {
                viewGroup.setAlpha(1.0f);
                this.g.setEnabled(true);
                this.l.setEnabled(true);
                this.f11935c.setEnabled(true);
                return;
            }
            viewGroup.setAlpha(0.5f);
            this.g.setEnabled(false);
            this.l.setEnabled(false);
            this.f11935c.setEnabled(false);
        }
    }

    public void setViewHeight(int i) {
        ViewUtils.g(this.f11934b, i);
    }
}
