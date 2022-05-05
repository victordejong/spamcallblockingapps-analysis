package p459j.p460a.p463b0.p464q;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.LayoutRes;
import androidx.core.content.ContextCompat;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.gson.UserProfile;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.realm.obj.contact.ContactRealmObject;
import gogolook.callgogolook2.view.MetaphorBadgeLayout;
import gogolook.callgogolook2.view.RoundImageView;
import gogolook.callgogolook2.view.SizedTextView;
import java.util.Arrays;
import kotlin.Metadata;
import p459j.p460a.p461a0.C11086o;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14093n4;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p613z0.p617p.C14666a;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14986p;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15136c0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\r\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001a\u00107\u001a\u0002082\b\u0010!\u001a\u0004\u0018\u00010\u000e2\b\u00109\u001a\u0004\u0018\u00010:J\u0006\u0010;\u001a\u000208R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0014\u0010\u0010\"\u0004\b\u0015\u0010\u0012R\u001b\u0010\u0016\u001a\u00020\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u0017\u0010\u0018R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001c\u0010!\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\"\u0010\u0010\"\u0004\b#\u0010\u0012R\u001c\u0010$\u001a\u0004\u0018\u00010%X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u001c\u0010*\u001a\u0004\u0018\u00010%X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b+\u0010'\"\u0004\b,\u0010)R\u001a\u0010-\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b.\u0010\u0018\"\u0004\b/\u00100R\u001a\u00101\u001a\u000202X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b3\u00104\"\u0004\b5\u00106¨\u0006<"}, m815d2 = {"Lgogolook/callgogolook2/main/calllog/CallLogItemViewHolder;", "Lgogolook/callgogolook2/view/widget/BaseRecyclerViewHolder;", "parent", "Landroid/view/ViewGroup;", "layoutResource", "", "(Landroid/view/ViewGroup;I)V", ContactRealmObject.CONTACT_ID, "", "getContactId", "()J", "setContactId", "(J)V", "contactName", "", "getContactName", "()Ljava/lang/String;", "setContactName", "(Ljava/lang/String;)V", "e164", "getE164", "setE164", "horizontalPadding", "getHorizontalPadding", "()I", "horizontalPadding$delegate", "Lkotlin/Lazy;", "message", "", "getMessage", "()Ljava/lang/CharSequence;", "setMessage", "(Ljava/lang/CharSequence;)V", "number", "getNumber", "setNumber", "stvSecondNumberInfoNumber", "Landroid/widget/TextView;", "getStvSecondNumberInfoNumber", "()Landroid/widget/TextView;", "setStvSecondNumberInfoNumber", "(Landroid/widget/TextView;)V", "stvSecondNumberInfoTeleCom", "getStvSecondNumberInfoTeleCom", "setStvSecondNumberInfoTeleCom", "type", "getType", "setType", "(I)V", "uiUpdater", "Lgogolook/callgogolook2/loader/UIUpdater;", "getUiUpdater", "()Lgogolook/callgogolook2/loader/UIUpdater;", "setUiUpdater", "(Lgogolook/callgogolook2/loader/UIUpdater;)V", "bindData", "", UserProfile.KEY_CONTACT_INFO_VALUE, "Lgogolook/callgogolook2/gson/NumberInfo;", "initView", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.q.d */
/* loaded from: classes2-dex2jar.jar:j/a/b0/q/d.class */
public final class C11153d extends C14666a {

    /* renamed from: k */
    public static final /* synthetic */ AbstractC14906i[] f25053k;

    /* renamed from: a */
    public String f25054a;

    /* renamed from: b */
    public String f25055b;

    /* renamed from: c */
    public String f25056c;

    /* renamed from: d */
    public long f25057d;

    /* renamed from: e */
    public CharSequence f25058e;

    /* renamed from: f */
    public int f25059f;

    /* renamed from: g */
    public TextView f25060g;

    /* renamed from: h */
    public TextView f25061h;

    /* renamed from: i */
    public final AbstractC14974f f25062i = C14975g.m662a(C11154a.f25064a);

    /* renamed from: j */
    public C11086o f25063j = new C11155b();

    /* renamed from: j.a.b0.q.d$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/q/d$a.class */
    public static final class C11154a extends AbstractC15150l implements AbstractC15107a<Integer> {

        /* renamed from: a */
        public static final C11154a f25064a = new C11154a();

        public C11154a() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [int, java.lang.Integer] */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Integer invoke() {
            return C14217x3.m2201a(4.0f);
        }
    }

    /* renamed from: j.a.b0.q.d$b */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/q/d$b.class */
    public static final class C11155b extends C11086o {
        public C11155b() {
        }

        @Override // p459j.p460a.p461a0.C11040b
        /* renamed from: b */
        public void mo1836b(String str, NumberInfo numberInfo) {
            if (str != null && numberInfo != null && TextUtils.equals(C11153d.this.m10176b(), str)) {
                C11153d dVar = C11153d.this;
                dVar.m10177a(dVar.m10171d(), numberInfo);
            }
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C11153d.class), "horizontalPadding", "getHorizontalPadding()I");
        C15131a0.m412a(sVar);
        f25053k = new AbstractC14906i[]{sVar};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11153d(ViewGroup viewGroup, @LayoutRes int i) {
        super(viewGroup, i);
        C15149k.m377b(viewGroup, "parent");
    }

    /* renamed from: a */
    public final void m10180a(long j) {
        this.f25057d = j;
    }

    /* renamed from: a */
    public final void m10179a(CharSequence charSequence) {
        this.f25058e = charSequence;
    }

    /* renamed from: a */
    public final void m10178a(String str) {
        this.f25056c = str;
    }

    /* renamed from: a */
    public final void m10177a(String str, NumberInfo numberInfo) {
        TextView textView;
        if (!(str == null || str.length() == 0) && numberInfo != null) {
            int i = this.f25059f;
            boolean z = i == 17 || i == 19;
            boolean z2 = z && !TextUtils.isEmpty(str) && C14093n4.m2569f(str);
            RowInfo a = RowInfo.m28247a(str, this.f25056c, numberInfo, C14108o4.m2493a(str, true, z), z);
            if (a != null) {
                C15149k.m383a((Object) a, "RowInfo.getStandardTwoRo…                ?: return");
                C11175m.f25094f.m10132a().put(str, a);
                String str2 = a.m28224h().name;
                String str3 = a.m28223i().name;
                String S = z2 ? "" : numberInfo.m28377S();
                View view = this.itemView;
                C15149k.m383a((Object) view, "itemView");
                MetaphorBadgeLayout metaphorBadgeLayout = (MetaphorBadgeLayout) view.findViewById(R$id.mbl_metaphor);
                if (metaphorBadgeLayout != null) {
                    ImageView a2 = metaphorBadgeLayout.m25913a();
                    View view2 = this.itemView;
                    C15149k.m383a((Object) view2, "itemView");
                    MetaphorBadgeLayout metaphorBadgeLayout2 = (MetaphorBadgeLayout) view2.findViewById(R$id.mbl_metaphor);
                    if (metaphorBadgeLayout2 != null) {
                        RoundImageView b = metaphorBadgeLayout2.m25911b();
                        View view3 = this.itemView;
                        a2.setVisibility(8);
                        ((SizedTextView) view3.findViewById(R$id.stvNumber)).setTextColor(ContextCompat.getColor(view3.getContext(), 2131099964));
                        ((SizedTextView) view3.findViewById(R$id.stvNumber)).setCompoundDrawablesWithIntrinsicBounds(0, 0, numberInfo.whoscall.favored ? R$drawable.call_favorite_green_icon : 0, 0);
                        long j = this.f25057d;
                        CallUtils.m26576a(b, a2, a, j > 0 ? String.valueOf(j) : null, CallUtils.EnumC4993l.MAIN_CALL_LOG_FRAGMENT);
                        if (a.m28224h().isRed) {
                            ((SizedTextView) view3.findViewById(R$id.stvNumber)).setTextColor(ContextCompat.getColor(view3.getContext(), 2131099965));
                        }
                        SizedTextView sizedTextView = (SizedTextView) view3.findViewById(R$id.stvNumber);
                        C15149k.m383a((Object) sizedTextView, "stvNumber");
                        C11174l lVar = C11174l.f25091c;
                        int a3 = lVar.m10141a();
                        C15149k.m383a((Object) str2, "name");
                        sizedTextView.setText(lVar.m10140a(z2, a3, str2, a));
                        if (!TextUtils.isEmpty(str3) || !TextUtils.isEmpty(S)) {
                            LinearLayout linearLayout = (LinearLayout) view3.findViewById(R$id.llSecondaryNumberInfo);
                            C15149k.m383a((Object) linearLayout, "llSecondaryNumberInfo");
                            linearLayout.setVisibility(0);
                            TextView textView2 = this.f25060g;
                            if (textView2 != null) {
                                C11174l lVar2 = C11174l.f25091c;
                                int b2 = lVar2.m10139b();
                                C15149k.m383a((Object) str3, "secondaryName");
                                textView2.setText(lVar2.m10140a(z2, b2, str3, a));
                            }
                            TextView textView3 = this.f25060g;
                            if (textView3 != null) {
                                textView3.setVisibility(TextUtils.isEmpty(str3) ? 8 : 0);
                            }
                            TextView textView4 = this.f25061h;
                            if (textView4 != null) {
                                textView4.setText(S);
                            }
                            TextView textView5 = this.f25061h;
                            if (textView5 != null) {
                                textView5.setVisibility(TextUtils.isEmpty(S) ? 8 : 0);
                            }
                        } else {
                            LinearLayout linearLayout2 = (LinearLayout) view3.findViewById(R$id.llSecondaryNumberInfo);
                            C15149k.m383a((Object) linearLayout2, "llSecondaryNumberInfo");
                            linearLayout2.setVisibility(8);
                        }
                        if (!C14017g4.m2835A() && (textView = this.f25061h) != null) {
                            textView.setCompoundDrawablesWithIntrinsicBounds((TextUtils.isEmpty(str3) || TextUtils.isEmpty(str3)) ? 0 : R$drawable.vertical_divider, 0, 0, 0);
                        }
                        if (!TextUtils.isEmpty(this.f25058e)) {
                            SizedTextView sizedTextView2 = (SizedTextView) view3.findViewById(R$id.stvContent);
                            C15149k.m383a((Object) sizedTextView2, "stvContent");
                            sizedTextView2.setText(this.f25058e);
                            ((SizedTextView) view3.findViewById(R$id.stvContent)).setTextColor(ContextCompat.getColor(view3.getContext(), 2131099967));
                            SizedTextView sizedTextView3 = (SizedTextView) view3.findViewById(R$id.stvContent);
                            C15149k.m383a((Object) sizedTextView3, "stvContent");
                            sizedTextView3.setVisibility(0);
                        } else if (a.m28222j() && a.m28223i().type != RowInfo.Secondary.Type.COO_DESC) {
                            SizedTextView sizedTextView4 = (SizedTextView) view3.findViewById(R$id.stvContent);
                            C15149k.m383a((Object) sizedTextView4, "stvContent");
                            sizedTextView4.setText(C14206w4.m2225a((int) R$string.calldialog_coo_desc));
                            ((SizedTextView) view3.findViewById(R$id.stvContent)).setTextColor(ContextCompat.getColor(view3.getContext(), 2131099965));
                            SizedTextView sizedTextView5 = (SizedTextView) view3.findViewById(R$id.stvContent);
                            C15149k.m383a((Object) sizedTextView5, "stvContent");
                            sizedTextView5.setVisibility(0);
                        } else if (numberInfo.m28308m0() && !C14217x3.m2160b(this.f25056c)) {
                            SizedTextView sizedTextView6 = (SizedTextView) view3.findViewById(R$id.stvContent);
                            C15149k.m383a((Object) sizedTextView6, "stvContent");
                            C15136c0 c0Var = C15136c0.f33133a;
                            String a4 = C14206w4.m2225a((int) R$string.showcard_list_contact_name);
                            Object[] objArr = {this.f25056c};
                            String format = String.format(a4, Arrays.copyOf(objArr, objArr.length));
                            C15149k.m383a((Object) format, "java.lang.String.format(format, *args)");
                            sizedTextView6.setText(format);
                            ((SizedTextView) view3.findViewById(R$id.stvContent)).setTextColor(ContextCompat.getColor(view3.getContext(), 2131099967));
                            SizedTextView sizedTextView7 = (SizedTextView) view3.findViewById(R$id.stvContent);
                            C15149k.m383a((Object) sizedTextView7, "stvContent");
                            sizedTextView7.setVisibility(0);
                        } else if (z2) {
                            SizedTextView sizedTextView8 = (SizedTextView) view3.findViewById(R$id.stvContent);
                            C15149k.m383a((Object) sizedTextView8, "stvContent");
                            sizedTextView8.setText(C14206w4.m2225a(C14093n4.m2573c(str)));
                            ((SizedTextView) view3.findViewById(R$id.stvContent)).setTextColor(ContextCompat.getColor(view3.getContext(), 2131099965));
                            SizedTextView sizedTextView9 = (SizedTextView) view3.findViewById(R$id.stvContent);
                            C15149k.m383a((Object) sizedTextView9, "stvContent");
                            sizedTextView9.setVisibility(0);
                        } else {
                            SizedTextView sizedTextView10 = (SizedTextView) view3.findViewById(R$id.stvContent);
                            C15149k.m383a((Object) sizedTextView10, "stvContent");
                            sizedTextView10.setVisibility(8);
                        }
                        view3.requestLayout();
                        return;
                    }
                    throw new C14986p("null cannot be cast to non-null type gogolook.callgogolook2.view.MetaphorBadgeLayout");
                }
                throw new C14986p("null cannot be cast to non-null type gogolook.callgogolook2.view.MetaphorBadgeLayout");
            }
        }
    }

    /* renamed from: b */
    public final String m10176b() {
        return this.f25055b;
    }

    /* renamed from: b */
    public final void m10175b(int i) {
        this.f25059f = i;
    }

    /* renamed from: b */
    public final void m10174b(String str) {
        this.f25055b = str;
    }

    /* renamed from: c */
    public final int m10173c() {
        AbstractC14974f fVar = this.f25062i;
        AbstractC14906i iVar = f25053k[0];
        return ((Number) fVar.getValue()).intValue();
    }

    /* renamed from: c */
    public final void m10172c(String str) {
        this.f25054a = str;
    }

    /* renamed from: d */
    public final String m10171d() {
        return this.f25054a;
    }

    /* renamed from: e */
    public final C11086o m10170e() {
        return this.f25063j;
    }

    /* renamed from: f */
    public final void m10169f() {
        int i;
        View view;
        int i2;
        View view2;
        if (this.f25060g == null) {
            if (C14017g4.m2835A()) {
                view2 = this.itemView;
                C15149k.m383a((Object) view2, "itemView");
                i2 = R$id.stvSecondaryNumberInfoSecondItem;
            } else {
                view2 = this.itemView;
                C15149k.m383a((Object) view2, "itemView");
                i2 = R$id.stvSecondaryNumberInfoFirstItem;
            }
            this.f25060g = (SizedTextView) view2.findViewById(i2);
        }
        if (this.f25061h == null) {
            if (C14017g4.m2835A()) {
                view = this.itemView;
                C15149k.m383a((Object) view, "itemView");
                i = R$id.stvSecondaryNumberInfoFirstItem;
            } else {
                view = this.itemView;
                C15149k.m383a((Object) view, "itemView");
                i = R$id.stvSecondaryNumberInfoSecondItem;
            }
            this.f25061h = (SizedTextView) view.findViewById(i);
            if (C14017g4.m2835A()) {
                TextView textView = this.f25061h;
                if (textView != null) {
                    textView.setBackgroundResource(R$drawable.bg_log_telecom);
                }
                TextView textView2 = this.f25061h;
                if (textView2 != null) {
                    textView2.setPadding(m10173c(), 0, m10173c(), 0);
                    return;
                }
                return;
            }
            TextView textView3 = this.f25061h;
            if (textView3 != null) {
                textView3.setBackgroundResource(0);
            }
            TextView textView4 = this.f25061h;
            if (textView4 != null) {
                textView4.setPadding(0, 0, 0, 0);
            }
        }
    }
}
