package gogolook.callgogolook2.messaging.p078ui.conversation;

import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.text.format.Formatter;
import android.text.style.URLSpan;
import android.text.util.Linkify;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.view.GravityCompat;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$color;
import gogolook.callgogolook2.R$dimen;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.messaging.datamodel.data.MessagePartData;
import gogolook.callgogolook2.messaging.p078ui.AsyncImageView;
import gogolook.callgogolook2.messaging.p078ui.AudioAttachmentView;
import gogolook.callgogolook2.messaging.p078ui.ContactIconView;
import gogolook.callgogolook2.messaging.p078ui.MultiAttachmentLayout;
import gogolook.callgogolook2.messaging.p078ui.PersonItemView;
import gogolook.callgogolook2.messaging.p078ui.VideoThumbnailView;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.regex.Pattern;
import p081h.p119d.p120a.C5769g;
import p081h.p119d.p120a.C5776l;
import p081h.p203i.p316b.p317a.AbstractC9302l;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.p478y.C11610g;
import p459j.p460a.p474c0.p475c.p478y.C11634p;
import p459j.p460a.p474c0.p475c.p479z.C11680u;
import p459j.p460a.p474c0.p488f.C11834j;
import p459j.p460a.p474c0.p491g.AbstractC12126w;
import p459j.p460a.p474c0.p491g.C12081f;
import p459j.p460a.p474c0.p499h.C12143b;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12212s0;
import p459j.p460a.p474c0.p499h.C12222w0;
import p459j.p460a.p474c0.p499h.C12242z;
import p459j.p460a.p521j0.p529x.C12801n;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p582w0.C14131q4;
import p622k.p623a.p624a.p625a.C14698a;
/* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ConversationMessageView */
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ConversationMessageView.class */
public class ConversationMessageView extends FrameLayout implements View.OnClickListener, View.OnLongClickListener, MultiAttachmentLayout.AbstractC4692b {

    /* renamed from: L */
    public static int f11697L = 0;

    /* renamed from: N */
    public static int f11698N = 0;

    /* renamed from: O */
    public static int f11699O = 0;

    /* renamed from: P */
    public static int f11700P = 0;

    /* renamed from: Q */
    public static int f11701Q = 0;

    /* renamed from: R */
    public static int f11702R = 0;

    /* renamed from: S */
    public static int f11703S = 0;

    /* renamed from: T */
    public static int f11704T = 0;

    /* renamed from: U */
    public static int f11705U = 0;

    /* renamed from: V */
    public static int f11706V = 0;

    /* renamed from: W */
    public static int f11707W = 0;

    /* renamed from: a0 */
    public static int f11708a0 = 0;

    /* renamed from: b0 */
    public static int f11709b0 = Integer.MIN_VALUE;

    /* renamed from: c0 */
    public static int f11710c0 = Integer.MIN_VALUE;

    /* renamed from: d0 */
    public static final String f11711d0 = "((?:(http|https|Http|Https|rtsp|Rtsp):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?((?:(?:[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}\\.)+(?:(?:aero|arpa|asia|a[cdefgilmnoqrstuwxz])|(?:biz|b[abdefghijmnorstvwyz])|(?:cat|com|coop|c[acdfghiklmnoruvxyz])|d[ejkmoz]|(?:edu|e[cegrstu])|f[ijkmor]|(?:gov|g[abdefghilmnpqrstuwy])|h[kmnrtu]|(?:info|int|i[delmnoqrst])|(?:jobs|j[emop])|k[eghimnrwyz]|l[abcikrstuvy]|(?:mil|mobi|museum|m[acdghklmnopqrstuvwxyz])|(?:name|net|n[acefgilopruz])|(?:org|om)|(?:pro|p[aefghklmnrstwy])|qa|r[eouw]|s[abcdeghijklmnortuvyz]|(?:tel|travel|t[cdfghjklmnoprtvwz])|u[agkmsyz]|v[aceginu]|w[fs]|y[etu]|z[amw]))|(?:(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9])))(?:\\:\\d{1,5})?)(\\/(?:(?:[a-zA-Z0-9\\;\\/\\?\\:\\@\\&\\=\\#\\~\\-\\.\\+\\!\\*\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?(?:\\b|$)";

    /* renamed from: e0 */
    public static final Comparator<MessagePartData> f11712e0 = new C4759d();

    /* renamed from: f0 */
    public static final AbstractC9302l<MessagePartData> f11713f0 = new C4760e();

    /* renamed from: g0 */
    public static final AbstractC9302l<MessagePartData> f11714g0 = new C4761f();

    /* renamed from: h0 */
    public static final AbstractC9302l<MessagePartData> f11715h0 = new C4762g();

    /* renamed from: i0 */
    public static final AbstractC9302l<MessagePartData> f11716i0 = new C4763h();

    /* renamed from: A */
    public TextView f11717A;

    /* renamed from: B */
    public View f11718B;

    /* renamed from: C */
    public View f11719C;

    /* renamed from: D */
    public boolean f11720D;

    /* renamed from: E */
    public AbstractC4767l f11721E;

    /* renamed from: F */
    public MessagePartData f11722F = null;

    /* renamed from: G */
    public String f11723G = null;

    /* renamed from: H */
    public final int f11724H = MyApplication.m29013o().getResources().getDimensionPixelOffset(R$dimen.message_metadata_with_url_caution_offset);

    /* renamed from: I */
    public final AbstractC4766k f11725I = new C4764i();

    /* renamed from: J */
    public final AbstractC4766k f11726J = new C4765j();

    /* renamed from: K */
    public final AbstractC4766k f11727K = new C4756a();

    /* renamed from: a */
    public final C11610g f11728a = new C11610g();

    /* renamed from: b */
    public LinearLayout f11729b;

    /* renamed from: c */
    public MultiAttachmentLayout f11730c;

    /* renamed from: d */
    public ImageView f11731d;

    /* renamed from: e */
    public TextView f11732e;

    /* renamed from: f */
    public boolean f11733f;

    /* renamed from: g */
    public boolean f11734g;

    /* renamed from: h */
    public TextView f11735h;

    /* renamed from: i */
    public TextView f11736i;

    /* renamed from: j */
    public TextView f11737j;

    /* renamed from: k */
    public LinearLayout f11738k;

    /* renamed from: l */
    public TextView f11739l;

    /* renamed from: m */
    public ContactIconView f11740m;

    /* renamed from: n */
    public ConversationMessageBubbleView f11741n;

    /* renamed from: o */
    public View f11742o;

    /* renamed from: p */
    public TextView f11743p;

    /* renamed from: q */
    public TextView f11744q;

    /* renamed from: r */
    public View f11745r;

    /* renamed from: s */
    public View f11746s;

    /* renamed from: t */
    public View f11747t;

    /* renamed from: u */
    public ViewGroup f11748u;

    /* renamed from: v */
    public ViewGroup f11749v;

    /* renamed from: w */
    public TextView f11750w;

    /* renamed from: x */
    public ViewGroup f11751x;

    /* renamed from: y */
    public ImageView f11752y;

    /* renamed from: z */
    public TextView f11753z;

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ConversationMessageView$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ConversationMessageView$a.class */
    public class C4756a implements AbstractC4766k {
        public C4756a() {
        }

        @Override // gogolook.callgogolook2.messaging.p078ui.conversation.ConversationMessageView.AbstractC4766k
        /* renamed from: a */
        public void mo27085a(View view, MessagePartData messagePartData) {
            PersonItemView personItemView = (PersonItemView) view;
            personItemView.m27332b(AbstractC11528g.m9259k().mo9255a(ConversationMessageView.this.getContext(), messagePartData));
            personItemView.m27327d(ConversationMessageView.this.isSelected());
            personItemView.m27329c(ConversationMessageView.this.f11728a.m8893k());
            personItemView.setBackgroundDrawable(C12081f.m7212d().m7217a(ConversationMessageView.this.isSelected(), ConversationMessageView.this.f11728a.m8893k(), false, ConversationMessageView.this.f11728a.m8927Q()));
            personItemView.m27326e();
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ConversationMessageView$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ConversationMessageView$b.class */
    public class View$OnLongClickListenerC4757b implements View.OnLongClickListener {
        public View$OnLongClickListenerC4757b() {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            ConversationMessageView.this.performLongClick();
            return true;
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ConversationMessageView$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ConversationMessageView$c.class */
    public class View$OnClickListenerC4758c implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ boolean f11756a;

        public View$OnClickListenerC4758c(boolean z) {
            this.f11756a = z;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f11756a) {
                ConversationMessageView.this.m27125a(6, "scp_url");
            }
            ConversationMessageView.this.f11721E.mo7822e();
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ConversationMessageView$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ConversationMessageView$d.class */
    public static final class C4759d implements Comparator<MessagePartData> {
        /* renamed from: a */
        public int compare(MessagePartData messagePartData, MessagePartData messagePartData2) {
            return messagePartData.m27564t().compareTo(messagePartData2.m27564t());
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ConversationMessageView$e */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ConversationMessageView$e.class */
    public static final class C4760e implements AbstractC9302l<MessagePartData> {
        /* renamed from: a */
        public boolean apply(MessagePartData messagePartData) {
            return messagePartData.m27584B();
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ConversationMessageView$f */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ConversationMessageView$f.class */
    public static final class C4761f implements AbstractC9302l<MessagePartData> {
        /* renamed from: a */
        public boolean apply(MessagePartData messagePartData) {
            return messagePartData.m27561w();
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ConversationMessageView$g */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ConversationMessageView$g.class */
    public static final class C4762g implements AbstractC9302l<MessagePartData> {
        /* renamed from: a */
        public boolean apply(MessagePartData messagePartData) {
            return messagePartData.m27585A();
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ConversationMessageView$h */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ConversationMessageView$h.class */
    public static final class C4763h implements AbstractC9302l<MessagePartData> {
        /* renamed from: a */
        public boolean apply(MessagePartData messagePartData) {
            return messagePartData.m27560x();
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ConversationMessageView$i */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ConversationMessageView$i.class */
    public class C4764i implements AbstractC4766k {
        public C4764i() {
        }

        @Override // gogolook.callgogolook2.messaging.p078ui.conversation.ConversationMessageView.AbstractC4766k
        /* renamed from: a */
        public void mo27085a(View view, MessagePartData messagePartData) {
            ((VideoThumbnailView) view).m27314a(messagePartData, ConversationMessageView.this.f11728a.m8893k());
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ConversationMessageView$j */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ConversationMessageView$j.class */
    public class C4765j implements AbstractC4766k {
        public C4765j() {
        }

        @Override // gogolook.callgogolook2.messaging.p078ui.conversation.ConversationMessageView.AbstractC4766k
        /* renamed from: a */
        public void mo27085a(View view, MessagePartData messagePartData) {
            AudioAttachmentView audioAttachmentView = (AudioAttachmentView) view;
            audioAttachmentView.m27417a(messagePartData, ConversationMessageView.this.f11728a.m8893k(), ConversationMessageView.this.isSelected());
            audioAttachmentView.setBackgroundDrawable(C12081f.m7212d().m7217a(ConversationMessageView.this.isSelected(), ConversationMessageView.this.f11728a.m8893k(), false, ConversationMessageView.this.f11728a.m8927Q()));
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ConversationMessageView$k */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ConversationMessageView$k.class */
    public interface AbstractC4766k {
        /* renamed from: a */
        void mo27085a(View view, MessagePartData messagePartData);
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ConversationMessageView$l */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ConversationMessageView$l.class */
    public interface AbstractC4767l {
        /* renamed from: a */
        CharSequence mo7847a(String str, boolean z);

        /* renamed from: a */
        void mo7848a(String str, String str2, List<String> list, int i, String str3);

        /* renamed from: a */
        boolean mo7863a(ConversationMessageView conversationMessageView, MessagePartData messagePartData, Rect rect);

        /* renamed from: b */
        C11634p.C11635a mo7834b(String str, boolean z);

        /* renamed from: b */
        boolean mo7838b(ConversationMessageView conversationMessageView, MessagePartData messagePartData, Rect rect);

        /* renamed from: b */
        boolean mo7835b(String str);

        /* renamed from: c */
        void mo7828c(String str);

        /* renamed from: e */
        void mo7822e();

        /* renamed from: f */
        void mo7819f();

        /* renamed from: w */
        boolean mo7793w();
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ConversationMessageView$m */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ConversationMessageView$m.class */
    public static class View$OnLongClickListenerC4768m implements View.OnLongClickListener, View.OnTouchListener {

        /* renamed from: a */
        public boolean f11760a;

        /* renamed from: b */
        public final View.OnLongClickListener f11761b;

        public View$OnLongClickListenerC4768m(@Nullable View.OnLongClickListener onLongClickListener) {
            this.f11761b = onLongClickListener;
        }

        /* renamed from: a */
        public static void m27084a(TextView textView, @Nullable View.OnLongClickListener onLongClickListener) {
            View$OnLongClickListenerC4768m mVar = new View$OnLongClickListenerC4768m(onLongClickListener);
            textView.setOnLongClickListener(mVar);
            textView.setOnTouchListener(mVar);
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            this.f11760a = true;
            View.OnLongClickListener onLongClickListener = this.f11761b;
            if (onLongClickListener != null) {
                return onLongClickListener.onLongClick(view);
            }
            return false;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getActionMasked() == 1 && this.f11760a) {
                this.f11760a = false;
                return true;
            } else if (motionEvent.getActionMasked() != 0) {
                return false;
            } else {
                this.f11760a = false;
                return false;
            }
        }
    }

    static {
        Pattern.compile(f11711d0);
    }

    public ConversationMessageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        f11708a0 = context.getResources().getDimensionPixelOffset(R$dimen.message_attachment_corner);
        f11709b0 = context.getResources().getDimensionPixelOffset(R$dimen.image_attachment_fallback_width);
        f11710c0 = context.getResources().getDimensionPixelOffset(R$dimen.image_attachment_fallback_height);
    }

    /* renamed from: a */
    public final int m27127a() {
        return f11698N;
    }

    /* renamed from: a */
    public final int m27126a(int i) {
        if (i == 1 || i == 2) {
            return R$color.app_cmv_status_timestamp_text_color;
        }
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
                return R$color.app_cmv_status_sending_text_color;
            case 8:
            case 9:
                return R$color.message_failed_timestamp_text;
            default:
                switch (i) {
                    case 100:
                        return R$color.app_cmv_status_timestamp_text_color;
                    case 101:
                    case 102:
                    case 103:
                    case 104:
                    case 105:
                        return R$color.app_cmv_status_sending_text_color;
                    case 106:
                    case 107:
                        return R$color.message_download_failed_timestamp_text;
                    default:
                        return 0;
                }
        }
    }

    /* renamed from: a */
    public final void m27125a(int i, String str) {
        this.f11721E.mo7848a(this.f11728a.m8932L(), this.f11728a.m8929O(), C14131q4.m2404e(this.f11728a.m8929O()), i, str);
    }

    /* renamed from: a */
    public void m27124a(Cursor cursor, boolean z) {
        this.f11720D = z;
        this.f11728a.m8918a(cursor);
        m27091w();
        m27092v();
        m27099o();
    }

    /* renamed from: a */
    public final void m27123a(Uri uri) {
        C5769g<Uri> a = C5776l.m24470c(getContext()).m24457a(uri);
        a.mo24495b(f11709b0, f11710c0);
        a.m24530b(new C14698a(getContext(), f11708a0, 0));
        a.mo24496b((int) R$drawable.generic_video_icon);
        a.mo24491f();
        a.mo24518a(this.f11731d);
    }

    /* renamed from: a */
    public void m27121a(AsyncImageView.C4678b bVar) {
        C12151d.m7000b(this.f11731d);
        this.f11730c.m27354a(bVar);
    }

    /* renamed from: a */
    public void m27120a(AbstractC4767l lVar) {
        this.f11721E = lVar;
    }

    /* renamed from: a */
    public final void m27117a(AbstractC9302l<MessagePartData> lVar, int i, AbstractC4766k kVar, Class<?> cls) {
        int i2;
        View childAt;
        LayoutInflater from = LayoutInflater.from(getContext());
        int i3 = -1;
        do {
            i2 = i3 + 1;
            childAt = this.f11729b.getChildAt(i2);
            if (childAt == null) {
                break;
            }
            i3 = i2;
        } while (!cls.isInstance(childAt));
        for (MessagePartData messagePartData : this.f11728a.m8917a(lVar)) {
            View childAt2 = this.f11729b.getChildAt(i2);
            View view = childAt2;
            if (!cls.isInstance(childAt2)) {
                view = from.inflate(i, (ViewGroup) this.f11729b, false);
                view.setOnClickListener(this);
                view.setOnLongClickListener(this);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                layoutParams.gravity = this.f11728a.m8893k() ? GravityCompat.START : 8388613;
                this.f11729b.addView(view, i2, layoutParams);
            }
            kVar.mo27085a(view, messagePartData);
            view.setTag(messagePartData);
            view.setVisibility(0);
            i2++;
        }
        while (i2 < this.f11729b.getChildCount() && cls.isInstance(this.f11729b.getChildAt(i2))) {
            this.f11729b.removeViewAt(i2);
        }
    }

    /* renamed from: a */
    public final void m27116a(boolean z) {
        if (z) {
            this.f11718B.setVisibility(this.f11733f ? 0 : 8);
            this.f11718B.setOnClickListener(this.f11733f ? this : null);
            this.f11718B.setEnabled(!this.f11721E.mo7793w());
        }
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.MultiAttachmentLayout.AbstractC4692b
    /* renamed from: a */
    public boolean mo27122a(MessagePartData messagePartData, Rect rect) {
        return this.f11721E.mo7838b(this, messagePartData, rect);
    }

    /* renamed from: b */
    public final int m27115b() {
        if (f11701Q <= 0) {
            f11701Q = getResources().getDimensionPixelOffset(R$dimen.app_cmv_attachments_view_padding_horizontal);
        }
        return f11701Q;
    }

    /* renamed from: b */
    public final void m27114b(int i) {
        this.f11729b.setGravity(i);
        int color = getResources().getColor(R$color.app_message_image_color_selected);
        if (this.f11731d.getVisibility() == 0) {
            if (isSelected()) {
                this.f11731d.setColorFilter(color);
            } else {
                this.f11731d.clearColorFilter();
            }
        }
        if (this.f11730c.getVisibility() == 0) {
            if (isSelected()) {
                this.f11730c.m27356a(color);
            } else {
                this.f11730c.m27357a();
            }
        }
        int childCount = this.f11729b.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = this.f11729b.getChildAt(i2);
            if ((childAt instanceof VideoThumbnailView) && childAt.getVisibility() == 0) {
                VideoThumbnailView videoThumbnailView = (VideoThumbnailView) childAt;
                if (isSelected()) {
                    videoThumbnailView.m27316a(color);
                } else {
                    videoThumbnailView.m27317a();
                }
            }
        }
        int i3 = getResources().getDimensionPixelSize(R$dimen.message_padding_same_author);
        int childCount2 = this.f11729b.getChildCount();
        boolean z = false;
        for (int i4 = 0; i4 < childCount2; i4++) {
            View childAt2 = this.f11729b.getChildAt(i4);
            z = z;
            if (childAt2.getVisibility() == 0) {
                if (!z) {
                    i3 = 0;
                }
                ((LinearLayout.LayoutParams) childAt2.getLayoutParams()).topMargin = i3;
                z = true;
            }
        }
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.MultiAttachmentLayout.AbstractC4692b
    /* renamed from: b */
    public boolean mo27113b(MessagePartData messagePartData, Rect rect) {
        return this.f11721E.mo7863a(this, messagePartData, rect);
    }

    /* renamed from: c */
    public C11610g m27111c() {
        return this.f11728a;
    }

    /* renamed from: d */
    public final int m27110d() {
        return f11697L;
    }

    /* renamed from: e */
    public final int m27109e() {
        if (f11702R <= 0) {
            f11702R = getResources().getDimensionPixelOffset(R$dimen.app_cmv_message_arrow_width);
        }
        return f11702R;
    }

    /* renamed from: f */
    public final int m27108f() {
        if (f11706V <= 0) {
            f11706V = getResources().getDimensionPixelOffset(R$dimen.app_cmv_download_fail_icon_padding_top);
        }
        return f11706V;
    }

    /* renamed from: g */
    public final int m27107g() {
        if (f11704T <= 0) {
            f11704T = getResources().getDimensionPixelOffset(R$dimen.app_cmv_download_icon_padding_top);
        }
        return f11704T;
    }

    /* renamed from: h */
    public final int m27106h() {
        if (f11707W <= 0) {
            f11707W = getResources().getDimensionPixelOffset(R$dimen.app_cmv_download_status_desc_margin_top);
        }
        return f11707W;
    }

    /* renamed from: i */
    public final int m27105i() {
        if (f11705U <= 0) {
            f11705U = getResources().getDimensionPixelOffset(R$dimen.app_cmv_downloading_icon_padding_top);
        }
        return f11705U;
    }

    @Override // android.view.View
    public boolean isSelected() {
        AbstractC4767l lVar = this.f11721E;
        return lVar == null ? super.isSelected() : lVar.mo7835b(this.f11728a.m8887q());
    }

    /* renamed from: j */
    public final int m27104j() {
        if (f11703S <= 0) {
            f11703S = getResources().getDimensionPixelOffset(R$dimen.app_cmv_message_status_padding_bottom);
        }
        return f11703S;
    }

    /* renamed from: k */
    public final int m27103k() {
        if (f11699O <= 0) {
            f11699O = getResources().getDimensionPixelOffset(R$dimen.app_cmv_metadata_view_min_width);
        }
        return f11699O;
    }

    /* renamed from: l */
    public final int m27102l() {
        if (f11700P <= 0) {
            f11700P = getResources().getDimensionPixelOffset(R$dimen.app_cmv_metadata_view_padding_horizontal);
        }
        return f11700P;
    }

    /* renamed from: m */
    public final boolean m27101m() {
        return this.f11728a.m8926R() || !TextUtils.isEmpty(C11834j.m8121a(getResources(), this.f11728a.m8885s()));
    }

    /* renamed from: n */
    public final boolean m27100n() {
        return this.f11728a.m8904d();
    }

    /* renamed from: o */
    public final void m27099o() {
        StringBuilder sb = new StringBuilder();
        Resources resources = getResources();
        String string = resources.getString(R$string.enumeration_comma);
        boolean z = !TextUtils.isEmpty(this.f11728a.m8929O()) && !this.f11733f;
        if (this.f11728a.m8893k()) {
            sb.append(resources.getString(z ? R$string.incoming_text_sender_content_description : R$string.incoming_sender_content_description, this.f11728a.m8941C()));
        } else {
            sb.append(resources.getString(z ? R$string.outgoing_text_sender_content_description : R$string.outgoing_sender_content_description));
        }
        if (this.f11742o.getVisibility() == 0) {
            sb.append(string);
            sb.append(this.f11744q.getText());
        }
        if (this.f11732e.getVisibility() == 0) {
            if (this.f11733f) {
                this.f11732e.setImportantForAccessibility(1);
            } else {
                this.f11732e.setImportantForAccessibility(2);
                sb.append(string);
                sb.append(this.f11732e.getText());
            }
        }
        if (this.f11738k.getVisibility() == 0) {
            sb.append(string);
            sb.append(this.f11736i.getText());
            sb.append(string);
            sb.append(this.f11737j.getText());
        }
        if (this.f11735h.getVisibility() == 0) {
            sb.append(string);
            sb.append(this.f11735h.getText());
        }
        if (this.f11750w.getVisibility() == 0) {
            sb.append(string);
            sb.append(this.f11750w.getText());
        }
        if (this.f11745r.getVisibility() == 0) {
            sb.append(string);
            sb.append(resources.getString(R$string.delivered_status_content_description));
        }
        setContentDescription(sb);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof MessagePartData) {
            mo27113b((MessagePartData) tag, C12212s0.m6792a(view));
        } else if (view == this.f11731d) {
            if (this.f11723G != null) {
                AbstractC12126w.m7095a().mo7075a(getContext(), this.f11723G);
            } else if (this.f11722F != null) {
                mo27113b(this.f11722F, C12212s0.m6792a(view));
            }
        } else if (view == this.f11732e || view == this.f11742o || view == this.f11743p || view == this.f11744q || view == this.f11749v || view == this.f11746s) {
            mo27113b(null, C12212s0.m6792a(this.f11749v));
        } else if (view == this.f11717A) {
            this.f11721E.mo7828c(this.f11728a.m8887q());
        } else if (view == this.f11718B) {
            m27125a(7, "scp_scan_url_button");
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f11740m = (ContactIconView) findViewById(R$id.conversation_icon);
        this.f11740m.setOnLongClickListener(new View$OnLongClickListenerC4757b());
        this.f11729b = (LinearLayout) findViewById(R$id.message_attachments);
        this.f11730c = (MultiAttachmentLayout) findViewById(R$id.multiple_attachments);
        this.f11730c.m27353a(this);
        this.f11731d = (ImageView) findViewById(R$id.message_image);
        this.f11731d.setOnClickListener(this);
        this.f11731d.setOnLongClickListener(this);
        this.f11732e = (TextView) findViewById(R$id.message_text);
        this.f11732e.setOnClickListener(this);
        View$OnLongClickListenerC4768m.m27084a(this.f11732e, this);
        this.f11735h = (TextView) findViewById(R$id.message_status);
        this.f11736i = (TextView) findViewById(R$id.message_title);
        this.f11737j = (TextView) findViewById(R$id.mms_info);
        this.f11738k = (LinearLayout) findViewById(R$id.message_title_layout);
        this.f11739l = (TextView) findViewById(R$id.message_sender_name);
        this.f11741n = (ConversationMessageBubbleView) findViewById(R$id.message_content);
        this.f11742o = findViewById(R$id.subject_container);
        this.f11743p = (TextView) this.f11742o.findViewById(R$id.subject_label);
        this.f11744q = (TextView) this.f11742o.findViewById(R$id.subject_text);
        this.f11745r = findViewById(R$id.smsDeliveredBadge);
        this.f11746s = findViewById(R$id.message_error_badge);
        this.f11746s.setOnClickListener(this);
        this.f11747t = findViewById(R$id.message_important_badge);
        this.f11748u = (ViewGroup) findViewById(R$id.message_metadata);
        this.f11749v = (ViewGroup) findViewById(R$id.message_text_and_info);
        this.f11749v.setOnLongClickListener(this);
        this.f11750w = (TextView) findViewById(R$id.sim_name);
        this.f11751x = (ViewGroup) findViewById(R$id.message_download_status_container);
        this.f11752y = (ImageView) findViewById(R$id.message_download_status_icon);
        this.f11753z = (TextView) findViewById(R$id.message_download_status_desc);
        this.f11717A = (TextView) findViewById(R$id.message_download_status_button);
        this.f11717A.setOnClickListener(this);
        TextView textView = (TextView) findViewById(R$id.message_url_notification);
        this.f11718B = findViewById(R$id.button_url_scan);
        this.f11719C = findViewById(R$id.layout_url_caution);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        AbstractC4767l lVar = this.f11721E;
        return lVar != null ? lVar.mo7793w() : super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        boolean a = C12143b.m7029a(this);
        int measuredWidth = this.f11740m.getMeasuredWidth();
        int measuredHeight = this.f11740m.getMeasuredHeight();
        int paddingTop = getPaddingTop();
        int i11 = i3 - i;
        int paddingLeft = (((i11 - measuredWidth) - getPaddingLeft()) - getPaddingRight()) - this.f11748u.getMeasuredWidth();
        int measuredHeight2 = this.f11741n.getMeasuredHeight();
        int measuredWidth2 = this.f11748u.getMeasuredWidth();
        int measuredHeight3 = this.f11748u.getMeasuredHeight();
        if (this.f11749v.getVisibility() == 0 && this.f11749v.getMeasuredWidth() > 0) {
            i5 = this.f11749v.getMeasuredWidth();
        } else if (this.f11729b.getVisibility() != 0 || this.f11729b.getChildCount() == 0) {
            i5 = 0;
        } else {
            LinearLayout linearLayout = this.f11729b;
            if (linearLayout.getChildAt(linearLayout.getChildCount() - 1).getVisibility() == 0) {
                LinearLayout linearLayout2 = this.f11729b;
                if (linearLayout2.getChildAt(linearLayout2.getChildCount() - 1).getMeasuredWidth() > 0) {
                    LinearLayout linearLayout3 = this.f11729b;
                    i9 = linearLayout3.getChildAt(linearLayout3.getChildCount() - 1).getMeasuredWidth();
                    i10 = m27115b();
                    i5 = i9 + i10;
                }
            }
            i9 = this.f11729b.getChildAt(0).getMeasuredWidth();
            i10 = m27115b();
            i5 = i9 + i10;
        }
        boolean k = this.f11728a.m8893k();
        if ((!k || a) && (k || !a)) {
            i7 = (i11 - getPaddingRight()) - measuredWidth;
            i6 = i7 - paddingLeft;
            i8 = i5 > 0 ? (i7 - i5) - measuredWidth2 : getPaddingLeft();
        } else {
            i7 = getPaddingLeft();
            i6 = i7 + measuredWidth;
            if (i5 <= 0) {
                i5 = paddingLeft;
            }
            i8 = i5 + i6;
        }
        this.f11740m.layout(i7, paddingTop, measuredWidth + i7, measuredHeight + paddingTop);
        this.f11741n.layout(i6, paddingTop, paddingLeft + i6, measuredHeight2 + paddingTop);
        int measuredHeight4 = (i4 - i2) - (this.f11719C.getVisibility() != 8 ? this.f11724H + this.f11719C.getMeasuredHeight() : measuredHeight3 / 2);
        this.f11748u.layout(i8, measuredHeight4 - measuredHeight3, measuredWidth2 + i8, measuredHeight4);
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        if (view == this.f11732e || view == this.f11742o || view == this.f11743p || view == this.f11744q || view == this.f11749v) {
            return mo27122a((MessagePartData) null, C12212s0.m6792a(this.f11749v));
        }
        if (view != this.f11731d || this.f11722F == null) {
            Object tag = view.getTag();
            if (!(tag instanceof MessagePartData)) {
                return false;
            }
            return mo27122a((MessagePartData) tag, C12212s0.m6792a(view));
        }
        return mo27122a(this.f11722F, C12212s0.m6792a(view));
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int d = m27110d();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(d, 1073741824);
        this.f11740m.measure(makeMeasureSpec2, makeMeasureSpec2);
        int a = m27127a();
        int k = m27103k();
        int measuredWidth = (((size - (this.f11740m.getMeasuredWidth() * 2)) - a) - getPaddingLeft()) - getPaddingRight();
        this.f11741n.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth - k, Integer.MIN_VALUE), makeMeasureSpec);
        this.f11748u.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth - this.f11741n.getMeasuredWidth(), 1073741824), makeMeasureSpec);
        setMeasuredDimension(size, Math.max(this.f11740m.getMeasuredHeight(), this.f11741n.getMeasuredHeight()) + getPaddingBottom() + getPaddingTop());
    }

    /* renamed from: p */
    public final void m27098p() {
        String str;
        this.f11722F = null;
        this.f11723G = null;
        m27117a(f11713f0, R$layout.message_video_attachment, this.f11725I, VideoThumbnailView.class);
        m27117a(f11714g0, R$layout.message_audio_attachment, this.f11726J, AudioAttachmentView.class);
        m27117a(f11715h0, R$layout.message_vcard_attachment, this.f11727K, PersonItemView.class);
        List<MessagePartData> a = this.f11728a.m8917a(f11716i0);
        int i = 8;
        boolean z = true;
        if (a.size() > 1) {
            Collections.sort(a, f11712e0);
            this.f11730c.m27350a(a, (Rect) null, a.size());
            this.f11730c.setVisibility(0);
        } else {
            this.f11730c.setVisibility(8);
        }
        if (this.f11733f && a.size() == 0) {
            CharSequence text = this.f11732e.getText();
            if (text instanceof Spanned) {
                URLSpan[] uRLSpanArr = (URLSpan[]) ((Spanned) text).getSpans(0, text.length(), URLSpan.class);
                int length = uRLSpanArr.length;
                String str2 = null;
                int i2 = 0;
                while (true) {
                    str = str2;
                    if (i2 >= length) {
                        break;
                    }
                    String url = uRLSpanArr[i2].getURL();
                    String a2 = C12222w0.m6720a(url);
                    str2 = str2;
                    if (!TextUtils.isEmpty(a2)) {
                        if (!TextUtils.isEmpty(str2)) {
                            this.f11723G = null;
                            break;
                        } else {
                            this.f11723G = url;
                            str2 = a2;
                        }
                    }
                    i2++;
                }
            }
        }
        str = null;
        this.f11734g = !TextUtils.isEmpty(str);
        if (a.size() == 1 || this.f11734g) {
            WindowManager windowManager = (WindowManager) getContext().getSystemService("window");
            DisplayMetrics displayMetrics = new DisplayMetrics();
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            int d = m27110d();
            int i3 = displayMetrics.widthPixels;
            if (a.size() == 1) {
                this.f11722F = a.get(0);
                new C11680u(this.f11722F, (i3 - d) - d, -1, false);
                m27123a(this.f11722F.m27567q());
            } else {
                m27123a(Uri.parse(str));
            }
            this.f11731d.setVisibility(0);
        } else {
            this.f11731d.setImageDrawable(null);
            this.f11731d.setVisibility(8);
        }
        int childCount = this.f11729b.getChildCount();
        int i4 = 0;
        while (true) {
            if (i4 >= childCount) {
                z = false;
                break;
            } else if (this.f11729b.getChildAt(i4).getVisibility() == 0) {
                break;
            } else {
                i4++;
            }
        }
        LinearLayout linearLayout = this.f11729b;
        if (z) {
            i = 0;
        }
        linearLayout.setVisibility(i);
    }

    /* renamed from: q */
    public final void m27097q() {
        m27094t();
        m27098p();
        m27095s();
        this.f11741n.m27128a(this.f11728a);
    }

    /* renamed from: r */
    public final void m27096r() {
        boolean k = this.f11728a.m8893k();
        int N = this.f11728a.m8930N();
        if (!k || N == 100) {
            this.f11751x.setVisibility(8);
            this.f11749v.setVisibility(0);
            this.f11748u.setVisibility(0);
            this.f11729b.setVisibility(0);
            return;
        }
        int paddingLeft = this.f11751x.getPaddingLeft();
        boolean isSelected = isSelected();
        this.f11753z.setTextColor(getResources().getColor(isSelected ? R$color.app_message_download_button_text_color_selected : R$color.app_message_download_button_text_color));
        int i = R$color.app_message_tint_color_selected;
        int i2 = R$drawable.ch_down_edit_btn;
        switch (N) {
            case 101:
                this.f11751x.setPadding(paddingLeft, m27107g(), paddingLeft, 0);
                this.f11752y.setImageDrawable(C12081f.m7212d().m7211d(isSelected));
                TextView textView = this.f11717A;
                if (!isSelected) {
                    i2 = R$drawable.download_button_background;
                }
                textView.setBackgroundResource(i2);
                TextView textView2 = this.f11717A;
                Resources resources = getResources();
                if (!isSelected) {
                    i = R$color.app_message_download_button_text_color;
                }
                textView2.setTextColor(resources.getColor(i));
                this.f11717A.setVisibility(0);
                String formatFileSize = Formatter.formatFileSize(getContext(), this.f11728a.m8933K());
                ((ViewGroup.MarginLayoutParams) this.f11753z.getLayoutParams()).topMargin = 0;
                this.f11753z.setSingleLine(true);
                this.f11753z.setTextSize(2, 12.0f);
                this.f11753z.setText(formatFileSize);
                break;
            case 102:
            case 103:
            case 104:
            case 105:
                this.f11751x.setPadding(paddingLeft, m27105i(), paddingLeft, 0);
                this.f11752y.setImageDrawable(C12081f.m7212d().m7210e(isSelected));
                this.f11717A.setVisibility(8);
                ((ViewGroup.MarginLayoutParams) this.f11753z.getLayoutParams()).topMargin = m27106h();
                this.f11753z.setSingleLine(true);
                this.f11753z.setTextSize(2, 14.0f);
                this.f11753z.setText(R$string.message_status_downloading);
                break;
            case 106:
                this.f11751x.setPadding(paddingLeft, m27107g(), paddingLeft, 0);
                this.f11752y.setImageDrawable(C12081f.m7212d().m7213c(isSelected));
                TextView textView3 = this.f11717A;
                if (!isSelected) {
                    i2 = R$drawable.download_button_background;
                }
                textView3.setBackgroundResource(i2);
                TextView textView4 = this.f11717A;
                Resources resources2 = getResources();
                if (!isSelected) {
                    i = R$color.app_message_download_button_text_color;
                }
                textView4.setTextColor(resources2.getColor(i));
                this.f11717A.setVisibility(0);
                ((ViewGroup.MarginLayoutParams) this.f11753z.getLayoutParams()).topMargin = 0;
                this.f11753z.setSingleLine(true);
                this.f11753z.setTextSize(2, 12.0f);
                this.f11753z.setText(R$string.message_download_failed);
                break;
            case 107:
                this.f11751x.setPadding(paddingLeft, m27108f(), paddingLeft, 0);
                this.f11752y.setImageDrawable(C12081f.m7212d().m7213c(isSelected));
                this.f11717A.setVisibility(8);
                String string = getResources().getString(R$string.expired_info, DateUtils.formatDateTime(getContext(), this.f11728a.m8886r(), 131096));
                ((ViewGroup.MarginLayoutParams) this.f11753z.getLayoutParams()).topMargin = m27106h();
                this.f11753z.setSingleLine(false);
                this.f11753z.setTextSize(2, 12.0f);
                this.f11753z.setText(getResources().getString(R$string.message_status_expired) + string);
                break;
        }
        C12242z.m6556a(this.f11751x, C12081f.m7212d().m7217a(isSelected(), true, false, false));
        this.f11751x.setVisibility(0);
        this.f11749v.setVisibility(8);
        this.f11748u.setVisibility(8);
        this.f11729b.setVisibility(8);
    }

    /* renamed from: s */
    public final void m27095s() {
        this.f11742o.setVisibility(8);
    }

    /* renamed from: t */
    public final void m27094t() {
        String str;
        if (!TextUtils.isEmpty(null)) {
            str = getResources().getString(R$string.conversation_message_view_subject_text) + ((String) null) + "\n" + this.f11728a.m8929O();
        } else {
            str = this.f11728a.m8929O();
        }
        if (!TextUtils.isEmpty(str)) {
            this.f11732e.setText(this.f11721E.mo7847a(str, this.f11728a.m8893k()));
            this.f11733f = C12810o.m5243c(str);
            Linkify.addLinks(this.f11732e, 5);
            this.f11732e.setVisibility(0);
            boolean f = C12810o.m5239f();
            if (this.f11733f) {
                this.f11721E.mo7819f();
            }
            m27116a(f);
            C12801n.m5280a(getContext(), str, "#0690c9", this.f11732e, null, null, new View$OnClickListenerC4758c(f), null, !f);
            return;
        }
        this.f11732e.setVisibility(8);
        this.f11733f = false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: u */
    public final void m27093u() {
        int i;
        int i2;
        boolean isSelected = isSelected();
        int i3 = R$color.app_message_text_color_outgoing;
        if (isSelected) {
            i2 = R$color.message_action_status_text;
            i = R$color.message_action_info_text;
            m27101m();
        } else {
            if (this.f11728a.m8893k()) {
                i3 = R$color.app_message_text_color_incoming;
            }
            int N = this.f11728a.m8930N();
            i = 2131100123;
            if (N != 1) {
                i = 2131100123;
                if (N != 2) {
                    i = 2131100123;
                    switch (N) {
                        default:
                            i = 2131100123;
                            switch (N) {
                                case 101:
                                case 102:
                                case 103:
                                case 104:
                                case 105:
                                    break;
                                case 106:
                                case 107:
                                    i3 = R$color.message_text_color_incoming_download_failed;
                                    i2 = R$color.message_download_failed_status_text;
                                    i = R$color.message_info_text_incoming_download_failed;
                                    break;
                                default:
                                    i = -1;
                            }
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                            i2 = i3;
                            break;
                    }
                }
            }
            i2 = i3;
        }
        int color = getResources().getColor(i3);
        int color2 = i3 == 2131099726 ? getResources().getColor(R$color.app_message_text_link_color) : color;
        this.f11732e.setTextColor(color);
        this.f11732e.setLinkTextColor(color2);
        this.f11744q.setTextColor(color);
        if (i2 >= 0) {
            this.f11736i.setTextColor(getResources().getColor(i2));
        }
        if (i >= 0) {
            this.f11737j.setTextColor(getResources().getColor(i));
        }
        int a = m27126a(this.f11728a.m8930N());
        if (a > 0) {
            this.f11735h.setTextColor(getResources().getColor(a));
            this.f11739l.setTextColor(getResources().getColor(a));
        }
        this.f11743p.setTextColor(getResources().getColor(i3));
    }

    /* renamed from: v */
    public final void m27092v() {
        int i;
        Drawable drawable;
        Resources resources = getResources();
        C12081f d = C12081f.m7212d();
        boolean k = this.f11728a.m8893k();
        int dimensionPixelSize = resources.getDimensionPixelSize(R$dimen.message_padding_same_author);
        dimensionPixelSize = resources.getDimensionPixelSize(R$dimen.message_padding_default);
        m27127a();
        m27109e();
        int d2 = m27110d();
        resources.getDimensionPixelOffset(R$dimen.message_text_left_right_padding);
        resources.getDimensionPixelOffset(R$dimen.message_text_top_padding);
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R$dimen.message_text_bottom_padding);
        if (!this.f11728a.m8928P()) {
            drawable = d.m7217a(isSelected(), k, true, this.f11728a.m8927Q());
            i = 0;
        } else if (m27101m()) {
            drawable = d.m7217a(isSelected(), k, true, this.f11728a.m8927Q());
            i = dimensionPixelSize;
        } else {
            drawable = null;
            i = 0;
            d2 = 0;
        }
        int i2 = k ? 8388627 : 8388629;
        if (!this.f11728a.m8902e()) {
        }
        C12242z.m6556a(this.f11732e, drawable);
        this.f11749v.setMinimumHeight(d2);
        ((LinearLayout.LayoutParams) this.f11749v.getLayoutParams()).topMargin = i;
        C12212s0.m6783d();
        int dimensionPixelOffset2 = resources.getDimensionPixelOffset(R$dimen.message_metadata_top_padding);
        this.f11749v.setPadding(0, 0, 0, 0);
        this.f11741n.setPadding(0, dimensionPixelOffset, 0, dimensionPixelOffset2);
        setPadding(getPaddingLeft(), dimensionPixelSize, getPaddingRight(), 0);
        this.f11741n.setGravity(i2);
        m27114b(i2);
        m27093u();
        requestLayout();
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00fb  */
    /* renamed from: w */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m27091w() {
        /*
            Method dump skipped, instructions count: 1367
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.messaging.p078ui.conversation.ConversationMessageView.m27091w():void");
    }
}
