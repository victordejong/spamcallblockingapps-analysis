package p459j.p460a.p582w0;

import android.database.Cursor;
import android.provider.ContactsContract;
import gogolook.callgogolook2.MyApplication;
import java.util.concurrent.Callable;
import p459j.p460a.p582w0.p590x4.C14289m;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.schedulers.Schedulers;
/* renamed from: j.a.w0.b4 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/b4.class */
public class C13918b4 {

    /* renamed from: j.a.w0.b4$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/b4$a.class */
    public static final class C13919a extends SingleSubscriber<Integer> {
        /* renamed from: a */
        public void onSuccess(Integer num) {
            C13915b3.m3055b("prefTrackContactGroupAmount", true);
            C14289m.m1875b(num);
        }

        @Override // p660rx.SingleSubscriber
        public void onError(Throwable th) {
            C13973d4.m2952a(th);
        }
    }

    /* renamed from: j.a.w0.b4$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/b4$b.class */
    public static final class CallableC13920b implements Callable<Integer> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Integer call() throws Exception {
            Cursor cursor = null;
            Cursor cursor2 = null;
            try {
                Cursor query = MyApplication.m29013o().getContentResolver().query(ContactsContract.Groups.CONTENT_SUMMARY_URI, new String[]{"_id", "title", "summ_count", "notes"}, "deleted=0 AND summ_count>0", null, null);
                if (query != null) {
                    cursor2 = query;
                    cursor = query;
                    int count = query.getCount();
                    if (query != null) {
                        query.close();
                    }
                    return Integer.valueOf(count);
                }
                if (query != null) {
                    query.close();
                }
                return -1;
            } catch (Exception e) {
                if (cursor != null) {
                    cursor.close();
                }
                return -1;
            } catch (Throwable th) {
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static void m3040a() {
        Single.fromCallable(new CallableC13920b()).subscribeOn(Schedulers.m0io()).subscribe(new C13919a());
    }
}
