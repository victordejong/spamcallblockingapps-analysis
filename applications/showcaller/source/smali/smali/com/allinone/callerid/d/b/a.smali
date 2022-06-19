.class public Lcom/allinone/callerid/d/b/a;
.super Ljava/lang/Object;
.source "ActionDb.java"


# static fields
.field private static a:Lcom/allinone/callerid/d/b/a;


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

    const-string v1, "callscreenaction"

    .line 3
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbName(Ljava/lang/String;)Lorg/xutils/DbManager$DaoConfig;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbVersion(I)Lorg/xutils/DbManager$DaoConfig;

    .line 5
    new-instance v1, Lcom/allinone/callerid/d/b/a$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/d/b/a$a;-><init>(Lcom/allinone/callerid/d/b/a;)V

    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbOpenListener(Lorg/xutils/DbManager$DbOpenListener;)Lorg/xutils/DbManager$DaoConfig;

    .line 6
    new-instance v1, Lcom/allinone/callerid/d/b/a$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/d/b/a$b;-><init>(Lcom/allinone/callerid/d/b/a;)V

    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbUpgradeListener(Lorg/xutils/DbManager$DbUpgradeListener;)Lorg/xutils/DbManager$DaoConfig;

    .line 7
    invoke-static {v0}, Lorg/xutils/x;->getDb(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/d/b/a;->b:Lorg/xutils/DbManager;
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

.method public static a()Lcom/allinone/callerid/d/b/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/d/b/a;->a:Lcom/allinone/callerid/d/b/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/d/b/a;

    invoke-direct {v0}, Lcom/allinone/callerid/d/b/a;-><init>()V

    sput-object v0, Lcom/allinone/callerid/d/b/a;->a:Lcom/allinone/callerid/d/b/a;

    .line 3
    :cond_0
    sget-object v0, Lcom/allinone/callerid/d/b/a;->a:Lcom/allinone/callerid/d/b/a;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lcom/allinone/callerid/callscreen/bean/ActionInfo;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/d/b/a;->b:Lorg/xutils/DbManager;

    const-class v1, Lcom/allinone/callerid/callscreen/bean/ActionInfo;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    const-string v1, "data_id"

    const-string v2, "="

    invoke-virtual {v0, v1, v2, p1}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/callscreen/bean/ActionInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Ljava/lang/String;ZI)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/d/b/a;->b:Lorg/xutils/DbManager;

    const-class v1, Lcom/allinone/callerid/callscreen/bean/ActionInfo;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    const-string v1, "data_id"

    const-string v2, "="

    invoke-virtual {v0, v1, v2, p1}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/callscreen/bean/ActionInfo;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p2}, Lcom/allinone/callerid/callscreen/bean/ActionInfo;->setLike(Z)V

    .line 3
    invoke-virtual {v0, p3}, Lcom/allinone/callerid/callscreen/bean/ActionInfo;->setLike_counts(I)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/d/b/a;->b:Lorg/xutils/DbManager;

    const-string p2, "isLike"

    const-string p3, "like_counts"

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lorg/xutils/DbManager;->update(Ljava/lang/Object;[Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/allinone/callerid/callscreen/bean/ActionInfo;

    invoke-direct {v0}, Lcom/allinone/callerid/callscreen/bean/ActionInfo;-><init>()V

    .line 6
    invoke-virtual {v0, p1}, Lcom/allinone/callerid/callscreen/bean/ActionInfo;->setData_id(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p2}, Lcom/allinone/callerid/callscreen/bean/ActionInfo;->setLike(Z)V

    .line 8
    invoke-virtual {v0, p3}, Lcom/allinone/callerid/callscreen/bean/ActionInfo;->setLike_counts(I)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/d/b/a;->b:Lorg/xutils/DbManager;

    invoke-interface {p1, v0}, Lorg/xutils/DbManager;->saveOrUpdate(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/d/b/a;->b:Lorg/xutils/DbManager;

    const-class v1, Lcom/allinone/callerid/callscreen/bean/ActionInfo;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    const-string v1, "data_id"

    const-string v2, "="

    invoke-virtual {v0, v1, v2, p1}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/callscreen/bean/ActionInfo;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p2}, Lcom/allinone/callerid/callscreen/bean/ActionInfo;->setReport(Z)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/d/b/a;->b:Lorg/xutils/DbManager;

    const-string p2, "isReport"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lorg/xutils/DbManager;->update(Ljava/lang/Object;[Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/allinone/callerid/callscreen/bean/ActionInfo;

    invoke-direct {v0}, Lcom/allinone/callerid/callscreen/bean/ActionInfo;-><init>()V

    .line 5
    invoke-virtual {v0, p1}, Lcom/allinone/callerid/callscreen/bean/ActionInfo;->setData_id(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p2}, Lcom/allinone/callerid/callscreen/bean/ActionInfo;->setReport(Z)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/d/b/a;->b:Lorg/xutils/DbManager;

    invoke-interface {p1, v0}, Lorg/xutils/DbManager;->saveOrUpdate(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
