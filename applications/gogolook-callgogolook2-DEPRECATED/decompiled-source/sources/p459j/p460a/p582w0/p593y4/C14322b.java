package p459j.p460a.p582w0.p593y4;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.widget.ActivityChooserModel;
import gogolook.callgogolook2.R$string;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import p081h.p203i.p204a.p224e.p226b.C6710a;
import p081h.p203i.p204a.p224e.p226b.C6711b;
import p081h.p203i.p204a.p224e.p226b.C6712c;
import p081h.p203i.p204a.p224e.p226b.C6713d;
import p459j.p460a.p564s.C13405a0;
import p459j.p460a.p596x.p598l.C14407a;
import p459j.p460a.p596x.p598l.C14420h;
import p459j.p460a.p596x.p598l.C14421i;
import p459j.p460a.p596x.p598l.C14422j;
import p459j.p460a.p613z0.DialogC14618f;
import p459j.p460a.p613z0.DialogC14625g;
import p626l.C14986p;
import p626l.p632u.C15022n;
import p626l.p632u.C15029u;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w0.y4.b */
/* loaded from: classes3-dex2jar.jar:j/a/w0/y4/b.class */
public final class C14322b {

    /* renamed from: a */
    public static final C14322b f32076a = new C14322b();

    /* renamed from: a */
    public static final Dialog m1577a(Activity activity, DialogInterface.OnClickListener onClickListener) {
        C15149k.m377b(activity, ActivityChooserModel.ATTRIBUTE_ACTIVITY);
        C15149k.m377b(onClickListener, "onClickListener");
        DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(activity);
        fVar.m975d(R$string.google_login_fail_title);
        fVar.m981b(R$string.google_login_fail_error_content);
        fVar.m980b(R$string.google_login_fail_error_action, onClickListener);
        fVar.m987a(R$string.got_it, onClickListener);
        DialogC14618f a = fVar.m989a();
        C15149k.m383a((Object) a, "MDialog.Builder(activity…                .create()");
        return a;
    }

    /* renamed from: a */
    public static final Dialog m1576a(Activity activity, List<C14407a> list, DialogInterface.OnClickListener onClickListener) {
        C15149k.m377b(activity, ActivityChooserModel.ATTRIBUTE_ACTIVITY);
        C15149k.m377b(list, "accountList");
        C15149k.m377b(onClickListener, "onClickListener");
        DialogC14625g gVar = new DialogC14625g(activity);
        ArrayList arrayList = new ArrayList(C15022n.m555a(list, 10));
        for (C14407a aVar : list) {
            arrayList.add(aVar.m1389b());
        }
        Object[] array = arrayList.toArray(new String[0]);
        if (array != null) {
            gVar.m971a((String[]) array);
            gVar.m974a(onClickListener);
            return gVar;
        }
        throw new C14986p("null cannot be cast to non-null type kotlin.Array<T>");
    }

    /* renamed from: a */
    public static final C14422j m1574a(Context context, C14407a aVar) throws C6712c, C13405a0.C13407b, C6713d, C6710a, IOException {
        C15149k.m377b(context, "context");
        C15149k.m377b(aVar, "gAccount");
        C13405a0.m4075a(C13405a0.C13407b.class);
        C13405a0.m4075a(IOException.class);
        String a = C6711b.m21984a(context, aVar.m1390a(), "oauth2:https://www.googleapis.com/auth/userinfo.profile");
        String b = aVar.m1389b();
        String b2 = aVar.m1389b();
        C15149k.m383a((Object) a, "token");
        return new C14422j(1, b, a, b2, null, 16, null);
    }

    @VisibleForTesting
    /* renamed from: a */
    public static final List<C14407a> m1575a(Context context) {
        C15149k.m377b(context, "context");
        Account[] accountsByType = AccountManager.get(context).getAccountsByType("com.google");
        C15149k.m383a((Object) accountsByType, "AccountManager.get(conte…Type(GOOGLE_ACCOUNT_TYPE)");
        ArrayList arrayList = new ArrayList(accountsByType.length);
        for (Account account : accountsByType) {
            C15149k.m383a((Object) account, "it");
            arrayList.add(new C14407a(account, null, null, 6, null));
        }
        return arrayList;
    }

    /* renamed from: b */
    public static final Dialog m1573b(Activity activity, DialogInterface.OnClickListener onClickListener) {
        C15149k.m377b(activity, ActivityChooserModel.ATTRIBUTE_ACTIVITY);
        C15149k.m377b(onClickListener, "onClickListener");
        DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(activity);
        fVar.m975d(R$string.google_login_fail_title);
        fVar.m981b(R$string.google_login_fail_service_unavailable_content);
        fVar.m980b(R$string.google_login_fail_service_unavailable_action, onClickListener);
        fVar.m987a(R$string.got_it, onClickListener);
        DialogC14618f a = fVar.m989a();
        C15149k.m383a((Object) a, "MDialog.Builder(activity…                .create()");
        return a;
    }

    /* renamed from: b */
    public static final C14407a m1572b(Context context) throws C14421i, C14420h {
        C15149k.m377b(context, "context");
        C13405a0.m4075a(C14421i.class);
        C13405a0.m4075a(C14420h.class);
        List<C14407a> a = m1575a(context);
        int size = a.size();
        if (size == 0) {
            throw new C14421i();
        } else if (size == 1) {
            return (C14407a) C15029u.m525d((List<? extends Object>) a);
        } else {
            throw new C14420h(a);
        }
    }

    /* renamed from: c */
    public static final Dialog m1571c(Activity activity, DialogInterface.OnClickListener onClickListener) {
        C15149k.m377b(activity, ActivityChooserModel.ATTRIBUTE_ACTIVITY);
        C15149k.m377b(onClickListener, "onClickListener");
        DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(activity);
        fVar.m975d(R$string.google_login_fail_title);
        fVar.m981b(R$string.google_login_fail_no_account_content);
        fVar.m980b(R$string.google_login_fail_no_account_action, onClickListener);
        fVar.m987a(R$string.got_it, onClickListener);
        DialogC14618f a = fVar.m989a();
        C15149k.m383a((Object) a, "MDialog.Builder(activity…                .create()");
        return a;
    }

    /* renamed from: a */
    public final Intent m1578a() {
        Intent intent = new Intent("android.settings.ADD_ACCOUNT_SETTINGS");
        intent.putExtra("account_types", new String[]{"com.google"});
        return intent;
    }
}
