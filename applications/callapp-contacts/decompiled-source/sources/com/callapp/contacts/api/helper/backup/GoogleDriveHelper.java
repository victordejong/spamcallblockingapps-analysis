package com.callapp.contacts.api.helper.backup;

import android.app.Activity;
import android.content.Intent;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.popup.ActivityResult;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.prefs.StringPref;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.c;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.tasks.d;
import com.google.android.gms.tasks.e;
import com.google.android.gms.tasks.f;
import com.google.api.client.googleapis.extensions.android.gms.auth.UserRecoverableAuthIOException;
import com.google.api.client.googleapis.extensions.android.gms.auth.a;
import com.google.api.client.googleapis.json.GoogleJsonResponseException;
import com.google.api.client.http.g;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.services.drive.Drive;
import com.google.api.services.drive.DriveRequest;
import com.google.api.services.drive.model.File;
import com.google.api.services.drive.model.FileList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.a.ap;
import kotlin.a.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.ab;
import kotlin.jvm.internal.p;
import org.apache.commons.lang3.StringUtils;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� 52\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u00022\u00020\u0004:\u00015B\u0005¢\u0006\u0002\u0010\u0005J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0015H\u0016J\n\u0010\u0019\u001a\u0004\u0018\u00010\fH\u0002J\u0016\u0010\u001a\u001a\u00020\u001b2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001dH\u0016J\n\u0010\u001f\u001a\u0004\u0018\u00010\u0012H\u0002J\b\u0010 \u001a\u00020\u0012H\u0016J\u0010\u0010!\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020#H\u0002J6\u0010$\u001a\"\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0018\u00010%j\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0018\u0001`&2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001dH\u0002J\u0014\u0010'\u001a\u0004\u0018\u00010\f2\b\u0010(\u001a\u0004\u0018\u00010\u0003H\u0002J\b\u0010)\u001a\u00020*H\u0016J\u0014\u0010+\u001a\u00020\u00152\n\u0010,\u001a\u00060-j\u0002`.H\u0016J\u0012\u0010/\u001a\u00020\u00152\b\u0010(\u001a\u0004\u0018\u00010\u0003H\u0016J$\u00100\u001a\b\u0012\u0004\u0012\u00020\u00120\u001d2\u0006\u00101\u001a\u00020\u001e2\f\u00102\u001a\b\u0012\u0004\u0012\u00020403H\u0016R\u0016\u0010\u0006\u001a\n \b*\u0004\u0018\u00010\u00070\u0007X\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\t\u001a\n \b*\u0004\u0018\u00010\n0\nX\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n��¨\u00066"}, d2 = {"Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;", "Lcom/callapp/contacts/api/helper/backup/BaseBackup;", "Lcom/google/android/gms/tasks/OnSuccessListener;", "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;", "Lcom/google/android/gms/tasks/OnFailureListener;", "()V", "credential", "Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;", "kotlin.jvm.PlatformType", "googleApiClient", "Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;", "googleDriveService", "Lcom/google/api/services/drive/Drive;", "signInOptions", "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;", "createFolder", "Lcom/google/api/services/drive/model/File;", "folderName", "", "mainFolderId", "doLogin", "", "activity", "Landroid/app/Activity;", "doLogout", "doSilentSignIn", "doUploadSync", "Lcom/callapp/contacts/api/helper/backup/BackUpResultData;", "backupDataList", "", "Lcom/callapp/contacts/api/helper/backup/BackUpData;", "getMainFolderId", "getName", "handleSignInResult", "result", "Landroid/content/Intent;", "initFoldersIfNeeded", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "initGoogleDriveService", "googleAccount", "isLoggedIn", "", "onFailure", "exception", "Ljava/lang/Exception;", "Lkotlin/Exception;", "onSuccess", "updateExistingFiles", "backupData", "finishUploadList", "Ljava/util/ArrayList;", "Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/GoogleDriveHelper.class */
public final class GoogleDriveHelper extends BaseBackup implements e, f<GoogleSignInAccount> {

    /* renamed from: c  reason: collision with root package name */
    public static final Companion f14115c = new Companion(null);

    /* renamed from: d  reason: collision with root package name */
    private Drive f14116d;
    private GoogleSignInOptions e;
    private final c f;
    private final a g = a.a(CallAppApplication.get(), ap.a("https://www.googleapis.com/auth/drive.file"));

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, d2 = {"Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper$Companion;", "", "()V", "get", "Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/GoogleDriveHelper$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final GoogleDriveHelper get() {
            Singletons singletons = Singletons.get();
            p.b(singletons, "Singletons.get()");
            GoogleDriveHelper googleDriveHelper = singletons.getGoogleDriveHelper();
            p.b(googleDriveHelper, "Singletons.get().googleDriveHelper");
            return googleDriveHelper;
        }
    }

    public GoogleDriveHelper() {
        GoogleSignInOptions d2 = new GoogleSignInOptions.a().b().a(new Scope("https://www.googleapis.com/auth/drive.file"), new Scope[0]).d();
        p.b(d2, "GoogleSignInOptions.Buil…LE))\n            .build()");
        this.e = d2;
        this.f = com.google.android.gms.auth.api.signin.a.a(CallAppApplication.get(), this.e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final Drive onSuccess(GoogleSignInAccount googleSignInAccount) {
        if (this.f14116d == null) {
            if (googleSignInAccount != null) {
                a credential = this.g;
                p.b(credential, "credential");
                credential.a(googleSignInAccount.getAccount());
                this.f14116d = new Drive.Builder(new com.google.api.client.http.a.e(), new JacksonFactory(), this.g).setApplicationName(Constants.APP_NAME).build();
                BackupLoginCallBack loginListener = getLoginListener();
                if (loginListener != null) {
                    loginListener.a();
                }
                CLog.a(GoogleDriveHelper.class, "Signed in as " + googleSignInAccount.getEmail());
                Prefs.hH.set(googleSignInAccount.getId());
                this.f14102a = null;
            } else {
                BackupLoginCallBack loginListener2 = getLoginListener();
                if (loginListener2 != null) {
                    loginListener2.a("googleAccount is null");
                }
                CLog.a(GoogleDriveHelper.class, "googleAccount is null");
                this.f14102a = null;
            }
        }
        return this.f14116d;
    }

    private final File a(String str, String str2) {
        Drive.Files files;
        DriveRequest<File> fields;
        File mimeType = new File().setName(str).setParents(Collections.singletonList(str2)).setMimeType("application/vnd.google-apps.folder");
        Drive drive = this.f14116d;
        if (drive == null || (files = drive.files()) == null || (fields = files.a(mimeType).setFields2("id")) == null) {
            return null;
        }
        return fields.execute();
    }

    private List<String> a(BackUpData backupData, ArrayList<BackupUploadFileData> finishUploadList) {
        List<File> files;
        Object obj;
        Drive.Files files2;
        Drive.Files.List q;
        DriveRequest<FileList> fields;
        p.d(backupData, "backupData");
        p.d(finishUploadList, "finishUploadList");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        try {
            Drive drive = this.f14116d;
            FileList execute = (drive == null || (files2 = drive.files()) == null || (q = files2.a().setQ("mimeType!='application/vnd.google-apps.folder' and trashed=false")) == null || (fields = q.setFields2("nextPageToken, files(id, name)")) == null) ? null : fields.execute();
            if (!(execute == null || (files = execute.getFiles()) == null)) {
                for (BackUpFileData backUpFileData : backupData.getFileData()) {
                    Iterator<T> it2 = files.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            obj = null;
                            break;
                        }
                        obj = it2.next();
                        File it3 = (File) obj;
                        p.b(it3, "it");
                        if (p.a((Object) it3.getName(), (Object) backUpFileData.getFileName())) {
                            break;
                        }
                    }
                    File file = (File) obj;
                    if (file != null) {
                        String name = file.getName();
                        p.b(name, "it.name");
                        finishUploadList.add(new BackupUploadFileData(name, BackupMessageCode.EXIST, backupData.getFileType()));
                        arrayList2.add(file.getName());
                    } else {
                        arrayList.add(backUpFileData);
                    }
                }
                backupData.setFileData(arrayList);
            }
        } catch (Exception e) {
            CLog.a(GoogleDriveHelper.class, e.getMessage());
        }
        return arrayList2;
    }

    private final HashMap<String, String> b(List<BackUpData> list) {
        Drive.Files.List list2;
        List<File> files;
        Object obj;
        Drive.Files files2;
        DriveRequest<Void> fields;
        Drive.Files files3;
        String mainFolderId = getMainFolderId();
        if (mainFolderId == null) {
            return null;
        }
        HashMap<String, String> hashMap = new HashMap<>();
        for (BackUpData backUpData : list) {
            Drive drive = this.f14116d;
            if (drive == null || (files3 = drive.files()) == null) {
                list2 = null;
            } else {
                Drive.Files.List a2 = files3.a();
                list2 = a2.setQ("mimeType='application/vnd.google-apps.folder' and trashed=false and name='" + backUpData.getFolderName() + '\'');
            }
            FileList execute = list2 != null ? list2.execute() : null;
            if (!(execute == null || (files = execute.getFiles()) == null)) {
                if (files.isEmpty()) {
                    File a3 = a(backUpData.getFolderName(), mainFolderId);
                    if (a3 != null) {
                        HashMap<String, String> hashMap2 = hashMap;
                        String folderName = backUpData.getFolderName();
                        String id = a3.getId();
                        p.b(id, "it.id");
                        hashMap2.put(folderName, id);
                    }
                } else {
                    Iterator<T> it2 = files.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            obj = null;
                            break;
                        }
                        obj = it2.next();
                        File it3 = (File) obj;
                        p.b(it3, "it");
                        if (p.a((Object) it3.getName(), (Object) backUpData.getFolderName())) {
                            break;
                        }
                    }
                    File file = (File) obj;
                    if (file != null) {
                        if (backUpData.getDeleteBeforeUpload()) {
                            Drive drive2 = this.f14116d;
                            if (!(drive2 == null || (files2 = drive2.files()) == null || (fields = files2.a(file.getId()).setFields2("name")) == null)) {
                                fields.execute();
                            }
                            File a4 = a(backUpData.getFolderName(), mainFolderId);
                            if (a4 != null) {
                                HashMap<String, String> hashMap3 = hashMap;
                                String folderName2 = backUpData.getFolderName();
                                String id2 = a4.getId();
                                p.b(id2, "f.id");
                                hashMap3.put(folderName2, id2);
                            }
                            CLog.a(GoogleDriveHelper.class, "Folder deleted: " + file.getName());
                        } else {
                            HashMap<String, String> hashMap4 = hashMap;
                            String folderName3 = backUpData.getFolderName();
                            String id3 = file.getId();
                            p.b(id3, "it.id");
                            hashMap4.put(folderName3, id3);
                        }
                    }
                }
            }
        }
        return hashMap;
    }

    public static final GoogleDriveHelper get() {
        return f14115c.get();
    }

    private final String getMainFolderId() {
        Drive.Files.List list;
        List<File> files;
        Object obj;
        Drive.Files files2;
        DriveRequest<File> fields;
        Drive.Files files3;
        String mainFolderName = Activities.getString(2131886297);
        Drive drive = this.f14116d;
        if (drive == null || (files3 = drive.files()) == null) {
            list = null;
        } else {
            Drive.Files.List a2 = files3.a();
            list = a2.setQ("mimeType='application/vnd.google-apps.folder' and trashed=false and name='" + mainFolderName + '\'');
        }
        FileList execute = list != null ? list.execute() : null;
        if (execute == null || (files = execute.getFiles()) == null) {
            return null;
        }
        if (files.isEmpty()) {
            p.b(mainFolderName, "mainFolderName");
            File mimeType = new File().setName(mainFolderName).setMimeType("application/vnd.google-apps.folder");
            Drive drive2 = this.f14116d;
            File execute2 = (drive2 == null || (files2 = drive2.files()) == null || (fields = files2.a(mimeType).setFields2("id")) == null) ? null : fields.execute();
            if (execute2 != null) {
                return execute2.getId();
            }
            return null;
        }
        Iterator<T> it2 = files.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            File it3 = (File) obj;
            p.b(it3, "it");
            if (p.a((Object) it3.getName(), (Object) mainFolderName)) {
                break;
            }
        }
        File file = (File) obj;
        if (file != null) {
            return file.getId();
        }
        return null;
    }

    @Override // com.callapp.contacts.api.helper.backup.BaseBackup
    public final BackUpResultData a(List<BackUpData> backupDataList) throws DisconnectException, NotEnoughSpaceException {
        Drive.Files files;
        DriveRequest<File> fields;
        p.d(backupDataList, "backupDataList");
        ArrayList<BackupUploadFileData> arrayList = new ArrayList<>();
        ArrayList arrayList2 = new ArrayList();
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final ab.e eVar = new ab.e();
        eVar.f36780a = null;
        this.f.c().a(new d<GoogleSignInAccount>() { // from class: com.callapp.contacts.api.helper.backup.GoogleDriveHelper$doSilentSignIn$1
            /* JADX WARN: Type inference failed for: r1v3, types: [T, com.google.api.services.drive.Drive] */
            /* JADX WARN: Unknown variable types count: 1 */
            @Override // com.google.android.gms.tasks.d
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void onComplete(com.google.android.gms.tasks.h<com.google.android.gms.auth.api.signin.GoogleSignInAccount> r5) {
                /*
                    r4 = this;
                    r0 = r5
                    java.lang.String r1 = "it"
                    kotlin.jvm.internal.p.b(r0, r1)
                    r0 = r5
                    boolean r0 = r0.b()
                    if (r0 == 0) goto L_0x0022
                    r0 = r4
                    kotlin.jvm.internal.ab$e r0 = r5
                    r1 = r4
                    com.callapp.contacts.api.helper.backup.GoogleDriveHelper r1 = com.callapp.contacts.api.helper.backup.GoogleDriveHelper.this
                    r2 = r5
                    java.lang.Object r2 = r2.d()
                    com.google.android.gms.auth.api.signin.GoogleSignInAccount r2 = (com.google.android.gms.auth.api.signin.GoogleSignInAccount) r2
                    com.google.api.services.drive.Drive r1 = com.callapp.contacts.api.helper.backup.GoogleDriveHelper.a(r1, r2)
                    r0.f36780a = r1
                L_0x0022:
                    r0 = r4
                    java.util.concurrent.CountDownLatch r0 = r6
                    r0.countDown()
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.api.helper.backup.GoogleDriveHelper$doSilentSignIn$1.onComplete(com.google.android.gms.tasks.h):void");
            }
        });
        countDownLatch.await(1L, TimeUnit.MINUTES);
        if (((Drive) eVar.f36780a) != null) {
            try {
                HashMap<String, String> b2 = b(backupDataList);
                if (b2 != null) {
                    for (BackUpData backUpData : backupDataList) {
                        CLog.a(GoogleDriveHelper.class, "Starting upload: " + backUpData.getFolderName());
                        if (!backUpData.getDeleteBeforeUpload()) {
                            CLog.a(GoogleDriveHelper.class, "Skipping: ".concat(String.valueOf(a(backUpData, arrayList))));
                        }
                        for (BackUpFileData backUpFileData : n.l(backUpData.getFileData())) {
                            String filePath = backUpFileData.getFilePath();
                            java.io.File file = new java.io.File(filePath);
                            if (file.exists()) {
                                String fileName = backUpFileData.getFileName();
                                try {
                                    File parents = new File().setName(fileName).setParents(Collections.singletonList(b2.get(backUpData.getFolderName())));
                                    g gVar = new g(null, file);
                                    Drive drive = this.f14116d;
                                    File execute = (drive == null || (files = drive.files()) == null || (fields = files.a(parents, gVar).setFields2("name, parents")) == null) ? null : fields.execute();
                                    if (execute != null) {
                                        StringBuilder sb = new StringBuilder();
                                        sb.append("Upload complete: ");
                                        List<String> parents2 = execute.getParents();
                                        p.b(parents2, "it.parents");
                                        sb.append(n.a((Collection<? extends String>) n.a((Collection<? extends String>) parents2, "/"), execute.getName()));
                                        CLog.a(GoogleDriveHelper.class, sb.toString());
                                        arrayList.add(new BackupUploadFileData(filePath, BackupMessageCode.SUCCESSFUL, backUpData.getFileType()));
                                    } else {
                                        CLog.a(GoogleDriveHelper.class, ("Upload failed: " + fileName) + " fileMetadata is empty");
                                        arrayList2.add(new BackupUploadFileData(filePath, BackupMessageCode.UPLOAD_ERROR, backUpData.getFileType()));
                                    }
                                } catch (GoogleJsonResponseException e) {
                                    if (e.getStatusCode() != 403) {
                                        arrayList2.add(new BackupUploadFileData(filePath, BackupMessageCode.UPLOAD_ERROR, backUpData.getFileType()));
                                    } else {
                                        throw new NotEnoughSpaceException("Google drive enough space");
                                    }
                                } catch (Exception e2) {
                                    CLog.a(GoogleDriveHelper.class, (("Upload error: " + fileName) + StringUtils.SPACE) + e2.getMessage());
                                    arrayList2.add(new BackupUploadFileData(filePath, BackupMessageCode.UNKNOWN_ERROR, backUpData.getFileType()));
                                }
                            } else {
                                CLog.a(GoogleDriveHelper.class, "Upload error: file not exist");
                            }
                        }
                    }
                } else {
                    CLog.a(GoogleDriveHelper.class, "folder initialize failed");
                }
                StringBuilder sb2 = new StringBuilder("finished uploads count: ");
                ArrayList<BackupUploadFileData> arrayList3 = arrayList;
                ArrayList arrayList4 = new ArrayList();
                Iterator<T> it2 = arrayList3.iterator();
                while (true) {
                    boolean z = false;
                    if (!it2.hasNext()) {
                        break;
                    }
                    Object next = it2.next();
                    if (((BackupUploadFileData) next).getMessage() == BackupMessageCode.SUCCESSFUL) {
                        z = true;
                    }
                    if (z) {
                        arrayList4.add(next);
                    }
                }
                sb2.append(arrayList4.size());
                sb2.append(" error count: ");
                sb2.append(arrayList2.size());
                sb2.append(" skipped count: ");
                ArrayList arrayList5 = new ArrayList();
                for (Object obj : arrayList3) {
                    if (((BackupUploadFileData) obj).getMessage() == BackupMessageCode.EXIST) {
                        arrayList5.add(obj);
                    }
                }
                sb2.append(arrayList5.size());
                CLog.a(GoogleDriveHelper.class, sb2.toString());
                return new BackUpResultData(arrayList, arrayList2);
            } catch (UserRecoverableAuthIOException e3) {
                throw new DisconnectException("Google drive permissions revoked");
            }
        } else {
            CLog.a(GoogleDriveHelper.class, "Google drive is not login ");
            throw new DisconnectException("Google drive is not login ");
        }
    }

    public final void a(Activity activity) {
        p.d(activity, "activity");
        if (!isLoggedIn()) {
            CallAppApplication callAppApplication = CallAppApplication.get();
            c googleApiClient = this.f;
            p.b(googleApiClient, "googleApiClient");
            Activities.a(callAppApplication, googleApiClient.b(), new ActivityResult() { // from class: com.callapp.contacts.api.helper.backup.GoogleDriveHelper$doLogin$1
                @Override // com.callapp.contacts.manager.popup.ActivityResult
                public final void onActivityResult(Activity activity2, int i, int i2, Intent intent) {
                    if (i2 != -1) {
                        BackupLoginCallBack loginListener = GoogleDriveHelper.this.getLoginListener();
                        if (loginListener != null) {
                            loginListener.a("unable to login, result code: " + i2);
                        }
                        GoogleDriveHelper.this.f14102a = null;
                    } else if (intent != null) {
                        com.google.android.gms.auth.api.signin.a.a(intent).a((f<? super GoogleSignInAccount>) r0).a((e) GoogleDriveHelper.this);
                    }
                }
            });
            return;
        }
        BackupLoginCallBack loginListener = getLoginListener();
        if (loginListener != null) {
            loginListener.a();
        }
        this.f14102a = null;
    }

    @Override // com.callapp.contacts.api.helper.backup.BaseBackup
    public final void d() {
        if (isLoggedIn()) {
            this.f.d();
            Prefs.hH.set(null);
            this.f14116d = null;
        }
    }

    @Override // com.callapp.contacts.api.helper.backup.BaseBackup
    public final String getName() {
        String string = Activities.getString(2131886940);
        p.b(string, "Activities.getString(R.string.google_drive)");
        return string;
    }

    public final boolean isLoggedIn() {
        StringPref stringPref = Prefs.hH;
        p.b(stringPref, "Prefs.googleDriveSessionId");
        return stringPref.isNotNull() && com.callapp.framework.util.StringUtils.b((CharSequence) Prefs.hH.get());
    }

    @Override // com.google.android.gms.tasks.e
    public final void onFailure(Exception exception) {
        p.d(exception, "exception");
        BackupLoginCallBack loginListener = getLoginListener();
        if (loginListener != null) {
            loginListener.a("Unable to sign in." + exception);
        }
        CLog.a(GoogleDriveHelper.class, "Unable to sign in." + exception);
        this.f14102a = null;
    }
}
