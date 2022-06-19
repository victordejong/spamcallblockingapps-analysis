.class public Lcom/allinone/callerid/f/a;
.super Ljava/lang/Object;
.source "AdContentDb.java"


# static fields
.field private static a:Lcom/allinone/callerid/f/a;


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

    const-string v1, "com.callid.adcontent"

    .line 3
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbName(Ljava/lang/String;)Lorg/xutils/DbManager$DaoConfig;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbVersion(I)Lorg/xutils/DbManager$DaoConfig;

    .line 5
    new-instance v1, Lcom/allinone/callerid/f/a$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/f/a$a;-><init>(Lcom/allinone/callerid/f/a;)V

    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbUpgradeListener(Lorg/xutils/DbManager$DbUpgradeListener;)Lorg/xutils/DbManager$DaoConfig;

    .line 6
    invoke-static {v0}, Lorg/xutils/x;->getDb(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/f/a;->b:Lorg/xutils/DbManager;
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

.method public static c()Lcom/allinone/callerid/f/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/f/a;->a:Lcom/allinone/callerid/f/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/f/a;

    invoke-direct {v0}, Lcom/allinone/callerid/f/a;-><init>()V

    sput-object v0, Lcom/allinone/callerid/f/a;->a:Lcom/allinone/callerid/f/a;

    .line 3
    :cond_0
    sget-object v0, Lcom/allinone/callerid/f/a;->a:Lcom/allinone/callerid/f/a;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 5

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/allinone/callerid/f/a;->b:Lorg/xutils/DbManager;

    const-class v2, Lcom/allinone/callerid/bean/AdContent;

    invoke-interface {v1, v2}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v1

    const-string v2, "adname"

    const-string v3, "="

    const-string v4, "firstname"

    invoke-virtual {v1, v2, v3, v4}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/bean/AdContent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const-string v3, "bigfatwhiteguy@gmail.com"

    if-eqz v1, :cond_0

    .line 2
    :try_start_1
    invoke-virtual {v1}, Lcom/allinone/callerid/bean/AdContent;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/h1;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/h1;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_1

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return v0
.end method

.method public b()V
    .locals 4

    const-string v0, "firstname"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/allinone/callerid/f/a;->b:Lorg/xutils/DbManager;

    const-class v2, Lcom/allinone/callerid/bean/AdContent;

    invoke-interface {v1, v2}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v1

    const-string v2, "adname"

    const-string v3, "="

    invoke-virtual {v1, v2, v3, v0}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/bean/AdContent;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, v2}, Lcom/allinone/callerid/bean/AdContent;->setSelected(Z)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/f/a;->b:Lorg/xutils/DbManager;

    const-string v2, "isSelected"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xutils/DbManager;->update(Ljava/lang/Object;[Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lcom/allinone/callerid/bean/AdContent;

    invoke-direct {v1}, Lcom/allinone/callerid/bean/AdContent;-><init>()V

    .line 5
    invoke-virtual {v1, v0}, Lcom/allinone/callerid/bean/AdContent;->setAdname(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, v2}, Lcom/allinone/callerid/bean/AdContent;->setSelected(Z)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/f/a;->b:Lorg/xutils/DbManager;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->saveOrUpdate(Ljava/lang/Object;)V

    .line 8
    :goto_0
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.allinone.callerid.CLOSE_AD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lb/p/a/a;->d(Landroid/content/Intent;)Z

    .line 9
    invoke-static {}, Lcom/allinone/callerid/util/gg/a;->a()Lcom/allinone/callerid/util/gg/a;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/allinone/callerid/util/gg/a;->b:Lcom/google/android/gms/ads/nativead/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public d()V
    .locals 4

    const-string v0, "firstname"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/allinone/callerid/f/a;->b:Lorg/xutils/DbManager;

    const-class v2, Lcom/allinone/callerid/bean/AdContent;

    invoke-interface {v1, v2}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v1

    const-string v2, "adname"

    const-string v3, "="

    invoke-virtual {v1, v2, v3, v0}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/bean/AdContent;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, v2}, Lcom/allinone/callerid/bean/AdContent;->setSelected(Z)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/f/a;->b:Lorg/xutils/DbManager;

    const-string v2, "isSelected"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xutils/DbManager;->update(Ljava/lang/Object;[Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lcom/allinone/callerid/bean/AdContent;

    invoke-direct {v1}, Lcom/allinone/callerid/bean/AdContent;-><init>()V

    .line 5
    invoke-virtual {v1, v0}, Lcom/allinone/callerid/bean/AdContent;->setAdname(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, v2}, Lcom/allinone/callerid/bean/AdContent;->setSelected(Z)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/f/a;->b:Lorg/xutils/DbManager;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->saveOrUpdate(Ljava/lang/Object;)V
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
