package p193e.p194a.p1048l3;

import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.OperationApplicationException;
import android.net.Uri;
import android.os.RemoteException;
import android.provider.CallLog;
import android.util.Pair;
import com.truecaller.TrueApp;
import java.util.ArrayList;
import java.util.List;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p937j4.p938a.AbstractAsyncTaskC15557a;
import p193e.p194a.p937j4.p938a.AbstractC15561d;
/* renamed from: e.a.l3.a */
/* loaded from: classes8-dex2jar.jar:e/a/l3/a.class */
public abstract class AbstractAsyncTaskC17402a extends AbstractAsyncTaskC15557a {

    /* renamed from: e */
    public static final /* synthetic */ int f48748e = 0;

    /* renamed from: d */
    public final List<Pair<Long, Long>> f48749d;

    public AbstractAsyncTaskC17402a(AbstractC15561d abstractC15561d, List<Pair<Long, Long>> list) {
        super(abstractC15561d, false, false, new Object[0]);
        this.f48749d = list;
    }

    @Override // android.os.AsyncTask
    public Object doInBackground(Object... objArr) {
        RuntimeException e;
        RemoteException e2;
        OperationApplicationException e3;
        boolean z = TrueApp.f9585r;
        AbstractApplicationC8442a m28551L = AbstractApplicationC8442a.m28551L();
        int i = 0;
        if (m28551L != null) {
            ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
            ArrayList<ContentProviderOperation> arrayList2 = new ArrayList<>();
            for (Pair<Long, Long> pair : this.f48749d) {
                arrayList.add(ContentProviderOperation.newDelete(ContentUris.withAppendedId(C17891a1.C17901j.m15699b(), ((Long) pair.first).longValue())).build());
                if (((Long) pair.second).longValue() != 0) {
                    arrayList2.add(ContentProviderOperation.newDelete(CallLog.Calls.CONTENT_URI).withSelection("_id=?", new String[]{String.valueOf(pair.second)}).build());
                }
            }
            try {
                if (!arrayList2.isEmpty()) {
                    m28551L.getContentResolver().applyBatch("call_log", arrayList2);
                }
                i = 0;
                if (!arrayList.isEmpty()) {
                    ContentResolver contentResolver = m28551L.getContentResolver();
                    Uri uri = C17891a1.f50888a;
                    i = 0;
                    for (ContentProviderResult contentProviderResult : contentResolver.applyBatch("com.truecaller", arrayList)) {
                        try {
                            i += contentProviderResult.count.intValue();
                        } catch (OperationApplicationException e4) {
                            e3 = e4;
                            C10480a.m26061I1(e3);
                            return Integer.valueOf(i);
                        } catch (RemoteException e5) {
                            e2 = e5;
                            C10480a.m26061I1(e2);
                            return Integer.valueOf(i);
                        } catch (RuntimeException e6) {
                            e = e6;
                            C10480a.m26061I1(e);
                            return Integer.valueOf(i);
                        }
                    }
                }
            } catch (OperationApplicationException e7) {
                e3 = e7;
                i = 0;
            } catch (RemoteException e8) {
                e2 = e8;
                i = 0;
            } catch (RuntimeException e9) {
                e = e9;
                i = 0;
            }
        }
        return Integer.valueOf(i);
    }
}
