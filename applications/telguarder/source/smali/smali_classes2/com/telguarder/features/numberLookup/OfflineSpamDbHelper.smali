.class public Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;
.super Ljava/lang/Object;
.source "OfflineSpamDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper$InitialModule;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;


# instance fields
.field public dbReady:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;->dbReady:Z

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;->copyBundledRealmFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private copyBundledRealmFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 139
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 140
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p3, 0x400

    new-array p3, p3, [B

    .line 143
    :goto_0
    invoke-virtual {p2, p3}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    .line 144
    invoke-virtual {p1, p3, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 147
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;
    .locals 2

    const-class v0, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;->mInstance:Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;

    invoke-direct {v1}, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;-><init>()V

    sput-object v1, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;->mInstance:Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;

    .line 39
    :cond_0
    sget-object v1, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;->mInstance:Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getRealm(Landroid/content/Context;)Lio/realm/Realm;
    .locals 6

    const-string v0, "d"

    const/16 v1, 0x40

    new-array v1, v1, [B

    .line 72
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    .line 74
    :try_start_0
    new-instance v3, Lio/realm/RealmConfiguration$Builder;

    invoke-direct {v3}, Lio/realm/RealmConfiguration$Builder;-><init>()V

    invoke-virtual {v3, v0}, Lio/realm/RealmConfiguration$Builder;->name(Ljava/lang/String;)Lio/realm/RealmConfiguration$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lio/realm/RealmConfiguration$Builder;->encryptionKey([B)Lio/realm/RealmConfiguration$Builder;

    move-result-object v3

    new-instance v4, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper$InitialModule;

    invoke-direct {v4, p0}, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper$InitialModule;-><init>(Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;)V

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lio/realm/RealmConfiguration$Builder;->modules(Ljava/lang/Object;[Ljava/lang/Object;)Lio/realm/RealmConfiguration$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmConfiguration$Builder;->build()Lio/realm/RealmConfiguration;

    move-result-object v3

    invoke-static {v3}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    :try_start_1
    invoke-static {p1}, Lio/realm/Realm;->init(Landroid/content/Context;)V

    .line 78
    new-instance p1, Lio/realm/RealmConfiguration$Builder;

    invoke-direct {p1}, Lio/realm/RealmConfiguration$Builder;-><init>()V

    invoke-virtual {p1, v0}, Lio/realm/RealmConfiguration$Builder;->name(Ljava/lang/String;)Lio/realm/RealmConfiguration$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lio/realm/RealmConfiguration$Builder;->encryptionKey([B)Lio/realm/RealmConfiguration$Builder;

    move-result-object p1

    new-instance v0, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper$InitialModule;

    invoke-direct {v0, p0}, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper$InitialModule;-><init>(Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lio/realm/RealmConfiguration$Builder;->modules(Ljava/lang/Object;[Ljava/lang/Object;)Lio/realm/RealmConfiguration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmConfiguration$Builder;->build()Lio/realm/RealmConfiguration;

    move-result-object p1

    invoke-static {p1}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const/4 p1, 0x0

    :goto_0
    return-object p1

    nop

    :array_0
    .array-data 1
        -0x4ft
        -0x1t
        0x3ct
        -0x72t
        -0x40t
        -0x2t
        -0x1at
        0x70t
        -0x5at
        -0x3dt
        -0x48t
        0x69t
        0x2et
        -0x22t
        -0x18t
        0x6ct
        -0x6ct
        -0x27t
        0x6ft
        0x34t
        0x67t
        0x46t
        0x42t
        0x5at
        -0x7ct
        -0x24t
        0x17t
        0x69t
        0x26t
        0x7at
        0x4t
        -0x2bt
        0x63t
        0x69t
        0x5ct
        -0x48t
        0x7et
        0x3ft
        -0x2ft
        0x58t
        0x0t
        -0x6at
        0x60t
        0x58t
        -0x2et
        0x66t
        -0x2ft
        0x4bt
        0x3bt
        0x7et
        0x29t
        0x41t
        -0x37t
        -0x4bt
        -0x22t
        0x6at
        -0x7ft
        -0x41t
        -0x6ct
        0x53t
        0x2ct
        0x25t
        0x44t
        0x29t
    .end array-data
.end method


# virtual methods
.method public deleteSpam(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "\\D+"

    const-string v1, ""

    .line 117
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 118
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;->dbReady:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 121
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;->getRealm(Landroid/content/Context;)Lio/realm/Realm;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    :cond_1
    return-void

    .line 123
    :cond_2
    :try_start_1
    new-instance p1, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper$2;

    invoke-direct {p1, p0, p2}, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper$2;-><init>(Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 131
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 132
    :cond_4
    throw p1

    :cond_5
    :goto_0
    return-void
.end method

.method public getSpam(Landroid/content/Context;Ljava/lang/String;)Lcom/telguarder/features/numberLookup/PhoneEvent;
    .locals 7

    const-string v0, "\\D+"

    const-string v1, ""

    .line 87
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;->dbReady:Z

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 90
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;->getRealm(Landroid/content/Context;)Lio/realm/Realm;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p1, :cond_2

    if-eqz p1, :cond_1

    .line 110
    invoke-virtual {p1}, Lio/realm/Realm;->close()V

    :cond_1
    return-object v2

    .line 96
    :cond_2
    :try_start_2
    const-class v1, Lcom/telguarder/features/numberLookup/d;

    invoke-virtual {p1, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string v3, "b"

    invoke-virtual {v1, v3, v0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 97
    invoke-virtual {v0}, Lio/realm/RealmResults;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 98
    new-instance v2, Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-direct {v2}, Lcom/telguarder/features/numberLookup/PhoneEvent;-><init>()V

    .line 99
    iput-object p2, v2, Lcom/telguarder/features/numberLookup/PhoneEvent;->actorPhoneNumber:Ljava/lang/String;

    .line 100
    sget-object v1, Lcom/telguarder/features/numberLookup/ActorType;->COMPANY:Lcom/telguarder/features/numberLookup/ActorType;

    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/ActorType;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/telguarder/features/numberLookup/PhoneEvent;->actorType:Ljava/lang/String;

    .line 101
    iput-object p2, v2, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/telguarder/features/numberLookup/PhoneEvent;->dateTimeInMillis:J

    const/4 v1, -0x1

    .line 103
    iput v1, v2, Lcom/telguarder/features/numberLookup/PhoneEvent;->id:I

    const-wide/16 v3, 0x0

    .line 104
    iput-wide v3, v2, Lcom/telguarder/features/numberLookup/PhoneEvent;->lastUpdateDateTimeInMillis:J

    .line 105
    iput-object p2, v2, Lcom/telguarder/features/numberLookup/PhoneEvent;->phonebookNumber:Ljava/lang/String;

    const/4 p2, 0x0

    .line 106
    invoke-virtual {v0, p2}, Lio/realm/RealmResults;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/telguarder/features/numberLookup/d;

    invoke-virtual {p2}, Lcom/telguarder/features/numberLookup/d;->getC()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long p2, v3, v5

    if-nez p2, :cond_3

    const-string p2, "community"

    goto :goto_0

    :cond_3
    const-string p2, "communityReported"

    :goto_0
    iput-object p2, v2, Lcom/telguarder/features/numberLookup/PhoneEvent;->spamType:Ljava/lang/String;

    .line 107
    iput v1, v2, Lcom/telguarder/features/numberLookup/PhoneEvent;->type:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    if-eqz p1, :cond_5

    .line 110
    invoke-virtual {p1}, Lio/realm/Realm;->close()V

    :cond_5
    return-object v2

    :catchall_0
    move-exception p2

    move-object v2, p1

    goto :goto_1

    :catchall_1
    move-exception p2

    :goto_1
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lio/realm/Realm;->close()V

    .line 111
    :cond_6
    throw p2

    :catch_0
    :cond_7
    :goto_2
    return-object v2
.end method

.method public init(Landroid/content/Context;)V
    .locals 5

    .line 50
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getOfflineSpamDbVersion()J

    move-result-wide v0

    const-wide/16 v2, 0x5

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;->dbReady:Z

    .line 52
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper$1;-><init>(Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 62
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;->dbReady:Z

    :goto_0
    return-void
.end method
