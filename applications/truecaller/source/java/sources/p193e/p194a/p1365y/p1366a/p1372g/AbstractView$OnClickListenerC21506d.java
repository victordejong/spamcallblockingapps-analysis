package p193e.p194a.p1365y.p1366a.p1372g;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.gms.ads.RequestConfiguration;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.flashsdk.C3909R;
import com.truecaller.flashsdk.p166ui.UniformEmojiLayout;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p194a.p1365y.p1366a.p1372g.AbstractView$OnClickListenerC21506d.AbstractC21507a;
import p193e.p194a.p1365y.p1366a.p1379l.C21584c;
import p193e.p194a.p1365y.p1387e.C21733i;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018��*\b\b��\u0010\u0002*\u00020\u00012\u00020\u00032\u00020\u00042\u00020\u0005:\u0001[B'\b\u0007\u0012\u0006\u0010U\u001a\u00020T\u0012\n\b\u0002\u0010W\u001a\u0004\u0018\u00010V\u0012\b\b\u0002\u0010X\u001a\u00020\u0006¢\u0006\u0004\bY\u0010ZJ\u000f\u0010\u0007\u001a\u00020\u0006H'¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0017¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\fH\u0017¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u001d\u0010\u0016\u001a\u00020\t2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0017¢\u0006\u0004\b\u0016\u0010\u0017J\u0015\u0010\u001a\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\t2\b\b\u0001\u0010\u001c\u001a\u00020\u0006¢\u0006\u0004\b\u001d\u0010\u0012J\r\u0010\u001e\u001a\u00020\t¢\u0006\u0004\b\u001e\u0010\u000bJ\r\u0010\u001f\u001a\u00020\t¢\u0006\u0004\b\u001f\u0010\u000bJ\r\u0010 \u001a\u00020\t¢\u0006\u0004\b \u0010\u000bJ\r\u0010!\u001a\u00020\t¢\u0006\u0004\b!\u0010\u000bJ\r\u0010\"\u001a\u00020\t¢\u0006\u0004\b\"\u0010\u000bJ\r\u0010#\u001a\u00020\t¢\u0006\u0004\b#\u0010\u000bJ\u0015\u0010%\u001a\u00020\t2\u0006\u0010$\u001a\u00020\u0018¢\u0006\u0004\b%\u0010\u001bR\u0018\u0010)\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\"\u00101\u001a\u00020*8\u0004@\u0004X\u0084.¢\u0006\u0012\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\"\u00105\u001a\u00020*8\u0004@\u0004X\u0084.¢\u0006\u0012\n\u0004\b2\u0010,\u001a\u0004\b3\u0010.\"\u0004\b4\u00100R\"\u00108\u001a\u00020*8\u0004@\u0004X\u0084.¢\u0006\u0012\n\u0004\b\r\u0010,\u001a\u0004\b6\u0010.\"\u0004\b7\u00100R\"\u0010@\u001a\u0002098\u0004@\u0004X\u0084.¢\u0006\u0012\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R\"\u0010H\u001a\u00020A8\u0004@\u0004X\u0084.¢\u0006\u0012\n\u0004\bB\u0010C\u001a\u0004\bD\u0010E\"\u0004\bF\u0010GR\"\u0010L\u001a\u0002098\u0004@\u0004X\u0084.¢\u0006\u0012\n\u0004\bI\u0010;\u001a\u0004\bJ\u0010=\"\u0004\bK\u0010?R$\u0010S\u001a\u0004\u0018\u00018��8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bM\u0010N\u001a\u0004\bO\u0010P\"\u0004\bQ\u0010R¨\u0006\\"}, d2 = {"Le/a/y/a/g/d;", "Le/a/y/a/g/d$a;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/view/View$OnClickListener;", "Lcom/truecaller/flashsdk/ui/UniformEmojiLayout$a;", "", "getLayoutResource", "()I", "Ls1/s;", "f1", "()V", "Landroid/view/View;", "v", "onClick", "(Landroid/view/View;)V", "index", "n", "(I)V", "", "Le/a/y/e/i;", "emojiList", "setRecentEmojis", "([Lcom/truecaller/flashsdk/emojicons/Emoticon;)V", "", "isSelected", "o1", "(Z)V", "locationTipRes", "k1", "g1", "l1", "j1", "h1", "i1", "m1", "enable", "n1", "Le/a/y/a/l/c;", "A", "Le/a/y/a/l/c;", "footerToolTipsPopup", "Landroid/widget/ImageView;", "u", "Landroid/widget/ImageView;", "getSendLocation", "()Landroid/widget/ImageView;", "setSendLocation", "(Landroid/widget/ImageView;)V", "sendLocation", "t", "getMoreEmojis", "setMoreEmojis", "moreEmojis", "getSendMessage", "setSendMessage", "sendMessage", "Landroid/widget/ProgressBar;", "w", "Landroid/widget/ProgressBar;", "getLocationProgress", "()Landroid/widget/ProgressBar;", "setLocationProgress", "(Landroid/widget/ProgressBar;)V", "locationProgress", "Lcom/truecaller/flashsdk/ui/UniformEmojiLayout;", "y", "Lcom/truecaller/flashsdk/ui/UniformEmojiLayout;", "getRecentEmojiLayout", "()Lcom/truecaller/flashsdk/ui/UniformEmojiLayout;", "setRecentEmojiLayout", "(Lcom/truecaller/flashsdk/ui/UniformEmojiLayout;)V", "recentEmojiLayout", "x", "getSendMessageProgress", "setSendMessageProgress", "sendMessageProgress", "z", "Le/a/y/a/g/d$a;", "getActionListener", "()Le/a/y/a/g/d$a;", "setActionListener", "(Le/a/y/a/g/d$a;)V", "actionListener", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/util/AttributeSet;", "attributeSet", "style", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "a", "flash_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.y.a.g.d */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/g/d.class */
public abstract class AbstractView$OnClickListenerC21506d<T extends AbstractC21507a> extends ConstraintLayout implements View.OnClickListener, UniformEmojiLayout.AbstractC3933a {

    /* renamed from: A */
    public C21584c f60049A;

    /* renamed from: t */
    public ImageView f60050t;

    /* renamed from: u */
    public ImageView f60051u;

    /* renamed from: v */
    public ImageView f60052v;

    /* renamed from: w */
    public ProgressBar f60053w;

    /* renamed from: x */
    public ProgressBar f60054x;

    /* renamed from: y */
    public UniformEmojiLayout f60055y;

    /* renamed from: z */
    public T f60056z;

    /* renamed from: e.a.y.a.g.d$a */
    /* loaded from: classes9-dex2jar.jar:e/a/y/a/g/d$a.class */
    public interface AbstractC21507a {
        /* renamed from: O0 */
        void mo9574O0(boolean z);

        /* renamed from: u1 */
        void mo9573u1();

        /* renamed from: v2 */
        void mo9572v2(int i);
    }

    public AbstractView$OnClickListenerC21506d(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractView$OnClickListenerC21506d(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        l.e(context, AnalyticsConstants.CONTEXT);
        View.inflate(getContext(), getLayoutResource(), this);
        mo9585f1();
    }

    /* renamed from: f1 */
    public void mo9585f1() {
        View findViewById = findViewById(C3909R.C3911id.moreEmojis);
        l.d(findViewById, "findViewById(R.id.moreEmojis)");
        this.f60050t = (ImageView) findViewById;
        View findViewById2 = findViewById(C3909R.C3911id.sendLocation);
        l.d(findViewById2, "findViewById(R.id.sendLocation)");
        this.f60051u = (ImageView) findViewById2;
        View findViewById3 = findViewById(C3909R.C3911id.sendMessage);
        l.d(findViewById3, "findViewById(R.id.sendMessage)");
        this.f60052v = (ImageView) findViewById3;
        View findViewById4 = findViewById(C3909R.C3911id.locationProgress);
        l.d(findViewById4, "findViewById(R.id.locationProgress)");
        this.f60053w = (ProgressBar) findViewById4;
        View findViewById5 = findViewById(C3909R.C3911id.recentEmojiLayout);
        l.d(findViewById5, "findViewById(R.id.recentEmojiLayout)");
        this.f60055y = (UniformEmojiLayout) findViewById5;
        View findViewById6 = findViewById(C3909R.C3911id.sendMessageProgress);
        l.d(findViewById6, "findViewById(R.id.sendMessageProgress)");
        this.f60054x = (ProgressBar) findViewById6;
        ImageView imageView = this.f60050t;
        if (imageView == null) {
            l.l("moreEmojis");
            throw null;
        }
        imageView.setOnClickListener(this);
        ImageView imageView2 = this.f60051u;
        if (imageView2 == null) {
            l.l("sendLocation");
            throw null;
        }
        imageView2.setOnClickListener(this);
        ImageView imageView3 = this.f60052v;
        if (imageView3 == null) {
            l.l("sendMessage");
            throw null;
        }
        imageView3.setOnClickListener(this);
        UniformEmojiLayout uniformEmojiLayout = this.f60055y;
        if (uniformEmojiLayout == null) {
            l.l("recentEmojiLayout");
            throw null;
        }
        uniformEmojiLayout.setOnItemClickListener(this);
        ImageView imageView4 = this.f60052v;
        if (imageView4 != null) {
            imageView4.setEnabled(false);
        } else {
            l.l("sendMessage");
            throw null;
        }
    }

    /* renamed from: g1 */
    public final void m9584g1() {
        PopupWindow popupWindow;
        C21584c c21584c = this.f60049A;
        if (c21584c == null || (popupWindow = c21584c.f60229a) == null) {
            return;
        }
        popupWindow.dismiss();
    }

    public final T getActionListener() {
        return this.f60056z;
    }

    public abstract int getLayoutResource();

    public final ProgressBar getLocationProgress() {
        ProgressBar progressBar = this.f60053w;
        if (progressBar != null) {
            return progressBar;
        }
        l.l("locationProgress");
        throw null;
    }

    public final ImageView getMoreEmojis() {
        ImageView imageView = this.f60050t;
        if (imageView != null) {
            return imageView;
        }
        l.l("moreEmojis");
        throw null;
    }

    public final UniformEmojiLayout getRecentEmojiLayout() {
        UniformEmojiLayout uniformEmojiLayout = this.f60055y;
        if (uniformEmojiLayout != null) {
            return uniformEmojiLayout;
        }
        l.l("recentEmojiLayout");
        throw null;
    }

    public final ImageView getSendLocation() {
        ImageView imageView = this.f60051u;
        if (imageView != null) {
            return imageView;
        }
        l.l("sendLocation");
        throw null;
    }

    public final ImageView getSendMessage() {
        ImageView imageView = this.f60052v;
        if (imageView != null) {
            return imageView;
        }
        l.l("sendMessage");
        throw null;
    }

    public final ProgressBar getSendMessageProgress() {
        ProgressBar progressBar = this.f60054x;
        if (progressBar != null) {
            return progressBar;
        }
        l.l("sendMessageProgress");
        throw null;
    }

    /* renamed from: h1 */
    public final void m9583h1() {
        ProgressBar progressBar = this.f60054x;
        if (progressBar == null) {
            l.l("sendMessageProgress");
            throw null;
        }
        progressBar.setVisibility(8);
        ImageView imageView = this.f60052v;
        if (imageView == null) {
            l.l("sendMessage");
            throw null;
        }
        imageView.setVisibility(0);
        ImageView imageView2 = this.f60052v;
        if (imageView2 != null) {
            imageView2.setImageResource(C3909R.C3910drawable.flash_ic_send_button_selector);
        } else {
            l.l("sendMessage");
            throw null;
        }
    }

    /* renamed from: i1 */
    public final void m9582i1() {
        ProgressBar progressBar = this.f60054x;
        if (progressBar == null) {
            l.l("sendMessageProgress");
            throw null;
        }
        progressBar.setVisibility(8);
        ImageView imageView = this.f60052v;
        if (imageView == null) {
            l.l("sendMessage");
            throw null;
        }
        imageView.setVisibility(0);
        ImageView imageView2 = this.f60052v;
        if (imageView2 == null) {
            l.l("sendMessage");
            throw null;
        }
        imageView2.setImageResource(C3909R.C3910drawable.flash_reply_retry_button_selector);
        ImageView imageView3 = this.f60052v;
        if (imageView3 != null) {
            imageView3.setEnabled(true);
        } else {
            l.l("sendMessage");
            throw null;
        }
    }

    /* renamed from: j1 */
    public final void m9581j1() {
        ProgressBar progressBar = this.f60054x;
        if (progressBar == null) {
            l.l("sendMessageProgress");
            throw null;
        }
        progressBar.setVisibility(8);
        ImageView imageView = this.f60052v;
        if (imageView == null) {
            l.l("sendMessage");
            throw null;
        }
        imageView.setVisibility(0);
        ImageView imageView2 = this.f60052v;
        if (imageView2 != null) {
            imageView2.setImageResource(C3909R.C3910drawable.ic_flash_retry_24dp);
        } else {
            l.l("sendMessage");
            throw null;
        }
    }

    /* renamed from: k1 */
    public final void m9580k1(int i) {
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        String string = getContext().getString(i);
        l.d(string, "context.getString(locationTipRes)");
        C21584c c21584c = new C21584c(context, string, C3909R.C3910drawable.flash_ic_tooltip_left_bottom);
        this.f60049A = c21584c;
        if (c21584c != null) {
            ImageView imageView = this.f60051u;
            if (imageView == null) {
                l.l("sendLocation");
                throw null;
            }
            l.e(imageView, ViewAction.VIEW);
            Context context2 = imageView.getContext();
            Objects.requireNonNull(context2, "null cannot be cast to non-null type android.app.Activity");
            if (((Activity) context2).isFinishing() || imageView.getApplicationWindowToken() == null) {
                return;
            }
            c21584c.f60229a.getContentView().measure(0, 0);
            PopupWindow popupWindow = c21584c.f60229a;
            int i2 = (-imageView.getMeasuredWidth()) / 2;
            int measuredHeight = imageView.getMeasuredHeight();
            View contentView = c21584c.f60229a.getContentView();
            l.d(contentView, "popupWindow.contentView");
            popupWindow.showAsDropDown(imageView, i2, -(contentView.getMeasuredHeight() + measuredHeight));
        }
    }

    /* renamed from: l1 */
    public final void m9579l1() {
        ProgressBar progressBar = this.f60054x;
        if (progressBar != null) {
            progressBar.setVisibility(0);
        } else {
            l.l("sendMessageProgress");
            throw null;
        }
    }

    /* renamed from: m1 */
    public final void m9578m1() {
        ProgressBar progressBar = this.f60054x;
        if (progressBar == null) {
            l.l("sendMessageProgress");
            throw null;
        }
        progressBar.setVisibility(8);
        ImageView imageView = this.f60052v;
        if (imageView == null) {
            l.l("sendMessage");
            throw null;
        }
        imageView.setVisibility(0);
        ImageView imageView2 = this.f60052v;
        if (imageView2 != null) {
            imageView2.setImageResource(C3909R.C3910drawable.ic_flash_sent_24dp);
        } else {
            l.l("sendMessage");
            throw null;
        }
    }

    @Override // com.truecaller.flashsdk.p166ui.UniformEmojiLayout.AbstractC3933a
    /* renamed from: n */
    public void mo9577n(int i) {
        T t = this.f60056z;
        if (t != null) {
            t.mo9572v2(i);
        }
    }

    /* renamed from: n1 */
    public final void m9576n1(boolean z) {
        ImageView imageView = this.f60052v;
        if (imageView != null) {
            imageView.setEnabled(z);
        } else {
            l.l("sendMessage");
            throw null;
        }
    }

    /* renamed from: o1 */
    public final void m9575o1(boolean z) {
        ProgressBar progressBar = this.f60053w;
        if (progressBar == null) {
            l.l("locationProgress");
            throw null;
        }
        progressBar.setVisibility(8);
        ImageView imageView = this.f60051u;
        if (imageView == null) {
            l.l("sendLocation");
            throw null;
        }
        imageView.setVisibility(0);
        ImageView imageView2 = this.f60051u;
        if (imageView2 != null) {
            imageView2.setSelected(z);
        } else {
            l.l("sendLocation");
            throw null;
        }
    }

    public void onClick(View view) {
        l.e(view, "v");
        int id = view.getId();
        if (id == C3909R.C3911id.moreEmojis) {
            T t = this.f60056z;
            if (t == null) {
                return;
            }
            t.mo9573u1();
        } else if (id != C3909R.C3911id.sendLocation) {
        } else {
            ImageView imageView = this.f60051u;
            if (imageView == null) {
                l.l("sendLocation");
                throw null;
            }
            boolean isSelected = imageView.isSelected();
            ImageView imageView2 = this.f60051u;
            if (imageView2 == null) {
                l.l("sendLocation");
                throw null;
            }
            imageView2.setVisibility(isSelected ? 0 : 8);
            ProgressBar progressBar = this.f60053w;
            if (progressBar == null) {
                l.l("locationProgress");
                throw null;
            }
            int i = 0;
            if (isSelected) {
                i = 8;
            }
            progressBar.setVisibility(i);
            T t2 = this.f60056z;
            if (t2 == null) {
                return;
            }
            t2.mo9574O0(!isSelected);
        }
    }

    public final void setActionListener(T t) {
        this.f60056z = t;
    }

    public final void setLocationProgress(ProgressBar progressBar) {
        l.e(progressBar, "<set-?>");
        this.f60053w = progressBar;
    }

    public final void setMoreEmojis(ImageView imageView) {
        l.e(imageView, "<set-?>");
        this.f60050t = imageView;
    }

    public final void setRecentEmojiLayout(UniformEmojiLayout uniformEmojiLayout) {
        l.e(uniformEmojiLayout, "<set-?>");
        this.f60055y = uniformEmojiLayout;
    }

    public void setRecentEmojis(C21733i[] c21733iArr) {
        l.e(c21733iArr, "emojiList");
        UniformEmojiLayout uniformEmojiLayout = this.f60055y;
        if (uniformEmojiLayout != null) {
            uniformEmojiLayout.setEmojis(c21733iArr);
        } else {
            l.l("recentEmojiLayout");
            throw null;
        }
    }

    public final void setSendLocation(ImageView imageView) {
        l.e(imageView, "<set-?>");
        this.f60051u = imageView;
    }

    public final void setSendMessage(ImageView imageView) {
        l.e(imageView, "<set-?>");
        this.f60052v = imageView;
    }

    public final void setSendMessageProgress(ProgressBar progressBar) {
        l.e(progressBar, "<set-?>");
        this.f60054x = progressBar;
    }
}
