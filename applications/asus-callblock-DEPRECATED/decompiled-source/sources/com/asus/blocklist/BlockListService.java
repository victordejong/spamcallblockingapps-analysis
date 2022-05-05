package com.asus.blocklist;

import android.app.IntentService;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.widget.Toast;
import com.android.contacts.activities.BlockAndTagNumberActivity;
import com.android.contacts.util.CoverUtils;
import com.asus.blocklist.backwardcompatible.a;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/asus/blocklist/BlockListService.class */
public class BlockListService extends IntentService {
    public BlockListService() {
        super("BlockListService");
    }

    private void a(Intent intent) {
        Cursor cursor;
        Throwable th;
        Cursor cursor2;
        int h;
        Messenger messenger = (Messenger) intent.getExtras().get("BLOCKLIST_MESSENGER_EXTRA");
        Message obtain = Message.obtain();
        Message obtain2 = Message.obtain();
        Message obtain3 = Message.obtain();
        obtain.what = 20;
        obtain2.what = 19;
        obtain3.what = 21;
        if (messenger != null) {
            try {
                messenger.send(obtain);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        Iterator it = intent.getParcelableArrayListExtra("BLOCKLIST_LOOKUPURI_URI_ARRAY_EXTRA").iterator();
        int i = -5;
        while (it.hasNext()) {
            try {
                cursor = getApplicationContext().getContentResolver().query((Uri) it.next(), new String[]{CoverUtils.CoverData.COVER_URI}, null, null, null);
                if (cursor != null) {
                    cursor2 = cursor;
                    try {
                        try {
                            if (cursor.getCount() > 0 && cursor.moveToFirst()) {
                                String string = cursor.getString(cursor.getColumnIndex(CoverUtils.CoverData.COVER_URI));
                                if (g.a(string)) {
                                    if (g.h(getApplicationContext())) {
                                        h = a.f(getApplicationContext(), string);
                                        g.i(getApplicationContext(), string);
                                    } else {
                                        h = g.i(getApplicationContext(), string);
                                    }
                                } else if (g.h(getApplicationContext())) {
                                    h = a.e(getApplicationContext(), string);
                                    g.h(getApplicationContext(), string);
                                } else {
                                    h = g.h(getApplicationContext(), string);
                                }
                                i = Math.max(h, i);
                            }
                        } catch (Exception e2) {
                            e = e2;
                            e.printStackTrace();
                            if (cursor != null) {
                                cursor.close();
                            } else {
                                i = i;
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (cursor2 != null) {
                            cursor2.close();
                        }
                        throw th;
                    }
                }
                i = i;
            } catch (Exception e3) {
                e = e3;
                cursor = null;
            } catch (Throwable th3) {
                th = th3;
                cursor2 = null;
            }
            if (cursor != null) {
                cursor.close();
            }
        }
        Bundle bundle = new Bundle();
        bundle.putInt("result", i);
        obtain2.setData(bundle);
        if (messenger != null) {
            try {
                messenger.send(obtain2);
                messenger.send(obtain3);
            } catch (RemoteException e4) {
                e4.printStackTrace();
            }
        }
    }

    private void b(Intent intent) {
        int h;
        Messenger messenger = (Messenger) intent.getExtras().get("BLOCKLIST_MESSENGER_EXTRA");
        Message obtain = Message.obtain();
        Message obtain2 = Message.obtain();
        Message obtain3 = Message.obtain();
        obtain.what = 20;
        obtain2.what = 18;
        obtain3.what = 21;
        if (messenger != null) {
            try {
                messenger.send(obtain);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        Iterator<String> it = intent.getStringArrayListExtra("BLOCKLIST_CALLNUMBER_STRING_ARRAY_EXTRA").iterator();
        int i = -5;
        while (it.hasNext()) {
            String next = it.next();
            if (g.a(next)) {
                if (g.h(getApplicationContext())) {
                    h = a.f(getApplicationContext(), next);
                    g.i(getApplicationContext(), next);
                } else {
                    h = g.i(getApplicationContext(), next);
                }
            } else if (g.h(getApplicationContext())) {
                h = a.e(getApplicationContext(), next);
                g.h(getApplicationContext(), next);
            } else {
                h = g.h(getApplicationContext(), next);
            }
            i = Math.max(h, i);
        }
        Bundle bundle = new Bundle();
        bundle.putInt("result", i);
        obtain2.setData(bundle);
        if (messenger != null) {
            try {
                messenger.send(obtain2);
                messenger.send(obtain3);
            } catch (RemoteException e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        boolean z = true;
        Log.d("BlockListService", "Action: " + intent.getAction());
        if (intent != null && "android.intent.action.ASUS_ADD_CONTACTS_TO_BLOCK_LIST_SERVICE".equals(intent.getAction())) {
            a(intent);
        } else if (intent != null && "android.intent.action.ASUS_ADD_CALLLOGS_TO_BLOCK_LIST_SERVICE".equals(intent.getAction())) {
            b(intent);
        } else if (intent != null && "android.intent.action.ASUS_ADD_NUMBER_TO_BLOCK_LIST_SERVICE".equals(intent.getAction())) {
            String stringExtra = intent.getStringExtra("number");
            boolean booleanExtra = intent.getBooleanExtra(BlockAndTagNumberActivity.ASUS_CALLER_BLOCK_IS_SWIPE_TO_BLOCK, false);
            if (!(g.h(this) ? a.a(this, stringExtra) : g.c(this, stringExtra))) {
                Intent intent2 = new Intent();
                intent2.setAction(BlockAndTagNumberActivity.ACTION);
                intent2.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_BLOCK_NUMBER, stringExtra);
                intent2.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_BLOCK_DIALPAD_STATUS, false);
                intent2.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_BLOCK_CONTACT_ID, 0L);
                intent2.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_BLOCK_FLAG, true);
                intent2.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_ONLY_BLOCK_NUMBER, true);
                if (booleanExtra) {
                    z = false;
                }
                intent2.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_BLOCK_IS_END_CALL_BLOCK, z);
                intent2.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_BLOCK_IS_SWIPE_TO_BLOCK, booleanExtra);
                intent2.addFlags(335544320);
                startActivity(intent2);
                return;
            }
            Toast.makeText(this, getResources().getString(2131756483), 0).show();
            Log.d("BlockListService", "add number to blocklist result:ALREADY_EXIST");
        }
    }
}
