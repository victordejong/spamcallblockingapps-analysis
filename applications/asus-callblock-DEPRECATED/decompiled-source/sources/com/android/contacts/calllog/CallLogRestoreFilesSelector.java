package com.android.contacts.calllog;

import android.app.ActionBar;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.ListActivity;
import android.app.ProgressDialog;
import android.content.ContentProviderOperation;
import android.content.DialogInterface;
import android.database.Cursor;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Environment;
import android.provider.CallLog;
import android.text.format.DateUtils;
import android.text.format.Time;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import android.widget.Toast;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.updatesdk.BuildConfig;
import com.uservoice.uservoicesdk.d;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/CallLogRestoreFilesSelector.class */
public class CallLogRestoreFilesSelector extends ListActivity {

    /* renamed from: a  reason: collision with root package name */
    public static String[] f640a = {"sdcard/ASUS/Calllog/Backup/", Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).toString(), Environment.getExternalStorageDirectory().toString() + "/bluetooth", Environment.getExternalStorageDirectory().toString() + "/ShareLink"};
    private static boolean d = false;

    /* renamed from: b  reason: collision with root package name */
    private boolean f641b = false;
    private SimpleAdapter c = null;
    private ProgressDialog e;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/CallLogRestoreFilesSelector$a.class */
    private final class a extends AsyncTask<String, Void, String> {

        /* renamed from: b  reason: collision with root package name */
        private Activity f648b;

        private a() {
        }

        /* synthetic */ a(CallLogRestoreFilesSelector callLogRestoreFilesSelector, byte b2) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Not initialized variable reg: 11, insn: 0x0320: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r11 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:132:0x031d */
        /* JADX WARN: Not initialized variable reg: 13, insn: 0x031d: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r13 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:132:0x031d */
        /* renamed from: a */
        public String doInBackground(String... strArr) {
            Cursor cursor;
            BufferedReader bufferedReader;
            FileInputStream fileInputStream;
            BufferedReader bufferedReader2;
            this.f648b = CallLogRestoreFilesSelector.this;
            String str = strArr[0];
            ArrayList arrayList = new ArrayList();
            try {
                cursor = this.f648b.getContentResolver().query(CallLog.Calls.CONTENT_URI, null, null, null, null);
                if (cursor != null) {
                    while (cursor.moveToNext()) {
                        try {
                            arrayList.add(cursor.getString(cursor.getColumnIndex("date")));
                        } catch (Throwable th) {
                            th = th;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
                try {
                    try {
                        fileInputStream = new FileInputStream(str);
                    } catch (Throwable th2) {
                        th = th2;
                    }
                    try {
                        bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream));
                        try {
                            ArrayList<ContentProviderOperation> arrayList2 = new ArrayList<>();
                            while (true) {
                                String readLine = bufferedReader.readLine();
                                if (readLine == null) {
                                    break;
                                }
                                String[] split = readLine.split(";");
                                if (!arrayList.contains(split[2])) {
                                    ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(CallLog.Calls.CONTENT_URI);
                                    if (PhoneCapabilityTester.IsAsusDevice()) {
                                        if (split.length >= 7 && CompatUtils.isNCompatible()) {
                                            newInsert.withValue("post_dial_digits", split[6]);
                                        }
                                        if (split.length >= 6) {
                                            newInsert.withValue("presentation", split[5]);
                                        }
                                        if (split.length >= 5) {
                                            newInsert.withValue("number", split[0]).withValue("type", split[1]).withValue("date", split[2]).withValue("duration", split[3]).withValue("sim_index", split[4]);
                                            arrayList2.add(newInsert.build());
                                        }
                                    } else {
                                        if (split.length >= 7 && CompatUtils.isNCompatible()) {
                                            newInsert.withValue("post_dial_digits", split[6]);
                                        }
                                        if (split.length >= 6) {
                                            newInsert.withValue("presentation", split[5]);
                                        }
                                        if (split.length >= 5) {
                                            newInsert.withValue("number", split[0]).withValue("type", split[1]).withValue("date", split[2]).withValue("duration", split[3]);
                                            arrayList2.add(newInsert.build());
                                        }
                                    }
                                }
                            }
                            try {
                                this.f648b.getContentResolver().applyBatch("call_log", arrayList2);
                            } catch (Exception e) {
                                e.printStackTrace();
                                Log.d("CallLogRestoreFilesSelector", "Exception");
                            }
                            try {
                                bufferedReader.close();
                                fileInputStream.close();
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                        } catch (FileNotFoundException e3) {
                            e = e3;
                            Log.e("CallLogRestoreFilesSelector", "File not found: " + e.toString());
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException e4) {
                                    e4.printStackTrace();
                                }
                            }
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                            return str;
                        } catch (IOException e5) {
                            e = e5;
                            Log.e("CallLogRestoreFilesSelector", "Can not read file: " + e.toString());
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException e6) {
                                    e6.printStackTrace();
                                }
                            }
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                            return str;
                        }
                    } catch (FileNotFoundException e7) {
                        e = e7;
                        bufferedReader = null;
                    } catch (IOException e8) {
                        e = e8;
                        bufferedReader = null;
                    } catch (Throwable th3) {
                        th = th3;
                        bufferedReader2 = null;
                        if (bufferedReader2 != null) {
                            try {
                                bufferedReader2.close();
                            } catch (IOException e9) {
                                e9.printStackTrace();
                                throw th;
                            }
                        }
                        if (fileInputStream != null) {
                            fileInputStream.close();
                        }
                        throw th;
                    }
                } catch (FileNotFoundException e10) {
                    e = e10;
                    bufferedReader = null;
                    fileInputStream = null;
                } catch (IOException e11) {
                    e = e11;
                    bufferedReader = null;
                    fileInputStream = null;
                } catch (Throwable th4) {
                    th = th4;
                    bufferedReader2 = null;
                    fileInputStream = null;
                }
                return str;
            } catch (Throwable th5) {
                th = th5;
                cursor = null;
            }
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(String str) {
            if (CallLogRestoreFilesSelector.this.e != null) {
                CallLogRestoreFilesSelector.this.e.dismiss();
            }
            boolean unused = CallLogRestoreFilesSelector.d = false;
            if (CallLogRestoreFilesSelector.this.f641b) {
                AlertDialog.Builder builder = new AlertDialog.Builder(CallLogRestoreFilesSelector.this);
                builder.setTitle(CallLogRestoreFilesSelector.this.getResources().getString(2131756068));
                builder.setMessage(CallLogRestoreFilesSelector.this.getResources().getString(2131756069));
                builder.setPositiveButton(CallLogRestoreFilesSelector.this.getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.calllog.CallLogRestoreFilesSelector.a.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                    }
                });
                builder.create().show();
                return;
            }
            try {
                Toast.makeText(CallLogRestoreFilesSelector.this, CallLogRestoreFilesSelector.this.getResources().getString(2131756069), 0).show();
            } catch (Exception e) {
                Log.d("CallLogRestoreFilesSelector", "Fail to toast restore complete message Exception :" + e.toString());
            }
        }
    }

    private void a() {
        Log.d("CallLogRestoreFilesSelector", "initialRestoreFilesList");
        ArrayList<HashMap<String, String>> arrayList = new ArrayList<>();
        for (int i = 0; i < f640a.length; i++) {
            a(f640a[i], arrayList);
        }
        this.c = new SimpleAdapter(this, arrayList, 2131427431, new String[]{ContactDetailCallogActivity.EXTRA_NAME, "date", "size"}, new int[]{d.b.g, 2131296635, 2131297306});
    }

    private void a(String str, ArrayList<HashMap<String, String>> arrayList) {
        File[] listFiles = new File(str).listFiles(new FilenameFilter() { // from class: com.android.contacts.calllog.CallLogRestoreFilesSelector.2
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str2) {
                return new File(new StringBuilder().append(file).append("/").append(str2).toString()).isDirectory() ? true : str2.endsWith(".clbu");
            }
        });
        int length = listFiles != null ? listFiles.length : 0;
        for (int i = 0; i < length; i++) {
            Log.d("CallLogRestoreFilesSelector", "File " + i + ": " + PhoneCapabilityTester.privacyLogCheck(listFiles[i].getName()));
            if (listFiles[i].isDirectory()) {
                a(listFiles[i].toString(), arrayList);
            } else {
                HashMap<String, String> hashMap = new HashMap<>();
                String name = listFiles[i].getName();
                if (name.lastIndexOf(".") != -1) {
                    name = name.substring(0, name.lastIndexOf("."));
                }
                hashMap.put(ContactDetailCallogActivity.EXTRA_NAME, name);
                long lastModified = listFiles[i].lastModified();
                new Time().set(lastModified);
                new Time().setToNow();
                hashMap.put("date", DateUtils.formatDateTime(this, lastModified, 527127));
                hashMap.put("size", Float.toString(Math.round((((float) listFiles[i].length()) / 1024.0f) * 100.0f) / 100.0f) + " KB");
                hashMap.put("path", listFiles[i].toString());
                arrayList.add(hashMap);
            }
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Log.d("CallLogRestoreFilesSelector", "onCreate");
        setContentView(2131427430);
        ActionBar actionBar = getActionBar();
        actionBar.setDisplayShowTitleEnabled(true);
        actionBar.setDisplayShowHomeEnabled(false);
        actionBar.setDisplayHomeAsUpEnabled(true);
        actionBar.setTitle(getString(2131756068));
        actionBar.setIcon(2131165872);
        a();
        this.e = new ProgressDialog(this);
        this.e.setCancelable(false);
        this.e.setMessage(getString(2131755350));
        ListView listView = getListView();
        if (listView != null) {
            listView.setEmptyView(findViewById(2131296787));
            listView.setAdapter((ListAdapter) this.c);
            listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.android.contacts.calllog.CallLogRestoreFilesSelector.1
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    Log.d("CallLogRestoreFilesSelector", "onItemClick position=" + i + " id=" + j);
                    if (CallLogRestoreFilesSelector.this.c != null) {
                        HashMap hashMap = (HashMap) CallLogRestoreFilesSelector.this.c.getItem(i);
                        if (hashMap != null) {
                            final String str = BuildConfig.FLAVOR;
                            int length = CallLogRestoreFilesSelector.f640a.length - 1;
                            while (length >= 0) {
                                String str2 = (String) hashMap.get("path");
                                str = str2;
                                if (new File(str2).exists()) {
                                    break;
                                }
                                Log.d("CallLogRestoreFilesSelector", PhoneCapabilityTester.privacyLogCheck(str2) + " does not exists");
                                length--;
                                str = str2;
                            }
                            Log.d("CallLogRestoreFilesSelector", "launchSmsRestoreFilesDialog(): onItemClick() for position " + i + " => " + str);
                            AlertDialog.Builder builder = new AlertDialog.Builder(CallLogRestoreFilesSelector.this);
                            builder.setTitle(CallLogRestoreFilesSelector.this.getResources().getString(2131756068));
                            builder.setMessage(CallLogRestoreFilesSelector.this.getResources().getString(2131756070));
                            builder.setPositiveButton(CallLogRestoreFilesSelector.this.getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.calllog.CallLogRestoreFilesSelector.1.1
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i2) {
                                    new a(CallLogRestoreFilesSelector.this, (byte) 0).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, str);
                                    if (CallLogRestoreFilesSelector.this.e != null) {
                                        CallLogRestoreFilesSelector.this.e.show();
                                    }
                                    boolean unused = CallLogRestoreFilesSelector.d = true;
                                }
                            });
                            builder.setNegativeButton(CallLogRestoreFilesSelector.this.getResources().getString(17039360), new DialogInterface.OnClickListener() { // from class: com.android.contacts.calllog.CallLogRestoreFilesSelector.1.2
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i2) {
                                }
                            });
                            builder.create().show();
                            return;
                        }
                        return;
                    }
                    Log.w("CallLogRestoreFilesSelector", "mAdapter was null");
                }
            });
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z;
        switch (menuItem.getItemId()) {
            case 16908332:
                onBackPressed();
                z = true;
                break;
            default:
                z = super.onOptionsItemSelected(menuItem);
                break;
        }
        return z;
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.f641b = false;
        if (this.e != null) {
            this.e.dismiss();
        }
    }

    @Override // android.app.Activity
    protected void onRestart() {
        Log.d("CallLogRestoreFilesSelector", "onRestart");
        a();
        if (getListView() != null) {
            getListView().setAdapter((ListAdapter) this.c);
        }
        super.onRestart();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.f641b = true;
        if (d) {
            this.e.show();
        }
    }
}
