package com.asus.blocklist.backwardcompatible;

import android.app.IntentService;
import android.content.ContentValues;
import android.telephony.PhoneNumberUtils;
import android.util.Log;
import com.asus.blocklist.backwardcompatible.a;
import com.asus.blocklist.c;
import com.asus.blocklist.g;
import com.asus.updatesdk.BuildConfig;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/asus/blocklist/backwardcompatible/BlockListDataSyncService.class */
public class BlockListDataSyncService extends IntentService {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2472a = BlockListDataSyncService.class.getSimpleName() + "_backwardcompatible";

    public BlockListDataSyncService() {
        super(f2472a);
        setIntentRedelivery(true);
    }

    private void a(String str, int i) {
        ContentValues contentValues = new ContentValues();
        ContentValues contentValues2 = new ContentValues();
        new String(BuildConfig.FLAVOR);
        String str2 = str;
        if (!g.a(str)) {
            str2 = g.a(this, str);
        }
        contentValues.put("number", str2);
        contentValues.put("block_type", Integer.valueOf(i));
        contentValues2.put("displayname", str2);
        contentValues2.put("numbertype", Integer.valueOf(i));
        try {
            getContentResolver().insert(c.b.f2507a, contentValues);
            getContentResolver().insert(a.AbstractC0066a.f2502a, contentValues2);
        } catch (Exception e) {
            Log.e(f2472a, "Fail to copyBlockListData due to: " + e.toString());
            e.printStackTrace();
        }
    }

    private static boolean a(List<String> list, String str) {
        r6 = false;
        boolean z = false;
        if (list == null || !list.isEmpty()) {
            Iterator<String> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                boolean compare = PhoneNumberUtils.compare(it.next(), str);
                z = compare;
                if (compare) {
                    z = compare;
                    break;
                }
            }
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0313  */
    /* JADX WARN: Type inference failed for: r12v23 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v32 */
    /* JADX WARN: Type inference failed for: r12v34 */
    /* JADX WARN: Type inference failed for: r12v46 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(java.lang.String r10, int r11) {
        /*
            Method dump skipped, instructions count: 956
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.backwardcompatible.BlockListDataSyncService.b(java.lang.String, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x03b1 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01d0  */
    @Override // android.app.IntentService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onHandleIntent(android.content.Intent r10) {
        /*
            Method dump skipped, instructions count: 2866
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.backwardcompatible.BlockListDataSyncService.onHandleIntent(android.content.Intent):void");
    }
}
