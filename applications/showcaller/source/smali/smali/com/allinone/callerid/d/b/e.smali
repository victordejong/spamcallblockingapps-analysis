.class public Lcom/allinone/callerid/d/b/e;
.super Ljava/lang/Object;
.source "ShowAnimationDb.java"


# static fields
.field private static a:Lcom/allinone/callerid/d/b/e;


# instance fields
.field b:Lorg/xutils/DbManager$DaoConfig;

.field public c:Lorg/xutils/DbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/xutils/DbManager$DaoConfig;

    invoke-direct {v0}, Lorg/xutils/DbManager$DaoConfig;-><init>()V

    const-string v1, "showanimation.db"

    .line 3
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbName(Ljava/lang/String;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbVersion(I)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/d/b/e$c;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/d/b/e$c;-><init>(Lcom/allinone/callerid/d/b/e;)V

    .line 5
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbOpenListener(Lorg/xutils/DbManager$DbOpenListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/d/b/e$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/d/b/e$b;-><init>(Lcom/allinone/callerid/d/b/e;)V

    .line 6
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbUpgradeListener(Lorg/xutils/DbManager$DbUpgradeListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/d/b/e$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/d/b/e$a;-><init>(Lcom/allinone/callerid/d/b/e;)V

    .line 7
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setTableCreateListener(Lorg/xutils/DbManager$TableCreateListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/d/b/e;->b:Lorg/xutils/DbManager$DaoConfig;

    return-void
.end method

.method public static e()Lcom/allinone/callerid/d/b/e;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/d/b/e;->a:Lcom/allinone/callerid/d/b/e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/d/b/e;

    invoke-direct {v0}, Lcom/allinone/callerid/d/b/e;-><init>()V

    sput-object v0, Lcom/allinone/callerid/d/b/e;->a:Lcom/allinone/callerid/d/b/e;

    .line 3
    :cond_0
    sget-object v0, Lcom/allinone/callerid/d/b/e;->a:Lcom/allinone/callerid/d/b/e;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V
    .locals 7

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/d/b/e;->b:Lorg/xutils/DbManager$DaoConfig;

    invoke-static {v0}, Lorg/xutils/x;->getDb(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/d/b/e;->c:Lorg/xutils/DbManager;

    .line 2
    const-class v1, Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    if-eqz v0, :cond_1

    .line 3
    sget-boolean v1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "wbb"

    const-string v2, "\u66f4\u65b0\u6570\u636e0"

    .line 4
    invoke-static {v1, v2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isIsselect()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setIsselect(Z)V

    .line 6
    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setPath(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setPhone(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setName(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isIsdiy()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setIsdiy(Z)V

    .line 10
    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isUseVideoAudioRing()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setUseVideoAudioRing(Z)V

    .line 11
    iget-object p1, p0, Lcom/allinone/callerid/d/b/e;->c:Lorg/xutils/DbManager;

    const-string v1, "isselect"

    const-string v2, "path"

    const-string v3, "phone"

    const-string v4, "name"

    const-string v5, "isdiy"

    const-string v6, "isUseVideoAudioRing"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/xutils/DbManager;->update(Ljava/lang/Object;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setIsdefault(Z)V

    .line 13
    iget-object v0, p0, Lcom/allinone/callerid/d/b/e;->c:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->save(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public b()Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/allinone/callerid/d/b/e;->b:Lorg/xutils/DbManager$DaoConfig;

    invoke-static {v1}, Lorg/xutils/x;->getDb(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;

    move-result-object v1

    iput-object v1, p0, Lcom/allinone/callerid/d/b/e;->c:Lorg/xutils/DbManager;

    .line 2
    const-class v2, Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-interface {v1, v2}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v1

    const-string v2, "isdiy"

    const-string v3, "="

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3, v4}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/callscreen/bean/HomeInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/d/b/e;->b:Lorg/xutils/DbManager$DaoConfig;

    invoke-static {v0}, Lorg/xutils/x;->getDb(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/d/b/e;->c:Lorg/xutils/DbManager;

    .line 2
    const-class v1, Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    const-string v2, "path"

    const-string v3, "="

    invoke-static {v2, v3, p1}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/xutils/DbManager;->delete(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public d()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/d/b/e;->b:Lorg/xutils/DbManager$DaoConfig;

    invoke-static {v0}, Lorg/xutils/x;->getDb(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/d/b/e;->c:Lorg/xutils/DbManager;

    .line 2
    const-class v1, Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    const-string v2, "isdiy"

    const-string v3, "="

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3, v4}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xutils/DbManager;->delete(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public f()Lcom/allinone/callerid/callscreen/bean/HomeInfo;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/d/b/e;->b:Lorg/xutils/DbManager$DaoConfig;

    invoke-static {v0}, Lorg/xutils/x;->getDb(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/d/b/e;->c:Lorg/xutils/DbManager;

    .line 2
    const-class v1, Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    const-string v1, "isdefault"

    const-string v2, "="

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v3}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Lcom/allinone/callerid/callscreen/bean/HomeInfo;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/d/b/e;->b:Lorg/xutils/DbManager$DaoConfig;

    invoke-static {v0}, Lorg/xutils/x;->getDb(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/d/b/e;->c:Lorg/xutils/DbManager;

    .line 2
    const-class v1, Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    const-string v1, "isdiy"

    const-string v2, "="

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v3}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public h(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)Z
    .locals 4

    const-string v0, "="

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/allinone/callerid/d/b/e;->b:Lorg/xutils/DbManager$DaoConfig;

    invoke-static {v1}, Lorg/xutils/x;->getDb(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;

    move-result-object v1

    iput-object v1, p0, Lcom/allinone/callerid/d/b/e;->c:Lorg/xutils/DbManager;

    .line 2
    const-class v2, Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-interface {v1, v2}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v1

    const-string v2, "isdefault"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0, v3}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v1

    const-string v2, "name"

    .line 3
    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, v0, p1}, Lorg/xutils/db/Selector;->and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/callscreen/bean/HomeInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
