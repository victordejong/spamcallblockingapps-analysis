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
import com.dropbox.core.C8573e;
import com.dropbox.core.C8600i;
import com.dropbox.core.InvalidAccessTokenException;
import com.dropbox.core.android.AuthActivity;
import com.dropbox.core.p265v2.C8656a;
import com.dropbox.core.p265v2.files.C8796aa;
import com.dropbox.core.p265v2.files.C8807ae;
import com.dropbox.core.p265v2.files.C8829al;
import com.dropbox.core.p265v2.files.C8876b;
import com.dropbox.core.p265v2.files.C8883bb;
import com.dropbox.core.p265v2.files.C8914bm;
import com.dropbox.core.p265v2.files.C8922d;
import com.dropbox.core.p265v2.files.C8923e;
import com.dropbox.core.p265v2.files.C8957q;
import com.dropbox.core.p265v2.files.DeleteErrorException;
import com.dropbox.core.p265v2.files.GetMetadataErrorException;
import com.dropbox.core.p265v2.files.ListFolderErrorException;
import com.dropbox.core.p265v2.files.UploadErrorException;
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
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.internal.C18500ag;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18282n;
import kotlin.p533io.C18442b;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� )2\u00020\u00012\u00020\u0002:\u0001)B\u0005¢\u0006\u0002\u0010\u0003J\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\tH\u0016J\u0016\u0010\r\u001a\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\b\u0010\u0016\u001a\u00020\u0007H\u0016J\b\u0010\u0017\u001a\u00020\u0018H\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0002J\b\u0010\u001b\u001a\u00020\u001aH\u0016J\u0012\u0010\u001c\u001a\u00020\t2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0007H\u0016J\b\u0010\u001e\u001a\u00020\tH\u0016J\b\u0010\u001f\u001a\u00020\tH\u0016J\b\u0010 \u001a\u00020\tH\u0016J\u0010\u0010!\u001a\u00020\t2\b\u0010\"\u001a\u0004\u0018\u00010\u0007J\u0010\u0010#\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J$\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00070\u00102\u0006\u0010%\u001a\u00020\u00112\f\u0010&\u001a\b\u0012\u0004\u0012\u00020(0'H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006*"}, m4298d2 = {"Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;", "Lcom/callapp/contacts/api/helper/backup/BaseBackup;", "Lcom/callapp/contacts/api/helper/common/LoginListener;", "()V", "sSecurityProvider", "Lcom/dropbox/core/android/AuthActivity$SecurityProvider;", "createStateNonce", "", "doLogin", "", "activity", "Landroid/app/Activity;", "doLogout", "doUploadSync", "Lcom/callapp/contacts/api/helper/backup/BackUpResultData;", "backupDataList", "", "Lcom/callapp/contacts/api/helper/backup/BackUpData;", "getBackupMessageCodeFromResponse", "Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;", "uploadErrorException", "Lcom/dropbox/core/v2/files/UploadErrorException;", "getName", "getSecureRandom", "Ljava/security/SecureRandom;", "hasToken", "", "isLoggedIn", "onAuthCallback", "verifier", "onCancel", "onComplete", "onError", "onLoginFinished", "token", "startWebAuth", "updateExistingFiles", "backupData", "finishUploadList", "Ljava/util/ArrayList;", "Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/DropBoxHelper.class */
public final class DropBoxHelper extends BaseBackup implements LoginListener {

    /* renamed from: c */
    public static final Companion f24761c = new Companion(null);

    /* renamed from: e */
    private static String f24762e = "db-" + Activities.getString(2131886800);

    /* renamed from: d */
    private final AuthActivity.AbstractC8563a f24763d = DropBoxHelper$sSecurityProvider$1.f24764a;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u000b\u001a\u00020\fH\u0007R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n��\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\r"}, m4298d2 = {"Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$Companion;", "", "()V", "OAUTH_CALLBACK_URL", "", "getOAUTH_CALLBACK_URL$annotations", "getOAUTH_CALLBACK_URL", "()Ljava/lang/String;", "setOAUTH_CALLBACK_URL", "(Ljava/lang/String;)V", "packageName", "get", "Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/DropBoxHelper$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DropBoxHelper get() {
            Singletons singletons = Singletons.get();
            C18524p.m3843b(singletons, "Singletons.get()");
            DropBoxHelper dropBoxHelper = singletons.getDropBoxHelper();
            C18524p.m3843b(dropBoxHelper, "Singletons.get().dropBoxHelper");
            return dropBoxHelper;
        }

        public final String getOAUTH_CALLBACK_URL() {
            return DropBoxHelper.f24762e;
        }
    }

    /* renamed from: a */
    private static BackupMessageCode m29285a(UploadErrorException uploadErrorException) {
        BackupMessageCode backupMessageCode;
        BackupMessageCode backupMessageCode2 = BackupMessageCode.UPLOAD_ERROR;
        try {
            DropBoxErrorResponse dropBoxErrorResponse = (DropBoxErrorResponse) Parser.m26917a(uploadErrorException.f30991a.toString(), new TypeReference<DropBoxErrorResponse>() { // from class: com.callapp.contacts.api.helper.backup.DropBoxHelper$getBackupMessageCodeFromResponse$jsonErrorResponse$1
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
        } catch (MismatchedInputException e) {
            CLog.m27611a(DropBoxHelper.class, "unable to parse  error message ".concat(String.valueOf(e)));
            backupMessageCode = backupMessageCode2;
        }
        return backupMessageCode;
    }

    /* renamed from: a */
    private static List<String> m29286a(BackUpData backupData, ArrayList<BackupUploadFileData> finishUploadList) {
        List<C8829al> m25080a;
        Object obj;
        C8922d c8922d;
        C18524p.m3840d(backupData, "backupData");
        C18524p.m3840d(finishUploadList, "finishUploadList");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        try {
            C8656a client = DropBoxClientFactory.f24754a.getClient();
            C8807ae m24967a = (client == null || (c8922d = client.f30775c) == null) ? null : c8922d.m24967a(new C8796aa("/" + backupData.getFolderName()));
            if (m24967a != null && (m25080a = m24967a.m25080a()) != null) {
                for (BackUpFileData backUpFileData : backupData.getFileData()) {
                    Iterator<T> it2 = m25080a.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            obj = null;
                            break;
                        }
                        obj = it2.next();
                        C8829al it3 = (C8829al) obj;
                        C18524p.m3843b(it3, "it");
                        if (C18524p.m3850a((Object) it3.mo24941a(), (Object) backUpFileData.getFileName())) {
                            break;
                        }
                    }
                    C8829al c8829al = (C8829al) obj;
                    if (c8829al != null) {
                        String mo24940b = c8829al.mo24940b();
                        C18524p.m3843b(mo24940b, "it.pathDisplay");
                        finishUploadList.add(new BackupUploadFileData(mo24940b, BackupMessageCode.EXIST, backupData.getFileType()));
                        arrayList2.add(c8829al.mo24941a());
                    } else {
                        arrayList.add(backUpFileData);
                    }
                }
                backupData.setFileData(arrayList);
            }
        } catch (GetMetadataErrorException e) {
            CLog.m27611a(DropBoxHelper.class, e.getMessage());
        } catch (ListFolderErrorException e2) {
            CLog.m27611a(DropBoxHelper.class, e2.getMessage());
        }
        return arrayList2;
    }

    /* renamed from: b */
    private final void m29283b(Activity activity) {
        Locale locale = Locale.getDefault();
        C18524p.m3843b(locale, "locale");
        Locale locale2 = new Locale(locale.getLanguage(), locale.getCountry());
        String string = Activities.getString(2131886800);
        String m29280g = m29280g();
        String locale3 = locale2.toString();
        C8573e c8573e = C8573e.f30530a;
        C18524p.m3843b(c8573e, "DbxHost.DEFAULT");
        PopupManager.get().m28209a(activity, new AuthWebViewDialog(activity, Uri.parse(C8600i.m25272a(locale3, c8573e.f30535d, "1/connect", new String[]{"k", string, "n", "0", "api", "1", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, m29280g})).toString(), new DialogInterface.OnCancelListener() { // from class: com.callapp.contacts.api.helper.backup.DropBoxHelper$startWebAuth$1
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                BackupLoginCallBack loginListener = DropBoxHelper.this.getLoginListener();
                if (loginListener != null) {
                    loginListener.mo29302b("cancel auth webView dialog");
                }
                DropBoxHelper.this.f24752a = null;
            }
        }, this));
    }

    /* renamed from: f */
    private static boolean m29281f() {
        StringPref stringPref = Prefs.f26601hG;
        C18524p.m3843b(stringPref, "Prefs.dropboxAccessToken");
        return stringPref.isNotNull() && StringUtils.m26045b((CharSequence) Prefs.f26601hG.get());
    }

    /* renamed from: g */
    private String m29280g() {
        byte[] bArr = new byte[16];
        getSecureRandom().nextBytes(bArr);
        StringBuilder sb = new StringBuilder();
        sb.append("oauth2:");
        for (int i = 0; i < 16; i++) {
            C18500ag c18500ag = C18500ag.f63594a;
            String format = String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf((byte) (bArr[i] & (-1)))}, 1));
            C18524p.m3843b(format, "java.lang.String.format(format, *args)");
            sb.append(format);
        }
        String sb2 = sb.toString();
        C18524p.m3843b(sb2, "sb.toString()");
        return sb2;
    }

    public static final DropBoxHelper get() {
        return f24761c.get();
    }

    private final SecureRandom getSecureRandom() {
        SecureRandom secureRandom = this.f24763d.getSecureRandom();
        C18524p.m3843b(secureRandom, "sSecurityProvider.secureRandom");
        return secureRandom;
    }

    @Override // com.callapp.contacts.api.helper.backup.BaseBackup
    /* renamed from: a */
    public final BackUpResultData mo29273a(List<BackUpData> backupDataList) throws DisconnectException, NotEnoughSpaceException {
        C8922d c8922d;
        C8957q c8957q;
        C8922d c8922d2;
        C18524p.m3840d(backupDataList, "backupDataList");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (!m29281f()) {
            CLog.m27611a(DropBoxHelper.class, "token error: token is null or empty");
            throw new DisconnectException("Dropbox token error - token is null or empty");
        }
        try {
            loop0: for (BackUpData backUpData : backupDataList) {
                CLog.m27611a(DropBoxHelper.class, "Starting upload: " + backUpData.getFolderName());
                if (backUpData.getDeleteBeforeUpload()) {
                    try {
                        C8656a client = DropBoxClientFactory.f24754a.getClient();
                        if (client != null && (c8922d = client.f30775c) != null) {
                            c8922d.m24966a(new C8923e("/" + backUpData.getFolderName()));
                        }
                        CLog.m27611a(DropBoxHelper.class, "Folder deleted: " + backUpData.getFolderName());
                    } catch (DeleteErrorException e) {
                        CLog.m27611a(DropBoxHelper.class, "Delete error: " + e.getMessage());
                    }
                } else {
                    CLog.m27611a(DropBoxHelper.class, "Skipping: ".concat(String.valueOf(m29286a(backUpData, arrayList))));
                }
                for (BackUpFileData backUpFileData : C18282n.m4110l(backUpData.getFileData())) {
                    String filePath = backUpFileData.getFilePath();
                    File file = new File(filePath);
                    if (file.exists()) {
                        String fileName = backUpFileData.getFileName();
                        try {
                            FileInputStream fileInputStream = new FileInputStream(file);
                            try {
                                FileInputStream fileInputStream2 = fileInputStream;
                                C8656a client2 = DropBoxClientFactory.f24754a.getClient();
                                if (client2 == null || (c8922d2 = client2.f30775c) == null) {
                                    c8957q = null;
                                } else {
                                    C8883bb c8883bb = new C8883bb(c8922d2, C8876b.m25017a("/" + backUpData.getFolderName() + '/' + fileName));
                                    c8883bb.f31180a.m25015a(C8914bm.f31233b);
                                    c8957q = c8883bb.mo25011a().m25254a(fileInputStream2);
                                }
                                if (c8957q != null) {
                                    CLog.m27611a(DropBoxHelper.class, "Upload complete: " + c8957q.mo24941a());
                                    arrayList.add(new BackupUploadFileData(filePath, BackupMessageCode.SUCCESSFUL, backUpData.getFileType()));
                                } else {
                                    arrayList2.add(new BackupUploadFileData(filePath, BackupMessageCode.FILE_ERROR, backUpData.getFileType()));
                                    CLog.m27611a(DropBoxHelper.class, ("Upload failed: " + fileName) + " fileMetadata is empty");
                                    C20128v c20128v = C20128v.f66529a;
                                }
                                C18442b.m3909a(fileInputStream, null);
                            } catch (Throwable th) {
                                try {
                                    throw th;
                                    break loop0;
                                } catch (Throwable th2) {
                                    C18442b.m3909a(fileInputStream, th);
                                    throw th2;
                                    break loop0;
                                }
                            }
                        } catch (UploadErrorException e2) {
                            BackupMessageCode m29285a = m29285a(e2);
                            if (m29285a == BackupMessageCode.INSUFFICIENT_SPACE) {
                                throw new NotEnoughSpaceException("dropbox not enough space");
                            }
                            arrayList2.add(new BackupUploadFileData(filePath, m29285a, backUpData.getFileType()));
                            CLog.m27611a(DropBoxHelper.class, (("Upload error: " + fileName) + org.apache.commons.lang3.StringUtils.SPACE) + e2.getMessage());
                        } catch (Exception e3) {
                            CLog.m27611a(DropBoxHelper.class, (("Upload error: " + fileName) + org.apache.commons.lang3.StringUtils.SPACE) + e3.getMessage());
                            arrayList2.add(new BackupUploadFileData(filePath, BackupMessageCode.UNKNOWN_ERROR, backUpData.getFileType()));
                        }
                    } else {
                        CLog.m27611a(DropBoxHelper.class, "Upload error: file not exist");
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
            CLog.m27611a(DropBoxHelper.class, sb.toString());
            return new BackUpResultData(arrayList, arrayList2);
        } catch (InvalidAccessTokenException e4) {
            throw new DisconnectException("Dropbox invalid access token");
        }
    }

    @Override // com.callapp.contacts.api.helper.common.LoginListener
    /* renamed from: a */
    public final void mo26206a() {
    }

    /* renamed from: a */
    public final void m29287a(Activity activity) {
        C18524p.m3840d(activity, "activity");
        if (isLoggedIn()) {
            BackupLoginCallBack loginListener = getLoginListener();
            if (loginListener != null) {
                Prefs.f26601hG.get();
                loginListener.mo29304a();
            }
            this.f24752a = null;
            return;
        }
        PackageManager packageManager = activity.getPackageManager();
        if (packageManager == null) {
            return;
        }
        try {
            if (packageManager.getPackageInfo("com.dropbox.android", 1) == null) {
                return;
            }
            Activities.m27656b(activity, new Intent(CallAppApplication.get(), DropBoxLoginActivity.class));
        } catch (Exception e) {
            m29283b(activity);
        }
    }

    /* renamed from: a */
    public final void m29284a(String str) {
        if (StringUtils.m26045b((CharSequence) str)) {
            BackupLoginCallBack loginListener = getLoginListener();
            if (loginListener != null) {
                loginListener.mo29304a();
            }
            Prefs.f26601hG.set(str);
        } else {
            BackupLoginCallBack loginListener2 = getLoginListener();
            if (loginListener2 != null) {
                loginListener2.mo29303a("Token null or empty");
            }
        }
        this.f24752a = null;
    }

    @Override // com.callapp.contacts.api.helper.common.LoginListener
    /* renamed from: b */
    public final void mo26205b() {
    }

    @Override // com.callapp.contacts.api.helper.common.LoginListener
    /* renamed from: b */
    public final void mo26204b(String str) {
        m29284a(str);
    }

    @Override // com.callapp.contacts.api.helper.common.LoginListener
    /* renamed from: c */
    public final void mo26203c() {
    }

    @Override // com.callapp.contacts.api.helper.backup.BaseBackup
    /* renamed from: d */
    public final void mo29271d() {
        if (isLoggedIn()) {
            try {
                new C8656a(DropBoxConfigFactory.f24756a.getRequestConfig(), Prefs.f26601hG.get()).f30774b.m25187a();
            } catch (Exception e) {
                CLog.m27598b(DropBoxHelper.class, "log out exception " + e.getMessage());
            }
            Prefs.f26601hG.set(null);
        }
    }

    @Override // com.callapp.contacts.api.helper.backup.BaseBackup
    public final String getName() {
        String string = Activities.getString(2131886799);
        C18524p.m3843b(string, "Activities.getString(R.string.dropbox)");
        return string;
    }

    public final boolean isLoggedIn() {
        return m29281f();
    }
}
