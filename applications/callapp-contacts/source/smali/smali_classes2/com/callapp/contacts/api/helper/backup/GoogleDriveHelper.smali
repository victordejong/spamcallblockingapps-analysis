.class public final Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;
.super Lcom/callapp/contacts/api/helper/backup/BaseBackup;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/e;
.implements Lcom/google/android/gms/tasks/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/api/helper/backup/BaseBackup;",
        "Lcom/google/android/gms/tasks/e;",
        "Lcom/google/android/gms/tasks/f<",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 52\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u00020\u0004:\u00015B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0015H\u0016J\n\u0010\u0019\u001a\u0004\u0018\u00010\u000cH\u0002J\u0016\u0010\u001a\u001a\u00020\u001b2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001dH\u0016J\n\u0010\u001f\u001a\u0004\u0018\u00010\u0012H\u0002J\u0008\u0010 \u001a\u00020\u0012H\u0016J\u0010\u0010!\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020#H\u0002J6\u0010$\u001a\"\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0018\u00010%j\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0018\u0001`&2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001dH\u0002J\u0014\u0010\'\u001a\u0004\u0018\u00010\u000c2\u0008\u0010(\u001a\u0004\u0018\u00010\u0003H\u0002J\u0008\u0010)\u001a\u00020*H\u0016J\u0014\u0010+\u001a\u00020\u00152\n\u0010,\u001a\u00060-j\u0002`.H\u0016J\u0012\u0010/\u001a\u00020\u00152\u0008\u0010(\u001a\u0004\u0018\u00010\u0003H\u0016J$\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u001d2\u0006\u00101\u001a\u00020\u001e2\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u00020403H\u0016R\u0016\u0010\u0006\u001a\n \u0008*\u0004\u0018\u00010\u00070\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n \u0008*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00066"
    }
    d2 = {
        "Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;",
        "Lcom/callapp/contacts/api/helper/backup/BaseBackup;",
        "Lcom/google/android/gms/tasks/OnSuccessListener;",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
        "Lcom/google/android/gms/tasks/OnFailureListener;",
        "()V",
        "credential",
        "Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;",
        "kotlin.jvm.PlatformType",
        "googleApiClient",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;",
        "googleDriveService",
        "Lcom/google/api/services/drive/Drive;",
        "signInOptions",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
        "createFolder",
        "Lcom/google/api/services/drive/model/File;",
        "folderName",
        "",
        "mainFolderId",
        "doLogin",
        "",
        "activity",
        "Landroid/app/Activity;",
        "doLogout",
        "doSilentSignIn",
        "doUploadSync",
        "Lcom/callapp/contacts/api/helper/backup/BackUpResultData;",
        "backupDataList",
        "",
        "Lcom/callapp/contacts/api/helper/backup/BackUpData;",
        "getMainFolderId",
        "getName",
        "handleSignInResult",
        "result",
        "Landroid/content/Intent;",
        "initFoldersIfNeeded",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "initGoogleDriveService",
        "googleAccount",
        "isLoggedIn",
        "",
        "onFailure",
        "exception",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "onSuccess",
        "updateExistingFiles",
        "backupData",
        "finishUploadList",
        "Ljava/util/ArrayList;",
        "Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;",
        "Companion",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final c:Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper$Companion;


# instance fields
.field private d:Lcom/google/api/services/drive/Drive;

.field private e:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

.field private final f:Lcom/google/android/gms/auth/api/signin/c;

.field private final g:Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->c:Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 35
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/backup/BaseBackup;-><init>()V

    .line 39
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;-><init>()V

    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/google/android/gms/common/api/Scope;

    const-string v2, "https://www.googleapis.com/auth/drive.file"

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->a(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->d()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    const-string v1, "GoogleSignInOptions.Buil\u2026LE))\n            .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->e:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 44
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->e:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/api/signin/a;->a(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/c;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->f:Lcom/google/android/gms/auth/api/signin/c;

    .line 45
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v2}, Lkotlin/a/ap;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v0, v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;->a(Landroid/content/Context;Ljava/util/Collection;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->g:Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;

    return-void
.end method

.method public static final synthetic a(Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/api/services/drive/Drive;
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->a(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/api/services/drive/Drive;

    move-result-object p0

    return-object p0
.end method

.method private final a(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/api/services/drive/Drive;
    .locals 6

    .line 59
    const-class v0, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->d:Lcom/google/api/services/drive/Drive;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 61
    iget-object v2, p0, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->g:Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;

    const-string v3, "credential"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;->a(Landroid/accounts/Account;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;

    .line 62
    new-instance v2, Lcom/google/api/services/drive/Drive$Builder;

    new-instance v3, Lcom/google/api/client/http/a/e;

    invoke-direct {v3}, Lcom/google/api/client/http/a/e;-><init>()V

    check-cast v3, Lcom/google/api/client/http/w;

    new-instance v4, Lcom/google/api/client/json/jackson2/JacksonFactory;

    invoke-direct {v4}, Lcom/google/api/client/json/jackson2/JacksonFactory;-><init>()V

    check-cast v4, Lcom/google/api/client/json/JsonFactory;

    iget-object v5, p0, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->g:Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;

    check-cast v5, Lcom/google/api/client/http/s;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/api/services/drive/Drive$Builder;-><init>(Lcom/google/api/client/http/w;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/s;)V

    const-string v3, "CallApp"

    .line 63
    invoke-virtual {v2, v3}, Lcom/google/api/services/drive/Drive$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Builder;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Lcom/google/api/services/drive/Drive$Builder;->build()Lcom/google/api/services/drive/Drive;

    move-result-object v2

    iput-object v2, p0, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->d:Lcom/google/api/services/drive/Drive;

    .line 65
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->getLoginListener()Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack$DefaultImpls;->a(Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;)V

    .line 66
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Signed in as "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hH:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 2017
    iput-object v1, p0, Lcom/callapp/contacts/api/helper/backup/BaseBackup;->a:Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->getLoginListener()Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;

    move-result-object p1

    const-string v2, "googleAccount is null"

    if-eqz p1, :cond_2

    invoke-interface {p1, v2}, Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;->a(Ljava/lang/String;)V

    .line 71
    :cond_2
    invoke-static {v0, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 3017
    iput-object v1, p0, Lcom/callapp/contacts/api/helper/backup/BaseBackup;->a:Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;

    .line 75
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->d:Lcom/google/api/services/drive/Drive;

    return-object p1
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/drive/model/File;
    .locals 1

    .line 258
    new-instance v0, Lcom/google/api/services/drive/model/File;

    invoke-direct {v0}, Lcom/google/api/services/drive/model/File;-><init>()V

    .line 259
    invoke-virtual {v0, p1}, Lcom/google/api/services/drive/model/File;->setName(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    move-result-object p1

    .line 260
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/api/services/drive/model/File;->setParents(Ljava/util/List;)Lcom/google/api/services/drive/model/File;

    move-result-object p1

    const-string p2, "application/vnd.google-apps.folder"

    .line 261
    invoke-virtual {p1, p2}, Lcom/google/api/services/drive/model/File;->setMimeType(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    move-result-object p1

    .line 262
    iget-object p2, p0, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->d:Lcom/google/api/services/drive/Drive;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/google/api/services/drive/Drive$Files;->a(Lcom/google/api/services/drive/model/File;)Lcom/google/api/services/drive/Drive$Files$Create;

    move-result-object p1

    const-string p2, "id"

    invoke-virtual {p1, p2}, Lcom/google/api/services/drive/Drive$Files$Create;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Create;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/api/services/drive/Drive$Files$Create;->execute()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/File;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lcom/callapp/contacts/api/helper/backup/BackUpData;Ljava/util/ArrayList;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/api/helper/backup/BackUpData;",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "backupData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finishUploadList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 191
    :try_start_0
    iget-object v2, p0, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->d:Lcom/google/api/services/drive/Drive;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 189
    invoke-virtual {v2}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/api/services/drive/Drive$Files;->a()Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object v2

    const-string v4, "mimeType!=\'application/vnd.google-apps.folder\' and trashed=false"

    .line 190
    invoke-virtual {v2, v4}, Lcom/google/api/services/drive/Drive$Files$List;->setQ(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v4, "nextPageToken, files(id, name)"

    .line 191
    invoke-virtual {v2, v4}, Lcom/google/api/services/drive/Drive$Files$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/api/services/drive/Drive$Files$List;->execute()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/services/drive/model/FileList;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_5

    .line 193
    invoke-virtual {v2}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 194
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/backup/BackUpData;->getFileData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/api/helper/backup/BackUpFileData;

    .line 195
    move-object v6, v2

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/google/api/services/drive/model/File;

    const-string v9, "it"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/google/api/services/drive/model/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/callapp/contacts/api/helper/backup/BackUpFileData;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_2

    :cond_2
    move-object v7, v3

    :goto_2
    check-cast v7, Lcom/google/api/services/drive/model/File;

    if-eqz v7, :cond_3

    .line 197
    new-instance v5, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;

    invoke-virtual {v7}, Lcom/google/api/services/drive/model/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "it.name"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;->EXIST:Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/backup/BackUpData;->getFileType()Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    move-result-object v9

    invoke-direct {v5, v6, v8, v9}, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;-><init>(Ljava/lang/String;Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;Lcom/callapp/contacts/api/helper/backup/BackupFileType;)V

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-virtual {v7}, Lcom/google/api/services/drive/model/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 200
    :cond_3
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 203
    :cond_4
    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/api/helper/backup/BackUpData;->setFileData(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 207
    const-class p2, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 209
    :cond_5
    :goto_3
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public static final synthetic a(Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;Landroid/content/Intent;)V
    .locals 1

    .line 5298
    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/a;->a(Landroid/content/Intent;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/tasks/f;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/h;->a(Lcom/google/android/gms/tasks/f;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    check-cast p0, Lcom/google/android/gms/tasks/e;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/h;->a(Lcom/google/android/gms/tasks/e;)Lcom/google/android/gms/tasks/h;

    return-void
.end method

.method private final b(Ljava/util/List;)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/api/helper/backup/BackUpData;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 213
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->getMainFolderId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 215
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 216
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/api/helper/backup/BackUpData;

    .line 217
    iget-object v4, p0, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->d:Lcom/google/api/services/drive/Drive;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/google/api/services/drive/Drive$Files;->a()Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mimeType=\'application/vnd.google-apps.folder\' and trashed=false and name=\'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/callapp/contacts/api/helper/backup/BackUpData;->getFolderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x27

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/api/services/drive/Drive$Files$List;->setQ(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    if-eqz v4, :cond_2

    .line 218
    invoke-virtual {v4}, Lcom/google/api/services/drive/Drive$Files$List;->execute()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/api/services/drive/model/FileList;

    goto :goto_2

    :cond_2
    move-object v4, v1

    :goto_2
    if-eqz v4, :cond_0

    .line 219
    invoke-virtual {v4}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 220
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const-string v6, "it.id"

    if-eqz v5, :cond_3

    .line 221
    invoke-virtual {v3}, Lcom/callapp/contacts/api/helper/backup/BackUpData;->getFolderName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 223
    move-object v5, v2

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v3}, Lcom/callapp/contacts/api/helper/backup/BackUpData;->getFolderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 226
    :cond_3
    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/google/api/services/drive/model/File;

    const-string v8, "it"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/google/api/services/drive/model/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/callapp/contacts/api/helper/backup/BackUpData;->getFolderName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_3

    :cond_5
    move-object v5, v1

    :goto_3
    check-cast v5, Lcom/google/api/services/drive/model/File;

    if-eqz v5, :cond_0

    .line 228
    invoke-virtual {v3}, Lcom/callapp/contacts/api/helper/backup/BackUpData;->getDeleteBeforeUpload()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 229
    iget-object v4, p0, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->d:Lcom/google/api/services/drive/Drive;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v5}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/api/services/drive/Drive$Files;->a(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Delete;

    move-result-object v4

    const-string v6, "name"

    invoke-virtual {v4, v6}, Lcom/google/api/services/drive/Drive$Files$Delete;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Delete;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/google/api/services/drive/Drive$Files$Delete;->execute()Ljava/lang/Object;

    .line 230
    :cond_6
    invoke-virtual {v3}, Lcom/callapp/contacts/api/helper/backup/BackUpData;->getFolderName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 232
    move-object v6, v2

    check-cast v6, Ljava/util/Map;

    invoke-virtual {v3}, Lcom/callapp/contacts/api/helper/backup/BackUpData;->getFolderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v7, "f.id"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_7
    const-class v3, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Folder deleted: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/google/api/services/drive/model/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 236
    :cond_8
    move-object v4, v2

    check-cast v4, Ljava/util/Map;

    invoke-virtual {v3}, Lcom/callapp/contacts/api/helper/backup/BackUpData;->getFolderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_9
    return-object v2

    :cond_a
    return-object v1
.end method

.method public static final get()Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;
    .locals 1

    sget-object v0, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->c:Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper$Companion;->get()Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;

    move-result-object v0

    return-object v0
.end method

.method private final getMainFolderId()Ljava/lang/String;
    .locals 6

    const v0, 0x7f1200d9

    .line 165
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->d:Lcom/google/api/services/drive/Drive;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/api/services/drive/Drive$Files;->a()Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mimeType=\'application/vnd.google-apps.folder\' and trashed=false and name=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/api/services/drive/Drive$Files$List;->setQ(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 167
    invoke-virtual {v1}, Lcom/google/api/services/drive/Drive$Files$List;->execute()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/drive/model/FileList;

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_6

    .line 168
    invoke-virtual {v1}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 169
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "mainFolderName"

    .line 170
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4251
    new-instance v1, Lcom/google/api/services/drive/model/File;

    invoke-direct {v1}, Lcom/google/api/services/drive/model/File;-><init>()V

    .line 4252
    invoke-virtual {v1, v0}, Lcom/google/api/services/drive/model/File;->setName(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    move-result-object v0

    const-string v1, "application/vnd.google-apps.folder"

    .line 4253
    invoke-virtual {v0, v1}, Lcom/google/api/services/drive/model/File;->setMimeType(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    move-result-object v0

    .line 4254
    iget-object v1, p0, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->d:Lcom/google/api/services/drive/Drive;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/google/api/services/drive/Drive$Files;->a(Lcom/google/api/services/drive/model/File;)Lcom/google/api/services/drive/Drive$Files$Create;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/google/api/services/drive/Drive$Files$Create;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Create;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/api/services/drive/Drive$Files$Create;->execute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/File;

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_6

    .line 172
    invoke-virtual {v0}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 175
    :cond_3
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/google/api/services/drive/model/File;

    const-string v5, "it"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_5
    move-object v3, v2

    :goto_3
    check-cast v3, Lcom/google/api/services/drive/model/File;

    if-eqz v3, :cond_6

    .line 177
    invoke-virtual {v3}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    return-object v2
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/callapp/contacts/api/helper/backup/BackUpResultData;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/api/helper/backup/BackUpData;",
            ">;)",
            "Lcom/callapp/contacts/api/helper/backup/BackUpResultData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/callapp/contacts/api/helper/backup/DisconnectException;,
            Lcom/callapp/contacts/api/helper/backup/NotEnoughSpaceException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-class v2, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;

    const-string v0, "backupDataList"

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 102
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4085
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 4086
    new-instance v7, Lkotlin/jvm/internal/ab$e;

    invoke-direct {v7}, Lkotlin/jvm/internal/ab$e;-><init>()V

    const/4 v8, 0x0

    iput-object v8, v7, Lkotlin/jvm/internal/ab$e;->a:Ljava/lang/Object;

    .line 4088
    iget-object v9, v1, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->f:Lcom/google/android/gms/auth/api/signin/c;

    invoke-virtual {v9}, Lcom/google/android/gms/auth/api/signin/c;->c()Lcom/google/android/gms/tasks/h;

    move-result-object v9

    new-instance v10, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper$doSilentSignIn$1;

    invoke-direct {v10, v1, v7, v0}, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper$doSilentSignIn$1;-><init>(Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;Lkotlin/jvm/internal/ab$e;Ljava/util/concurrent/CountDownLatch;)V

    check-cast v10, Lcom/google/android/gms/tasks/d;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/tasks/h;->a(Lcom/google/android/gms/tasks/d;)Lcom/google/android/gms/tasks/h;

    .line 4095
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x1

    invoke-virtual {v0, v10, v11, v9}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 4096
    iget-object v0, v7, Lkotlin/jvm/internal/ab$e;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/api/services/drive/Drive;

    if-eqz v0, :cond_e

    .line 105
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->b(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 107
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/callapp/contacts/api/helper/backup/BackUpData;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "Starting upload: "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/callapp/contacts/api/helper/backup/BackUpData;->getFolderName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v9}, Lcom/callapp/contacts/api/helper/backup/BackUpData;->getDeleteBeforeUpload()Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    invoke-direct {v1, v9, v4}, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->a(Lcom/callapp/contacts/api/helper/backup/BackUpData;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    const-string v10, "Skipping: "

    .line 111
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 113
    :cond_1
    invoke-virtual {v9}, Lcom/callapp/contacts/api/helper/backup/BackUpData;->getFileData()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/a/n;->l(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/api/helper/backup/BackUpFileData;

    .line 114
    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/backup/BackUpFileData;->getFilePath()Ljava/lang/String;

    move-result-object v11

    .line 115
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13
    :try_end_0
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_0 .. :try_end_0} :catch_2

    const-string v14, "Upload error: "

    if-eqz v13, :cond_5

    .line 117
    :try_start_1
    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/backup/BackUpFileData;->getFileName()Ljava/lang/String;

    move-result-object v13
    :try_end_1
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 119
    :try_start_2
    invoke-virtual {v9}, Lcom/callapp/contacts/api/helper/backup/BackUpData;->getFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    new-instance v15, Lcom/google/api/services/drive/model/File;

    invoke-direct {v15}, Lcom/google/api/services/drive/model/File;-><init>()V

    .line 121
    invoke-virtual {v15, v13}, Lcom/google/api/services/drive/model/File;->setName(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    move-result-object v15

    .line 122
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/google/api/services/drive/model/File;->setParents(Ljava/util/List;)Lcom/google/api/services/drive/model/File;

    move-result-object v0

    .line 124
    new-instance v15, Lcom/google/api/client/http/g;

    invoke-direct {v15, v8, v12}, Lcom/google/api/client/http/g;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 125
    iget-object v12, v1, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->d:Lcom/google/api/services/drive/Drive;

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v12

    if-eqz v12, :cond_2

    check-cast v15, Lcom/google/api/client/http/b;

    invoke-virtual {v12, v0, v15}, Lcom/google/api/services/drive/Drive$Files;->a(Lcom/google/api/services/drive/model/File;Lcom/google/api/client/http/b;)Lcom/google/api/services/drive/Drive$Files$Create;

    move-result-object v0

    const-string v12, "name, parents"

    invoke-virtual {v0, v12}, Lcom/google/api/services/drive/Drive$Files$Create;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Create;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/api/services/drive/Drive$Files$Create;->execute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/File;

    goto :goto_1

    :cond_2
    move-object v0, v8

    :goto_1
    if-eqz v0, :cond_3

    const-string v12, "Upload complete: "

    .line 127
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/api/services/drive/model/File;->getParents()Ljava/util/List;

    move-result-object v12

    const-string v6, "it.parents"

    invoke-static {v12, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/util/Collection;

    const-string v6, "/"

    invoke-static {v12, v6}, Lkotlin/a/n;->a(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-virtual {v0}, Lcom/google/api/services/drive/model/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lkotlin/a/n;->a(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 128
    new-instance v0, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;

    sget-object v6, Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;->SUCCESSFUL:Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;

    invoke-virtual {v9}, Lcom/callapp/contacts/api/helper/backup/BackUpData;->getFileType()Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    move-result-object v12

    invoke-direct {v0, v11, v6, v12}, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;-><init>(Ljava/lang/String;Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;Lcom/callapp/contacts/api/helper/backup/BackupFileType;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_3
    const-string v0, "Upload failed: "

    .line 130
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " fileMetadata is empty"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 131
    new-instance v0, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;

    sget-object v6, Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;->UPLOAD_ERROR:Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;

    invoke-virtual {v9}, Lcom/callapp/contacts/api/helper/backup/BackUpData;->getFileType()Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    move-result-object v12

    invoke-direct {v0, v11, v6, v12}, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;-><init>(Ljava/lang/String;Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;Lcom/callapp/contacts/api/helper/backup/BackupFileType;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    :catch_0
    move-exception v0

    .line 141
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 142
    new-instance v0, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;

    sget-object v6, Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;->UNKNOWN_ERROR:Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;

    invoke-virtual {v9}, Lcom/callapp/contacts/api/helper/backup/BackUpData;->getFileType()Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    move-result-object v12

    invoke-direct {v0, v11, v6, v12}, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;-><init>(Ljava/lang/String;Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;Lcom/callapp/contacts/api/helper/backup/BackupFileType;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_1
    move-exception v0

    .line 134
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getStatusCode()I

    move-result v0

    const/16 v6, 0x193

    if-eq v0, v6, :cond_4

    .line 138
    new-instance v0, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;

    sget-object v6, Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;->UPLOAD_ERROR:Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;

    invoke-virtual {v9}, Lcom/callapp/contacts/api/helper/backup/BackUpData;->getFileType()Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    move-result-object v12

    invoke-direct {v0, v11, v6, v12}, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;-><init>(Ljava/lang/String;Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;Lcom/callapp/contacts/api/helper/backup/BackupFileType;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 136
    :cond_4
    new-instance v0, Lcom/callapp/contacts/api/helper/backup/NotEnoughSpaceException;

    const-string v2, "Google drive enough space"

    invoke-direct {v0, v2}, Lcom/callapp/contacts/api/helper/backup/NotEnoughSpaceException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 145
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "file not exist"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :goto_2
    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_6
    const-string v0, "folder initialize failed"

    .line 150
    invoke-static {v2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 160
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "finished uploads count: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    check-cast v3, Ljava/lang/Iterable;

    .line 307
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .line 308
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;

    .line 160
    invoke-virtual {v10}, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;->getMessage()Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;

    move-result-object v10

    sget-object v11, Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;->SUCCESSFUL:Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;

    if-ne v10, v11, :cond_9

    const/4 v9, 0x1

    :cond_9
    if-eqz v9, :cond_8

    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 309
    :cond_a
    check-cast v6, Ljava/util/List;

    .line 307
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " error count: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " skipped count: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .line 308
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;

    .line 160
    invoke-virtual {v8}, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;->getMessage()Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;

    move-result-object v8

    sget-object v10, Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;->EXIST:Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;

    if-ne v8, v10, :cond_c

    const/4 v8, 0x1

    goto :goto_5

    :cond_c
    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_b

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 309
    :cond_d
    check-cast v6, Ljava/util/List;

    .line 307
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 161
    new-instance v0, Lcom/callapp/contacts/api/helper/backup/BackUpResultData;

    check-cast v4, Ljava/util/List;

    check-cast v5, Ljava/util/List;

    invoke-direct {v0, v4, v5}, Lcom/callapp/contacts/api/helper/backup/BackUpResultData;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0

    .line 153
    :catch_2
    new-instance v0, Lcom/callapp/contacts/api/helper/backup/DisconnectException;

    const-string v2, "Google drive permissions revoked"

    invoke-direct {v0, v2}, Lcom/callapp/contacts/api/helper/backup/DisconnectException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_e
    const-string v0, "Google drive is not login "

    .line 157
    invoke-static {v2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 158
    new-instance v2, Lcom/callapp/contacts/api/helper/backup/DisconnectException;

    invoke-direct {v2, v0}, Lcom/callapp/contacts/api/helper/backup/DisconnectException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->isLoggedIn()Z

    move-result p1

    if-nez p1, :cond_0

    .line 268
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->f:Lcom/google/android/gms/auth/api/signin/c;

    const-string v1, "googleApiClient"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/c;->b()Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper$doLogin$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper$doLogin$1;-><init>(Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;)V

    check-cast v1, Lcom/callapp/contacts/manager/popup/ActivityResult;

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/callapp/contacts/manager/popup/ActivityResult;)V

    return-void

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->getLoginListener()Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack$DefaultImpls;->a(Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;)V

    :cond_1
    const/4 p1, 0x0

    .line 5017
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BaseBackup;->a:Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;

    return-void
.end method

.method public final d()V
    .locals 2

    .line 286
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->f:Lcom/google/android/gms/auth/api/signin/c;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/c;->d()Lcom/google/android/gms/tasks/h;

    .line 288
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hH:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 289
    iput-object v1, p0, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->d:Lcom/google/api/services/drive/Drive;

    :cond_0
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    const v0, 0x7f12035c

    .line 294
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activities.getString(R.string.google_drive)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final isLoggedIn()Z
    .locals 2

    .line 303
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hH:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const-string v1, "Prefs.googleDriveSessionId"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->isNotNull()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hH:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onFailure(Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->getLoginListener()Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;

    move-result-object v0

    const-string v1, "Unable to sign in."

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;->a(Ljava/lang/String;)V

    .line 80
    :cond_0
    const-class v0, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4017
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BaseBackup;->a:Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;

    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 1055
    invoke-direct {p0, p1}, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->a(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/api/services/drive/Drive;

    return-void
.end method
