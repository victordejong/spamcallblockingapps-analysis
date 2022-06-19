package androidx.activity;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.IntentSenderRequest;
import p1727n3.p1728a.p1730e.AbstractC25373a;
import p1727n3.p1728a.p1730e.p1731d.AbstractC25376a;
import p1727n3.p1807k.p1808a.C26413b;
import p1727n3.p1807k.p1808a.C26416c;
/* loaded from: classes-dex2jar.jar:androidx/activity/ComponentActivity$b.class */
public class ComponentActivity$b extends ActivityResultRegistry {

    /* renamed from: i */
    public final /* synthetic */ ComponentActivity f61i;

    /* renamed from: androidx.activity.ComponentActivity$b$a */
    /* loaded from: classes-dex2jar.jar:androidx/activity/ComponentActivity$b$a.class */
    public class RunnableC0016a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ int f62a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC25376a.C25377a f63b;

        public RunnableC0016a(int i, AbstractC25376a.C25377a c25377a) {
            ComponentActivity$b.this = r4;
            this.f62a = i;
            this.f63b = c25377a;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC25373a<?> abstractC25373a;
            ComponentActivity$b componentActivity$b = ComponentActivity$b.this;
            int i = this.f62a;
            Object obj = this.f63b.f70784a;
            String str = componentActivity$b.f79b.get(Integer.valueOf(i));
            if (str == null) {
                return;
            }
            componentActivity$b.f82e.remove(str);
            ActivityResultRegistry.C0028c<?> c0028c = componentActivity$b.f83f.get(str);
            if (c0028c != null && (abstractC25373a = c0028c.f94a) != null) {
                abstractC25373a.mo3695a(obj);
                return;
            }
            componentActivity$b.f85h.remove(str);
            componentActivity$b.f84g.put(str, obj);
        }
    }

    /* renamed from: androidx.activity.ComponentActivity$b$b */
    /* loaded from: classes-dex2jar.jar:androidx/activity/ComponentActivity$b$b.class */
    public class RunnableC0017b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ int f65a;

        /* renamed from: b */
        public final /* synthetic */ IntentSender.SendIntentException f66b;

        public RunnableC0017b(int i, IntentSender.SendIntentException sendIntentException) {
            ComponentActivity$b.this = r4;
            this.f65a = i;
            this.f66b = sendIntentException;
        }

        @Override // java.lang.Runnable
        public void run() {
            ComponentActivity$b.this.m43173a(this.f65a, 0, new Intent().setAction("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION", this.f66b));
        }
    }

    public ComponentActivity$b(ComponentActivity componentActivity) {
        this.f61i = componentActivity;
    }

    @Override // androidx.activity.result.ActivityResultRegistry
    /* renamed from: b */
    public <I, O> void mo43172b(int i, AbstractC25376a<I, O> abstractC25376a, I i2, C26416c c26416c) {
        ComponentActivity componentActivity = this.f61i;
        AbstractC25376a.C25377a<O> mo3692b = abstractC25376a.mo3692b(componentActivity, i2);
        if (mo3692b != null) {
            new Handler(Looper.getMainLooper()).post(new RunnableC0016a(i, mo3692b));
            return;
        }
        Intent mo3691a = abstractC25376a.mo3691a(componentActivity, i2);
        Bundle bundle = null;
        if (mo3691a.getExtras() != null && mo3691a.getExtras().getClassLoader() == null) {
            mo3691a.setExtrasClassLoader(componentActivity.getClassLoader());
        }
        if (mo3691a.hasExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) {
            bundle = mo3691a.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
            mo3691a.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
        } else if (c26416c != null) {
            bundle = c26416c.m1894a();
        }
        if ("androidx.activity.result.contract.action.REQUEST_PERMISSIONS".equals(mo3691a.getAction())) {
            String[] stringArrayExtra = mo3691a.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
            String[] strArr = stringArrayExtra;
            if (stringArrayExtra == null) {
                strArr = new String[0];
            }
            C26413b.m1895g(componentActivity, strArr, i);
        } else if (!"androidx.activity.result.contract.action.INTENT_SENDER_REQUEST".equals(mo3691a.getAction())) {
            int i3 = C26413b.f74031c;
            componentActivity.startActivityForResult(mo3691a, i, bundle);
        } else {
            IntentSenderRequest intentSenderRequest = (IntentSenderRequest) mo3691a.getParcelableExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST");
            try {
                IntentSender intentSender = intentSenderRequest.f98a;
                Intent intent = intentSenderRequest.f99b;
                int i4 = intentSenderRequest.f100c;
                int i5 = intentSenderRequest.f101d;
                int i6 = C26413b.f74031c;
                componentActivity.startIntentSenderForResult(intentSender, i, intent, i4, i5, 0, bundle);
            } catch (IntentSender.SendIntentException e) {
                new Handler(Looper.getMainLooper()).post(new RunnableC0017b(i, e));
            }
        }
    }
}
