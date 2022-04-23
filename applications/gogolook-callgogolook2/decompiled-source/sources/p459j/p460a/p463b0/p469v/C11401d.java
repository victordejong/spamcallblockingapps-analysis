package p459j.p460a.p463b0.p469v;

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
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\r\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u00104\u001a\u000205J\u001a\u00106\u001a\u0002052\b\u0010\u001c\u001a\u0004\u0018\u00010\u000e2\b\u00107\u001a\u0004\u0018\u000108R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0004\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001d\u0010\u0010\"\u0004\b\u001e\u0010\u0012R\u001c\u0010\u001f\u001a\u0004\u0018\u00010 X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u001c\u0010%\u001a\u0004\u0018\u00010 X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b&\u0010\"\"\u0004\b'\u0010$R\u001a\u0010(\u001a\u00020)X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u001a\u0010.\u001a\u00020/X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b0\u00101\"\u0004\b2\u00103¨\u00069"}, m815d2 = {"Lgogolook/callgogolook2/main/logselect/LogSelectionLogItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "parent", "Landroid/view/ViewGroup;", "isNeedShowDay", "", "(Landroid/view/ViewGroup;Z)V", ContactRealmObject.CONTACT_ID, "", "getContactId", "()J", "setContactId", "(J)V", "contactName", "", "getContactName", "()Ljava/lang/String;", "setContactName", "(Ljava/lang/String;)V", "()Z", "setNeedShowDay", "(Z)V", "message", "", "getMessage", "()Ljava/lang/CharSequence;", "setMessage", "(Ljava/lang/CharSequence;)V", "number", "getNumber", "setNumber", "stvSecondNumberInfoNumber", "Landroid/widget/TextView;", "getStvSecondNumberInfoNumber", "()Landroid/widget/TextView;", "setStvSecondNumberInfoNumber", "(Landroid/widget/TextView;)V", "stvSecondNumberInfoTeleCom", "getStvSecondNumberInfoTeleCom", "setStvSecondNumberInfoTeleCom", "type", "", "getType", "()I", "setType", "(I)V", "uiUpdater", "Lgogolook/callgogolook2/loader/UIUpdater;", "getUiUpdater", "()Lgogolook/callgogolook2/loader/UIUpdater;", "setUiUpdater", "(Lgogolook/callgogolook2/loader/UIUpdater;)V", "initView", "", "setData", UserProfile.KEY_CONTACT_INFO_VALUE, "Lgogolook/callgogolook2/gson/NumberInfo;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.v.d */
/* loaded from: classes2-dex2jar.jar:j/a/b0/v/d.class */
public final class C11401d extends RecyclerView.ViewHolder {

    /* renamed from: a */
    public String f25507a;

    /* renamed from: b */
    public String f25508b;

    /* renamed from: c */
    public long f25509c;

    /* renamed from: d */
    public CharSequence f25510d;

    /* renamed from: e */
    public int f25511e;

    /* renamed from: f */
    public TextView f25512f;

    /* renamed from: g */
    public TextView f25513g;

    /* renamed from: h */
    public C11086o f25514h = new C11402a();

    /* renamed from: i */
    public boolean f25515i;

    /* renamed from: j.a.b0.v.d$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/v/d$a.class */
    public static final class C11402a extends C11086o {
        public C11402a() {
        }

        @Override // p459j.p460a.p461a0.C11040b
        /* renamed from: b */
        public void mo1836b(String str, NumberInfo numberInfo) {
            if (TextUtils.equals(str, C11401d.this.m9688a()) && TextUtils.equals(str, C11401d.this.m9688a()) && str != null && numberInfo != null) {
                C11401d.this.m9683a(str, numberInfo);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11401d(ViewGroup viewGroup, boolean z) {
        super(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.log_selection_listitem, viewGroup, false));
        C15149k.m377b(viewGroup, "parent");
        this.f25515i = z;
    }

    /* renamed from: a */
    public final String m9688a() {
        return this.f25507a;
    }

    /* renamed from: a */
    public final void m9687a(int i) {
        this.f25511e = i;
    }

    /* renamed from: a */
    public final void m9686a(long j) {
        this.f25509c = j;
    }

    /* renamed from: a */
    public final void m9685a(CharSequence charSequence) {
        this.f25510d = charSequence;
    }

    /* renamed from: a */
    public final void m9684a(String str) {
        this.f25508b = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x0461  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x006b  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9683a(java.lang.String r8, gogolook.callgogolook2.gson.NumberInfo r9) {
        /*
            Method dump skipped, instructions count: 1127
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p463b0.p469v.C11401d.m9683a(java.lang.String, gogolook.callgogolook2.gson.NumberInfo):void");
    }

    /* renamed from: b */
    public final C11086o m9682b() {
        return this.f25514h;
    }

    /* renamed from: b */
    public final void m9681b(String str) {
        this.f25507a = str;
    }

    /* renamed from: c */
    public final void m9680c() {
        int i;
        View view;
        TextView textView;
        int i2;
        View view2;
        if (this.f25512f == null) {
            if (C14017g4.m2835A()) {
                view2 = this.itemView;
                C15149k.m383a((Object) view2, "itemView");
                i2 = R$id.stvSecondaryNumberInfoSecondItem;
            } else {
                view2 = this.itemView;
                C15149k.m383a((Object) view2, "itemView");
                i2 = R$id.stvSecondaryNumberInfoFirstItem;
            }
            this.f25512f = (SizedTextView) view2.findViewById(i2);
        }
        if (this.f25513g == null) {
            if (C14017g4.m2835A()) {
                view = this.itemView;
                C15149k.m383a((Object) view, "itemView");
                i = R$id.stvSecondaryNumberInfoFirstItem;
            } else {
                view = this.itemView;
                C15149k.m383a((Object) view, "itemView");
                i = R$id.stvSecondaryNumberInfoSecondItem;
            }
            this.f25513g = (SizedTextView) view.findViewById(i);
            if (C14017g4.m2835A() && (textView = this.f25513g) != null) {
                textView.setBackgroundResource(R$drawable.bg_log_telecom);
            }
        }
    }

    /* renamed from: d */
    public final boolean m9679d() {
        return this.f25515i;
    }
}
