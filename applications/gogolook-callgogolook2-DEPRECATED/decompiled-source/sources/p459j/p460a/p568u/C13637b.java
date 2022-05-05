package p459j.p460a.p568u;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import androidx.appcompat.widget.ActivityChooserModel;
import com.mopub.common.Constants;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.gson.CallAction;
import gogolook.callgogolook2.setting.SettingsActivity;
import kotlin.Metadata;
import p081h.p203i.p204a.p224e.p293r.AbstractC9134d;
import p081h.p203i.p204a.p224e.p293r.AbstractC9137e;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p325c.C9435c;
import p081h.p203i.p325c.p358p.AbstractC9834a;
import p081h.p203i.p325c.p358p.C9835b;
import p459j.p460a.p582w0.C14217x3;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u0018\u0010\u0011\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0013H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0014"}, m815d2 = {"Lgogolook/callgogolook2/firebase/FirebaseDynamicLinksManager;", "", "()V", "DYNAMIC_LINK_DEV_PREFIX", "", "DYNAMIC_LINK_PROD_PREFIX", "KEY_ACTION", "KEY_GF_SOURCE", "KEY_PAGE", "PAGE_SETTINGS", CallAction.DONE_TAG, "checkDeepLink", "", ActivityChooserModel.ATTRIBUTE_ACTIVITY, "Landroid/app/Activity;", Constants.INTENT_SCHEME, "Landroid/content/Intent;", "handleLinkParameters", "deepLink", "Landroid/net/Uri;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.u.b */
/* loaded from: classes2-dex2jar.jar:j/a/u/b.class */
public final class C13637b {

    /* renamed from: a */
    public static final C13637b f30586a = new C13637b();

    /* renamed from: j.a.u.b$a */
    /* loaded from: classes2-dex2jar.jar:j/a/u/b$a.class */
    public static final class C13638a<TResult> implements AbstractC9137e<C9835b> {

        /* renamed from: a */
        public final /* synthetic */ Activity f30587a;

        public C13638a(Activity activity) {
            this.f30587a = activity;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public final void mo3758a(C9835b bVar) {
            Uri a = bVar != null ? bVar.m14116a() : null;
            if (a != null) {
                C13637b.f30586a.m3761a(this.f30587a, a);
            }
        }
    }

    /* renamed from: j.a.u.b$b */
    /* loaded from: classes2-dex2jar.jar:j/a/u/b$b.class */
    public static final class C13639b implements AbstractC9134d {

        /* renamed from: a */
        public static final C13639b f30588a = new C13639b();

        @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9134d
        /* renamed from: a */
        public final void mo3757a(Exception exc) {
            C15149k.m377b(exc, "e");
        }
    }

    /* renamed from: a */
    public final void m3762a(Activity activity, Intent intent) {
        AbstractC9143h<C9835b> a;
        C15149k.m377b(activity, ActivityChooserModel.ATTRIBUTE_ACTIVITY);
        C15149k.m377b(intent, Constants.INTENT_SCHEME);
        if (!C9435c.m15182a(MyApplication.m29013o()).isEmpty() && (a = AbstractC9834a.m14118a().mo14117a(intent)) != null) {
            a.mo16028a(activity, new C13638a(activity));
            a.mo16029a(activity, C13639b.f30588a);
        }
    }

    /* renamed from: a */
    public final void m3761a(Activity activity, Uri uri) {
        Intent intent;
        String queryParameter = uri.getQueryParameter("page");
        String queryParameter2 = uri.getQueryParameter("action");
        String queryParameter3 = uri.getQueryParameter("gf_source");
        if (queryParameter != null && queryParameter.hashCode() == 1434631203 && queryParameter.equals("settings")) {
            intent = new Intent(activity, SettingsActivity.class);
            intent.putExtra("gf_source", queryParameter3);
        } else {
            intent = null;
        }
        if (intent != null) {
            if (queryParameter2 == null) {
                queryParameter2 = "";
            }
            intent.putExtra("action", queryParameter2);
            C14217x3.m2156c(activity, intent);
        }
    }
}
