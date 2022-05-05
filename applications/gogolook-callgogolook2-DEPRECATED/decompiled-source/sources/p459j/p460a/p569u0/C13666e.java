package p459j.p460a.p569u0;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.NotificationCompat;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import com.criteo.publisher.model.C2041o;
import gogolook.callgogolook2.template.ClickNotificationActivity;
import java.util.concurrent.Callable;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p119d.p120a.C5765c;
import p081h.p119d.p120a.C5776l;
import p081h.p119d.p120a.p145w.p146i.AbstractC6063c;
import p081h.p119d.p120a.p145w.p147j.AbstractC6078h;
import p459j.p460a.p538m0.C13020c;
import p459j.p460a.p569u0.C13673f;
import p459j.p460a.p582w0.C13999f1;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14173t4;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14287l;
import p660rx.Observable;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
/* renamed from: j.a.u0.e */
/* loaded from: classes3-dex2jar.jar:j/a/u0/e.class */
public class C13666e {

    /* renamed from: a */
    public C13673f f30622a;

    /* renamed from: j.a.u0.e$a */
    /* loaded from: classes3-dex2jar.jar:j/a/u0/e$a.class */
    public class C13667a implements AbstractC13672f {

        /* renamed from: a */
        public final /* synthetic */ Context f30623a;

        public C13667a(Context context) {
            this.f30623a = context;
        }

        @Override // p459j.p460a.p569u0.C13666e.AbstractC13672f
        /* renamed from: a */
        public void mo3694a(Bitmap bitmap) {
            C13666e.this.m3698b(this.f30623a, bitmap);
        }

        @Override // p459j.p460a.p569u0.C13666e.AbstractC13672f
        public void onFail() {
            C13666e.this.m3698b(this.f30623a, null);
        }
    }

    /* renamed from: j.a.u0.e$b */
    /* loaded from: classes3-dex2jar.jar:j/a/u0/e$b.class */
    public class C13668b implements Action1<Bitmap> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC13672f f30625a;

        public C13668b(C13666e eVar, AbstractC13672f fVar) {
            this.f30625a = fVar;
        }

        /* renamed from: a */
        public void call(Bitmap bitmap) {
            AbstractC13672f fVar = this.f30625a;
            if (fVar != null) {
                fVar.mo3694a(bitmap);
            }
        }
    }

    /* renamed from: j.a.u0.e$c */
    /* loaded from: classes3-dex2jar.jar:j/a/u0/e$c.class */
    public class C13669c implements Action1<Throwable> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC13672f f30626a;

        public C13669c(C13666e eVar, AbstractC13672f fVar) {
            this.f30626a = fVar;
        }

        /* renamed from: a */
        public void call(Throwable th) {
            AbstractC13672f fVar = this.f30626a;
            if (fVar != null) {
                fVar.onFail();
            }
        }
    }

    /* renamed from: j.a.u0.e$d */
    /* loaded from: classes3-dex2jar.jar:j/a/u0/e$d.class */
    public class CallableC13670d implements Callable<Bitmap> {

        /* renamed from: a */
        public final /* synthetic */ Context f30627a;

        /* renamed from: b */
        public final /* synthetic */ int f30628b;

        public CallableC13670d(C13666e eVar, Context context, int i) {
            this.f30627a = context;
            this.f30628b = i;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Bitmap call() throws Exception {
            return BitmapFactory.decodeResource(this.f30627a.getResources(), this.f30628b);
        }
    }

    /* renamed from: j.a.u0.e$e */
    /* loaded from: classes3-dex2jar.jar:j/a/u0/e$e.class */
    public class C13671e extends AbstractC6078h<Bitmap> {

        /* renamed from: d */
        public final /* synthetic */ AbstractC13672f f30629d;

        public C13671e(C13666e eVar, AbstractC13672f fVar) {
            this.f30629d = fVar;
        }

        /* renamed from: a */
        public void m3695a(Bitmap bitmap, AbstractC6063c<? super Bitmap> cVar) {
            AbstractC13672f fVar = this.f30629d;
            if (fVar != null) {
                fVar.mo3694a(bitmap);
            }
        }

        @Override // p081h.p119d.p120a.p145w.p147j.AbstractC6082k
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo2507a(Object obj, AbstractC6063c cVar) {
            m3695a((Bitmap) obj, (AbstractC6063c<? super Bitmap>) cVar);
        }
    }

    /* renamed from: j.a.u0.e$f */
    /* loaded from: classes3-dex2jar.jar:j/a/u0/e$f.class */
    public interface AbstractC13672f {
        /* renamed from: a */
        void mo3694a(Bitmap bitmap);

        void onFail();
    }

    public C13666e(Context context) {
        m3703a(context, C13673f.EnumC13678e.NOTIFICATION);
    }

    @VisibleForTesting
    public C13666e(C13673f fVar) {
        this.f30622a = fVar;
    }

    /* renamed from: a */
    public final NotificationCompat.Builder m3704a(Context context, Bitmap bitmap) {
        C13673f fVar = this.f30622a;
        PendingIntent a = C14217x3.m2188a(context, ClickNotificationActivity.m26019a(context, fVar.f30649c, fVar.f30650d, fVar.f30654h), 1995);
        String a2 = m3702a(context, this.f30622a.f30650d);
        String a3 = m3702a(context, this.f30622a.f30651e);
        Bundle bundle = new Bundle();
        bundle.putString("message_name", this.f30622a.f30649c);
        NotificationCompat.Builder addExtras = C14173t4.m2307a(context).setContentTitle(a2).setContentText(a3).setStyle(new NotificationCompat.BigTextStyle().bigText(a3)).setContentIntent(a).setTicker(a2).setDefaults(2).setAutoCancel(true).setPriority(1).addExtras(bundle);
        if (bitmap != null) {
            addExtras.setStyle(new NotificationCompat.BigPictureStyle().bigPicture(bitmap));
        }
        return addExtras;
    }

    /* renamed from: a */
    public final String m3702a(Context context, String str) {
        if (!C13659c.m3718a(str)) {
            return str;
        }
        int identifier = context.getResources().getIdentifier(str.substring(1, str.length() - 1).trim(), "string", context.getPackageName());
        return identifier != 0 ? C14206w4.m2225a(identifier) : "";
    }

    /* renamed from: a */
    public void m3705a(Context context) {
        if (!m3706a()) {
            if (C13679g.m3689a(context, this.f30622a)) {
                C13673f fVar = this.f30622a;
                String str = fVar.f30649c;
                String a = m3702a(context, fVar.f30635F);
                String a2 = m3702a(context, this.f30622a.f30636G);
                C13673f fVar2 = this.f30622a;
                m3700a(context, str, a, a2, fVar2.f30637H, fVar2.f30633D, fVar2.f30634E);
            }
            m3701a(context, this.f30622a.f30652f, new C13667a(context));
        }
    }

    /* renamed from: a */
    public void m3703a(Context context, C13673f.EnumC13678e eVar) {
        C13673f b = C13679g.m3691a().m3685b(context, eVar);
        if (b != null) {
            this.f30622a = b;
        }
    }

    /* renamed from: a */
    public final void m3701a(Context context, String str, AbstractC13672f fVar) {
        if (C14217x3.m2160b(str)) {
            fVar.mo3694a(null);
        } else if (C13659c.m3718a(str)) {
            int a = C13659c.m3721a(context, str);
            if (a != 0) {
                Observable.fromCallable(new CallableC13670d(this, context, a)).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C13668b(this, fVar), new C13669c(this, fVar));
            }
        } else {
            C5776l.m24470c(context).m24450a(str).m24524l().m24512b((C5765c<String>) new C13671e(this, fVar));
        }
    }

    /* renamed from: a */
    public final void m3700a(Context context, @NonNull String str, @NonNull String str2, @NonNull String str3, @Nullable String str4, @Nullable String str5, boolean z) {
        JSONObject jSONObject = new JSONObject();
        if (!str2.isEmpty() && !str3.isEmpty()) {
            try {
                jSONObject.put("f_n", str);
                jSONObject.put("t", str2);
                jSONObject.put("c", str3);
                if (str5 == null) {
                    str5 = "";
                }
                jSONObject.put("g", str5);
                jSONObject.put(C2041o.f2249c, z ? 1 : 0);
                jSONObject.put(TtmlNode.TAG_IMAGE, str4);
                jSONObject.put("pin", "");
                jSONObject.put("button_text", "");
                jSONObject.put("button_link", "");
            } catch (JSONException e) {
                e.printStackTrace();
            }
            String valueOf = String.valueOf(System.currentTimeMillis());
            ContentValues contentValues = new ContentValues();
            contentValues.put("_json", jSONObject.toString());
            contentValues.put("_read", (Integer) 0);
            contentValues.put("_version", "1");
            contentValues.put("_read", (Integer) 0);
            contentValues.put("_createtime", valueOf);
            contentValues.put("_updatetime", valueOf);
            contentValues.put("_status", (Integer) 1);
            contentValues.put("_pushid", "0");
            context.getContentResolver().insert(C13020c.f29447a, contentValues);
            try {
                C14037j3.m2731a().mo2704a(new C13999f1());
            } catch (Exception e2) {
                C14080m2.m2612a((Throwable) e2);
            }
            try {
                context.sendBroadcast(new Intent().setAction("newscenter.listview.refresh"));
            } catch (Exception e3) {
                C14080m2.m2612a((Throwable) e3);
            }
        }
    }

    /* renamed from: a */
    public boolean m3706a() {
        return this.f30622a == null;
    }

    /* renamed from: b */
    public final void m3698b(Context context, Bitmap bitmap) {
        NotificationManager notificationManager;
        if (!m3706a() && (notificationManager = (NotificationManager) context.getSystemService("notification")) != null) {
            notificationManager.notify(1995, C14173t4.m2305a(m3704a(context, bitmap)));
            C13659c.m3719a(this.f30622a);
            C14287l.m1917a(1, this.f30622a.f30649c);
        }
    }
}
