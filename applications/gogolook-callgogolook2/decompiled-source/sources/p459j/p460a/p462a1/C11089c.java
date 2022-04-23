package p459j.p460a.p462a1;

import android.graphics.Color;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.realm.obj.contact.ContactRealmObject;
import gogolook.callgogolook2.util.ProgressWheel;
import gogolook.callgogolook2.view.RoundImageView;
import gogolook.callgogolook2.view.SizedTextView;
import kotlin.Metadata;
import p459j.p460a.p461a0.C11086o;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\nR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000f\u0010\b\"\u0004\b\u0010\u0010\nR\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, m815d2 = {"Lgogolook/callgogolook2/whitelist/WhiteListDataViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "parent", "Landroid/view/ViewGroup;", "(Landroid/view/ViewGroup;)V", ContactRealmObject.CONTACT_ID, "", "getContactId", "()Ljava/lang/String;", "setContactId", "(Ljava/lang/String;)V", "contactName", "getContactName", "setContactName", "number", "getNumber", "setNumber", "uiUpdater", "Lgogolook/callgogolook2/loader/UIUpdater;", "getUiUpdater", "()Lgogolook/callgogolook2/loader/UIUpdater;", "setUiUpdater", "(Lgogolook/callgogolook2/loader/UIUpdater;)V", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.a1.c */
/* loaded from: classes3-dex2jar.jar:j/a/a1/c.class */
public final class C11089c extends RecyclerView.ViewHolder {

    /* renamed from: a */
    public String f24952a;

    /* renamed from: b */
    public String f24953b;

    /* renamed from: c */
    public C11086o f24954c = new C11090a();

    /* renamed from: j.a.a1.c$a */
    /* loaded from: classes3-dex2jar.jar:j/a/a1/c$a.class */
    public static final class C11090a extends C11086o {
        public C11090a() {
        }

        @Override // p459j.p460a.p461a0.C11040b
        /* renamed from: b */
        public void mo1836b(String str, NumberInfo numberInfo) {
            RowInfo c;
            NumberInfo.Whoscall whoscall;
            if (TextUtils.equals(str, C11089c.this.m10286b()) && (c = RowInfo.m28235c(str, numberInfo)) != null) {
                C15149k.m383a((Object) c, "RowInfo.getStandardTwoRo…edNumber, info) ?: return");
                String str2 = c.m28224h().name;
                String str3 = TextUtils.isEmpty(c.m28223i().name) ? "" : c.m28223i().name;
                String S = numberInfo != null ? numberInfo.m28377S() : null;
                View view = C11089c.this.itemView;
                ImageView imageView = (ImageView) view.findViewById(R$id.iv_card_spam_icon);
                C15149k.m383a((Object) imageView, "iv_card_spam_icon");
                imageView.setVisibility(8);
                ((SizedTextView) view.findViewById(R$id.line_primary)).setTextColor(Color.parseColor("#111111"));
                int i = 0;
                ((SizedTextView) view.findViewById(R$id.line_primary)).setCompoundDrawablesWithIntrinsicBounds(0, 0, (numberInfo == null || (whoscall = numberInfo.whoscall) == null || !whoscall.favored) ? 0 : R$drawable.call_favorite_green_icon, 0);
                CallUtils.m26576a((RoundImageView) view.findViewById(R$id.iv_metaphor), (ImageView) view.findViewById(R$id.iv_card_spam_icon), c, C11089c.this.m10288a(), CallUtils.EnumC4993l.WHITE_LIST);
                if (c.m28224h().isRed) {
                    ((SizedTextView) view.findViewById(R$id.line_primary)).setTextColor(Color.parseColor("#e6393f"));
                }
                SizedTextView sizedTextView = (SizedTextView) view.findViewById(R$id.line_primary);
                C15149k.m383a((Object) sizedTextView, "line_primary");
                sizedTextView.setText(str2);
                if (!TextUtils.isEmpty(str3) || !TextUtils.isEmpty(S)) {
                    SizedTextView sizedTextView2 = (SizedTextView) view.findViewById(R$id.line_secondary_number);
                    C15149k.m383a((Object) sizedTextView2, "line_secondary_number");
                    sizedTextView2.setText(str3);
                    SizedTextView sizedTextView3 = (SizedTextView) view.findViewById(R$id.line_secondary_number);
                    C15149k.m383a((Object) sizedTextView3, "line_secondary_number");
                    if (TextUtils.isEmpty(str3)) {
                        i = 8;
                    }
                    sizedTextView3.setVisibility(i);
                } else {
                    LinearLayout linearLayout = (LinearLayout) view.findViewById(R$id.line_secondary);
                    C15149k.m383a((Object) linearLayout, "line_secondary");
                    linearLayout.setVisibility(8);
                }
                ProgressWheel progressWheel = (ProgressWheel) view.findViewById(R$id.line_secondary_waiting);
                C15149k.m383a((Object) progressWheel, "line_secondary_waiting");
                progressWheel.setVisibility(8);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11089c(ViewGroup viewGroup) {
        super(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.blocklist_white_list_item, viewGroup, false));
        C15149k.m377b(viewGroup, "parent");
    }

    /* renamed from: a */
    public final String m10288a() {
        return this.f24953b;
    }

    /* renamed from: a */
    public final void m10287a(String str) {
        this.f24953b = str;
    }

    /* renamed from: b */
    public final String m10286b() {
        return this.f24952a;
    }

    /* renamed from: b */
    public final void m10285b(String str) {
    }

    /* renamed from: c */
    public final C11086o m10284c() {
        return this.f24954c;
    }

    /* renamed from: c */
    public final void m10283c(String str) {
        this.f24952a = str;
    }
}
