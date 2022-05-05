package p459j.p460a.p533l.p534n;

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
import gogolook.callgogolook2.view.SizedTextView;
import kotlin.Metadata;
import p459j.p460a.p461a0.C11086o;
import p459j.p460a.p582w0.C14017g4;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\r\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010.\u001a\u00020/J\u001a\u00100\u001a\u00020/2\b\u0010\u001c\u001a\u0004\u0018\u00010\u000e2\b\u00101\u001a\u0004\u0018\u000102R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0004\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001d\u0010\u0010\"\u0004\b\u001e\u0010\u0012R\u001c\u0010\u001f\u001a\u0004\u0018\u00010 X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u001c\u0010%\u001a\u0004\u0018\u00010 X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b&\u0010\"\"\u0004\b'\u0010$R\u001a\u0010(\u001a\u00020)X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-¨\u00063"}, m815d2 = {"Lgogolook/callgogolook2/block/blocklog/BlockLogsPageLogsItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "parent", "Landroid/view/ViewGroup;", "isNeedShowDay", "", "(Landroid/view/ViewGroup;Z)V", ContactRealmObject.CONTACT_ID, "", "getContactId", "()J", "setContactId", "(J)V", "contactName", "", "getContactName", "()Ljava/lang/String;", "setContactName", "(Ljava/lang/String;)V", "()Z", "setNeedShowDay", "(Z)V", "message", "", "getMessage", "()Ljava/lang/CharSequence;", "setMessage", "(Ljava/lang/CharSequence;)V", "number", "getNumber", "setNumber", "stvSecondNumberInfoNumber", "Landroid/widget/TextView;", "getStvSecondNumberInfoNumber", "()Landroid/widget/TextView;", "setStvSecondNumberInfoNumber", "(Landroid/widget/TextView;)V", "stvSecondNumberInfoTeleCom", "getStvSecondNumberInfoTeleCom", "setStvSecondNumberInfoTeleCom", "uiUpdater", "Lgogolook/callgogolook2/loader/UIUpdater;", "getUiUpdater", "()Lgogolook/callgogolook2/loader/UIUpdater;", "setUiUpdater", "(Lgogolook/callgogolook2/loader/UIUpdater;)V", "initView", "", "setData", UserProfile.KEY_CONTACT_INFO_VALUE, "Lgogolook/callgogolook2/gson/NumberInfo;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.l.n.e */
/* loaded from: classes2-dex2jar.jar:j/a/l/n/e.class */
public final class C12965e extends RecyclerView.ViewHolder {

    /* renamed from: a */
    public String f29327a;

    /* renamed from: b */
    public String f29328b;

    /* renamed from: c */
    public long f29329c;

    /* renamed from: d */
    public TextView f29330d;

    /* renamed from: e */
    public TextView f29331e;

    /* renamed from: f */
    public C11086o f29332f = new C12966a();

    /* renamed from: g */
    public boolean f29333g;

    /* renamed from: j.a.l.n.e$a */
    /* loaded from: classes2-dex2jar.jar:j/a/l/n/e$a.class */
    public static final class C12966a extends C11086o {
        public C12966a() {
        }

        @Override // p459j.p460a.p461a0.C11040b
        /* renamed from: b */
        public void mo1836b(String str, NumberInfo numberInfo) {
            if (TextUtils.equals(str, C12965e.this.m4914a()) && str != null && numberInfo != null) {
                C12965e.this.m4911a(str, numberInfo);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12965e(ViewGroup viewGroup, boolean z) {
        super(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.block_log_list_view_log_item, viewGroup, false));
        C15149k.m377b(viewGroup, "parent");
        this.f29333g = z;
    }

    /* renamed from: a */
    public final String m4914a() {
        return this.f29327a;
    }

    /* renamed from: a */
    public final void m4913a(long j) {
        this.f29329c = j;
    }

    /* renamed from: a */
    public final void m4912a(String str) {
        this.f29328b = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0266  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4911a(java.lang.String r8, gogolook.callgogolook2.gson.NumberInfo r9) {
        /*
            Method dump skipped, instructions count: 620
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p533l.p534n.C12965e.m4911a(java.lang.String, gogolook.callgogolook2.gson.NumberInfo):void");
    }

    /* renamed from: b */
    public final C11086o m4910b() {
        return this.f29332f;
    }

    /* renamed from: b */
    public final void m4909b(String str) {
        this.f29327a = str;
    }

    /* renamed from: c */
    public final void m4908c() {
        int i;
        View view;
        TextView textView;
        int i2;
        View view2;
        if (this.f29330d == null) {
            if (C14017g4.m2835A()) {
                view2 = this.itemView;
                C15149k.m383a((Object) view2, "itemView");
                i2 = R$id.stvSecondaryNumberInfoSecondItem;
            } else {
                view2 = this.itemView;
                C15149k.m383a((Object) view2, "itemView");
                i2 = R$id.stvSecondaryNumberInfoFirstItem;
            }
            this.f29330d = (SizedTextView) view2.findViewById(i2);
        }
        if (this.f29331e == null) {
            if (C14017g4.m2835A()) {
                view = this.itemView;
                C15149k.m383a((Object) view, "itemView");
                i = R$id.stvSecondaryNumberInfoFirstItem;
            } else {
                view = this.itemView;
                C15149k.m383a((Object) view, "itemView");
                i = R$id.stvSecondaryNumberInfoSecondItem;
            }
            this.f29331e = (SizedTextView) view.findViewById(i);
            if (C14017g4.m2835A() && (textView = this.f29331e) != null) {
                textView.setBackgroundResource(R$drawable.bg_log_telecom);
            }
        }
    }

    /* renamed from: d */
    public final boolean m4907d() {
        return this.f29333g;
    }
}
