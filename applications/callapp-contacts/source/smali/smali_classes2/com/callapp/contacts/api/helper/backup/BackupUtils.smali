.class public final Lcom/callapp/contacts/api/helper/backup/BackupUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0004H\u0007J\u0016\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00152\u0006\u0010\u0017\u001a\u00020\u0018H\u0007J\u0008\u0010\u0019\u001a\u00020\u001aH\u0007J\u0008\u0010\u001b\u001a\u00020\u0004H\u0007J\n\u0010\u001c\u001a\u0004\u0018\u00010\u0016H\u0003J\u000e\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015H\u0007J \u0010\u001e\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010 \u0012\u0006\u0012\u0004\u0018\u00010!0\u001f2\u0006\u0010\"\u001a\u00020#H\u0002J\u0008\u0010$\u001a\u00020%H\u0002J\u0008\u0010&\u001a\u00020%H\u0007J\u0008\u0010\'\u001a\u00020%H\u0007J\u0008\u0010(\u001a\u00020%H\u0007J\u0008\u0010)\u001a\u00020%H\u0007J\u0008\u0010*\u001a\u00020\u0011H\u0007J\u0012\u0010+\u001a\u00020\u00112\u0008\u0008\u0002\u0010,\u001a\u00020\u0004H\u0007J$\u0010-\u001a\u00020\u00112\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00152\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0015H\u0007J\u0010\u00100\u001a\u00020\u00112\u0006\u00101\u001a\u00020%H\u0007J\u0008\u00102\u001a\u00020\u0011H\u0007J\u001c\u00103\u001a\u00020\u00042\u0008\u00104\u001a\u0004\u0018\u0001052\u0008\u0008\u0002\u00106\u001a\u00020\u0004H\u0007J\u001a\u00103\u001a\u00020\u00042\u0006\u00107\u001a\u0002082\u0008\u0008\u0002\u00106\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u0010\u0012\u000c\u0012\n \u000e*\u0004\u0018\u00010\r0\r0\u000cX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000f\u00a8\u00069"
    }
    d2 = {
        "Lcom/callapp/contacts/api/helper/backup/BackupUtils;",
        "",
        "()V",
        "CSV_EXTENSION",
        "",
        "FOLDER_NAME",
        "MP4_EXTENSION",
        "TAG",
        "VCARD_EXTENSION",
        "VIDEO_RINGTONE_NAME",
        "ZIP_FILE_NAME",
        "backupFilesTypePref",
        "",
        "Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;",
        "kotlin.jvm.PlatformType",
        "[Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;",
        "deleteTempFolder",
        "",
        "formatToValidFileName",
        "oldFileName",
        "getBackupFilesData",
        "",
        "Lcom/callapp/contacts/api/helper/backup/BackUpFileData;",
        "type",
        "Lcom/callapp/contacts/api/helper/backup/BackupFileType;",
        "getBackupSettingsIntent",
        "Landroid/content/Intent;",
        "getCallLogCsv",
        "getCallsLogFileCSV",
        "getContactVCards",
        "getFileBuffer",
        "Lkotlin/Pair;",
        "Ljava/io/FileInputStream;",
        "",
        "uri",
        "Landroid/net/Uri;",
        "hasCompleteBackupOnce",
        "",
        "isAllowToRunBackup",
        "isAnyBackupFilesChosen",
        "isBackupAsScheduleIsValid",
        "isBackupViaChosen",
        "logoutAndStopAllBackups",
        "onBackupMenuClicked",
        "entryPoint",
        "onCompleteUpload",
        "listPath",
        "fileType",
        "onStartBackupClicked",
        "now",
        "runBackupWorkerIfNeeded",
        "toDateStr",
        "date",
        "Ljava/util/Date;",
        "format",
        "time",
        "",
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
.field public static final a:Lcom/callapp/contacts/api/helper/backup/BackupUtils;

.field private static final b:[Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Lcom/callapp/contacts/api/helper/backup/BackupUtils;

    invoke-direct {v0}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;-><init>()V

    sput-object v0, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->a:Lcom/callapp/contacts/api/helper/backup/BackupUtils;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    .line 45
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->hN:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->hP:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->hM:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->hO:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->b:[Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "format"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "sdf.format(time)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic a(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    const-string v0, "dd/MM/yyyy hh:mm:ss"

    .line 301
    invoke-static {p0, v0}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 303
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "sdf.format(date)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static final a(Lcom/callapp/contacts/api/helper/backup/BackupFileType;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/api/helper/backup/BackupFileType;",
            ")",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/api/helper/backup/BackUpFileData;",
            ">;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    sget-object v0, Lcom/callapp/contacts/api/helper/backup/BackupUtils$WhenMappings;->b:[I

    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    const/16 v1, 0xa

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    goto/16 :goto_2

    .line 190
    :cond_0
    sget-object p0, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager;->a:Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;

    invoke-virtual {p0}, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;->getAllUnUploadedVideoRingTones()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0, v1}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 372
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 373
    check-cast v1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    .line 190
    new-instance v2, Lcom/callapp/contacts/api/helper/backup/BackUpFileData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->getPersonalStoreItemUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "it.personalStoreItemUrl"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "personal_video_ringtone_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->getPersonalStoreItemUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "StringUtils.getLastSegme\u2026(it.personalStoreItemUrl)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    const-string v5, "-"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lkotlin/h/p;->a(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".mp4"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/callapp/contacts/api/helper/backup/BackUpFileData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 374
    :cond_1
    check-cast v0, Ljava/util/List;

    return-object v0

    .line 187
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object p0

    const-string v0, "CallRecorderManager.get()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/callapp/contacts/recorder/CallRecorderManager;->getAllRecords()Ljava/util/List;

    move-result-object p0

    const-string v0, "CallRecorderManager.get().allRecords"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0, v1}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 368
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 369
    check-cast v1, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    .line 187
    new-instance v2, Lcom/callapp/contacts/api/helper/backup/BackUpFileData;

    const-string v3, "it"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getFileName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "it.fileName"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getBackupFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/callapp/contacts/api/helper/backup/BackUpFileData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 370
    :cond_3
    check-cast v0, Ljava/util/List;

    return-object v0

    .line 183
    :cond_4
    invoke-static {}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->e()V

    .line 184
    invoke-static {}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->getContactVCards()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 175
    :cond_5
    invoke-static {}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->getCallsLogFileCSV()Lcom/callapp/contacts/api/helper/backup/BackUpFileData;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 176
    invoke-static {p0}, Lkotlin/a/n;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_7

    .line 4071
    :cond_6
    :goto_2
    sget-object p0, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p0, Ljava/util/List;

    :cond_7
    return-object p0
.end method

.method private static a(Landroid/net/Uri;)Lkotlin/n;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lkotlin/n<",
            "Ljava/io/FileInputStream;",
            "[B>;"
        }
    .end annotation

    const-string v0, "r"

    const-string v1, "CallAppApplication.get()"

    const/4 v2, 0x0

    .line 255
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p0, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 257
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 258
    :try_start_1
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v5

    long-to-int v3, v5

    if-ltz v3, :cond_1

    .line 260
    new-array v2, v3, [B

    :cond_0
    move-object p0, v2

    move-object v2, v4

    goto :goto_0

    .line 262
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 264
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 266
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result p0

    new-array v2, p0, [B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object p0, v2

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception p0

    move-object v4, v0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_1

    :cond_2
    move-object p0, v2

    .line 275
    :goto_0
    new-instance v0, Lkotlin/n;

    invoke-direct {v0, v2, p0}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :catch_2
    move-exception p0

    move-object v4, v2

    .line 272
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getFileBuffer "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "BackupWorker-BackupUtils"

    invoke-static {p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 273
    new-instance p0, Lkotlin/n;

    invoke-direct {p0, v4, v2}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static synthetic a()V
    .locals 1

    const-string v0, ""

    .line 48
    invoke-static {v0}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static final a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "entryPoint"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 50
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Backup"

    const-string v2, "ViewBackupScreen"

    invoke-virtual {v0, v1, v2, p0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->isAllowToRunBackup()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 54
    invoke-static {}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->isBackupAsScheduleIsValid()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 55
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p0

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Lcom/callapp/contacts/api/helper/backup/BackUpRunPopup;

    invoke-direct {v1}, Lcom/callapp/contacts/api/helper/backup/BackUpRunPopup;-><init>()V

    check-cast v1, Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void

    .line 57
    :cond_2
    new-instance p0, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;

    invoke-direct {p0, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void

    .line 61
    :cond_3
    new-instance p0, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/callapp/contacts/api/helper/backup/BackupPlansActivity;

    invoke-direct {p0, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method public static final a(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/callapp/contacts/api/helper/backup/BackupFileType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listPath"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    check-cast p1, Ljava/lang/Iterable;

    .line 363
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/api/helper/backup/BackupFileType;

    .line 137
    sget-object v1, Lcom/callapp/contacts/api/helper/backup/BackupUtils$WhenMappings;->a:[I

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/backup/BackupFileType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->e()V

    goto :goto_0

    .line 142
    :cond_1
    sget-object v0, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager;->a:Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;

    invoke-static {p0}, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;->b(Ljava/util/List;)V

    goto :goto_0

    .line 139
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    invoke-static {p0}, Lcom/callapp/contacts/recorder/CallRecorderManager;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static final a(Z)V
    .locals 2

    if-eqz p0, :cond_1

    .line 121
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p0

    const v0, 0x7f1200e2

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2111
    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->hV:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    .line 123
    sget-object p0, Lcom/callapp/contacts/workers/BackupWorker;->a:Lcom/callapp/contacts/workers/BackupWorker$Companion;

    invoke-static {}, Lcom/callapp/contacts/workers/BackupWorker$Companion;->a()V

    .line 125
    :cond_0
    sget-object p0, Lcom/callapp/contacts/workers/BackupWorker;->a:Lcom/callapp/contacts/workers/BackupWorker$Companion;

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/callapp/contacts/workers/BackupWorker$Companion;->a(Z)V

    return-void

    .line 127
    :cond_1
    sget-object p0, Lcom/callapp/contacts/workers/BackupWorker;->a:Lcom/callapp/contacts/workers/BackupWorker$Companion;

    invoke-static {}, Lcom/callapp/contacts/workers/BackupWorker$Companion;->a()V

    .line 128
    invoke-static {}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->d()Z

    move-result p0

    if-nez p0, :cond_2

    .line 129
    sget-object p0, Lcom/callapp/contacts/workers/BackupWorker;->a:Lcom/callapp/contacts/workers/BackupWorker$Companion;

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/callapp/contacts/workers/BackupWorker$Companion;->a(Z)V

    :cond_2
    return-void
.end method

.method public static final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "oldFileName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 351
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 352
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v3, "_"

    .line 354
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 357
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "sb.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final b()V
    .locals 2

    .line 78
    invoke-static {}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->isAllowToRunBackup()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->isBackupAsScheduleIsValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1184
    invoke-static {v0}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object v0

    const-string v1, "TAG_PERIODIC_DELAY_BACKUP"

    .line 79
    invoke-virtual {v0, v1}, Landroidx/work/u;->b(Ljava/lang/String;)Lcom/google/common/util/concurrent/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/util/concurrent/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 80
    sget-object v1, Lcom/callapp/contacts/workers/CallAppDailyWorker;->a:Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;

    invoke-static {v0}, Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 81
    invoke-static {v0}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->a(Z)V

    :cond_0
    return-void
.end method

.method public static final c()V
    .locals 2

    .line 103
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hK:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->UN_KNOWN:Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 104
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hW:Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;->set(Ljava/lang/Object;)V

    .line 105
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hJ:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 106
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hS:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 107
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hV:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 108
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hR:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 109
    sget-object v0, Lcom/callapp/contacts/workers/BackupWorker;->a:Lcom/callapp/contacts/workers/BackupWorker$Companion;

    invoke-static {}, Lcom/callapp/contacts/workers/BackupWorker$Companion;->b()V

    .line 110
    new-instance v0, Lcom/callapp/contacts/api/helper/backup/BackupUtils$logoutAndStopAllBackups$1;

    invoke-direct {v0}, Lcom/callapp/contacts/api/helper/backup/BackupUtils$logoutAndStopAllBackups$1;-><init>()V

    .line 115
    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/backup/BackupUtils$logoutAndStopAllBackups$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method private static d()Z
    .locals 6

    .line 156
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hW:Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 365
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 157
    sget-object v5, Lcom/callapp/contacts/manager/preferences/Prefs;->hK:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v5}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    invoke-virtual {v5}, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static e()V
    .locals 3

    .line 164
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/callapp/contacts/util/IoUtils;->getCacheFolder()Ljava/io/File;

    move-result-object v1

    const-string v2, "contacts"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-static {v0}, Lkotlin/io/f;->a(Ljava/io/File;)Z

    :cond_0
    return-void
.end method

.method public static final getBackupSettingsIntent()Landroid/content/Intent;
    .locals 3

    .line 96
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/callapp/contacts/activity/settings/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "backup_settings"

    const/4 v2, 0x1

    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public static final getCallLogCsv()Ljava/lang/String;
    .locals 11

    .line 311
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 313
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const-string v2, "CallAppApplication.get()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "date DESC  LIMIT 500"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v2, "number"

    .line 315
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "date"

    .line 316
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "duration"

    .line 317
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "Name,Phone Number,Date,Duration"

    .line 318
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 320
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 321
    invoke-static {v5}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Ljava/lang/String;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v6

    const-string v7, "contactData"

    .line 323
    invoke-static {v6, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v7, 0x1

    :goto_2
    if-nez v7, :cond_2

    .line 324
    invoke-virtual {v6}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_2
    move-object v6, v5

    .line 327
    :goto_3
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    const-string v9, "callDate"

    .line 329
    invoke-static {v7, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lkotlin/h/p;->f(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_3

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    .line 330
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v7, v8}, Ljava/util/Date;-><init>(J)V

    const-string v7, "dd/MM/yyyy hh:mm"

    invoke-static {v9, v7}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 332
    :cond_3
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "callDuration"

    .line 333
    invoke-static {v7, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lkotlin/h/p;->f(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 335
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v7

    .line 337
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2c

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 339
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Backup fail to create call log content "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupWorker-BackupUtils"

    invoke-static {v2, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_6
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sb.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final getCallsLogFileCSV()Lcom/callapp/contacts/api/helper/backup/BackUpFileData;
    .locals 6

    const-string v0, "callLog"

    const-string v1, ".csv"

    .line 280
    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    check-cast v3, Ljava/io/Writer;

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 283
    invoke-static {}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->getCallLogCsv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 285
    new-instance v2, Lcom/callapp/contacts/api/helper/backup/BackUpFileData;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "it.path"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "call_log_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    const-string v5, "dd_MM_yyyy"

    invoke-static {v4, v5}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/callapp/contacts/api/helper/backup/BackUpFileData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final getContactVCards()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/api/helper/backup/BackUpFileData;",
            ">;"
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 200
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    const-string v3, "CallAppApplication.get()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/CallAppApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const-string v3, "contacts"

    const-string v4, "BackupWorker-BackupUtils"

    if-eqz v2, :cond_5

    .line 203
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_4

    .line 204
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const-wide/16 v5, 0x0

    :cond_0
    const-string v7, "contact_id"

    .line 207
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-eqz v9, :cond_3

    const-string v5, "lookup"

    .line 212
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "theCursor.getString(theC\u2026act.Contacts.LOOKUP_KEY))"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-static {v6, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "Uri.withAppendedPath(Con\u2026ENT_VCARD_URI, lookupKey)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    invoke-static {v5}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->a(Landroid/net/Uri;)Lkotlin/n;

    move-result-object v5

    .line 5027
    iget-object v6, v5, Lkotlin/n;->a:Ljava/lang/Object;

    .line 215
    check-cast v6, Ljava/io/FileInputStream;

    .line 5028
    iget-object v5, v5, Lkotlin/n;->b:Ljava/lang/Object;

    .line 216
    check-cast v5, [B

    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    .line 217
    invoke-virtual {v6, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_1

    const-string v9, "display_name"

    .line 218
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "name"

    .line 219
    invoke-static {v9, v10}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 220
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".vcf"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 221
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 222
    new-instance v10, Ljava/io/BufferedWriter;

    new-instance v11, Ljava/io/FileWriter;

    invoke-direct {v11, v9}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    check-cast v11, Ljava/io/Writer;

    invoke-direct {v10, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 223
    new-instance v11, Ljava/lang/String;

    sget-object v12, Lkotlin/h/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v11, v5, v12}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v10, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->close()V

    const-string v5, "contactFile"

    .line 226
    invoke-static {v9, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v6, :cond_2

    .line 229
    check-cast v6, Ljava/io/Closeable;

    invoke-static {v6}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_2
    move-wide v5, v7

    .line 230
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    .line 235
    :cond_4
    :goto_0
    invoke-static {v2}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 233
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error while trying create getContactVCards "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 235
    :goto_1
    invoke-static {v2}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    throw v0

    .line 238
    :cond_5
    :goto_2
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "contacts.zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 241
    :try_start_2
    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/a/n;->l(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    const-string/jumbo v3, "zipFile"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 242
    new-instance v1, Lcom/callapp/contacts/api/helper/backup/BackUpFileData;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "zipFile.path"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/callapp/contacts/api/helper/backup/BackUpFileData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while trying zip "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    :cond_6
    :goto_3
    return-object v0
.end method

.method public static final isAllowToRunBackup()Z
    .locals 2

    .line 361
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Prefs.isPremium.get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hQ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Prefs.hasBackupPlan.get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static final isAnyBackupFilesChosen()Z
    .locals 6

    .line 88
    sget-object v0, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->b:[Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 89
    invoke-virtual {v4}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "pref.get()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static final isBackupAsScheduleIsValid()Z
    .locals 2

    .line 68
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hS:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Prefs.completeBackupSettings.get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->isBackupViaChosen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->isAnyBackupFilesChosen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final isBackupViaChosen()Z
    .locals 2

    .line 73
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hK:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    sget-object v1, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->UN_KNOWN:Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
