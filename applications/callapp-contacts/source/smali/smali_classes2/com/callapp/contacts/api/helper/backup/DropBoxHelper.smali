.class public final Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;
.super Lcom/callapp/contacts/api/helper/backup/BaseBackup;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/api/helper/common/LoginListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 )2\u00020\u00012\u00020\u0002:\u0001)B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\tH\u0016J\u0016\u0010\r\u001a\u00020\u000e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0008\u0010\u0016\u001a\u00020\u0007H\u0016J\u0008\u0010\u0017\u001a\u00020\u0018H\u0002J\u0008\u0010\u0019\u001a\u00020\u001aH\u0002J\u0008\u0010\u001b\u001a\u00020\u001aH\u0016J\u0012\u0010\u001c\u001a\u00020\t2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0007H\u0016J\u0008\u0010\u001e\u001a\u00020\tH\u0016J\u0008\u0010\u001f\u001a\u00020\tH\u0016J\u0008\u0010 \u001a\u00020\tH\u0016J\u0010\u0010!\u001a\u00020\t2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0007J\u0010\u0010#\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J$\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00102\u0006\u0010%\u001a\u00020\u00112\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020(0\'H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;",
        "Lcom/callapp/contacts/api/helper/backup/BaseBackup;",
        "Lcom/callapp/contacts/api/helper/common/LoginListener;",
        "()V",
        "sSecurityProvider",
        "Lcom/dropbox/core/android/AuthActivity$SecurityProvider;",
        "createStateNonce",
        "",
        "doLogin",
        "",
        "activity",
        "Landroid/app/Activity;",
        "doLogout",
        "doUploadSync",
        "Lcom/callapp/contacts/api/helper/backup/BackUpResultData;",
        "backupDataList",
        "",
        "Lcom/callapp/contacts/api/helper/backup/BackUpData;",
        "getBackupMessageCodeFromResponse",
        "Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;",
        "uploadErrorException",
        "Lcom/dropbox/core/v2/files/UploadErrorException;",
        "getName",
        "getSecureRandom",
        "Ljava/security/SecureRandom;",
        "hasToken",
        "",
        "isLoggedIn",
        "onAuthCallback",
        "verifier",
        "onCancel",
        "onComplete",
        "onError",
        "onLoginFinished",
        "token",
        "startWebAuth",
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
.field public static final c:Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$Companion;

.field private static e:Ljava/lang/String;


# instance fields
.field private final d:Lcom/dropbox/core/android/AuthActivity$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->c:Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$Companion;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "db-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f1202d0

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/backup/BaseBackup;-><init>()V

    .line 35
    sget-object v0, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$sSecurityProvider$1;->a:Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$sSecurityProvider$1;

    check-cast v0, Lcom/dropbox/core/android/AuthActivity$a;

    iput-object v0, p0, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->d:Lcom/dropbox/core/android/AuthActivity$a;

    return-void
.end method

.method private static a(Lcom/dropbox/core/v2/files/UploadErrorException;)Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;
    .locals 3

    .line 117
    sget-object v0, Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;->UPLOAD_ERROR:Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;

    .line 119
    :try_start_0
    iget-object p0, p0, Lcom/dropbox/core/v2/files/UploadErrorException;->a:Lcom/dropbox/core/v2/files/bc;

    invoke-virtual {p0}, Lcom/dropbox/core/v2/files/bc;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$getBackupMessageCodeFromResponse$jsonErrorResponse$1;

    invoke-direct {v1}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$getBackupMessageCodeFromResponse$jsonErrorResponse$1;-><init>()V

    check-cast v1, Lcom/fasterxml/jackson/core/type/TypeReference;

    invoke-static {p0, v1}, Lcom/callapp/contacts/util/serializer/string/Parser;->a(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/api/helper/backup/DropBoxErrorResponse;

    if-eqz p0, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/backup/DropBoxErrorResponse;->getReason()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 122
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x665ae5ca

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "insufficient_space"

    .line 123
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 124
    sget-object p0, Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;->INSUFFICIENT_SPACE:Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/exc/MismatchedInputException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 130
    const-class v1, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "unable to parse  error message "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static a(Lcom/callapp/contacts/api/helper/backup/BackUpData;Ljava/util/ArrayList;)Ljava/util/List;
    .locals 11
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

    const-class v0, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;

    const-string v1, "backupData"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "finishUploadList"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 187
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 189
    :try_start_0
    sget-object v3, Lcom/callapp/contacts/api/helper/backup/DropBoxClientFactory;->a:Lcom/callapp/contacts/api/helper/backup/DropBoxClientFactory;

    invoke-virtual {v3}, Lcom/callapp/contacts/api/helper/backup/DropBoxClientFactory;->getClient()Lcom/dropbox/core/v2/a;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 8128
    iget-object v3, v3, Lcom/dropbox/core/v2/b;->c:Lcom/dropbox/core/v2/files/d;

    if-eqz v3, :cond_0

    .line 189
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/backup/BackUpData;->getFolderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 8264
    new-instance v6, Lcom/dropbox/core/v2/files/aa;

    invoke-direct {v6, v5}, Lcom/dropbox/core/v2/files/aa;-><init>(Ljava/lang/String;)V

    .line 8265
    invoke-virtual {v3, v6}, Lcom/dropbox/core/v2/files/d;->a(Lcom/dropbox/core/v2/files/aa;)Lcom/dropbox/core/v2/files/ae;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    if-eqz v3, :cond_5

    .line 191
    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/ae;->a()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 192
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/backup/BackUpData;->getFileData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/callapp/contacts/api/helper/backup/BackUpFileData;

    .line 193
    move-object v7, v3

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/dropbox/core/v2/files/al;

    const-string v10, "it"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/dropbox/core/v2/files/al;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lcom/callapp/contacts/api/helper/backup/BackUpFileData;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_2

    :cond_2
    move-object v8, v4

    :goto_2
    check-cast v8, Lcom/dropbox/core/v2/files/al;

    if-eqz v8, :cond_3

    .line 195
    new-instance v6, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;

    invoke-virtual {v8}, Lcom/dropbox/core/v2/files/al;->b()Ljava/lang/String;

    move-result-object v7

    const-string v9, "it.pathDisplay"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;->EXIST:Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;

    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/backup/BackUpData;->getFileType()Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    move-result-object v10

    invoke-direct {v6, v7, v9, v10}, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;-><init>(Ljava/lang/String;Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;Lcom/callapp/contacts/api/helper/backup/BackupFileType;)V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {v8}, Lcom/dropbox/core/v2/files/al;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 198
    :cond_3
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 201
    :cond_4
    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/api/helper/backup/BackUpData;->setFileData(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/dropbox/core/v2/files/GetMetadataErrorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/dropbox/core/v2/files/ListFolderErrorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 207
    invoke-virtual {p0}, Lcom/dropbox/core/v2/files/ListFolderErrorException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception p0

    .line 205
    invoke-virtual {p0}, Lcom/dropbox/core/v2/files/GetMetadataErrorException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 209
    :cond_5
    :goto_3
    check-cast v2, Ljava/util/List;

    return-object v2
.end method

.method private final b(Landroid/app/Activity;)V
    .locals 6

    .line 219
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 220
    new-instance v1, Ljava/util/Locale;

    const-string v2, "locale"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "k"

    aput-object v3, v0, v2

    const v2, 0x7f1202d0

    .line 226
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    const-string v3, "n"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "0"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "api"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "1"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "state"

    aput-object v3, v0, v2

    .line 229
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->g()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v0, v3

    .line 232
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/dropbox/core/e;->a:Lcom/dropbox/core/e;

    const-string v3, "DbxHost.DEFAULT"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9077
    iget-object v2, v2, Lcom/dropbox/core/e;->d:Ljava/lang/String;

    const-string v3, "1/connect"

    .line 232
    invoke-static {v1, v2, v3, v0}, Lcom/dropbox/core/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Landroid/content/Context;

    new-instance v3, Lcom/callapp/contacts/util/webview/AuthWebViewDialog;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$startWebAuth$1;

    invoke-direct {v4, p0}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$startWebAuth$1;-><init>(Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;)V

    check-cast v4, Landroid/content/DialogInterface$OnCancelListener;

    .line 238
    move-object v5, p0

    check-cast v5, Lcom/callapp/contacts/api/helper/common/LoginListener;

    .line 235
    invoke-direct {v3, p1, v0, v4, v5}, Lcom/callapp/contacts/util/webview/AuthWebViewDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;Lcom/callapp/contacts/api/helper/common/LoginListener;)V

    check-cast v3, Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method public static final synthetic e()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->e:Ljava/lang/String;

    return-object v0
.end method

.method private static f()Z
    .locals 2

    .line 213
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hG:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const-string v1, "Prefs.dropboxAccessToken"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->isNotNull()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hG:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

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

.method private g()Ljava/lang/String;
    .locals 8

    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 245
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oauth2:"

    .line 247
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    .line 249
    sget-object v5, Lkotlin/jvm/internal/ag;->a:Lkotlin/jvm/internal/ag;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aget-byte v7, v1, v4

    and-int/lit8 v7, v7, -0x1

    int-to-byte v7, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%02x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "java.lang.String.format(format, *args)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 251
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sb.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final get()Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;
    .locals 1

    sget-object v0, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->c:Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$Companion;->get()Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;

    move-result-object v0

    return-object v0
.end method

.method private final getSecureRandom()Ljava/security/SecureRandom;
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->d:Lcom/dropbox/core/android/AuthActivity$a;

    invoke-interface {v0}, Lcom/dropbox/core/android/AuthActivity$a;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    const-string v1, "sSecurityProvider.secureRandom"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
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

    const-string v1, " "

    const-class v2, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;

    const-string v0, "backupDataList"

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 52
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-static {}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->f()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 55
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/callapp/contacts/api/helper/backup/BackUpData;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "Starting upload: "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/callapp/contacts/api/helper/backup/BackUpData;->getFolderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v6}, Lcom/callapp/contacts/api/helper/backup/BackUpData;->getDeleteBeforeUpload()Z

    move-result v0
    :try_end_0
    .catch Lcom/dropbox/core/InvalidAccessTokenException; {:try_start_0 .. :try_end_0} :catch_3

    const-string v7, "/"

    if-eqz v0, :cond_2

    .line 59
    :try_start_1
    sget-object v0, Lcom/callapp/contacts/api/helper/backup/DropBoxClientFactory;->a:Lcom/callapp/contacts/api/helper/backup/DropBoxClientFactory;

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/backup/DropBoxClientFactory;->getClient()Lcom/dropbox/core/v2/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4128
    iget-object v0, v0, Lcom/dropbox/core/v2/b;->c:Lcom/dropbox/core/v2/files/d;

    if-eqz v0, :cond_1

    .line 59
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/callapp/contacts/api/helper/backup/BackUpData;->getFolderName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 5038
    new-instance v9, Lcom/dropbox/core/v2/files/e;

    invoke-direct {v9, v8}, Lcom/dropbox/core/v2/files/e;-><init>(Ljava/lang/String;)V

    .line 5039
    invoke-virtual {v0, v9}, Lcom/dropbox/core/v2/files/d;->a(Lcom/dropbox/core/v2/files/e;)Lcom/dropbox/core/v2/files/g;

    :cond_1
    const-string v0, "Folder deleted: "

    .line 60
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/callapp/contacts/api/helper/backup/BackUpData;->getFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/dropbox/core/v2/files/DeleteErrorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/dropbox/core/InvalidAccessTokenException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v8, "Delete error: "

    .line 62
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/files/DeleteErrorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_2
    invoke-static {v6, v4}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->a(Lcom/callapp/contacts/api/helper/backup/BackUpData;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    const-string v8, "Skipping: "

    .line 66
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 68
    :goto_0
    invoke-virtual {v6}, Lcom/callapp/contacts/api/helper/backup/BackUpData;->getFileData()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/a/n;->l(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/api/helper/backup/BackUpFileData;

    .line 69
    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/backup/BackUpFileData;->getFilePath()Ljava/lang/String;

    move-result-object v9

    .line 70
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11
    :try_end_2
    .catch Lcom/dropbox/core/InvalidAccessTokenException; {:try_start_2 .. :try_end_2} :catch_3

    const-string v12, "Upload error: "

    if-eqz v11, :cond_6

    .line 72
    :try_start_3
    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/backup/BackUpFileData;->getFileName()Ljava/lang/String;

    move-result-object v11
    :try_end_3
    .catch Lcom/dropbox/core/InvalidAccessTokenException; {:try_start_3 .. :try_end_3} :catch_3

    .line 74
    :try_start_4
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v10, v0

    check-cast v10, Ljava/io/Closeable;
    :try_end_4
    .catch Lcom/dropbox/core/v2/files/UploadErrorException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/dropbox/core/InvalidAccessTokenException; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    move-object v0, v10

    check-cast v0, Ljava/io/FileInputStream;

    .line 75
    sget-object v13, Lcom/callapp/contacts/api/helper/backup/DropBoxClientFactory;->a:Lcom/callapp/contacts/api/helper/backup/DropBoxClientFactory;

    invoke-virtual {v13}, Lcom/callapp/contacts/api/helper/backup/DropBoxClientFactory;->getClient()Lcom/dropbox/core/v2/a;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 5128
    iget-object v13, v13, Lcom/dropbox/core/v2/b;->c:Lcom/dropbox/core/v2/files/d;

    if-eqz v13, :cond_3

    .line 75
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/callapp/contacts/api/helper/backup/BackUpData;->getFolderName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0x2f

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 5854
    invoke-static {v14}, Lcom/dropbox/core/v2/files/b;->a(Ljava/lang/String;)Lcom/dropbox/core/v2/files/b$a;

    move-result-object v14

    .line 5855
    new-instance v15, Lcom/dropbox/core/v2/files/bb;

    invoke-direct {v15, v13, v14}, Lcom/dropbox/core/v2/files/bb;-><init>(Lcom/dropbox/core/v2/files/d;Lcom/dropbox/core/v2/files/b$a;)V

    .line 76
    sget-object v13, Lcom/dropbox/core/v2/files/bm;->b:Lcom/dropbox/core/v2/files/bm;

    .line 6060
    iget-object v14, v15, Lcom/dropbox/core/v2/files/bb;->a:Lcom/dropbox/core/v2/files/b$a;

    invoke-virtual {v14, v13}, Lcom/dropbox/core/v2/files/b$a;->a(Lcom/dropbox/core/v2/files/bm;)Lcom/dropbox/core/v2/files/b$a;

    .line 77
    check-cast v0, Ljava/io/InputStream;

    .line 6092
    invoke-virtual {v15}, Lcom/dropbox/core/v2/d;->a()Lcom/dropbox/core/l;

    move-result-object v13

    .line 6096
    invoke-virtual {v13, v0}, Lcom/dropbox/core/l;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    .line 77
    check-cast v0, Lcom/dropbox/core/v2/files/q;

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    const-string v13, "Upload complete: "

    .line 80
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/files/q;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 81
    new-instance v0, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;

    sget-object v13, Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;->SUCCESSFUL:Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;

    invoke-virtual {v6}, Lcom/callapp/contacts/api/helper/backup/BackUpData;->getFileType()Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    move-result-object v14

    invoke-direct {v0, v9, v13, v14}, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;-><init>(Ljava/lang/String;Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;Lcom/callapp/contacts/api/helper/backup/BackupFileType;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :goto_3
    const/4 v0, 0x0

    goto :goto_4

    .line 83
    :cond_4
    new-instance v0, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;

    sget-object v13, Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;->FILE_ERROR:Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;

    invoke-virtual {v6}, Lcom/callapp/contacts/api/helper/backup/BackUpData;->getFileType()Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    move-result-object v14

    invoke-direct {v0, v9, v13, v14}, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;-><init>(Ljava/lang/String;Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;Lcom/callapp/contacts/api/helper/backup/BackupFileType;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "Upload failed: "

    .line 84
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " fileMetadata is empty"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 74
    :goto_4
    :try_start_6
    invoke-static {v10, v0}, Lkotlin/io/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Lcom/dropbox/core/v2/files/UploadErrorException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/dropbox/core/InvalidAccessTokenException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v13, v0

    :try_start_7
    throw v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    move-object v14, v0

    :try_start_8
    invoke-static {v10, v13}, Lkotlin/io/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v14
    :try_end_8
    .catch Lcom/dropbox/core/v2/files/UploadErrorException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/dropbox/core/InvalidAccessTokenException; {:try_start_8 .. :try_end_8} :catch_3

    :catch_1
    move-exception v0

    .line 96
    :try_start_9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 97
    new-instance v0, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;

    sget-object v10, Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;->UNKNOWN_ERROR:Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;

    invoke-virtual {v6}, Lcom/callapp/contacts/api/helper/backup/BackUpData;->getFileType()Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    move-result-object v11

    invoke-direct {v0, v9, v10, v11}, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;-><init>(Ljava/lang/String;Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;Lcom/callapp/contacts/api/helper/backup/BackupFileType;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :catch_2
    move-exception v0

    .line 88
    invoke-static {v0}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->a(Lcom/dropbox/core/v2/files/UploadErrorException;)Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;

    move-result-object v10

    .line 89
    sget-object v13, Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;->INSUFFICIENT_SPACE:Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;

    if-eq v10, v13, :cond_5

    .line 92
    new-instance v13, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;

    invoke-virtual {v6}, Lcom/callapp/contacts/api/helper/backup/BackUpData;->getFileType()Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    move-result-object v14

    invoke-direct {v13, v9, v10, v14}, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;-><init>(Ljava/lang/String;Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;Lcom/callapp/contacts/api/helper/backup/BackupFileType;)V

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/files/UploadErrorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 90
    :cond_5
    new-instance v0, Lcom/callapp/contacts/api/helper/backup/NotEnoughSpaceException;

    const-string v1, "dropbox not enough space"

    invoke-direct {v0, v1}, Lcom/callapp/contacts/api/helper/backup/NotEnoughSpaceException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 100
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "file not exist"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_9
    .catch Lcom/dropbox/core/InvalidAccessTokenException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_1

    .line 112
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "finished uploads count: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    check-cast v1, Ljava/lang/Iterable;

    .line 272
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 273
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;

    .line 112
    invoke-virtual {v10}, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;->getMessage()Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;

    move-result-object v10

    sget-object v11, Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;->SUCCESSFUL:Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;

    if-ne v10, v11, :cond_9

    goto :goto_6

    :cond_9
    const/4 v8, 0x0

    :goto_6
    if-eqz v8, :cond_8

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 274
    :cond_a
    check-cast v3, Ljava/util/List;

    .line 272
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " error count: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " skipped count: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 273
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;

    .line 112
    invoke-virtual {v7}, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;->getMessage()Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;

    move-result-object v7

    sget-object v10, Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;->EXIST:Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;

    if-ne v7, v10, :cond_c

    const/4 v7, 0x1

    goto :goto_8

    :cond_c
    const/4 v7, 0x0

    :goto_8
    if-eqz v7, :cond_b

    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 274
    :cond_d
    check-cast v3, Ljava/util/List;

    .line 272
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 113
    new-instance v0, Lcom/callapp/contacts/api/helper/backup/BackUpResultData;

    check-cast v4, Ljava/util/List;

    check-cast v5, Ljava/util/List;

    invoke-direct {v0, v4, v5}, Lcom/callapp/contacts/api/helper/backup/BackUpResultData;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0

    .line 105
    :catch_3
    new-instance v0, Lcom/callapp/contacts/api/helper/backup/DisconnectException;

    const-string v1, "Dropbox invalid access token"

    invoke-direct {v0, v1}, Lcom/callapp/contacts/api/helper/backup/DisconnectException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 109
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "token error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "token is null or empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 110
    new-instance v0, Lcom/callapp/contacts/api/helper/backup/DisconnectException;

    const-string v1, "Dropbox token error - token is null or empty"

    invoke-direct {v0, v1}, Lcom/callapp/contacts/api/helper/backup/DisconnectException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "com.dropbox.android"

    const/4 v2, 0x1

    .line 140
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/callapp/contacts/api/helper/backup/DropBoxLoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 145
    :catch_0
    invoke-direct {p0, p1}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->b(Landroid/app/Activity;)V

    :cond_0
    return-void

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->getLoginListener()Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hG:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    invoke-interface {p1}, Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;->a()V

    :cond_2
    const/4 p1, 0x0

    .line 7017
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BaseBackup;->a:Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 155
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->getLoginListener()Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;->a()V

    .line 157
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hG:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->getLoginListener()Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "Token null or empty"

    invoke-interface {p1, v0}, Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 8017
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BaseBackup;->a:Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 269
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 4

    .line 165
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    :try_start_0
    new-instance v0, Lcom/dropbox/core/v2/a;

    sget-object v1, Lcom/callapp/contacts/api/helper/backup/DropBoxConfigFactory;->a:Lcom/callapp/contacts/api/helper/backup/DropBoxConfigFactory;

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/backup/DropBoxConfigFactory;->getRequestConfig()Lcom/dropbox/core/h;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->hG:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/a;-><init>(Lcom/dropbox/core/h;Ljava/lang/String;)V

    .line 8071
    iget-object v0, v0, Lcom/dropbox/core/v2/b;->b:Lcom/dropbox/core/v2/auth/c;

    .line 168
    invoke-virtual {v0}, Lcom/dropbox/core/v2/auth/c;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 170
    const-class v1, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "log out exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 172
    :goto_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hG:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    const v0, 0x7f1202cf

    .line 182
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activities.getString(R.string.dropbox)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final isLoggedIn()Z
    .locals 1

    .line 178
    invoke-static {}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->f()Z

    move-result v0

    return v0
.end method
