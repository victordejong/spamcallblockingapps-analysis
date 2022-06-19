.class public final Lcom/callapp/contacts/workers/BackupWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/workers/BackupWorker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u001a\u0010\u000c\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002J$\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002J\u001a\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002J\u0012\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002J(\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u00122\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\n2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002J\u0010\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u001dH\u0002\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/callapp/contacts/workers/BackupWorker;",
        "Landroidx/work/Worker;",
        "appContext",
        "Landroid/content/Context;",
        "workerParams",
        "Landroidx/work/WorkerParameters;",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "doWork",
        "Landroidx/work/ListenableWorker$Result;",
        "getFileTypeToBackup",
        "",
        "Lcom/callapp/contacts/api/helper/backup/BackupFileType;",
        "onCompleteUpload",
        "via",
        "",
        "backupScheduleType",
        "onDisconnectException",
        "notifyErrors",
        "",
        "backupHelper",
        "Lcom/callapp/contacts/api/helper/backup/BaseBackup;",
        "onNotEnoughSpaceException",
        "onTaskFinished",
        "",
        "onUploadError",
        "failedFiles",
        "Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;",
        "parseBackupResults",
        "backUpResultData",
        "Lcom/callapp/contacts/api/helper/backup/BackUpResultData;",
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
.field public static final a:Lcom/callapp/contacts/workers/BackupWorker$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/workers/BackupWorker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/workers/BackupWorker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/workers/BackupWorker;->a:Lcom/callapp/contacts/workers/BackupWorker$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workerParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method private static a(ZLcom/callapp/contacts/api/helper/backup/BaseBackup;Ljava/lang/String;)Landroidx/work/ListenableWorker$a;
    .locals 1

    const-string v0, "BackupWorker"

    .line 118
    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 120
    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/backup/BaseBackup;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 125
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/NotificationManager;->a(Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 127
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/backup/BaseBackup;->d()V

    .line 128
    :cond_2
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->hK:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object p1, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->UN_KNOWN:Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 129
    invoke-static {p2}, Lcom/callapp/contacts/workers/BackupWorker;->a(Ljava/lang/String;)V

    .line 7374
    new-instance p0, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {p0}, Landroidx/work/ListenableWorker$a$a;-><init>()V

    const-string p1, "Result.failure()"

    .line 130
    invoke-static {p0, p1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final a(ZLjava/util/List;Ljava/lang/String;)Landroidx/work/ListenableWorker$a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/work/ListenableWorker$a;"
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " doUploadSync failed to upload files "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Ljava/lang/Iterable;

    .line 242
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p2, v2}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 243
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 244
    check-cast v2, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;

    .line 144
    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "BackupWorker"

    .line 144
    invoke-static {p2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 145
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hT:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 146
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_2

    .line 147
    invoke-static {p2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 149
    invoke-static {p2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Lcom/callapp/contacts/manager/NotificationManager;->a(ZZ)V

    .line 152
    :cond_1
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hT:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 153
    invoke-static {p3}, Lcom/callapp/contacts/workers/BackupWorker;->a(Ljava/lang/String;)V

    .line 8374
    new-instance p1, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {p1}, Landroidx/work/ListenableWorker$a$a;-><init>()V

    const-string p2, "Result.failure()"

    .line 154
    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_2
    if-nez v0, :cond_3

    goto :goto_1

    .line 156
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-nez p3, :cond_4

    .line 157
    invoke-static {p2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 159
    invoke-static {p2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object p1

    invoke-virtual {p1, v4, v4}, Lcom/callapp/contacts/manager/NotificationManager;->a(ZZ)V

    .line 163
    :cond_4
    :goto_1
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hT:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 9039
    invoke-virtual {p1, v3}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 9360
    new-instance p1, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {p1}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    const-string p2, "Result.retry()"

    .line 164
    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Auto"

    .line 168
    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 169
    invoke-static {}, Lcom/callapp/contacts/workers/BackupWorker$Companion;->a()V

    :cond_0
    return-void
.end method

.method private static a(Lcom/callapp/contacts/api/helper/backup/BackUpResultData;)Z
    .locals 10

    .line 196
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/backup/BackUpResultData;->getUploadedFiles()Ljava/util/List;

    move-result-object v0

    .line 197
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, " path: "

    const-string v4, "BackupWorker"

    if-eqz v1, :cond_3

    .line 198
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .line 250
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "complete upload "

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;

    .line 199
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;->getFileType()Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ["

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;->getMessage()Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/callapp/contacts/api/helper/backup/BackupMessageCode;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x5d

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v1, v6}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 253
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 254
    check-cast v9, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;

    .line 201
    invoke-virtual {v9}, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;->getFileType()Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 255
    :cond_1
    check-cast v5, Ljava/util/List;

    .line 256
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v1, v6}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v8, Ljava/util/Collection;

    .line 257
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 258
    check-cast v6, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;

    .line 202
    invoke-virtual {v6}, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 259
    :cond_2
    check-cast v8, Ljava/util/List;

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " files of "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 204
    invoke-static {v8, v5}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->a(Ljava/util/List;Ljava/util/List;)V

    .line 208
    :cond_3
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/backup/BackUpResultData;->getFailedFiles()Ljava/util/List;

    move-result-object p0

    .line 209
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_5

    .line 210
    check-cast p0, Ljava/lang/Iterable;

    .line 260
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed upload "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;->getFileType()Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const/4 p0, 0x0

    return p0

    :cond_5
    return v2
.end method

.method private final getFileTypeToBackup()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/api/helper/backup/BackupFileType;",
            ">;"
        }
    .end annotation

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 221
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->hP:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Prefs.backupRecording.get()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    sget-object v1, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->RECORDINGS:Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_0
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->hN:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Prefs.backupCallLog.get()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    sget-object v1, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->CALLLOGS:Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_1
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->hM:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Prefs.backupContacts.get()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 228
    sget-object v1, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->CONTACTS:Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_2
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->hO:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Prefs.backupVideoRingTones.get()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 231
    sget-object v1, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->VIDEO_RINGTONES:Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method


# virtual methods
.method public final doWork()Landroidx/work/ListenableWorker$a;
    .locals 16

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/workers/BackupWorker;->getInputData()Landroidx/work/d;

    move-result-object v0

    const-string v1, "BACKUP_PARAM_SCHEDULE_TYPE"

    invoke-virtual {v0, v1}, Landroidx/work/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/workers/BackupWorker;->getInputData()Landroidx/work/d;

    move-result-object v1

    .line 3088
    iget-object v1, v1, Landroidx/work/d;->b:Ljava/util/Map;

    const-string v2, "BACKUP_PARAM_SHOW_ERRORS_NOTIFICATIONS"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3089
    instance-of v2, v1, Ljava/lang/Boolean;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3090
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 81
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "drive:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/callapp/contacts/manager/preferences/Prefs;->hK:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v6}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    invoke-virtual {v6}, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " type:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "Backup"

    const-string v8, "BackupStarted"

    invoke-virtual {v2, v7, v8, v4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 83
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->hX:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    const-string v8, "now"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "BackupWorker doing Work for "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ! on "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {v4}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "BackupWorker"

    invoke-static {v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 86
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-direct/range {p0 .. p0}, Lcom/callapp/contacts/workers/BackupWorker;->getFileTypeToBackup()Ljava/util/List;

    move-result-object v9

    .line 88
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    .line 89
    invoke-static {v10}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->a(Lcom/callapp/contacts/api/helper/backup/BackupFileType;)Ljava/util/List;

    move-result-object v12

    .line 90
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "BackupWorker found  "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " for type "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " to backup"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 91
    move-object v13, v12

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    xor-int/2addr v11, v13

    if-eqz v11, :cond_1

    .line 92
    new-instance v11, Lcom/callapp/contacts/api/helper/backup/BackUpData;

    invoke-virtual {v10}, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->getFolderName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "fileType.folderName"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->shouldDeleteFolder()Z

    move-result v14

    invoke-direct {v11, v13, v12, v14, v10}, Lcom/callapp/contacts/api/helper/backup/BackUpData;-><init>(Ljava/lang/String;Ljava/util/List;ZLcom/callapp/contacts/api/helper/backup/BackupFileType;)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 95
    :cond_2
    sget-object v9, Lcom/callapp/contacts/manager/preferences/Prefs;->hK:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v9}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    invoke-virtual {v9}, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->name()Ljava/lang/String;

    move-result-object v9

    .line 96
    sget-object v10, Lcom/callapp/contacts/api/helper/backup/BaseBackup;->b:Lcom/callapp/contacts/api/helper/backup/BaseBackup$Companion;

    invoke-virtual {v10}, Lcom/callapp/contacts/api/helper/backup/BaseBackup$Companion;->getBackupHelper()Lcom/callapp/contacts/api/helper/backup/BaseBackup;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 98
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " trying to backup "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v13, v4

    check-cast v13, Ljava/lang/Iterable;

    .line 238
    new-instance v14, Ljava/util/ArrayList;

    const/16 v15, 0xa

    invoke-static {v13, v15}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v14, Ljava/util/Collection;

    .line 239
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 240
    check-cast v15, Lcom/callapp/contacts/api/helper/backup/BackUpData;

    .line 98
    invoke-virtual {v15}, Lcom/callapp/contacts/api/helper/backup/BackUpData;->getFileType()Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 241
    :cond_3
    check-cast v14, Ljava/util/List;

    .line 238
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " files"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 100
    :try_start_0
    check-cast v4, Ljava/util/List;

    invoke-virtual {v10, v4}, Lcom/callapp/contacts/api/helper/backup/BaseBackup;->a(Ljava/util/List;)Lcom/callapp/contacts/api/helper/backup/BackUpResultData;

    move-result-object v4

    .line 101
    invoke-static {v4}, Lcom/callapp/contacts/workers/BackupWorker;->a(Lcom/callapp/contacts/api/helper/backup/BackUpResultData;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 103
    invoke-virtual {v4}, Lcom/callapp/contacts/api/helper/backup/BackUpResultData;->getFailedFiles()Ljava/util/List;

    move-result-object v4
    :try_end_0
    .catch Lcom/callapp/contacts/api/helper/backup/DisconnectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/callapp/contacts/api/helper/backup/NotEnoughSpaceException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v12, p0

    :try_start_1
    invoke-direct {v12, v1, v4, v0}, Lcom/callapp/contacts/workers/BackupWorker;->a(ZLjava/util/List;Ljava/lang/String;)Landroidx/work/ListenableWorker$a;

    move-result-object v0
    :try_end_1
    .catch Lcom/callapp/contacts/api/helper/backup/DisconnectException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/callapp/contacts/api/helper/backup/NotEnoughSpaceException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    nop

    goto/16 :goto_4

    :cond_4
    move-object/from16 v12, p0

    if-nez v10, :cond_5

    goto/16 :goto_5

    .line 4174
    :cond_5
    invoke-static {v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    const-string v1, "Manual"

    .line 4175
    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4176
    invoke-static {v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 4177
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v1

    const v2, 0x7f12017f

    .line 5126
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f1200d7

    .line 5127
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 5129
    sget-object v10, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->BACKUP_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    invoke-virtual {v1, v10}, Lcom/callapp/contacts/manager/NotificationManager;->a(Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;)Landroidx/core/app/g$e;

    move-result-object v10

    .line 5130
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v13

    invoke-virtual {v13}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v13

    invoke-static {}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->getBackupSettingsIntent()Landroid/content/Intent;

    move-result-object v14

    const/high16 v15, 0x8000000

    invoke-static {v13, v3, v14, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 5132
    invoke-virtual {v10, v2}, Landroidx/core/app/g$e;->a(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    move-result-object v2

    .line 5133
    invoke-virtual {v2, v4}, Landroidx/core/app/g$e;->b(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    move-result-object v2

    const v4, 0x7f080351

    .line 5134
    invoke-virtual {v2, v4}, Landroidx/core/app/g$e;->a(I)Landroidx/core/app/g$e;

    move-result-object v2

    .line 5135
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v14, 0x7f0802de

    invoke-static {v4, v14}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/core/app/g$e;->a(Landroid/graphics/Bitmap;)Landroidx/core/app/g$e;

    move-result-object v2

    .line 5136
    invoke-virtual {v2, v11}, Landroidx/core/app/g$e;->a(Z)Landroidx/core/app/g$e;

    move-result-object v2

    .line 5975
    iput-object v13, v2, Landroidx/core/app/g$e;->f:Landroid/app/PendingIntent;

    .line 6876
    iput-boolean v11, v2, Landroidx/core/app/g$e;->Q:Z

    const/16 v2, 0x3c

    .line 5139
    invoke-virtual {v1, v2, v10}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILandroidx/core/app/g$e;)Z

    .line 4179
    :cond_6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 4180
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->hJ:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-static {v1, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 4181
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->hW:Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    if-eqz v1, :cond_7

    .line 4182
    invoke-static {v1}, Lkotlin/a/i;->m([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 4183
    invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4184
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->hW:Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;

    check-cast v1, Ljava/util/Collection;

    new-array v3, v3, [Ljava/lang/String;

    .line 4247
    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4184
    invoke-virtual {v4, v1}, Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;->set(Ljava/lang/Object;)V

    goto :goto_3

    .line 4186
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 4187
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4188
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->hW:Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;

    check-cast v1, Ljava/util/Collection;

    new-array v3, v3, [Ljava/lang/String;

    .line 4249
    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4188
    invoke-virtual {v4, v1}, Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;->set(Ljava/lang/Object;)V

    .line 4190
    :goto_3
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->hK:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    invoke-virtual {v3}, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BackupCompleted"

    invoke-virtual {v1, v7, v3, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4191
    invoke-static {v0}, Lcom/callapp/contacts/workers/BackupWorker;->a(Ljava/lang/String;)V

    .line 7334
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v1, "Result.success()"

    .line 4192
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :catch_1
    move-object/from16 v12, p0

    .line 3134
    :goto_4
    invoke-static {v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    if-eqz v1, :cond_8

    .line 3136
    invoke-static {v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 3137
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v1

    invoke-virtual {v1, v11, v3}, Lcom/callapp/contacts/manager/NotificationManager;->a(ZZ)V

    .line 3139
    :cond_8
    invoke-static {v0}, Lcom/callapp/contacts/workers/BackupWorker;->a(Ljava/lang/String;)V

    .line 3374
    new-instance v0, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$a;-><init>()V

    const-string v1, "Result.failure()"

    .line 3140
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :catch_2
    move-object/from16 v12, p0

    .line 106
    :catch_3
    invoke-static {v1, v10, v0}, Lcom/callapp/contacts/workers/BackupWorker;->a(ZLcom/callapp/contacts/api/helper/backup/BaseBackup;Ljava/lang/String;)Landroidx/work/ListenableWorker$a;

    move-result-object v0

    return-object v0

    :cond_9
    move-object/from16 v12, p0

    .line 111
    :goto_5
    invoke-static {v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 112
    invoke-static {v1, v2, v0}, Lcom/callapp/contacts/workers/BackupWorker;->a(ZLcom/callapp/contacts/api/helper/backup/BaseBackup;Ljava/lang/String;)Landroidx/work/ListenableWorker$a;

    move-result-object v0

    return-object v0
.end method
