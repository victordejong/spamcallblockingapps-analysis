.class public Lcom/allinone/callerid/f/k/c;
.super Ljava/lang/Object;
.source "RecorderConfigurationDb.java"


# static fields
.field private static a:Lcom/allinone/callerid/f/k/c;


# instance fields
.field private b:Lorg/xutils/DbManager;


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

    const-string v1, "RecorderConfigurationDb"

    .line 3
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbName(Ljava/lang/String;)Lorg/xutils/DbManager$DaoConfig;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbVersion(I)Lorg/xutils/DbManager$DaoConfig;

    .line 5
    new-instance v1, Lcom/allinone/callerid/f/k/c$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/f/k/c$a;-><init>(Lcom/allinone/callerid/f/k/c;)V

    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbUpgradeListener(Lorg/xutils/DbManager$DbUpgradeListener;)Lorg/xutils/DbManager$DaoConfig;

    .line 6
    invoke-static {v0}, Lorg/xutils/x;->getDb(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/f/k/c;->b:Lorg/xutils/DbManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static b()Lcom/allinone/callerid/f/k/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/f/k/c;->a:Lcom/allinone/callerid/f/k/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/f/k/c;

    invoke-direct {v0}, Lcom/allinone/callerid/f/k/c;-><init>()V

    sput-object v0, Lcom/allinone/callerid/f/k/c;->a:Lcom/allinone/callerid/f/k/c;

    .line 3
    :cond_0
    sget-object v0, Lcom/allinone/callerid/f/k/c;->a:Lcom/allinone/callerid/f/k/c;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/f/k/c;->b:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->saveBindingId(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/f/k/c;->b:Lorg/xutils/DbManager;

    const-class v1, Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "="

    .line 1
    const-class v1, Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/allinone/callerid/f/k/c;->b:Lorg/xutils/DbManager;

    invoke-interface {v3, v1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v3

    const-string v4, "isselected"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v0, v5}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object v3

    .line 2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    .line 3
    invoke-virtual {v4, v2}, Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;->setIsselected(Z)V

    .line 4
    iget-object v5, p0, Lcom/allinone/callerid/f/k/c;->b:Lorg/xutils/DbManager;

    invoke-interface {v5, v4}, Lorg/xutils/DbManager;->saveOrUpdate(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v3, p0, Lcom/allinone/callerid/f/k/c;->b:Lorg/xutils/DbManager;

    invoke-interface {v3, v1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v1

    const-string v3, "showname"

    invoke-virtual {v1, v3, v0, p1}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;->setIsselected(Z)V

    .line 7
    iget-object v1, p0, Lcom/allinone/callerid/f/k/c;->b:Lorg/xutils/DbManager;

    invoke-interface {v1, p1}, Lorg/xutils/DbManager;->saveOrUpdate(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method
