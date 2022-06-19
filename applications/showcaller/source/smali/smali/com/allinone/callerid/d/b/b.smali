.class public Lcom/allinone/callerid/d/b/b;
.super Ljava/lang/Object;
.source "DownloadDb.java"


# static fields
.field private static a:Lcom/allinone/callerid/d/b/b;


# instance fields
.field public b:Lorg/xutils/DbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    :try_start_0
    new-instance v0, Lorg/xutils/DbManager$DaoConfig;

    invoke-direct {v0}, Lorg/xutils/DbManager$DaoConfig;-><init>()V

    const-string v1, "download.db"

    .line 3
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbName(Ljava/lang/String;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbVersion(I)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/d/b/b$c;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/d/b/b$c;-><init>(Lcom/allinone/callerid/d/b/b;)V

    .line 5
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbOpenListener(Lorg/xutils/DbManager$DbOpenListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/d/b/b$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/d/b/b$b;-><init>(Lcom/allinone/callerid/d/b/b;)V

    .line 6
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbUpgradeListener(Lorg/xutils/DbManager$DbUpgradeListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/d/b/b$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/d/b/b$a;-><init>(Lcom/allinone/callerid/d/b/b;)V

    .line 7
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setTableCreateListener(Lorg/xutils/DbManager$TableCreateListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lorg/xutils/x;->getDb(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/d/b/b;->b:Lorg/xutils/DbManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static b()Lcom/allinone/callerid/d/b/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/d/b/b;->a:Lcom/allinone/callerid/d/b/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/d/b/b;

    invoke-direct {v0}, Lcom/allinone/callerid/d/b/b;-><init>()V

    sput-object v0, Lcom/allinone/callerid/d/b/b;->a:Lcom/allinone/callerid/d/b/b;

    .line 3
    :cond_0
    sget-object v0, Lcom/allinone/callerid/d/b/b;->a:Lcom/allinone/callerid/d/b/b;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/allinone/callerid/callscreen/bean/DownloadInfo;)Z
    .locals 7

    if-eqz p1, :cond_3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/d/b/b;->b:Lorg/xutils/DbManager;

    const-class v1, Lcom/allinone/callerid/callscreen/bean/DownloadInfo;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    const-string v1, "dataId"

    const-string v2, "="

    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/DownloadInfo;->getDataId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/callscreen/bean/DownloadInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "callscreen"

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    :try_start_1
    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/DownloadInfo;->getAudio_path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/callscreen/bean/DownloadInfo;->setAudio_path(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/DownloadInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/callscreen/bean/DownloadInfo;->setPath(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v2}, Lcom/allinone/callerid/callscreen/bean/DownloadInfo;->setDownloadStatus(I)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/allinone/callerid/callscreen/bean/DownloadInfo;->setTime(J)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/d/b/b;->b:Lorg/xutils/DbManager;

    const-string v3, "path"

    const-string v4, "audio_path"

    const-string v5, "download_status"

    const-string v6, "time"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Lorg/xutils/DbManager;->update(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 7
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "\u66f4\u65b0\u6570\u636e\u5e93"

    .line 8
    invoke-static {v1, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v2

    .line 9
    :cond_1
    invoke-virtual {p1, v2}, Lcom/allinone/callerid/callscreen/bean/DownloadInfo;->setDownloadStatus(I)V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/allinone/callerid/callscreen/bean/DownloadInfo;->setTime(J)V

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/d/b/b;->b:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->save(Ljava/lang/Object;)V

    .line 12
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_2

    const-string p1, "\u6dfb\u52a0\u5230\u6570\u636e\u5e93"

    .line 13
    invoke-static {v1, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    return v2

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_3

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "wbb"

    invoke-static {v0, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public c(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)Lcom/allinone/callerid/callscreen/bean/DownloadInfo;
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcom/allinone/callerid/callscreen/bean/DownloadInfo;

    invoke-direct {v0}, Lcom/allinone/callerid/callscreen/bean/DownloadInfo;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/callscreen/bean/DownloadInfo;->setName(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/callscreen/bean/DownloadInfo;->setPath(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getAudio_path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/callscreen/bean/DownloadInfo;->setAudio_path(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/allinone/callerid/callscreen/bean/DownloadInfo;->setTime(J)V

    .line 6
    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getData_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/callscreen/bean/DownloadInfo;->setDataId(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Ljava/lang/String;)Lcom/allinone/callerid/callscreen/bean/DownloadInfo;
    .locals 3

    const-string v0, "="

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/allinone/callerid/d/b/b;->b:Lorg/xutils/DbManager;

    const-class v2, Lcom/allinone/callerid/callscreen/bean/DownloadInfo;

    invoke-interface {v1, v2}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v1

    const-string v2, "dataId"

    invoke-virtual {v1, v2, v0, p1}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object p1

    const-string v1, "download_status"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Lorg/xutils/db/Selector;->and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/callscreen/bean/DownloadInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
