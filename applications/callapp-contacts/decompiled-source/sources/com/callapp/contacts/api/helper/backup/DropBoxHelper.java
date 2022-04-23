package com.callapp.contacts.api.helper.backup;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.api.helper.common.LoginListener;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.prefs.StringPref;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.serializer.string.Parser;
import com.callapp.contacts.util.webview.AuthWebViewDialog;
import com.callapp.framework.util.StringUtils;
import com.dropbox.core.InvalidAccessTokenException;
import com.dropbox.core.android.AuthActivity;
import com.dropbox.core.e;
import com.dropbox.core.i;
import com.dropbox.core.v2.a;
import com.dropbox.core.v2.files.DeleteErrorException;
import com.dropbox.core.v2.files.GetMetadataErrorException;
import com.dropbox.core.v2.files.ListFolderErrorException;
import com.dropbox.core.v2.files.UploadErrorException;
import com.dropbox.core.v2.files.aa;
import com.dropbox.core.v2.files.ae;
import com.dropbox.core.v2.files.al;
import com.dropbox.core.v2.files.b;
import com.dropbox.core.v2.files.bb;
import com.dropbox.core.v2.files.bm;
import com.dropbox.core.v2.files.d;
import com.dropbox.core.v2.files.q;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.exc.MismatchedInputException;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.io.File;
import java.io.FileInputStream;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.a.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.ag;
import kotlin.jvm.internal.p;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� )2\u00020\u00012\u00020\u0002:\u0001)B\u0005¢\u0006\u0002\u0010\u0003J\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\tH\u0016J\u0016\u0010\r\u001a\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\b\u0010\u0016\u001a\u00020\u0007H\u0016J\b\u0010\u0017\u001a\u00020\u0018H\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0002J\b\u0010\u001b\u001a\u00020\u001aH\u0016J\u0012\u0010\u001c\u001a\u00020\t2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0007H\u0016J\b\u0010\u001e\u001a\u00020\tH\u0016J\b\u0010\u001f\u001a\u00020\tH\u0016J\b\u0010 \u001a\u00020\tH\u0016J\u0010\u0010!\u001a\u00020\t2\b\u0010\"\u001a\u0004\u0018\u00010\u0007J\u0010\u0010#\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J$\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00070\u00102\u0006\u0010%\u001a\u00020\u00112\f\u0010&\u001a\b\u0012\u0004\u0012\u00020(0'H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006*"}, d2 = {"Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;", "Lcom/callapp/contacts/api/helper/backup/BaseBackup;", "Lcom/callapp/contacts/api/helper/common/LoginListener;", "()V", "sSecurityProvider", "Lcom/dropbox/core/android/AuthActivity$SecurityProvider;", "createStateNonce", "", "doLogin", "", "activity", "Landroid/app/Activity;", "doLogout", "doUploadSync", "Lcom/callapp/contacts/api/helper/backup/BackUpResultData;", "backupDataList", "", "Lcom/callapp/contacts/api/helper/backup/BackUpData;", "getBackupMessageCodeFromResponse", "Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;", "uploadErrorException", "Lcom/dropbox/core/v2/files/UploadErrorException;", "getName", "getSecureRandom", "Ljava/security/SecureRandom;", "hasToken", "", "isLoggedIn", "onAuthCallback", "verifier", "onCancel", "onComplete", "onError", "onLoginFinished", "token", "startWebAuth", "updateExistingFiles", "backupData", "finishUploadList", "Ljava/util/ArrayList;", "Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/DropBoxHelper.class */
public final class DropBoxHelper extends BaseBackup implements LoginListener {

    /* renamed from: c  reason: collision with root package name */
    public static final Companion f14111c = new Companion(null);
    private static String e = "db-" + Activities.getString(2131886800);

    /* renamed from: d  reason: collision with root package name */
    private final AuthActivity.a f14112d = DropBoxHelper$sSecurityProvider$1.f14113a;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u000b\u001a\u00020\fH\u0007R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n��\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\r"}, d2 = {"Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$Companion;", "", "()V", "OAUTH_CALLBACK_URL", "", "getOAUTH_CALLBACK_URL$annotations", "getOAUTH_CALLBACK_URL", "()Ljava/lang/String;", "setOAUTH_CALLBACK_URL", "(Ljava/lang/String;)V", "packageName", "get", "Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/DropBoxHelper$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DropBoxHelper get() {
            Singletons singletons = Singletons.get();
            p.b(singletons, "Singletons.get()");
            DropBoxHelper dropBoxHelper = singletons.getDropBoxHelper();
            p.b(dropBoxHelper, "Singletons.get().dropBoxHelper");
            return dropBoxHelper;
        }

        public final String getOAUTH_CALLBACK_URL() {
            return DropBoxHelper.e;
        }
    }

    private static BackupMessageCode a(UploadErrorException uploadErrorException) {
        BackupMessageCode backupMessageCode;
        BackupMessageCode backupMessageCode2 = BackupMessageCode.UPLOAD_ERROR;
        try {
            DropBoxErrorResponse dropBoxErrorResponse = (DropBoxErrorResponse) Parser.a(uploadErrorException.f18115a.toString(), new TypeReference<DropBoxErrorResponse>() { // from class: com.callapp.contacts.api.helper.backup.DropBoxHelper$getBackupMessageCodeFromResponse$jsonErrorResponse$1
            });
            backupMessageCode = backupMessageCode2;
            if (dropBoxErrorResponse != null) {
                String reason = dropBoxErrorResponse.getReason();
                backupMessageCode = backupMessageCode2;
                if (reason != null) {
                    if (reason.hashCode() != 1717233098) {
                        backupMessageCode = backupMessageCode2;
                    } else {
                        backupMessageCode = backupMessageCode2;
                        if (reason.equals("insufficient_space")) {
                            backupMessageCode = BackupMessageCode.INSUFFICIENT_SPACE;
                        }
                    }
                }
            }
        } catch (MismatchedInputException e2) {
            CLog.a(DropBoxHelper.class, "unable to parse  error message ".concat(String.valueOf(e2)));
            backupMessageCode = backupMessageCode2;
        }
        return backupMessageCode;
    }

    private static List<String> a(BackUpData backupData, ArrayList<BackupUploadFileData> finishUploadList) {
        List<al> a2;
        Object obj;
        d dVar;
        p.d(backupData, "backupData");
        p.d(finishUploadList, "finishUploadList");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        try {
            a client = DropBoxClientFactory.f14104a.getClient();
            ae a3 = (client == null || (dVar = client.f17943c) == null) ? null : dVar.a(new aa("/" + backupData.getFolderName()));
            if (!(a3 == null || (a2 = a3.a()) == null)) {
                for (BackUpFileData backUpFileData : backupData.getFileData()) {
                    Iterator<T> it2 = a2.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            obj = null;
                            break;
                        }
                        obj = it2.next();
                        al it3 = (al) obj;
                        p.b(it3, "it");
                        if (p.a((Object) it3.a(), (Object) backUpFileData.getFileName())) {
                            break;
                        }
                    }
                    al alVar = (al) obj;
                    if (alVar != null) {
                        String b2 = alVar.b();
                        p.b(b2, "it.pathDisplay");
                        finishUploadList.add(new BackupUploadFileData(b2, BackupMessageCode.EXIST, backupData.getFileType()));
                        arrayList2.add(alVar.a());
                    } else {
                        arrayList.add(backUpFileData);
                    }
                }
                backupData.setFileData(arrayList);
            }
        } catch (GetMetadataErrorException e2) {
            CLog.a(DropBoxHelper.class, e2.getMessage());
        } catch (ListFolderErrorException e3) {
            CLog.a(DropBoxHelper.class, e3.getMessage());
        }
        return arrayList2;
    }

    private final void b(Activity activity) {
        Locale locale = Locale.getDefault();
        p.b(locale, "locale");
        Locale locale2 = new Locale(locale.getLanguage(), locale.getCountry());
        String string = Activities.getString(2131886800);
        String g = g();
        String locale3 = locale2.toString();
        e eVar = e.f17752a;
        p.b(eVar, "DbxHost.DEFAULT");
        PopupManager.get().a(activity, new AuthWebViewDialog(activity, Uri.parse(i.a(locale3, eVar.f17755d, "1/connect", new String[]{"k", string, "n", "0", "api", "1", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, g})).toString(), new DialogInterface.OnCancelListener() { // from class: com.callapp.contacts.api.helper.backup.DropBoxHelper$startWebAuth$1
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                BackupLoginCallBack loginListener = DropBoxHelper.this.getLoginListener();
                if (loginListener != null) {
                    loginListener.b("cancel auth webView dialog");
                }
                DropBoxHelper.this.f14102a = null;
            }
        }, this));
    }

    private static boolean f() {
        StringPref stringPref = Prefs.hG;
        p.b(stringPref, "Prefs.dropboxAccessToken");
        return stringPref.isNotNull() && StringUtils.b((CharSequence) Prefs.hG.get());
    }

    private String g() {
        byte[] bArr = new byte[16];
        getSecureRandom().nextBytes(bArr);
        StringBuilder sb = new StringBuilder();
        sb.append("oauth2:");
        for (int i = 0; i < 16; i++) {
            ag agVar = ag.f36785a;
            String format = String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf((byte) (bArr[i] & (-1)))}, 1));
            p.b(format, "java.lang.String.format(format, *args)");
            sb.append(format);
        }
        String sb2 = sb.toString();
        p.b(sb2, "sb.toString()");
        return sb2;
    }

    public static final DropBoxHelper get() {
        return f14111c.get();
    }

    private final SecureRandom getSecureRandom() {
        SecureRandom secureRandom = this.f14112d.getSecureRandom();
        p.b(secureRandom, "sSecurityProvider.secureRandom");
        return secureRandom;
    }

    @Override // com.callapp.contacts.api.helper.backup.BaseBackup
    public final BackUpResultData a(List<BackUpData> backupDataList) throws DisconnectException, NotEnoughSpaceException {
        d dVar;
        q qVar;
        d dVar2;
        p.d(backupDataList, "backupDataList");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (f()) {
            try {
                loop0: for (BackUpData backUpData : backupDataList) {
                    CLog.a(DropBoxHelper.class, "Starting upload: " + backUpData.getFolderName());
                    if (backUpData.getDeleteBeforeUpload()) {
                        try {
                            a client = DropBoxClientFactory.f14104a.getClient();
                            if (!(client == null || (dVar = client.f17943c) == null)) {
                                dVar.a(new com.dropbox.core.v2.files.e("/" + backUpData.getFolderName()));
                            }
                            CLog.a(DropBoxHelper.class, "Folder deleted: " + backUpData.getFolderName());
                        } catch (DeleteErrorException e2) {
                            CLog.a(DropBoxHelper.class, "Delete error: " + e2.getMessage());
                        }
                    } else {
                        CLog.a(DropBoxHelper.class, "Skipping: ".concat(String.valueOf(a(backUpData, arrayList))));
                    }
                    for (BackUpFileData backUpFileData : n.l(backUpData.getFileData())) {
                        String filePath = backUpFileData.getFilePath();
                        File file = new File(filePath);
                        if (file.exists()) {
                            String fileName = backUpFileData.getFileName();
                            try {
                                FileInputStream fileInputStream = new FileInputStream(file);
                                try {
                                    FileInputStream fileInputStream2 = fileInputStream;
                                    a client2 = DropBoxClientFactory.f14104a.getClient();
                                    if (client2 == null || (dVar2 = client2.f17943c) == null) {
                                        qVar = null;
                                    } else {
                                        bb bbVar = new bb(dVar2, b.a("/" + backUpData.getFolderName() + '/' + fileName));
                                        bbVar.f18250a.a(bm.f18292b);
                                        qVar = bbVar.a().a(fileInputStream2);
                                    }
                                    if (qVar != null) {
                                        CLog.a(DropBoxHelper.class, "Upload complete: " + qVar.a());
                                        arrayList.add(new BackupUploadFileData(filePath, BackupMessageCode.SUCCESSFUL, backUpData.getFileType()));
                                    } else {
                                        arrayList2.add(new BackupUploadFileData(filePath, BackupMessageCode.FILE_ERROR, backUpData.getFileType()));
                                        CLog.a(DropBoxHelper.class, ("Upload failed: " + fileName) + " fileMetadata is empty");
                                        v vVar = v.f38654a;
                                    }
                                    kotlin.io.b.a(fileInputStream, null);
                                } catch (Throwable th) {
                                    try {
                                        throw th;
                                        break loop0;
                                    } catch (Throwable th2) {
                                        kotlin.io.b.a(fileInputStream, th);
                                        throw th2;
                                        break loop0;
                                    }
                                }
                            } catch (UploadErrorException e3) {
                                BackupMessageCode a2 = a(e3);
                                if (a2 != BackupMessageCode.INSUFFICIENT_SPACE) {
                                    arrayList2.add(new BackupUploadFileData(filePath, a2, backUpData.getFileType()));
                                    CLog.a(DropBoxHelper.class, (("Upload error: " + fileName) + org.apache.commons.lang3.StringUtils.SPACE) + e3.getMessage());
                                } else {
                                    throw new NotEnoughSpaceException("dropbox not enough space");
                                }
                            } catch (Exception e4) {
                                CLog.a(DropBoxHelper.class, (("Upload error: " + fileName) + org.apache.commons.lang3.StringUtils.SPACE) + e4.getMessage());
                                arrayList2.add(new BackupUploadFileData(filePath, BackupMessageCode.UNKNOWN_ERROR, backUpData.getFileType()));
                            }
                        } else {
                            CLog.a(DropBoxHelper.class, "Upload error: file not exist");
                        }
                    }
                }
                StringBuilder sb = new StringBuilder("finished uploads count: ");
                ArrayList arrayList3 = arrayList;
                ArrayList arrayList4 = new ArrayList();
                Iterator it2 = arrayList3.iterator();
                while (true) {
                    boolean z = true;
                    if (!it2.hasNext()) {
                        break;
                    }
                    Object next = it2.next();
                    if (((BackupUploadFileData) next).getMessage() != BackupMessageCode.SUCCESSFUL) {
                        z = false;
                    }
                    if (z) {
                        arrayList4.add(next);
                    }
                }
                sb.append(arrayList4.size());
                sb.append(" error count: ");
                sb.append(arrayList2.size());
                sb.append(" skipped count: ");
                ArrayList arrayList5 = new ArrayList();
                for (Object obj : arrayList3) {
                    if (((BackupUploadFileData) obj).getMessage() == BackupMessageCode.EXIST) {
                        arrayList5.add(obj);
                    }
                }
                sb.append(arrayList5.size());
                CLog.a(DropBoxHelper.class, sb.toString());
                return new BackUpResultData(arrayList, arrayList2);
            } catch (InvalidAccessTokenException e5) {
                throw new DisconnectException("Dropbox invalid access token");
            }
        } else {
            CLog.a(DropBoxHelper.class, "token error: token is null or empty");
            throw new DisconnectException("Dropbox token error - token is null or empty");
        }
    }

    @Override // com.callapp.contacts.api.helper.common.LoginListener
    public final void a() {
    }

    public final void a(Activity activity) {
        p.d(activity, "activity");
        if (!isLoggedIn()) {
            PackageManager packageManager = activity.getPackageManager();
            if (packageManager != null) {
                try {
                    if (packageManager.getPackageInfo("com.dropbox.android", 1) != null) {
                        Activities.b(activity, new Intent(CallAppApplication.get(), DropBoxLoginActivity.class));
                    }
                } catch (Exception e2) {
                    b(activity);
                }
            }
        } else {
            BackupLoginCallBack loginListener = getLoginListener();
            if (loginListener != null) {
                Prefs.hG.get();
                loginListener.a();
            }
            this.f14102a = null;
        }
    }

    public final void a(String str) {
        if (StringUtils.b((CharSequence) str)) {
            BackupLoginCallBack loginListener = getLoginListener();
            if (loginListener != null) {
                loginListener.a();
            }
            Prefs.hG.set(str);
        } else {
            BackupLoginCallBack loginListener2 = getLoginListener();
            if (loginListener2 != null) {
                loginListener2.a("Token null or empty");
            }
        }
        this.f14102a = null;
    }

    @Override // com.callapp.contacts.api.helper.common.LoginListener
    public final void b() {
    }

    @Override // com.callapp.contacts.api.helper.common.LoginListener
    public final void b(String str) {
        a(str);
    }

    @Override // com.callapp.contacts.api.helper.common.LoginListener
    public final void c() {
    }

    @Override // com.callapp.contacts.api.helper.backup.BaseBackup
    public final void d() {
        if (isLoggedIn()) {
            try {
                new a(DropBoxConfigFactory.f14106a.getRequestConfig(), Prefs.hG.get()).f17942b.a();
            } catch (Exception e2) {
                CLog.b(DropBoxHelper.class, "log out exception " + e2.getMessage());
            }
            Prefs.hG.set(null);
        }
    }

    @Override // com.callapp.contacts.api.helper.backup.BaseBackup
    public final String getName() {
        String string = Activities.getString(2131886799);
        p.b(string, "Activities.getString(R.string.dropbox)");
        return string;
    }

    public final boolean isLoggedIn() {
        return f();
    }
}
