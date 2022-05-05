package com.android.contacts.calllog;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.provider.CallLog;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;
import com.android.contacts.activities.NecessaryPermissionDenyActivity;
import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.updatesdk.BuildConfig;
import java.io.BufferedReader;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/CallLogRestoreActivity.class */
public class CallLogRestoreActivity extends Activity {

    /* renamed from: b  reason: collision with root package name */
    private static boolean f630b = false;

    /* renamed from: a  reason: collision with root package name */
    private boolean f631a = false;
    private ProgressDialog c;
    private Uri d;
    private FileDescriptor e;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/CallLogRestoreActivity$a.class */
    private final class a extends AsyncTask<String, Void, Boolean> {

        /* renamed from: b  reason: collision with root package name */
        private Activity f637b;

        private a() {
        }

        /* synthetic */ a(CallLogRestoreActivity callLogRestoreActivity, byte b2) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r8v8 */
        private boolean a(String str) {
            Cursor cursor;
            FileInputStream fileInputStream;
            BufferedReader bufferedReader;
            FileInputStream fileInputStream2;
            BufferedReader bufferedReader2;
            boolean z;
            BufferedReader bufferedReader3;
            ContentProviderResult[] applyBatch;
            ArrayList arrayList = new ArrayList();
            try {
                cursor = this.f637b.getContentResolver().query(CallLog.Calls.CONTENT_URI, null, null, null, null);
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
                        fileInputStream = CallLogRestoreActivity.this.e != null ? new FileInputStream(CallLogRestoreActivity.this.e) : str.equals("from file provider") ? (FileInputStream) CallLogRestoreActivity.this.getContentResolver().openInputStream(CallLogRestoreActivity.this.d) : new FileInputStream(str);
                    } catch (Throwable th2) {
                        th = th2;
                        fileInputStream2 = cursor;
                    }
                } catch (FileNotFoundException e) {
                    e = e;
                    fileInputStream = null;
                    bufferedReader = null;
                } catch (IOException e2) {
                    e = e2;
                    fileInputStream = null;
                    bufferedReader = null;
                } catch (Throwable th3) {
                    th = th3;
                    fileInputStream2 = null;
                    bufferedReader2 = null;
                }
                if (fileInputStream != null) {
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
                                if (split != null && split.length >= 5 && !arrayList.contains(split[2])) {
                                    if (!CallLogRestoreActivity.a(split[1]) || !CallLogRestoreActivity.a(split[4])) {
                                        Log.d("CallLogRestoreActivity", "Calls.NUMBER = " + split[0] + " Calls.TYPE = " + split[1] + " sim_index = " + split[4]);
                                    } else {
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
                            }
                            try {
                                applyBatch = this.f637b.getContentResolver().applyBatch("call_log", arrayList2);
                                bufferedReader3 = bufferedReader;
                            } catch (Exception e3) {
                                e3.printStackTrace();
                                Log.d("CallLogRestoreActivity", "Exception");
                                bufferedReader3 = bufferedReader;
                            }
                        } catch (FileNotFoundException e4) {
                            e = e4;
                            Log.e("CallLogRestoreActivity", "File not found: " + e.toString());
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException e5) {
                                    e5.printStackTrace();
                                }
                            }
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                            z = false;
                            return z;
                        } catch (IOException e6) {
                            e = e6;
                            Log.e("CallLogRestoreActivity", "Can not read file: " + e.toString());
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException e7) {
                                    e7.printStackTrace();
                                }
                            }
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                            z = false;
                            return z;
                        }
                    } catch (FileNotFoundException e8) {
                        e = e8;
                        bufferedReader = null;
                    } catch (IOException e9) {
                        e = e9;
                        bufferedReader = null;
                    } catch (Throwable th4) {
                        th = th4;
                        bufferedReader2 = null;
                        fileInputStream2 = fileInputStream;
                        if (bufferedReader2 != null) {
                            try {
                                bufferedReader2.close();
                            } catch (IOException e10) {
                                e10.printStackTrace();
                                throw th;
                            }
                        }
                        if (fileInputStream2 != null) {
                            fileInputStream2.close();
                        }
                        throw th;
                    }
                    if (applyBatch != null) {
                        bufferedReader3 = bufferedReader;
                        if (applyBatch.length > 0) {
                            Log.d("CallLogRestoreActivity", "result.length = " + applyBatch.length);
                            try {
                                bufferedReader.close();
                                if (fileInputStream != null) {
                                    fileInputStream.close();
                                }
                            } catch (IOException e11) {
                                e11.printStackTrace();
                            }
                            z = true;
                            return z;
                        }
                    }
                } else {
                    bufferedReader3 = null;
                }
                if (bufferedReader3 != null) {
                    try {
                        bufferedReader3.close();
                    } catch (IOException e12) {
                        e12.printStackTrace();
                    }
                }
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                z = false;
                return z;
            } catch (Throwable th5) {
                th = th5;
                cursor = null;
            }
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Boolean doInBackground(String[] strArr) {
            CallLogRestoreActivity.this.f631a = true;
            this.f637b = CallLogRestoreActivity.this;
            return Boolean.valueOf(a(strArr[0]));
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Boolean bool) {
            if (CallLogRestoreActivity.this.c != null) {
                try {
                    CallLogRestoreActivity.this.c.dismiss();
                } catch (Exception e) {
                    Log.d("CallLogRestoreActivity", "Fail to dismiss progress dialog, Exception : " + e.toString());
                }
            }
            boolean unused = CallLogRestoreActivity.f630b = false;
            CallLogRestoreActivity.this.f631a = false;
            if (this.f637b != null) {
                AlertDialog.Builder builder = new AlertDialog.Builder(this.f637b);
                builder.setTitle(CallLogRestoreActivity.this.getResources().getString(2131756068));
                builder.setMessage(CallLogRestoreActivity.this.getResources().getString(2131756069));
                builder.setPositiveButton(CallLogRestoreActivity.this.getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.calllog.CallLogRestoreActivity.a.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        a.this.f637b.finish();
                    }
                });
                builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.android.contacts.calllog.CallLogRestoreActivity.a.2
                    @Override // android.content.DialogInterface.OnCancelListener
                    public final void onCancel(DialogInterface dialogInterface) {
                        a.this.f637b.finish();
                    }
                });
                try {
                    builder.create().show();
                } catch (Exception e2) {
                    Log.d("CallLogRestoreActivity", e2.toString());
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x011b  */
    /* JADX WARN: Type inference failed for: r8v7, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v9, types: [java.lang.String] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String a(android.net.Uri r8) {
        /*
            Method dump skipped, instructions count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.calllog.CallLogRestoreActivity.a(android.net.Uri):java.lang.String");
    }

    public static boolean a(String str) {
        boolean z;
        try {
            Integer.parseInt(str);
            z = true;
        } catch (NumberFormatException e) {
            z = false;
        }
        return z;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        try {
            if (this.f631a) {
                Toast.makeText(this, getResources().getString(2131756069), 0).show();
            }
        } catch (Exception e) {
            Log.d("CallLogRestoreActivity", "Fail to toast restore complete message Exception :" + e.toString());
        }
        finish();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            Intent intent = getIntent();
            final String str = BuildConfig.FLAVOR;
            if (intent != null) {
                str = BuildConfig.FLAVOR;
                if (intent.getData() != null) {
                    str = a(intent.getData());
                }
            }
            if (!TextUtils.isEmpty(str) || this.e != null) {
                Log.d("CallLogRestoreActivity", "Restore fileName: " + PhoneCapabilityTester.privacyLogCheck(str));
                this.c = new ProgressDialog(this);
                this.c.setCancelable(false);
                this.c.setMessage(getString(2131755350));
                AlertDialog.Builder builder = new AlertDialog.Builder(this);
                builder.setTitle(getResources().getString(2131756068));
                builder.setMessage(getResources().getString(2131756070));
                builder.setPositiveButton(getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.calllog.CallLogRestoreActivity.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        new a(CallLogRestoreActivity.this, (byte) 0).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, str);
                        if (CallLogRestoreActivity.this.c != null) {
                            CallLogRestoreActivity.this.c.show();
                        }
                        boolean unused = CallLogRestoreActivity.f630b = true;
                    }
                });
                builder.setNegativeButton(getResources().getString(17039360), new DialogInterface.OnClickListener() { // from class: com.android.contacts.calllog.CallLogRestoreActivity.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        CallLogRestoreActivity.this.finish();
                    }
                });
                builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.android.contacts.calllog.CallLogRestoreActivity.3
                    @Override // android.content.DialogInterface.OnCancelListener
                    public final void onCancel(DialogInterface dialogInterface) {
                        CallLogRestoreActivity.this.finish();
                    }
                });
                builder.create().show();
                return;
            }
            Log.e("CallLogRestoreActivity", "fileName should not be empty");
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        setVisible(true);
    }
}
