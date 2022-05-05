package p459j.p460a.p474c0.p491g.p496e0;

import android.app.Fragment;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import gogolook.callgogolook2.messaging.datamodel.data.PendingAttachmentData;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p491g.AbstractC12126w;
import p459j.p460a.p474c0.p499h.AbstractAsyncTaskC12189n0;
import p459j.p460a.p474c0.p499h.C12242z;
/* renamed from: j.a.c0.g.e0.f */
/* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/f.class */
public class C12036f {

    /* renamed from: a */
    public final Fragment f26965a;

    /* renamed from: b */
    public final AbstractC12038b f26966b;

    /* renamed from: j.a.c0.g.e0.f$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/f$a.class */
    public class AsyncTaskC12037a extends AbstractAsyncTaskC12189n0<Void, Void, String> {

        /* renamed from: e */
        public final /* synthetic */ Uri f26967e;

        public AsyncTaskC12037a(Uri uri) {
            this.f26967e = uri;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public String mo6854a(Void... voidArr) {
            return C12242z.m6563a(AbstractC11516a.m9413n().mo9412a().getContentResolver(), this.f26967e);
        }

        /* renamed from: a */
        public void onPostExecute(String str) {
            C12036f.this.f26966b.mo7356a(PendingAttachmentData.m27513a(str, this.f26967e));
        }
    }

    /* renamed from: j.a.c0.g.e0.f$b */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/f$b.class */
    public interface AbstractC12038b {
        /* renamed from: a */
        void mo7356a(PendingAttachmentData pendingAttachmentData);
    }

    public C12036f(Fragment fragment, AbstractC12038b bVar) {
        this.f26965a = fragment;
        this.f26966b = bVar;
    }

    /* renamed from: a */
    public void m7453a() {
        AbstractC12126w.m7095a().mo7090a(this.f26965a);
    }

    /* renamed from: a */
    public void m7452a(int i, int i2, Intent intent) {
        if (i == 1400 && i2 == -1) {
            String stringExtra = intent.getStringExtra("photo_url");
            String str = stringExtra;
            if (stringExtra == null) {
                String dataString = intent.getDataString();
                str = dataString;
                if (dataString == null) {
                    Bundle extras = intent.getExtras();
                    str = dataString;
                    if (extras != null) {
                        Uri uri = (Uri) extras.getParcelable("android.intent.extra.STREAM");
                        str = dataString;
                        if (uri != null) {
                            str = uri.toString();
                        }
                    }
                }
            }
            if (str != null) {
                m7451a(Uri.parse(str));
            }
        }
    }

    /* renamed from: a */
    public final void m7451a(Uri uri) {
        new AsyncTaskC12037a(uri).m6852b(new Void[0]);
    }
}
