package p459j.p460a.p463b0.p466s;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.UserProfile;
import gogolook.callgogolook2.realm.obj.contact.ContactRealmObject;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import gogolook.callgogolook2.view.SizedTextView;
import kotlin.Metadata;
import p459j.p460a.p461a0.C11086o;
import p459j.p460a.p582w0.C14017g4;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\r\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J(\u00105\u001a\u0002062\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u00020\u00122\u0006\u0010:\u001a\u00020\u001b2\u0006\u0010;\u001a\u00020<H\u0002J\u0006\u0010=\u001a\u00020>J\u001a\u0010?\u001a\u00020>2\b\u0010 \u001a\u0004\u0018\u00010\f2\b\u0010;\u001a\u0004\u0018\u00010@R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0018\u0010\u000e\"\u0004\b\u0019\u0010\u0010R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001c\u0010 \u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b!\u0010\u000e\"\u0004\b\"\u0010\u0010R\u001c\u0010#\u001a\u0004\u0018\u00010$X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u001c\u0010)\u001a\u0004\u0018\u00010$X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b*\u0010&\"\u0004\b+\u0010(R\u001a\u0010,\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b-\u0010\u0014\"\u0004\b.\u0010\u0016R\u001a\u0010/\u001a\u000200X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b1\u00102\"\u0004\b3\u00104¨\u0006A"}, m815d2 = {"Lgogolook/callgogolook2/main/dialer/DialerLogItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "parent", "Landroid/view/ViewGroup;", "(Landroid/view/ViewGroup;)V", ContactRealmObject.CONTACT_ID, "", "getContactId", "()J", "setContactId", "(J)V", LogsGroupRealmObject.DISPLAY_NAME, "", "getDisplayName", "()Ljava/lang/String;", "setDisplayName", "(Ljava/lang/String;)V", "highlightColor", "", "getHighlightColor", "()I", "setHighlightColor", "(I)V", "highlightKey", "getHighlightKey", "setHighlightKey", "message", "", "getMessage", "()Ljava/lang/CharSequence;", "setMessage", "(Ljava/lang/CharSequence;)V", "number", "getNumber", "setNumber", "stvSecondNumberInfoNumber", "Landroid/widget/TextView;", "getStvSecondNumberInfoNumber", "()Landroid/widget/TextView;", "setStvSecondNumberInfoNumber", "(Landroid/widget/TextView;)V", "stvSecondNumberInfoTeleCom", "getStvSecondNumberInfoTeleCom", "setStvSecondNumberInfoTeleCom", "type", "getType", "setType", "uiUpdater", "Lgogolook/callgogolook2/loader/UIUpdater;", "getUiUpdater", "()Lgogolook/callgogolook2/loader/UIUpdater;", "setUiUpdater", "(Lgogolook/callgogolook2/loader/UIUpdater;)V", "getStyledText", "Landroid/text/SpannableString;", "isIncomingSuspiciousNumber", "", "textType", "text", UserProfile.KEY_CONTACT_INFO_VALUE, "Lgogolook/callgogolook2/gson/RowInfo;", "initView", "", "setData", "Lgogolook/callgogolook2/gson/NumberInfo;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.s.p */
/* loaded from: classes2-dex2jar.jar:j/a/b0/s/p.class */
public final class C11290p extends RecyclerView.ViewHolder {

    /* renamed from: a */
    public String f25342a;

    /* renamed from: b */
    public String f25343b;

    /* renamed from: c */
    public long f25344c;

    /* renamed from: d */
    public CharSequence f25345d;

    /* renamed from: e */
    public int f25346e;

    /* renamed from: f */
    public TextView f25347f;

    /* renamed from: g */
    public TextView f25348g;

    /* renamed from: h */
    public String f25349h;

    /* renamed from: i */
    public int f25350i;

    /* renamed from: j */
    public C11086o f25351j = new C11291a();

    /* renamed from: j.a.b0.s.p$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/p$a.class */
    public static final class C11291a extends C11086o {
        public C11291a() {
        }

        @Override // p459j.p460a.p461a0.C11040b
        /* renamed from: b */
        public void mo1836b(String str, NumberInfo numberInfo) {
            if (str != null && numberInfo != null && TextUtils.equals(str, C11290p.this.m9882a())) {
                C11290p.this.m9877a(str, numberInfo);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11290p(ViewGroup viewGroup) {
        super(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.dialer_call_log_list_view_log_item, viewGroup, false));
        C15149k.m377b(viewGroup, "parent");
    }

    /* renamed from: a */
    public final String m9882a() {
        return this.f25342a;
    }

    /* renamed from: a */
    public final void m9881a(int i) {
        this.f25350i = i;
    }

    /* renamed from: a */
    public final void m9880a(long j) {
        this.f25344c = j;
    }

    /* renamed from: a */
    public final void m9879a(CharSequence charSequence) {
        this.f25345d = charSequence;
    }

    /* renamed from: a */
    public final void m9878a(String str) {
        this.f25343b = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:138:0x0586  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0068  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9877a(java.lang.String r8, gogolook.callgogolook2.gson.NumberInfo r9) {
        /*
            Method dump skipped, instructions count: 1420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p463b0.p466s.C11290p.m9877a(java.lang.String, gogolook.callgogolook2.gson.NumberInfo):void");
    }

    /* renamed from: b */
    public final C11086o m9876b() {
        return this.f25351j;
    }

    /* renamed from: b */
    public final void m9875b(int i) {
        this.f25346e = i;
    }

    /* renamed from: b */
    public final void m9874b(String str) {
        this.f25349h = str;
    }

    /* renamed from: c */
    public final void m9873c() {
        int i;
        View view;
        TextView textView;
        int i2;
        View view2;
        if (this.f25347f == null) {
            if (C14017g4.m2835A()) {
                view2 = this.itemView;
                C15149k.m383a((Object) view2, "itemView");
                i2 = R$id.stvSecondaryNumberInfoSecondItem;
            } else {
                view2 = this.itemView;
                C15149k.m383a((Object) view2, "itemView");
                i2 = R$id.stvSecondaryNumberInfoFirstItem;
            }
            this.f25347f = (SizedTextView) view2.findViewById(i2);
        }
        if (this.f25348g == null) {
            if (C14017g4.m2835A()) {
                view = this.itemView;
                C15149k.m383a((Object) view, "itemView");
                i = R$id.stvSecondaryNumberInfoFirstItem;
            } else {
                view = this.itemView;
                C15149k.m383a((Object) view, "itemView");
                i = R$id.stvSecondaryNumberInfoSecondItem;
            }
            this.f25348g = (SizedTextView) view.findViewById(i);
            if (C14017g4.m2835A() && (textView = this.f25348g) != null) {
                textView.setBackgroundResource(R$drawable.bg_log_telecom);
            }
        }
    }

    /* renamed from: c */
    public final void m9872c(String str) {
        this.f25342a = str;
    }
}
