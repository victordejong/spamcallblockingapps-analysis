package gogolook.callgogolook2.messaging.p078ui.conversationlist;

import android.app.Fragment;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import gogolook.callgogolook2.messaging.datamodel.data.MessageData;
import gogolook.callgogolook2.messaging.datamodel.data.PendingAttachmentData;
import gogolook.callgogolook2.messaging.p078ui.BaseBugleActivity;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.p478y.C11608e;
import p459j.p460a.p474c0.p491g.AbstractC12126w;
import p459j.p460a.p474c0.p491g.p494c0.DialogFragmentC11987b;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12162f0;
import p459j.p460a.p474c0.p499h.C12205r;
import p459j.p460a.p521j0.p529x.C12810o;
/* renamed from: gogolook.callgogolook2.messaging.ui.conversationlist.ShareIntentActivity */
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversationlist/ShareIntentActivity.class */
public class ShareIntentActivity extends BaseBugleActivity implements DialogFragmentC11987b.AbstractC11990c {

    /* renamed from: a */
    public MessageData f11779a;

    /* renamed from: a */
    public static String m27068a(Uri uri, String str) {
        if (uri == null) {
            return str;
        }
        String type = AbstractC11516a.m9413n().mo9412a().getContentResolver().getType(uri);
        if (type != null) {
            return type;
        }
        C12162f0 f0Var = new C12162f0();
        try {
            try {
                f0Var.m6949a(uri);
                String a = f0Var.m6952a(12);
                if (a != null) {
                    return a;
                }
            } catch (IOException e) {
                C12153d0.m6984c("MessagingApp", "Could not determine type of " + uri, e);
            }
            return str;
        } finally {
            f0Var.m6948b();
        }
    }

    @Override // p459j.p460a.p474c0.p491g.p494c0.DialogFragmentC11987b.AbstractC11990c
    /* renamed from: a */
    public void mo7629a() {
        AbstractC12126w.m7095a().mo7087a(this, 13, this.f11779a);
        finish();
    }

    @Override // p459j.p460a.p474c0.p491g.p494c0.DialogFragmentC11987b.AbstractC11990c
    /* renamed from: a */
    public void mo7628a(C11608e eVar) {
        AbstractC12126w.m7095a().m7094a(this, 13, eVar.m8963a(), C12810o.m5238g(), this.f11779a);
        finish();
    }

    /* renamed from: a */
    public final void m27067a(String str, Uri uri) {
        this.f11779a.m27623a(PendingAttachmentData.m27513a(str, uri));
    }

    @Override // android.app.Activity
    public void onAttachFragment(Fragment fragment) {
        Intent intent = getIntent();
        String action = intent.getAction();
        if ("android.intent.action.SEND".equals(action)) {
            Uri uri = (Uri) intent.getParcelableExtra("android.intent.extra.STREAM");
            String a = m27068a(uri, intent.getType());
            if (C12153d0.m6992a("MessagingApp", 3)) {
                C12153d0.m6991a("MessagingApp", String.format("onAttachFragment: contentUri=%s, intent.getType()=%s, inferredType=%s", uri, intent.getType(), a));
            }
            if ("text/plain".equals(a)) {
                String stringExtra = intent.getStringExtra("android.intent.extra.TEXT");
                if (stringExtra != null) {
                    this.f11779a = MessageData.m27599e(stringExtra);
                } else {
                    this.f11779a = null;
                }
            } else if (!C12205r.m6809d(a) && !C12205r.m6805h(a) && !C12205r.m6811b(a) && !C12205r.m6804i(a)) {
                C12151d.m7005a("Unsupported shared content type for " + uri + ": " + a + " (" + intent.getType() + ")");
            } else if (uri != null) {
                this.f11779a = MessageData.m27599e((String) null);
                m27067a(a, uri);
            } else {
                this.f11779a = null;
            }
        } else if ("android.intent.action.SEND_MULTIPLE".equals(action)) {
            String type = intent.getType();
            if (C12205r.m6809d(type)) {
                ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra("android.intent.extra.STREAM");
                if (parcelableArrayListExtra == null || parcelableArrayListExtra.size() <= 0) {
                    this.f11779a = null;
                    return;
                }
                this.f11779a = MessageData.m27599e((String) null);
                Iterator it = parcelableArrayListExtra.iterator();
                while (it.hasNext()) {
                    Uri uri2 = (Uri) it.next();
                    m27067a(m27068a(uri2, type), uri2);
                }
                return;
            }
            C12151d.m7005a("Unsupported shared content type: " + type);
        } else {
            C12151d.m7005a("Unsupported action type for sharing: " + action);
        }
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.BaseBugleActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (!"android.intent.action.SEND".equals(intent.getAction()) || (TextUtils.isEmpty(intent.getStringExtra("address")) && TextUtils.isEmpty(intent.getStringExtra("android.intent.extra.EMAIL")))) {
            new DialogFragmentC11987b().show(getFragmentManager(), "ShareIntentFragment");
            return;
        }
        Intent a = AbstractC12126w.m7095a().mo7088a(this, C12810o.m5238g());
        a.putExtras(intent);
        a.setAction("android.intent.action.SENDTO");
        a.setDataAndType(intent.getData(), intent.getType());
        startActivity(a);
        finish();
    }
}
