package p459j.p460a.p463b0.p466s;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Looper;
import android.provider.CallLog;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C14080m2;
/* renamed from: j.a.b0.s.f */
/* loaded from: classes2-dex2jar.jar:j/a/b0/s/f.class */
public class C11257f {

    /* renamed from: j.a.b0.s.f$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/f$a.class */
    public static class C11258a {

        /* renamed from: a */
        public final Context f25281a;

        /* renamed from: b */
        public final AbstractC11260c f25282b;

        public C11258a(Context context, AbstractC11260c cVar) {
            this.f25281a = context;
            this.f25282b = cVar;
        }
    }

    /* renamed from: j.a.b0.s.f$b */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/f$b.class */
    public class AsyncTaskC11259b extends AsyncTask<C11258a, Void, String> {

        /* renamed from: a */
        public final AbstractC11260c f25283a;

        public AsyncTaskC11259b(AbstractC11260c cVar) {
            this.f25283a = cVar;
        }

        /* renamed from: a */
        public String doInBackground(C11258a... aVarArr) {
            int length = aVarArr.length;
            String str = "";
            String str2 = str;
            if (C13878a3.m3207k()) {
                int length2 = aVarArr.length;
                int i = 0;
                while (true) {
                    str2 = str;
                    if (i >= length2) {
                        break;
                    }
                    try {
                        str = CallLog.Calls.getLastOutgoingCall(aVarArr[i].f25281a);
                    } catch (SecurityException e) {
                        C14080m2.m2612a((Throwable) e);
                    }
                    i++;
                }
            }
            return str2;
        }

        /* renamed from: a */
        public void onPostExecute(String str) {
            C11257f.this.m9936a();
            this.f25283a.mo9802a(str);
        }
    }

    /* renamed from: j.a.b0.s.f$c */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/f$c.class */
    public interface AbstractC11260c {
        /* renamed from: a */
        void mo9802a(String str);
    }

    /* renamed from: a */
    public AsyncTask m9935a(C11258a aVar) {
        m9936a();
        return new AsyncTaskC11259b(aVar.f25282b).execute(aVar);
    }

    /* renamed from: a */
    public final void m9936a() {
        if (!Looper.getMainLooper().equals(Looper.myLooper())) {
            throw new RuntimeException("Not on the UI thread!");
        }
    }
}
