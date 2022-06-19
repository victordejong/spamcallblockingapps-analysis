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
import androidx.core.p035d.C0811a;
import androidx.core.p035d.C0819e;
import com.bumptech.glide.load.EnumC3658a;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.p112e.AbstractC3604g;
import com.bumptech.glide.p112e.p113a.AbstractC3585j;
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
import it.gmariotti.cardslib.library.p510a.C18099k;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder.class */
public class SimpleLayoutViewHolder<O extends SimpleCardListObject> {

    /* renamed from: a */
    final View f21558a;

    /* renamed from: b */
    private final View f21559b;

    /* renamed from: c */
    private final ViewGroup f21560c;

    /* renamed from: d */
    private final ViewGroup f21561d;

    /* renamed from: e */
    private final TextView f21562e;

    /* renamed from: f */
    private final TextView f21563f;

    /* renamed from: g */
    private final ImageView f21564g;

    /* renamed from: h */
    private final ProfilePictureView f21565h;

    /* renamed from: i */
    private final ImageView f21566i;

    /* renamed from: j */
    private final ImageView f21567j;

    /* renamed from: k */
    private final ImageView f21568k;

    /* renamed from: l */
    private final ImageView f21569l;

    /* renamed from: m */
    private Task f21570m;

    /* renamed from: n */
    private int f21571n = 16;

    /* renamed from: o */
    private final Drawable f21572o;

    /* renamed from: p */
    private final Drawable f21573p;

    /* renamed from: q */
    private final Drawable f21574q;

    /* renamed from: com.callapp.contacts.activity.contact.cards.framework.simple.SimpleLayoutViewHolder$1 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1.class */
    public class C61221 extends Task {

        /* renamed from: a */
        final /* synthetic */ SimpleCardListObject f21575a;

        /* renamed from: b */
        final /* synthetic */ LeftIconType f21576b;

        /* renamed from: c */
        final /* synthetic */ Context f21577c;

        C61221(SimpleCardListObject simpleCardListObject, LeftIconType leftIconType, Context context) {
            SimpleLayoutViewHolder.this = r4;
            this.f21575a = simpleCardListObject;
            this.f21576b = leftIconType;
            this.f21577c = context;
        }

        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            if (!isCancelled()) {
                final String imageUrl = this.f21575a.getImageUrl();
                if (!StringUtils.m26045b((CharSequence) imageUrl)) {
                    return;
                }
                GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(imageUrl);
                glideRequestBuilder.f28248n = new AbstractC3604g<Drawable>() { // from class: com.callapp.contacts.activity.contact.cards.framework.simple.SimpleLayoutViewHolder.1.1
                    @Override // com.bumptech.glide.p112e.AbstractC3604g
                    /* renamed from: a */
                    public final boolean mo26384a(GlideException glideException, Object obj, AbstractC3585j<Drawable> abstractC3585j, boolean z) {
                        if (!C61221.this.isCancelled()) {
                            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.framework.simple.SimpleLayoutViewHolder.1.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (!C61221.this.isCancelled()) {
                                        SimpleLayoutViewHolder.this.m31047a(C61221.this.f21576b, (LeftIconType) C61221.this.f21575a);
                                    }
                                }
                            });
                            return false;
                        }
                        return false;
                    }

                    @Override // com.bumptech.glide.p112e.AbstractC3604g
                    /* renamed from: a */
                    public final /* synthetic */ boolean mo26383a(Drawable drawable, Object obj, AbstractC3585j<Drawable> abstractC3585j, EnumC3658a enumC3658a, boolean z) {
                        Drawable drawable2 = drawable;
                        C61221.this.f21575a.setLeftImage(drawable2 != null ? drawable2 : null);
                        SimpleCardListObject simpleCardListObject = C61221.this.f21575a;
                        String str = null;
                        if (drawable2 != null) {
                            str = imageUrl;
                        }
                        simpleCardListObject.setLoadedImageUrl(str);
                        if (!C61221.this.isCancelled()) {
                            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.framework.simple.SimpleLayoutViewHolder.1.1.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (!C61221.this.isCancelled()) {
                                        SimpleLayoutViewHolder.this.m31047a(C61221.this.f21576b, (LeftIconType) C61221.this.f21575a);
                                    }
                                }
                            });
                            return false;
                        }
                        return false;
                    }
                };
                glideRequestBuilder.f28239e = this.f21577c;
                glideRequestBuilder.m27015c();
            }
        }
    }

    /* renamed from: com.callapp.contacts.activity.contact.cards.framework.simple.SimpleLayoutViewHolder$2 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$2.class */
    public static /* synthetic */ class C61262 {

        /* renamed from: a */
        static final /* synthetic */ int[] f21583a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[LeftIconType.values().length];
            f21583a = iArr;
            try {
                iArr[LeftIconType.SIMPLE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f21583a[LeftIconType.LOADED_IMAGE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType.class */
    public enum LeftIconType {
        SIMPLE,
        LOADED_IMAGE;

        public static LeftIconType getType(SimpleCardListObject simpleCardListObject) {
            return StringUtils.m26045b((CharSequence) simpleCardListObject.getImageUrl()) ? LOADED_IMAGE : SIMPLE;
        }
    }

    public SimpleLayoutViewHolder(View view) {
        this.f21559b = view;
        ViewGroup viewGroup = (ViewGroup) view.findViewById(2131362252);
        this.f21560c = viewGroup;
        this.f21574q = viewGroup.getBackground();
        this.f21561d = (ViewGroup) view.findViewById(2131362259);
        this.f21562e = (TextView) view.findViewById(2131363131);
        this.f21563f = (TextView) view.findViewById(2131363129);
        ImageView imageView = (ImageView) view.findViewById(2131362254);
        this.f21564g = imageView;
        this.f21572o = imageView.getBackground();
        this.f21568k = (ImageView) view.findViewById(2131362255);
        ImageView imageView2 = (ImageView) view.findViewById(2131362257);
        this.f21569l = imageView2;
        this.f21565h = (ProfilePictureView) view.findViewById(2131363560);
        this.f21566i = (ImageView) view.findViewById(2131362256);
        this.f21567j = (ImageView) view.findViewById(2131362253);
        this.f21573p = imageView2.getBackground();
        this.f21558a = view.findViewById(2131362269);
    }

    /* renamed from: a */
    private void m31056a(int i, Integer num, int i2) {
        m31052a(this.f21569l, i, num, i2, true);
    }

    /* renamed from: a */
    private void m31055a(int i, Integer num, int i2, boolean z) {
        m31052a(this.f21566i, i, num, i2, z);
    }

    /* renamed from: a */
    private void m31054a(Pair<String, String> pair, int i, Integer num, int i2, PorterDuff.Mode mode) {
        m31045a(this.f21565h, pair, i, num, i2, mode);
    }

    /* renamed from: a */
    private static void m31053a(View view, View.OnClickListener onClickListener, Drawable drawable) {
        if (view != null) {
            view.setOnClickListener(onClickListener);
            view.setClickable(onClickListener != null);
            if (Build.VERSION.SDK_INT < 21) {
                return;
            }
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

    /* renamed from: a */
    private static void m31052a(ImageView imageView, int i, Integer num, int i2, boolean z) {
        if (imageView != null) {
            if (i == 0) {
                i2 = 8;
            }
            imageView.setVisibility(i2);
            ImageUtils.m27529a(imageView, i, (ColorFilter) null);
            m31050a(imageView, num);
            imageView.setEnabled(z);
        }
    }

    /* renamed from: a */
    private static void m31051a(ImageView imageView, Drawable drawable, Drawable drawable2, Integer num, int i) {
        if (imageView != null) {
            if (drawable2 == null) {
                ImageUtils.m27528a(imageView, drawable);
            } else {
                ImageUtils.m27528a(imageView, drawable2);
            }
            imageView.setVisibility(i);
            m31050a(imageView, num);
        }
    }

    /* renamed from: a */
    private static void m31050a(ImageView imageView, Integer num) {
        if (num != null) {
            if (num.intValue() == 0) {
                imageView.setColorFilter((ColorFilter) null);
            } else {
                imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.m27386a(CallAppApplication.get(), num.intValue()), PorterDuff.Mode.SRC_IN));
            }
        }
    }

    /* renamed from: a */
    public void m31047a(LeftIconType leftIconType, O o) {
        int i = C61262.f21583a[leftIconType.ordinal()];
        if (i == 1) {
            m31051a(this.f21564g, o.getLeftIconDefaultDrawable(), o.getLeftIconDrawable(), Integer.valueOf(o.getLeftIconTintColor()), o.getLeftIconVisibility());
            this.f21568k.setVisibility(8);
        } else if (i != 2) {
        } else {
            m31051a(this.f21568k, o.getLeftIconDefaultDrawable(), o.getLeftIconDrawable(), (Integer) null, o.getLeftIconVisibility());
            this.f21564g.setVisibility(8);
        }
    }

    /* renamed from: a */
    private static void m31045a(ProfilePictureView profilePictureView, Pair<String, String> pair, int i, Integer num, int i2, PorterDuff.Mode mode) {
        if (profilePictureView != null) {
            profilePictureView.setVisibility(i);
            if (pair.first != null) {
                GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder((String) pair.first);
                glideRequestBuilder.f28244j = true;
                glideRequestBuilder.f28246l = true;
                GlideUtils.GlideRequestBuilder m27025a = glideRequestBuilder.m27025a(i2, mode);
                m27025a.f28241g = num;
                profilePictureView.m26684a(m27025a);
            }
            profilePictureView.setText(StringUtils.m26010r((String) pair.second));
        }
    }

    /* renamed from: a */
    private void m31044a(String str, int i) {
        TextView textView = this.f21563f;
        if (textView != null) {
            textView.setVisibility(StringUtils.m26059a((CharSequence) str) ? 8 : 0);
            this.f21563f.setText(str);
            this.f21563f.setCompoundDrawablesWithIntrinsicBounds(i, 0, 0, 0);
        }
    }

    /* renamed from: b */
    private void m31043b(int i, Integer num, int i2, boolean z) {
        m31052a(this.f21567j, i, num, i2, z);
    }

    private void setAllClickListeners(O o) {
        if (this.f21560c != null) {
            View.OnClickListener rowClickListener = o.getRowClickListener();
            View.OnLongClickListener rowLongClickListener = o.getRowLongClickListener();
            this.f21560c.setOnClickListener(rowClickListener);
            this.f21560c.setOnLongClickListener(rowLongClickListener);
            boolean z = (rowClickListener == null && rowLongClickListener == null) ? false : true;
            this.f21560c.setClickable(z);
            if (Build.VERSION.SDK_INT >= 21) {
                this.f21560c.setBackground((z || !(this.f21574q instanceof RippleDrawable)) ? this.f21574q : null);
            }
        }
        m31053a(this.f21564g, o.getLeftIconClickListener(), this.f21572o);
        m31053a(this.f21569l, o.getRightIconClickListener(), this.f21573p);
        m31053a(this.f21566i, o.getMiddleIconClickListener(), this.f21573p);
        m31053a(this.f21567j, o.getEndIconClickListener(), this.f21573p);
    }

    private void setBackground(Drawable drawable) {
        ViewGroup viewGroup = this.f21560c;
        if (viewGroup != null) {
            if (drawable != null) {
                ViewUtils.m27320a(viewGroup, drawable);
            } else if (Build.VERSION.SDK_INT < 21 || this.f21560c.isClickable() || !(this.f21574q instanceof RippleDrawable)) {
                ViewUtils.m27320a(this.f21560c, this.f21574q);
            } else {
                ViewUtils.m27320a(this.f21560c, (Drawable) null);
            }
        }
    }

    private void setCardContentLayoutGravity(int i) {
        int m27699a = (int) Activities.m27699a(8.0f);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f21561d.getLayoutParams();
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f21564g.getLayoutParams();
        if (i == 16) {
            layoutParams.gravity = 16;
            layoutParams.topMargin = 0;
            layoutParams.bottomMargin = 0;
            ((LinearLayout) this.f21561d).setGravity(16);
            this.f21562e.setGravity(16);
            TextView textView = this.f21562e;
            textView.setPadding(textView.getPaddingLeft(), 0, this.f21562e.getPaddingRight(), 0);
            layoutParams2.gravity = 16;
            layoutParams2.topMargin = 0;
            layoutParams2.bottomMargin = 0;
        } else if (i == 48) {
            layoutParams.gravity = 48;
            layoutParams.topMargin = m27699a;
            layoutParams.bottomMargin = 0;
            ((LinearLayout) this.f21561d).setGravity(48);
            TextView textView2 = this.f21562e;
            textView2.setPadding(textView2.getPaddingLeft(), (int) Activities.m27699a(10.0f), this.f21562e.getPaddingRight(), 0);
            layoutParams2.gravity = 48;
            layoutParams2.topMargin = (int) Activities.m27699a(14.0f);
            layoutParams2.bottomMargin = 0;
        } else if (i == 80) {
            layoutParams.gravity = 80;
            layoutParams.topMargin = 0;
            layoutParams.bottomMargin = m27699a;
            ((LinearLayout) this.f21561d).setGravity(80);
            this.f21562e.setGravity(80);
            TextView textView3 = this.f21562e;
            textView3.setPadding(textView3.getPaddingLeft(), 0, this.f21562e.getPaddingRight(), (int) Activities.m27699a(10.0f));
            layoutParams2.gravity = 80;
            layoutParams2.topMargin = 0;
            layoutParams2.bottomMargin = (int) Activities.m27699a(14.0f);
        }
        this.f21561d.setLayoutParams(layoutParams);
        this.f21564g.setLayoutParams(layoutParams2);
        this.f21571n = i;
    }

    private void setRowTextContainerBackground(Drawable drawable) {
        ViewUtils.m27320a(this.f21561d, drawable);
    }

    private void setSubtitleTextColor(int i) {
        TextView textView = this.f21563f;
        if (textView != null) {
            textView.setTextColor(ThemeUtils.getColor(2131099923));
        }
    }

    private void setSubtitleTextStyle(int i) {
        TextView textView = this.f21563f;
        if (textView != null) {
            textView.setGravity(ThemeUtils.m27385a(textView.getContext(), i, this.f21563f.getGravity()));
            ViewUtils.m27327a(this.f21563f, i);
        }
    }

    private void setTitleAllCaps(boolean z) {
        TextView textView = this.f21562e;
        if (textView != null) {
            textView.setAllCaps(z);
        }
    }

    private void setTitleText(String str) {
        TextView textView = this.f21562e;
        if (textView != null) {
            textView.setText(C0811a.m44443a(Locale.getDefault()).m44444a(str, C0819e.f3548f));
        }
    }

    private void setTitleTextColor(int i) {
        TextView textView = this.f21562e;
        if (textView != null) {
            textView.setTextColor(ThemeUtils.m27386a(CallAppApplication.get(), i));
        }
    }

    private void setTitleTextStyle(int i) {
        TextView textView = this.f21562e;
        if (textView != null) {
            textView.setGravity(ThemeUtils.m27385a(textView.getContext(), i, this.f21562e.getGravity()));
            ViewUtils.m27327a(this.f21562e, i);
        }
    }

    /* renamed from: a */
    public final void m31049a(O o, int i, Context context) {
        Task task = this.f21570m;
        if (task != null) {
            task.markAsCancelWithoutCancelling();
        }
        if (o == null) {
            return;
        }
        if (o.getViewHeight() > 0) {
            setViewHeight(o.getViewHeight());
        } else {
            setViewHeight(i);
        }
        setAllClickListeners(o);
        if (o.getCardContentGravity() != this.f21571n) {
            setCardContentLayoutGravity(o.getCardContentGravity());
        }
        setBackground(o.getBackgroundDrawable());
        setRowTextContainerBackground(o.getTextBackgroundDrawable());
        setTitleText(o.getTitle());
        setTitleAllCaps(o.isTitleAllCaps());
        setTitleTextStyle(o.getFirstItemTitleStyle());
        setTitleTextColor(o.getFirstItemTitleColor());
        m31044a(o.getSubtitle(), o.getSubTextIconResId());
        setSubtitleTextStyle(o.getFirstItemSubTitleStyle());
        setSubtitleTextColor(o.getFirstItemSubTitleColor());
        m31056a(o.getRightIconResId(), Integer.valueOf(o.getRightIconTintColor()), o.getRightIconVisibility());
        m31055a(o.getMiddleIconResId(), Integer.valueOf(o.getMiddleIconTintColor()), o.getMiddleIconVisibility(), o.getMiddleIconEnabled());
        m31043b(o.getEndIconResId(), Integer.valueOf(o.getEndIconTintColor()), o.getEndIconVisibility(), o.getEndIconIsEnable());
        m31054a(o.getProfilePicturePhotoAndName(), o.getProfilePictureViewVisibility(), o.getBackgroundColor(), o.getColorFilter(), o.getColorFilterMode());
        LeftIconType type = LeftIconType.getType(o);
        m31047a(type, (LeftIconType) o);
        if (type != LeftIconType.LOADED_IMAGE || StringUtils.m26042b(o.getImageUrl(), o.getLoadedImageUrl())) {
            return;
        }
        this.f21570m = new C61221(o, type, context).execute();
    }

    /* renamed from: a */
    public final void m31048a(SimpleExpandableCard simpleExpandableCard, boolean z) {
        int i = 8;
        if (!z) {
            int i2 = simpleExpandableCard.alignRowsWithFirstRowExpandButton() ? 4 : 8;
            View view = this.f21558a;
            if (simpleExpandableCard.showShouldExpandButton()) {
                i = i2;
            }
            view.setVisibility(i);
            return;
        }
        View view2 = this.f21558a;
        if (simpleExpandableCard.showShouldExpandButton()) {
            i = 0;
        }
        view2.setVisibility(i);
        this.f21558a.setRotation(simpleExpandableCard.isExpanded() ? 180.0f : 0.0f);
        simpleExpandableCard.setViewToClickToExpand(C18099k.m4447a().m4446a(this.f21558a));
    }

    public View getRoot() {
        return this.f21559b;
    }

    public void setRowContainerOpacity(boolean z) {
        ViewGroup viewGroup = this.f21560c;
        if (viewGroup == null || this.f21564g == null || this.f21569l == null) {
            return;
        }
        if (z) {
            viewGroup.setAlpha(1.0f);
            this.f21564g.setEnabled(true);
            this.f21569l.setEnabled(true);
            this.f21560c.setEnabled(true);
            return;
        }
        viewGroup.setAlpha(0.5f);
        this.f21564g.setEnabled(false);
        this.f21569l.setEnabled(false);
        this.f21560c.setEnabled(false);
    }

    public void setViewHeight(int i) {
        ViewUtils.m27287g(this.f21559b, i);
    }
}
