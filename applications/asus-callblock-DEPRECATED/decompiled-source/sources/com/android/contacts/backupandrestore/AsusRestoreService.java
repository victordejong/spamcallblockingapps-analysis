package com.android.contacts.backupandrestore;

import android.app.IntentService;
import android.content.ContentProviderOperation;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.provider.CallLog;
import android.util.Log;
import com.android.contacts.activities.NecessaryPermissionDenyActivity;
import com.android.contacts.b.a;
import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.vcard.ProcessorBase;
import com.android.vcard.VCardParser;
import com.android.vcard.exception.VCardException;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
/* loaded from: classes-dex2jar.jar:com/android/contacts/backupandrestore/AsusRestoreService.class */
public class AsusRestoreService extends IntentService implements a.AbstractC0025a {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f615a = false;

    /* renamed from: b  reason: collision with root package name */
    private VCardParser f616b;
    private ExecutorService c;

    public AsusRestoreService() {
        super("AsusRestoreService");
        Log.d("AsusRestoreService", "create AsusRestoreService");
    }

    /* JADX WARN: Not initialized variable reg: 20, insn: 0x0227: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r20 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:76:0x0227 */
    /* JADX WARN: Not initialized variable reg: 21, insn: 0x022b: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r21 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:76:0x0227 */
    /* JADX WARN: Removed duplicated region for block: B:19:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01b8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.android.contacts.vcard.ImportRequest a(android.net.Uri r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 644
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.backupandrestore.AsusRestoreService.a(android.net.Uri, java.lang.String):com.android.contacts.vcard.ImportRequest");
    }

    private boolean a(ProcessorBase processorBase) {
        boolean z;
        synchronized (this) {
            try {
                this.c.execute(processorBase);
                z = true;
            } catch (RejectedExecutionException e) {
                Log.w("AsusRestoreService", "Failed to excetute a job.", e);
                z = false;
            }
        }
        return z;
    }

    @Override // com.android.contacts.b.a.AbstractC0025a
    public final void a() {
        String[] fileList;
        Log.d("AsusRestoreService", "onExecuteFinish");
        if (this.c != null) {
            this.c.shutdown();
        }
        for (String str : fileList()) {
            if (str.startsWith("backupVcard")) {
                Log.i("AsusRestoreService", "Remove a temporary file: " + str);
                deleteFile(str);
            }
        }
    }

    /* JADX WARN: Not initialized variable reg: 11, insn: 0x03a5: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r11 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:137:0x03a5 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:147:0x03bf -> B:81:0x01d7). Please submit an issue!!! */
    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        Cursor cursor;
        FileInputStream fileInputStream;
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2;
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            Log.d("TAG", "RestoreService");
            Log.d("AsusRestoreService", "RestoreServiceF");
            ArrayList arrayList = new ArrayList();
            try {
                cursor = getContentResolver().query(CallLog.Calls.CONTENT_URI, null, null, null, null);
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
                        fileInputStream = new FileInputStream("/data/data/com.asus.contacts/files/CallLog.clbu");
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
                                getContentResolver().applyBatch("call_log", arrayList2);
                            } catch (Exception e) {
                                e.printStackTrace();
                                Log.d("AsusRestoreService", "Exception");
                            }
                            try {
                                bufferedReader.close();
                                fileInputStream.close();
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                        } catch (FileNotFoundException e3) {
                            e = e3;
                            Log.e("AsusRestoreService", "File not found: " + e.toString());
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
                            new ByteArrayInputStream(new byte[(int) new File("/data/data/com.asus.contacts/files/Contacts.vcf").length()]);
                            this.c = Executors.newSingleThreadExecutor();
                            Uri parse = Uri.parse("file:/data/data/com.asus.contacts/files/Contacts.vcf");
                            String lastPathSegment = parse.getLastPathSegment();
                            Log.w("AsusRestoreService", "localDataUri = " + parse);
                            Log.d("AsusRestoreService", "onRestore end: " + a(new a(this, a(parse, lastPathSegment))));
                        } catch (IOException e5) {
                            e = e5;
                            Log.e("AsusRestoreService", "Can not read file: " + e.toString());
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
                            new ByteArrayInputStream(new byte[(int) new File("/data/data/com.asus.contacts/files/Contacts.vcf").length()]);
                            this.c = Executors.newSingleThreadExecutor();
                            Uri parse2 = Uri.parse("file:/data/data/com.asus.contacts/files/Contacts.vcf");
                            String lastPathSegment2 = parse2.getLastPathSegment();
                            Log.w("AsusRestoreService", "localDataUri = " + parse2);
                            Log.d("AsusRestoreService", "onRestore end: " + a(new a(this, a(parse2, lastPathSegment2))));
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
                    fileInputStream = null;
                    bufferedReader = null;
                } catch (IOException e11) {
                    e = e11;
                    fileInputStream = null;
                    bufferedReader = null;
                } catch (Throwable th4) {
                    th = th4;
                    fileInputStream = null;
                    bufferedReader2 = null;
                }
                new ByteArrayInputStream(new byte[(int) new File("/data/data/com.asus.contacts/files/Contacts.vcf").length()]);
                this.c = Executors.newSingleThreadExecutor();
                try {
                    Uri parse22 = Uri.parse("file:/data/data/com.asus.contacts/files/Contacts.vcf");
                    String lastPathSegment22 = parse22.getLastPathSegment();
                    Log.w("AsusRestoreService", "localDataUri = " + parse22);
                    Log.d("AsusRestoreService", "onRestore end: " + a(new a(this, a(parse22, lastPathSegment22))));
                } catch (VCardException e12) {
                    Log.e("AsusRestoreService", "Maybe the file is in wrong format", e12);
                } catch (IOException e13) {
                    Log.e("AsusRestoreService", "Maybe the file is in wrong format", e13);
                }
            } catch (Throwable th5) {
                th = th5;
                cursor = null;
            }
        }
    }
}
