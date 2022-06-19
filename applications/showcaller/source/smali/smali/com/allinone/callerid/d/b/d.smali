.class public Lcom/allinone/callerid/d/b/d;
.super Ljava/lang/Object;
.source "RewardedAdDb.java"


# static fields
.field private static a:Lcom/allinone/callerid/d/b/d;


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

    const-string v1, "rewardedad"

    .line 3
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbName(Ljava/lang/String;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbVersion(I)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/d/b/d$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/d/b/d$b;-><init>(Lcom/allinone/callerid/d/b/d;)V

    .line 5
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbOpenListener(Lorg/xutils/DbManager$DbOpenListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/d/b/d$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/d/b/d$a;-><init>(Lcom/allinone/callerid/d/b/d;)V

    .line 6
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setTableCreateListener(Lorg/xutils/DbManager$TableCreateListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lorg/xutils/x;->getDb(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/d/b/d;->b:Lorg/xutils/DbManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static b()Lcom/allinone/callerid/d/b/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/d/b/d;->a:Lcom/allinone/callerid/d/b/d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/d/b/d;

    invoke-direct {v0}, Lcom/allinone/callerid/d/b/d;-><init>()V

    sput-object v0, Lcom/allinone/callerid/d/b/d;->a:Lcom/allinone/callerid/d/b/d;

    .line 3
    :cond_0
    sget-object v0, Lcom/allinone/callerid/d/b/d;->a:Lcom/allinone/callerid/d/b/d;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/allinone/callerid/callscreen/bean/RewardedAdInfo;)Z
    .locals 5

    const-string v0, "wbb"

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/allinone/callerid/d/b/d;->b:Lorg/xutils/DbManager;

    const-class v2, Lcom/allinone/callerid/callscreen/bean/RewardedAdInfo;

    invoke-interface {v1, v2}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v1

    const-string v2, "dataId"

    const-string v3, "="

    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/RewardedAdInfo;->getDataId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/callscreen/bean/RewardedAdInfo;

    if-nez v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/d/b/d;->b:Lorg/xutils/DbManager;

    invoke-interface {v1, p1}, Lorg/xutils/DbManager;->save(Ljava/lang/Object;)V

    .line 3
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "\u6dfb\u52a0\u89e3\u9501\u6570\u636e\u5230\u6570\u636e\u5e93"

    .line 4
    invoke-static {v0, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    sget-boolean v1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v1, :cond_1

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public c(Ljava/lang/String;)Z
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/d/b/d;->b:Lorg/xutils/DbManager;

    const-class v1, Lcom/allinone/callerid/callscreen/bean/RewardedAdInfo;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    const-string v1, "dataId"

    const-string v2, "="

    invoke-virtual {v0, v1, v2, p1}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/callscreen/bean/RewardedAdInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
