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
import com.google.android.gms.auth.api.signin.C11729a;
import com.google.android.gms.auth.api.signin.C11731c;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.tasks.AbstractC14181d;
import com.google.android.gms.tasks.AbstractC14182e;
import com.google.android.gms.tasks.AbstractC14183f;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.api.client.googleapis.extensions.android.gms.auth.C15288a;
import com.google.api.client.googleapis.extensions.android.gms.auth.UserRecoverableAuthIOException;
import com.google.api.client.googleapis.json.GoogleJsonResponseException;
import com.google.api.client.http.C15327g;
import com.google.api.client.http.p383a.C15312e;
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
import kotlin.jvm.internal.C18490ab;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18255ap;
import kotlin.p518a.C18282n;
import org.apache.commons.lang3.StringUtils;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� 52\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u00022\u00020\u0004:\u00015B\u0005¢\u0006\u0002\u0010\u0005J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0015H\u0016J\n\u0010\u0019\u001a\u0004\u0018\u00010\fH\u0002J\u0016\u0010\u001a\u001a\u00020\u001b2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001dH\u0016J\n\u0010\u001f\u001a\u0004\u0018\u00010\u0012H\u0002J\b\u0010 \u001a\u00020\u0012H\u0016J\u0010\u0010!\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020#H\u0002J6\u0010$\u001a\"\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0018\u00010%j\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0018\u0001`&2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001dH\u0002J\u0014\u0010'\u001a\u0004\u0018\u00010\f2\b\u0010(\u001a\u0004\u0018\u00010\u0003H\u0002J\b\u0010)\u001a\u00020*H\u0016J\u0014\u0010+\u001a\u00020\u00152\n\u0010,\u001a\u00060-j\u0002`.H\u0016J\u0012\u0010/\u001a\u00020\u00152\b\u0010(\u001a\u0004\u0018\u00010\u0003H\u0016J$\u00100\u001a\b\u0012\u0004\u0012\u00020\u00120\u001d2\u0006\u00101\u001a\u00020\u001e2\f\u00102\u001a\b\u0012\u0004\u0012\u00020403H\u0016R\u0016\u0010\u0006\u001a\n \b*\u0004\u0018\u00010\u00070\u0007X\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\t\u001a\n \b*\u0004\u0018\u00010\n0\nX\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n��¨\u00066"}, m4298d2 = {"Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;", "Lcom/callapp/contacts/api/helper/backup/BaseBackup;", "Lcom/google/android/gms/tasks/OnSuccessListener;", "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;", "Lcom/google/android/gms/tasks/OnFailureListener;", "()V", "credential", "Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;", "kotlin.jvm.PlatformType", "googleApiClient", "Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;", "googleDriveService", "Lcom/google/api/services/drive/Drive;", "signInOptions", "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;", "createFolder", "Lcom/google/api/services/drive/model/File;", "folderName", "", "mainFolderId", "doLogin", "", "activity", "Landroid/app/Activity;", "doLogout", "doSilentSignIn", "doUploadSync", "Lcom/callapp/contacts/api/helper/backup/BackUpResultData;", "backupDataList", "", "Lcom/callapp/contacts/api/helper/backup/BackUpData;", "getMainFolderId", "getName", "handleSignInResult", "result", "Landroid/content/Intent;", "initFoldersIfNeeded", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "initGoogleDriveService", "googleAccount", "isLoggedIn", "", "onFailure", "exception", "Ljava/lang/Exception;", "Lkotlin/Exception;", "onSuccess", "updateExistingFiles", "backupData", "finishUploadList", "Ljava/util/ArrayList;", "Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/GoogleDriveHelper.class */
public final class GoogleDriveHelper extends BaseBackup implements AbstractC14182e, AbstractC14183f<GoogleSignInAccount> {

    /* renamed from: c */
    public static final Companion f24766c = new Companion(null);

    /* renamed from: d */
    private Drive f24767d;

    /* renamed from: e */
    private GoogleSignInOptions f24768e;

    /* renamed from: f */
    private final C11731c f24769f;

    /* renamed from: g */
    private final C15288a f24770g = C15288a.m9160a(CallAppApplication.get(), C18255ap.m4240a("https://www.googleapis.com/auth/drive.file"));

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, m4298d2 = {"Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper$Companion;", "", "()V", "get", "Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/GoogleDriveHelper$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final GoogleDriveHelper get() {
            Singletons singletons = Singletons.get();
            C18524p.m3843b(singletons, "Singletons.get()");
            GoogleDriveHelper googleDriveHelper = singletons.getGoogleDriveHelper();
            C18524p.m3843b(googleDriveHelper, "Singletons.get().googleDriveHelper");
            return googleDriveHelper;
        }
    }

    public GoogleDriveHelper() {
        GoogleSignInOptions m19567d = new GoogleSignInOptions.C11728a().m19569b().m19570a(new Scope("https://www.googleapis.com/auth/drive.file"), new Scope[0]).m19567d();
        C18524p.m3843b(m19567d, "GoogleSignInOptions.Buil…LE))\n            .build()");
        this.f24768e = m19567d;
        this.f24769f = C11729a.m19566a(CallAppApplication.get(), this.f24768e);
    }

    /* renamed from: a */
    public final Drive onSuccess(GoogleSignInAccount googleSignInAccount) {
        if (this.f24767d == null) {
            if (googleSignInAccount != null) {
                C15288a credential = this.f24770g;
                C18524p.m3843b(credential, "credential");
                credential.m9161a(googleSignInAccount.getAccount());
                this.f24767d = new Drive.Builder(new C15312e(), new JacksonFactory(), this.f24770g).setApplicationName(Constants.APP_NAME).build();
                BackupLoginCallBack loginListener = getLoginListener();
                if (loginListener != null) {
                    loginListener.mo29304a();
                }
                CLog.m27611a(GoogleDriveHelper.class, "Signed in as " + googleSignInAccount.getEmail());
                Prefs.f26602hH.set(googleSignInAccount.getId());
                this.f24752a = null;
            } else {
                BackupLoginCallBack loginListener2 = getLoginListener();
                if (loginListener2 != null) {
                    loginListener2.mo29303a("googleAccount is null");
                }
                CLog.m27611a(GoogleDriveHelper.class, "googleAccount is null");
                this.f24752a = null;
            }
        }
        return this.f24767d;
    }

    /* renamed from: a */
    private final File m29274a(String str, String str2) {
        Drive.Files files;
        DriveRequest<File> fields2;
        File mimeType = new File().setName(str).setParents(Collections.singletonList(str2)).setMimeType("application/vnd.google-apps.folder");
        Drive drive = this.f24767d;
        if (drive == null || (files = drive.files()) == null || (fields2 = files.m8991a(mimeType).setFields2("id")) == null) {
            return null;
        }
        return fields2.execute();
    }

    /* renamed from: a */
    private List<String> m29278a(BackUpData backupData, ArrayList<BackupUploadFileData> finishUploadList) {
        List<File> files;
        Object obj;
        Drive.Files files2;
        Drive.Files.List q;
        DriveRequest<FileList> fields2;
        C18524p.m3840d(backupData, "backupData");
        C18524p.m3840d(finishUploadList, "finishUploadList");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        try {
            Drive drive = this.f24767d;
            FileList execute = (drive == null || (files2 = drive.files()) == null || (q = files2.m8992a().setQ("mimeType!='application/vnd.google-apps.folder' and trashed=false")) == null || (fields2 = q.setFields2("nextPageToken, files(id, name)")) == null) ? null : fields2.execute();
            if (execute != null && (files = execute.getFiles()) != null) {
                for (BackUpFileData backUpFileData : backupData.getFileData()) {
                    Iterator<T> it2 = files.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            obj = null;
                            break;
                        }
                        obj = it2.next();
                        File it3 = (File) obj;
                        C18524p.m3843b(it3, "it");
                        if (C18524p.m3850a((Object) it3.getName(), (Object) backUpFileData.getFileName())) {
                            break;
                        }
                    }
                    File file = (File) obj;
                    if (file != null) {
                        String name = file.getName();
                        C18524p.m3843b(name, "it.name");
                        finishUploadList.add(new BackupUploadFileData(name, BackupMessageCode.EXIST, backupData.getFileType()));
                        arrayList2.add(file.getName());
                    } else {
                        arrayList.add(backUpFileData);
                    }
                }
                backupData.setFileData(arrayList);
            }
        } catch (Exception e) {
            CLog.m27611a(GoogleDriveHelper.class, e.getMessage());
        }
        return arrayList2;
    }

    /* renamed from: b */
    private final HashMap<String, String> m29272b(List<BackUpData> list) {
        List<File> files;
        Object obj;
        Drive.Files files2;
        DriveRequest<Void> fields2;
        Drive.Files files3;
        String mainFolderId = getMainFolderId();
        if (mainFolderId != null) {
            HashMap<String, String> hashMap = new HashMap<>();
            for (BackUpData backUpData : list) {
                Drive drive = this.f24767d;
                Drive.Files.List q = (drive == null || (files3 = drive.files()) == null) ? null : files3.m8992a().setQ("mimeType='application/vnd.google-apps.folder' and trashed=false and name='" + backUpData.getFolderName() + '\'');
                FileList execute = q != null ? q.execute() : null;
                if (execute != null && (files = execute.getFiles()) != null) {
                    if (files.isEmpty()) {
                        File m29274a = m29274a(backUpData.getFolderName(), mainFolderId);
                        if (m29274a != null) {
                            HashMap<String, String> hashMap2 = hashMap;
                            String folderName = backUpData.getFolderName();
                            String id = m29274a.getId();
                            C18524p.m3843b(id, "it.id");
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
                            C18524p.m3843b(it3, "it");
                            if (C18524p.m3850a((Object) it3.getName(), (Object) backUpData.getFolderName())) {
                                break;
                            }
                        }
                        File file = (File) obj;
                        if (file != null) {
                            if (backUpData.getDeleteBeforeUpload()) {
                                Drive drive2 = this.f24767d;
                                if (drive2 != null && (files2 = drive2.files()) != null && (fields2 = files2.m8989a(file.getId()).setFields2("name")) != null) {
                                    fields2.execute();
                                }
                                File m29274a2 = m29274a(backUpData.getFolderName(), mainFolderId);
                                if (m29274a2 != null) {
                                    HashMap<String, String> hashMap3 = hashMap;
                                    String folderName2 = backUpData.getFolderName();
                                    String id2 = m29274a2.getId();
                                    C18524p.m3843b(id2, "f.id");
                                    hashMap3.put(folderName2, id2);
                                }
                                CLog.m27611a(GoogleDriveHelper.class, "Folder deleted: " + file.getName());
                            } else {
                                HashMap<String, String> hashMap4 = hashMap;
                                String folderName3 = backUpData.getFolderName();
                                String id3 = file.getId();
                                C18524p.m3843b(id3, "it.id");
                                hashMap4.put(folderName3, id3);
                            }
                        }
                    }
                }
            }
            return hashMap;
        }
        return null;
    }

    public static final GoogleDriveHelper get() {
        return f24766c.get();
    }

    private final String getMainFolderId() {
        Drive.Files.List list;
        List<File> files;
        Object obj;
        Drive.Files files2;
        DriveRequest<File> fields2;
        Drive.Files files3;
        String mainFolderName = Activities.getString(2131886297);
        Drive drive = this.f24767d;
        if (drive == null || (files3 = drive.files()) == null) {
            list = null;
        } else {
            list = files3.m8992a().setQ("mimeType='application/vnd.google-apps.folder' and trashed=false and name='" + mainFolderName + '\'');
        }
        FileList execute = list != null ? list.execute() : null;
        if (execute == null || (files = execute.getFiles()) == null) {
            return null;
        }
        if (files.isEmpty()) {
            C18524p.m3843b(mainFolderName, "mainFolderName");
            File mimeType = new File().setName(mainFolderName).setMimeType("application/vnd.google-apps.folder");
            Drive drive2 = this.f24767d;
            File execute2 = (drive2 == null || (files2 = drive2.files()) == null || (fields2 = files2.m8991a(mimeType).setFields2("id")) == null) ? null : fields2.execute();
            if (execute2 == null) {
                return null;
            }
            return execute2.getId();
        }
        Iterator<T> it2 = files.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            File it3 = (File) obj;
            C18524p.m3843b(it3, "it");
            if (C18524p.m3850a((Object) it3.getName(), (Object) mainFolderName)) {
                break;
            }
        }
        File file = (File) obj;
        if (file == null) {
            return null;
        }
        return file.getId();
    }

    @Override // com.callapp.contacts.api.helper.backup.BaseBackup
    /* renamed from: a */
    public final BackUpResultData mo29273a(List<BackUpData> backupDataList) throws DisconnectException, NotEnoughSpaceException {
        Drive.Files files;
        DriveRequest<File> fields2;
        C18524p.m3840d(backupDataList, "backupDataList");
        ArrayList<BackupUploadFileData> arrayList = new ArrayList<>();
        ArrayList arrayList2 = new ArrayList();
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final C18490ab.C18495e c18495e = new C18490ab.C18495e();
        c18495e.f63589a = null;
        this.f24769f.m19562c().mo11489a(new AbstractC14181d<GoogleSignInAccount>() { // from class: com.callapp.contacts.api.helper.backup.GoogleDriveHelper$doSilentSignIn$1
            /* JADX WARN: Type inference failed for: r1v3, types: [T, com.google.api.services.drive.Drive] */
            @Override // com.google.android.gms.tasks.AbstractC14181d
            public final void onComplete(AbstractC14185h<GoogleSignInAccount> it2) {
                ?? onSuccess;
                C18524p.m3843b(it2, "it");
                if (it2.mo11478b()) {
                    C18490ab.C18495e c18495e2 = c18495e;
                    onSuccess = GoogleDriveHelper.this.onSuccess(it2.mo11475d());
                    c18495e2.f63589a = onSuccess;
                }
                countDownLatch.countDown();
            }
        });
        countDownLatch.await(1L, TimeUnit.MINUTES);
        if (((Drive) c18495e.f63589a) == null) {
            CLog.m27611a(GoogleDriveHelper.class, "Google drive is not login ");
            throw new DisconnectException("Google drive is not login ");
        }
        try {
            HashMap<String, String> m29272b = m29272b(backupDataList);
            if (m29272b != null) {
                for (BackUpData backUpData : backupDataList) {
                    CLog.m27611a(GoogleDriveHelper.class, "Starting upload: " + backUpData.getFolderName());
                    if (!backUpData.getDeleteBeforeUpload()) {
                        CLog.m27611a(GoogleDriveHelper.class, "Skipping: ".concat(String.valueOf(m29278a(backUpData, arrayList))));
                    }
                    for (BackUpFileData backUpFileData : C18282n.m4110l(backUpData.getFileData())) {
                        String filePath = backUpFileData.getFilePath();
                        java.io.File file = new java.io.File(filePath);
                        if (file.exists()) {
                            String fileName = backUpFileData.getFileName();
                            try {
                                File parents = new File().setName(fileName).setParents(Collections.singletonList(m29272b.get(backUpData.getFolderName())));
                                C15327g c15327g = new C15327g(null, file);
                                Drive drive = this.f24767d;
                                File execute = (drive == null || (files = drive.files()) == null || (fields2 = files.m8990a(parents, c15327g).setFields2("name, parents")) == null) ? null : fields2.execute();
                                if (execute != null) {
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("Upload complete: ");
                                    List<String> parents2 = execute.getParents();
                                    C18524p.m3843b(parents2, "it.parents");
                                    sb.append(C18282n.m4143a((Collection<? extends String>) C18282n.m4143a((Collection<? extends String>) parents2, "/"), execute.getName()));
                                    CLog.m27611a(GoogleDriveHelper.class, sb.toString());
                                    arrayList.add(new BackupUploadFileData(filePath, BackupMessageCode.SUCCESSFUL, backUpData.getFileType()));
                                } else {
                                    CLog.m27611a(GoogleDriveHelper.class, ("Upload failed: " + fileName) + " fileMetadata is empty");
                                    arrayList2.add(new BackupUploadFileData(filePath, BackupMessageCode.UPLOAD_ERROR, backUpData.getFileType()));
                                }
                            } catch (GoogleJsonResponseException e) {
                                if (e.getStatusCode() == 403) {
                                    throw new NotEnoughSpaceException("Google drive enough space");
                                }
                                arrayList2.add(new BackupUploadFileData(filePath, BackupMessageCode.UPLOAD_ERROR, backUpData.getFileType()));
                            } catch (Exception e2) {
                                CLog.m27611a(GoogleDriveHelper.class, (("Upload error: " + fileName) + StringUtils.SPACE) + e2.getMessage());
                                arrayList2.add(new BackupUploadFileData(filePath, BackupMessageCode.UNKNOWN_ERROR, backUpData.getFileType()));
                            }
                        } else {
                            CLog.m27611a(GoogleDriveHelper.class, "Upload error: file not exist");
                        }
                    }
                }
            } else {
                CLog.m27611a(GoogleDriveHelper.class, "folder initialize failed");
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
            CLog.m27611a(GoogleDriveHelper.class, sb2.toString());
            return new BackUpResultData(arrayList, arrayList2);
        } catch (UserRecoverableAuthIOException e3) {
            throw new DisconnectException("Google drive permissions revoked");
        }
    }

    /* renamed from: a */
    public final void m29279a(Activity activity) {
        C18524p.m3840d(activity, "activity");
        if (!isLoggedIn()) {
            CallAppApplication callAppApplication = CallAppApplication.get();
            C11731c googleApiClient = this.f24769f;
            C18524p.m3843b(googleApiClient, "googleApiClient");
            Activities.m27683a(callAppApplication, googleApiClient.m19563b(), new ActivityResult() { // from class: com.callapp.contacts.api.helper.backup.GoogleDriveHelper$doLogin$1
                @Override // com.callapp.contacts.manager.popup.ActivityResult
                public final void onActivityResult(Activity activity2, int i, int i2, Intent intent) {
                    if (i2 == -1) {
                        if (intent == null) {
                            return;
                        }
                        C11729a.m19565a(intent).mo11487a((AbstractC14183f<? super GoogleSignInAccount>) r0).mo11488a((AbstractC14182e) GoogleDriveHelper.this);
                        return;
                    }
                    BackupLoginCallBack loginListener = GoogleDriveHelper.this.getLoginListener();
                    if (loginListener != null) {
                        loginListener.mo29303a("unable to login, result code: " + i2);
                    }
                    GoogleDriveHelper.this.f24752a = null;
                }
            });
            return;
        }
        BackupLoginCallBack loginListener = getLoginListener();
        if (loginListener != null) {
            loginListener.mo29304a();
        }
        this.f24752a = null;
    }

    @Override // com.callapp.contacts.api.helper.backup.BaseBackup
    /* renamed from: d */
    public final void mo29271d() {
        if (isLoggedIn()) {
            this.f24769f.m19561d();
            Prefs.f26602hH.set(null);
            this.f24767d = null;
        }
    }

    @Override // com.callapp.contacts.api.helper.backup.BaseBackup
    public final String getName() {
        String string = Activities.getString(2131886940);
        C18524p.m3843b(string, "Activities.getString(R.string.google_drive)");
        return string;
    }

    public final boolean isLoggedIn() {
        StringPref stringPref = Prefs.f26602hH;
        C18524p.m3843b(stringPref, "Prefs.googleDriveSessionId");
        return stringPref.isNotNull() && com.callapp.framework.util.StringUtils.m26045b((CharSequence) Prefs.f26602hH.get());
    }

    @Override // com.google.android.gms.tasks.AbstractC14182e
    public final void onFailure(Exception exception) {
        C18524p.m3840d(exception, "exception");
        BackupLoginCallBack loginListener = getLoginListener();
        if (loginListener != null) {
            loginListener.mo29303a("Unable to sign in." + exception);
        }
        CLog.m27611a(GoogleDriveHelper.class, "Unable to sign in." + exception);
        this.f24752a = null;
    }
}
