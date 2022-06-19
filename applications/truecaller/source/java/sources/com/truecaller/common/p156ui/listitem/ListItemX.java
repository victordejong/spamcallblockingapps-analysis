package com.truecaller.common.p156ui.listitem;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.android.truemoji.widget.EmojiTextView;
import com.truecaller.common.p156ui.C3700R;
import com.truecaller.common.p156ui.availability.AvailabilityXView;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p372b0.p373a.p386s.AbstractC8331c;
import p193e.p194a.p372b0.p373a.p386s.C8329a;
import p193e.p194a.p372b0.p373a.p387t.C8334a;
import p193e.p194a.p372b0.p373a.p387t.C8335b;
import p193e.p194a.p372b0.p373a.p392y.View$OnClickListenerC8357a;
import p193e.p194a.p372b0.p373a.p392y.View$OnLongClickListenerC8358b;
import s1.f0.v;
import s1.g;
import s1.i;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��¤\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0016\u0018��2\u00020\u0001:\u0004\u0084\u0001\u0085\u0001B\u0011\b\u0016\u0012\u0006\u0010|\u001a\u00020{¢\u0006\u0004\b}\u0010~B\u001d\b\u0016\u0012\u0006\u0010|\u001a\u00020{\u0012\t\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u007f¢\u0006\u0005\b}\u0010\u0081\u0001B&\b\u0016\u0012\u0006\u0010|\u001a\u00020{\u0012\t\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u007f\u0012\u0007\u0010\u0082\u0001\u001a\u00020\u0006¢\u0006\u0005\b}\u0010\u0083\u0001J3\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\u000f\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u0004¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0011\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u0004¢\u0006\u0004\b\u0011\u0010\u0010J\u0017\u0010\u0014\u001a\u00020\t2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\t2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u0016\u0010\u0015J1\u0010\u001c\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00192\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u001e\u0010\rJ+\u0010 \u001a\u00020\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00172\b\b\u0002\u0010\u001f\u001a\u00020\u00192\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b \u0010!J/\u0010&\u001a\u00020\t2\b\b\u0001\u0010\"\u001a\u00020\u00062\u0016\b\u0002\u0010%\u001a\u0010\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\t\u0018\u00010#¢\u0006\u0004\b&\u0010'J/\u0010)\u001a\u00020\t2\b\u0010\u0013\u001a\u0004\u0018\u00010(2\u0016\b\u0002\u0010%\u001a\u0010\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\t\u0018\u00010#¢\u0006\u0004\b)\u0010*J\r\u0010+\u001a\u00020\t¢\u0006\u0004\b+\u0010,J/\u0010-\u001a\u00020\t2\b\b\u0001\u0010\"\u001a\u00020\u00062\u0016\b\u0002\u0010%\u001a\u0010\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\t\u0018\u00010#¢\u0006\u0004\b-\u0010'J/\u0010.\u001a\u00020\t2\b\u0010\u0013\u001a\u0004\u0018\u00010(2\u0016\b\u0002\u0010%\u001a\u0010\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\t\u0018\u00010#¢\u0006\u0004\b.\u0010*J\u0015\u00101\u001a\u00020\t2\u0006\u00100\u001a\u00020/¢\u0006\u0004\b1\u00102J!\u00103\u001a\u00020\t2\u0012\u0010%\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\t0#¢\u0006\u0004\b3\u00104J!\u00105\u001a\u00020\t2\u0012\u0010%\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\u00040#¢\u0006\u0004\b5\u00104J\u0015\u00107\u001a\u00020\t2\u0006\u00100\u001a\u000206¢\u0006\u0004\b7\u00108J\u0015\u00107\u001a\u00020\t2\u0006\u00100\u001a\u000209¢\u0006\u0004\b7\u0010:J\r\u0010<\u001a\u00020;¢\u0006\u0004\b<\u0010=J!\u0010>\u001a\u00020\t2\b\u0010\u0013\u001a\u0004\u0018\u00010\u00122\b\b\u0003\u0010\u001f\u001a\u00020\u0006¢\u0006\u0004\b>\u0010?J\u0015\u0010@\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b@\u0010AJ5\u0010C\u001a\u00020\t*\u00020B2\b\b\u0001\u0010\"\u001a\u00020\u00062\u0016\b\u0002\u0010%\u001a\u0010\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\t\u0018\u00010#H\u0002¢\u0006\u0004\bC\u0010DJ\u001b\u0010E\u001a\u00020\u0006*\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\bE\u0010FJ\u001b\u0010G\u001a\u00020\u0006*\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\bG\u0010FJ\u0019\u0010I\u001a\u00020\u00062\b\b\u0001\u0010H\u001a\u00020\u0006H\u0002¢\u0006\u0004\bI\u0010JR%\u0010Q\u001a\n L*\u0004\u0018\u00010K0K8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bM\u0010N\u001a\u0004\bO\u0010PR%\u0010V\u001a\n L*\u0004\u0018\u00010R0R8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bS\u0010N\u001a\u0004\bT\u0010UR\u001d\u0010Z\u001a\u00020\u00068B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bW\u0010N\u001a\u0004\bX\u0010YR%\u0010_\u001a\n L*\u0004\u0018\u00010[0[8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\\\u0010N\u001a\u0004\b]\u0010^R%\u0010c\u001a\n L*\u0004\u0018\u00010\u00120\u00128B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b`\u0010N\u001a\u0004\ba\u0010bR%\u0010g\u001a\n L*\u0004\u0018\u00010B0B8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bd\u0010N\u001a\u0004\be\u0010fR%\u0010j\u001a\n L*\u0004\u0018\u00010B0B8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bh\u0010N\u001a\u0004\bi\u0010fR%\u0010l\u001a\n L*\u0004\u0018\u00010K0K8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bk\u0010N\u001a\u0004\b\f\u0010PR%\u0010o\u001a\n L*\u0004\u0018\u00010B0B8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bm\u0010N\u001a\u0004\bn\u0010fR%\u0010t\u001a\n L*\u0004\u0018\u00010p0p8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bq\u0010N\u001a\u0004\br\u0010sR%\u0010w\u001a\n L*\u0004\u0018\u00010\u00120\u00128B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bu\u0010N\u001a\u0004\bv\u0010bR\u0018\u0010z\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bx\u0010y¨\u0006\u0086\u0001"}, d2 = {"Lcom/truecaller/common/ui/listitem/ListItemX;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "", "text", "", "bold", "", "highlightingStartIndex", "highlightingEndIndex", "Ls1/s;", "w1", "(Ljava/lang/CharSequence;ZII)V", "getTitle", "()Ljava/lang/CharSequence;", AnalyticsConstants.SHOW, "y1", "(Z)V", "z1", "Landroid/graphics/drawable/Drawable;", RemoteMessageConst.Notification.ICON, "setTitleIcon", "(Landroid/graphics/drawable/Drawable;)V", "setTitleExtraIcon", "", "prefix", "Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;", "colorX", "firstIcon", "t1", "(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;)V", "getSubTitle", RemoteMessageConst.Notification.COLOR, "u1", "(Ljava/lang/String;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Z)V", "resId", "Lkotlin/Function1;", "Landroid/view/View;", "listener", "i1", "(ILs1/z/b/l;)V", "Lcom/truecaller/common/ui/listitem/ListItemX$Action;", "j1", "(Lcom/truecaller/common/ui/listitem/ListItemX$Action;Ls1/z/b/l;)V", "f1", "()V", "l1", "m1", "Le/a/b0/a/b/a;", "presenter", "setAvatarPresenter", "(Le/a/b0/a/b/a;)V", "setOnAvatarClickListener", "(Ls1/z/b/l;)V", "setOnAvatarLongClickListener", "Le/a/b0/a/s/a;", "setAvailabilityPresenter", "(Le/a/b0/a/s/a;)V", "Le/a/b0/a/s/c;", "(Le/a/b0/a/s/c;)V", "Landroid/graphics/Paint$FontMetricsInt;", "getSubtitleFontMetrics", "()Landroid/graphics/Paint$FontMetricsInt;", "q1", "(Landroid/graphics/drawable/Drawable;I)V", "setSubTitlePrefix", "(Ljava/lang/String;)V", "Landroid/widget/ImageView;", "h1", "(Landroid/widget/ImageView;ILs1/z/b/l;)V", "B1", "(Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Z)I", "A1", "attrRes", "g1", "(I)I", "Landroid/widget/TextView;", "kotlin.jvm.PlatformType", "B", "Ls1/g;", "getTimestamp", "()Landroid/widget/TextView;", "timestamp", "Lcom/truecaller/common/ui/availability/AvailabilityXView;", "y", "getAvailability", "()Lcom/truecaller/common/ui/availability/AvailabilityXView;", "availability", "v", "getBrandColorBlue", "()I", "brandColorBlue", "Lcom/truecaller/common/ui/avatar/AvatarXView;", "z", "getAvatar", "()Lcom/truecaller/common/ui/avatar/AvatarXView;", "avatar", "t", "getTrueBadgeDrawable", "()Landroid/graphics/drawable/Drawable;", "trueBadgeDrawable", "D", "getTitleExtraIcon", "()Landroid/widget/ImageView;", "titleExtraIcon", "w", "getActionMain", "actionMain", "C", "title", "x", "getActionSecondary", "actionSecondary", "Lcom/truecaller/android/truemoji/widget/EmojiTextView;", "A", "getSubtitle", "()Lcom/truecaller/android/truemoji/widget/EmojiTextView;", "subtitle", "u", "getVerifiedCheckDrawable", "verifiedCheckDrawable", "E", "Ljava/lang/String;", "timestampText", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Action", "SubtitleColor", "common-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.common.ui.listitem.ListItemX */
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/listitem/ListItemX.class */
public class ListItemX extends ConstraintLayout {

    /* renamed from: J */
    public static final /* synthetic */ int f11257J = 0;

    /* renamed from: A */
    public final g f11258A;

    /* renamed from: B */
    public final g f11259B;

    /* renamed from: C */
    public final g f11260C;

    /* renamed from: D */
    public final g f11261D;

    /* renamed from: E */
    public String f11262E;

    /* renamed from: t */
    public final g f11263t;

    /* renamed from: u */
    public final g f11264u;

    /* renamed from: v */
    public final g f11265v;

    /* renamed from: w */
    public final g f11266w;

    /* renamed from: x */
    public final g f11267x;

    /* renamed from: y */
    public final g f11268y;

    /* renamed from: z */
    public final g f11269z;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\u000f\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0013\b\u0002\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, d2 = {"Lcom/truecaller/common/ui/listitem/ListItemX$Action;", "", "", "drawableResId", "I", "getDrawableResId", "()I", "<init>", "(Ljava/lang/String;II)V", "CALL", "MESSAGE", "INFO", "FLASH", "VOICE", "SIM_ONE", "SIM_TWO", "PROFILE", "common-ui_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: com.truecaller.common.ui.listitem.ListItemX$Action */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/listitem/ListItemX$Action.class */
    public enum Action {
        CALL(C3700R.C3701drawable.ic_tcx_action_call_outline_24dp),
        MESSAGE(C3700R.C3701drawable.ic_tcx_action_message_outline_24dp),
        INFO(C3700R.C3701drawable.ic_tcx_action_info_24dp),
        FLASH(C3700R.C3701drawable.ic_tcx_action_flash_outline_24dp),
        VOICE(C3700R.C3701drawable.ic_tcx_action_voice_outline_24dp),
        SIM_ONE(C3700R.C3701drawable.ic_tcx_action_call_sim_1_outline_24dp),
        SIM_TWO(C3700R.C3701drawable.ic_tcx_action_call_sim_2_outline_24dp),
        PROFILE(C3700R.C3701drawable.ic_action_chevron_right);
        
        private final int drawableResId;

        Action(int i) {
            this.drawableResId = i;
        }

        public final int getDrawableResId() {
            return this.drawableResId;
        }
    }

    /* JADX WARN: Init of enum BLUE can be incorrect */
    /* JADX WARN: Init of enum DEFAULT can be incorrect */
    /* JADX WARN: Init of enum RED can be incorrect */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\u0010\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B1\b\u0002\u0012\b\b\u0001\u0010\u000b\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0001\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\r\u0010\u000eR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0004\u001a\u0004\b\b\u0010\u0006R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006R\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0004\u001a\u0004\b\f\u0010\u0006j\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011¨\u0006\u0012"}, d2 = {"Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;", "", "", "textColorBoldAttr", "I", "getTextColorBoldAttr", "()I", "iconColorAttr", "getIconColorAttr", "iconColorBoldAttr", "getIconColorBoldAttr", "textColorAttr", "getTextColorAttr", "<init>", "(Ljava/lang/String;IIIII)V", "DEFAULT", "BLUE", "RED", "common-ui_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: com.truecaller.common.ui.listitem.ListItemX$SubtitleColor */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/listitem/ListItemX$SubtitleColor.class */
    public enum SubtitleColor {
        DEFAULT(r0, C3700R.attr.tcx_textPrimary, C3700R.attr.tcx_textTertiary, r0),
        BLUE(r0, r0, r0, r0),
        RED(r0, r0, r0, r0);
        
        private final int iconColorAttr;
        private final int iconColorBoldAttr;
        private final int textColorAttr;
        private final int textColorBoldAttr;

        static {
            int i = C3700R.attr.tcx_textSecondary;
            int i2 = C3700R.attr.tcx_brandBackgroundBlue;
            int i3 = C3700R.attr.tcx_alertBackgroundRed;
        }

        SubtitleColor(int i, int i2, int i3, int i4) {
            this.textColorAttr = i;
            this.textColorBoldAttr = i2;
            this.iconColorAttr = i3;
            this.iconColorBoldAttr = i4;
        }

        public final int getIconColorAttr() {
            return this.iconColorAttr;
        }

        public final int getIconColorBoldAttr() {
            return this.iconColorBoldAttr;
        }

        public final int getTextColorAttr() {
            return this.textColorAttr;
        }

        public final int getTextColorBoldAttr() {
            return this.textColorBoldAttr;
        }
    }

    /* renamed from: com.truecaller.common.ui.listitem.ListItemX$a */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/common/ui/listitem/ListItemX$a.class */
    public static final class C3740a extends m implements a<Drawable> {

        /* renamed from: b */
        public final /* synthetic */ int f11270b;

        /* renamed from: c */
        public final /* synthetic */ Object f11271c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3740a(int i, Object obj) {
            super(0);
            this.f11270b = i;
            this.f11271c = obj;
        }

        public final Object invoke() {
            int i = this.f11270b;
            if (i != 0) {
                if (i != 1) {
                    throw null;
                }
                return C19291g.m13535l0(((ListItemX) this.f11271c).getContext(), C3700R.C3701drawable.ic_tcx_verified_16dp, C3700R.attr.tcx_brandBackgroundBlue);
            }
            return C19291g.m13535l0(((ListItemX) this.f11271c).getContext(), C3700R.C3701drawable.ic_true_badge, C3700R.attr.tcx_brandBackgroundBlue);
        }
    }

    /* renamed from: com.truecaller.common.ui.listitem.ListItemX$b */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/listitem/ListItemX$b.class */
    public static final class C3741b extends m implements a<Integer> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3741b() {
            super(0);
            ListItemX.this = r4;
        }

        public Object invoke() {
            ListItemX listItemX = ListItemX.this;
            int i = C3700R.attr.tcx_brandBackgroundBlue;
            int i2 = ListItemX.f11257J;
            return Integer.valueOf(C19291g.m13612L(listItemX.getContext(), i));
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ListItemX(Context context) {
        this(context, null);
        l.e(context, AnalyticsConstants.CONTEXT);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ListItemX(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ListItemX(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f11263t = C25225a.m3978P1(new C3740a(0, this));
        this.f11264u = C25225a.m3978P1(new C3740a(1, this));
        this.f11265v = C25225a.m3978P1(new C3741b());
        this.f11266w = C19286f.m13660s(this, C3700R.C3702id.action_main);
        this.f11267x = C19286f.m13660s(this, C3700R.C3702id.action_secondary);
        this.f11268y = C19286f.m13660s(this, C3700R.C3702id.availability);
        this.f11269z = C19286f.m13660s(this, C3700R.C3702id.avatar);
        this.f11258A = C19286f.m13660s(this, C3700R.C3702id.subtitle);
        this.f11259B = C19286f.m13660s(this, C3700R.C3702id.timestamp);
        this.f11260C = C19286f.m13660s(this, C3700R.C3702id.title);
        this.f11261D = C19286f.m13660s(this, C3700R.C3702id.title_extra_icon);
        ViewGroup.inflate(context, C3700R.layout.layout_tcx_list_item, this);
        setBackgroundResource(C3700R.C3701drawable.background_tcx_activatable_item);
        setPaddingRelative(0, 0, getResources().getDimensionPixelSize(C3700R.dimen.list_item_tcx_end_padding), 0);
        setClickable(true);
        setFocusable(true);
        setClipChildren(false);
    }

    private final ImageView getActionMain() {
        return (ImageView) this.f11266w.getValue();
    }

    private final ImageView getActionSecondary() {
        return (ImageView) this.f11267x.getValue();
    }

    private final AvailabilityXView getAvailability() {
        return (AvailabilityXView) this.f11268y.getValue();
    }

    private final AvatarXView getAvatar() {
        return (AvatarXView) this.f11269z.getValue();
    }

    private final int getBrandColorBlue() {
        return ((Number) this.f11265v.getValue()).intValue();
    }

    private final EmojiTextView getSubtitle() {
        return (EmojiTextView) this.f11258A.getValue();
    }

    private final TextView getTimestamp() {
        return (TextView) this.f11259B.getValue();
    }

    private final TextView getTitle() {
        return (TextView) this.f11260C.getValue();
    }

    private final ImageView getTitleExtraIcon() {
        return (ImageView) this.f11261D.getValue();
    }

    private final Drawable getTrueBadgeDrawable() {
        return (Drawable) this.f11263t.getValue();
    }

    private final Drawable getVerifiedCheckDrawable() {
        return (Drawable) this.f11264u.getValue();
    }

    /* renamed from: n1 */
    public static void m35645n1(ListItemX listItemX, boolean z, int i, int i2, int i3, Object obj) {
        C8335b c8335b;
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = C3700R.attr.tcx_brandBackgroundBlue;
        }
        Objects.requireNonNull(listItemX);
        if (z) {
            Context context = listItemX.getContext();
            l.d(context, AnalyticsConstants.CONTEXT);
            c8335b = new C8335b(context, false, false, i2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6128);
            if (i == 0) {
                c8335b.m28662b(true);
            } else {
                C8334a c8334a = c8335b.f25660c;
                if (c8334a.f25654j != i) {
                    c8334a.f25654j = i;
                    c8335b.invalidateSelf();
                }
            }
        } else {
            c8335b = null;
        }
        ImageView actionMain = listItemX.getActionMain();
        C19286f.m13683U(actionMain, z);
        actionMain.setImageDrawable(c8335b);
        actionMain.setOnClickListener(null);
        actionMain.setClickable(false);
        actionMain.setBackground(null);
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x019b  */
    /* renamed from: o1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m35644o1(com.truecaller.common.p156ui.listitem.ListItemX r7, java.lang.CharSequence r8, com.truecaller.common.p156ui.listitem.ListItemX.SubtitleColor r9, android.graphics.drawable.Drawable r10, android.graphics.drawable.Drawable r11, com.truecaller.common.p156ui.listitem.ListItemX.SubtitleColor r12, com.truecaller.common.p156ui.listitem.ListItemX.SubtitleColor r13, int r14, int r15, boolean r16, java.lang.Integer r17, java.util.List r18, int r19, java.lang.Object r20) {
        /*
            Method dump skipped, instructions count: 709
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.common.p156ui.listitem.ListItemX.m35644o1(com.truecaller.common.ui.listitem.ListItemX, java.lang.CharSequence, com.truecaller.common.ui.listitem.ListItemX$SubtitleColor, android.graphics.drawable.Drawable, android.graphics.drawable.Drawable, com.truecaller.common.ui.listitem.ListItemX$SubtitleColor, com.truecaller.common.ui.listitem.ListItemX$SubtitleColor, int, int, boolean, java.lang.Integer, java.util.List, int, java.lang.Object):void");
    }

    /* renamed from: r1 */
    public static /* synthetic */ void m35642r1(ListItemX listItemX, Drawable drawable, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = C3700R.attr.tcx_alertBackgroundRed;
        }
        listItemX.m35643q1(drawable, i);
    }

    /* renamed from: v1 */
    public static /* synthetic */ void m35639v1(ListItemX listItemX, String str, SubtitleColor subtitleColor, boolean z, int i, Object obj) {
        SubtitleColor subtitleColor2 = (i & 2) != 0 ? SubtitleColor.DEFAULT : null;
        if ((i & 4) != 0) {
            z = false;
        }
        listItemX.m35640u1(str, subtitleColor2, z);
    }

    /* renamed from: x1 */
    public static /* synthetic */ void m35637x1(ListItemX listItemX, CharSequence charSequence, boolean z, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            z = false;
        }
        if ((i3 & 4) != 0) {
            i = 0;
        }
        if ((i3 & 8) != 0) {
            i2 = 0;
        }
        listItemX.m35638w1(charSequence, z, i, i2);
    }

    /* renamed from: A1 */
    public final int m35655A1(SubtitleColor subtitleColor, boolean z) {
        int i;
        if (z) {
            i = m35652g1(subtitleColor.getIconColorBoldAttr());
        } else if (z) {
            throw new i();
        } else {
            i = m35652g1(subtitleColor.getIconColorAttr());
        }
        return i;
    }

    /* renamed from: B1 */
    public final int m35654B1(SubtitleColor subtitleColor, boolean z) {
        int i;
        if (z) {
            i = m35652g1(subtitleColor.getTextColorBoldAttr());
        } else if (z) {
            throw new i();
        } else {
            i = m35652g1(subtitleColor.getTextColorAttr());
        }
        return i;
    }

    /* renamed from: f1 */
    public final void m35653f1() {
        ImageView actionMain = getActionMain();
        l.d(actionMain, "actionMain");
        actionMain.setImageTintList(null);
    }

    /* renamed from: g1 */
    public final int m35652g1(int i) {
        return C19291g.m13612L(getContext(), i);
    }

    public final CharSequence getSubTitle() {
        EmojiTextView subtitle = getSubtitle();
        l.d(subtitle, "subtitle");
        return subtitle.getText();
    }

    public final Paint.FontMetricsInt getSubtitleFontMetrics() {
        EmojiTextView subtitle = getSubtitle();
        l.d(subtitle, "subtitle");
        TextPaint paint = subtitle.getPaint();
        l.d(paint, "subtitle.paint");
        Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
        l.d(fontMetricsInt, "subtitle.paint.fontMetricsInt");
        return fontMetricsInt;
    }

    /* renamed from: getTitle */
    public final CharSequence m47325getTitle() {
        TextView title = getTitle();
        l.d(title, "title");
        return title.getText();
    }

    /* renamed from: h1 */
    public final void m35651h1(ImageView imageView, int i, s1.z.b.l<? super View, s> lVar) {
        C19286f.m13683U(imageView, i != 0);
        imageView.setImageResource(i);
        imageView.setOnClickListener((View.OnClickListener) (lVar != null ? new View$OnClickListenerC8357a(lVar) : lVar));
        imageView.setClickable(lVar != null);
    }

    /* renamed from: i1 */
    public final void m35650i1(int i, s1.z.b.l<? super View, s> lVar) {
        ImageView actionMain = getActionMain();
        l.d(actionMain, "actionMain");
        m35651h1(actionMain, i, lVar);
    }

    /* renamed from: j1 */
    public final void m35649j1(Action action, s1.z.b.l<? super View, s> lVar) {
        m35650i1(action != null ? action.getDrawableResId() : 0, lVar);
    }

    /* renamed from: l1 */
    public final void m35647l1(int i, s1.z.b.l<? super View, s> lVar) {
        ImageView actionSecondary = getActionSecondary();
        l.d(actionSecondary, "actionSecondary");
        m35651h1(actionSecondary, i, lVar);
    }

    /* renamed from: m1 */
    public final void m35646m1(Action action, s1.z.b.l<? super View, s> lVar) {
        m35647l1(action != null ? action.getDrawableResId() : 0, lVar);
    }

    /* renamed from: q1 */
    public final void m35643q1(Drawable drawable, int i) {
        if (drawable != null) {
            drawable.setTint(C19291g.m13612L(getContext(), i));
        }
        EmojiTextView subtitle = getSubtitle();
        l.d(subtitle, "subtitle");
        C19291g.m13583U1(subtitle, drawable, null, null, null, 14);
    }

    public final void setAvailabilityPresenter(C8329a c8329a) {
        l.e(c8329a, "presenter");
        getAvailability().setPresenter(c8329a);
    }

    public final void setAvailabilityPresenter(AbstractC8331c abstractC8331c) {
        l.e(abstractC8331c, "presenter");
        getAvailability().setPresenter(abstractC8331c);
    }

    public final void setAvatarPresenter(C8243a c8243a) {
        l.e(c8243a, "presenter");
        getAvatar().setPresenter(c8243a);
    }

    public final void setOnAvatarClickListener(s1.z.b.l<? super View, s> lVar) {
        l.e(lVar, "listener");
        getAvatar().setOnClickListener(new View$OnClickListenerC8357a(lVar));
    }

    public final void setOnAvatarLongClickListener(s1.z.b.l<? super View, Boolean> lVar) {
        l.e(lVar, "listener");
        getAvatar().setOnLongClickListener(new View$OnLongClickListenerC8358b(lVar));
    }

    public final void setSubTitlePrefix(String str) {
        l.e(str, "prefix");
        SpannableStringBuilder append = new SpannableStringBuilder().append((CharSequence) str).append(getSubTitle());
        l.d(append, "subtitleWithPrefix");
        m35644o1(this, append, null, null, null, null, null, 0, 0, false, null, null, 2046, null);
    }

    public final void setTitleExtraIcon(Drawable drawable) {
        getTitleExtraIcon().setImageDrawable(drawable);
        ImageView titleExtraIcon = getTitleExtraIcon();
        l.d(titleExtraIcon, "titleExtraIcon");
        C19286f.m13683U(titleExtraIcon, drawable != null);
    }

    public final void setTitleIcon(Drawable drawable) {
        TextView title = getTitle();
        l.d(title, "title");
        C19291g.m13583U1(title, null, null, drawable, null, 11);
    }

    /* renamed from: t1 */
    public final void m35641t1(String str, CharSequence charSequence, SubtitleColor subtitleColor, Drawable drawable) {
        Drawable mutate;
        l.e(str, "prefix");
        l.e(charSequence, "text");
        l.e(subtitleColor, "colorX");
        int m35654B1 = m35654B1(subtitleColor, false);
        SpannableStringBuilder append = new SpannableStringBuilder().append((CharSequence) str);
        append.setSpan(new ForegroundColorSpan(m35654B1), 0, append.length(), 33);
        SpannableStringBuilder append2 = append.append((CharSequence) " · ").append(charSequence);
        l.d(append2, "subtitleWithPrefix");
        Paint.FontMetricsInt subtitleFontMetrics = getSubtitleFontMetrics();
        l.e(append2, "text");
        l.e(subtitleFontMetrics, "fontMetrics");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (drawable != null && (mutate = drawable.mutate()) != null) {
            C19291g.m13545i(mutate, spannableStringBuilder, Integer.valueOf(m35654B1), subtitleFontMetrics, false, 8);
        }
        SpannableStringBuilder append3 = spannableStringBuilder.append(C18334g0.m15243Y(append2, m35654B1, 0, 0));
        l.d(append3, "append(\n            text…ghtingEndIndex)\n        )");
        v.g0(append3);
        m35644o1(this, spannableStringBuilder, null, null, null, null, null, 0, 0, false, null, null, 2046, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00fb, code lost:
        if (r0.length() == 0) goto L30;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0108  */
    /* renamed from: u1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m35640u1(java.lang.String r6, com.truecaller.common.p156ui.listitem.ListItemX.SubtitleColor r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.common.p156ui.listitem.ListItemX.m35640u1(java.lang.String, com.truecaller.common.ui.listitem.ListItemX$SubtitleColor, boolean):void");
    }

    /* renamed from: w1 */
    public final void m35638w1(CharSequence charSequence, boolean z, int i, int i2) {
        l.e(charSequence, "text");
        TextView title = getTitle();
        l.d(title, "this");
        title.setText(C18334g0.m15243Y(charSequence, getBrandColorBlue(), i, i2));
        title.setTypeface(z ? Typeface.create("sans-serif", 1) : Typeface.create("sans-serif-medium", 0));
    }

    /* renamed from: y1 */
    public final void m35636y1(boolean z) {
        TextView title = getTitle();
        l.d(title, "title");
        Drawable trueBadgeDrawable = getTrueBadgeDrawable();
        if (!z) {
            trueBadgeDrawable = null;
        }
        C19291g.m13583U1(title, null, null, trueBadgeDrawable, null, 11);
    }

    /* renamed from: z1 */
    public final void m35635z1(boolean z) {
        TextView title = getTitle();
        l.d(title, "title");
        Drawable verifiedCheckDrawable = getVerifiedCheckDrawable();
        if (!z) {
            verifiedCheckDrawable = null;
        }
        C19291g.m13583U1(title, null, null, verifiedCheckDrawable, null, 11);
    }
}
