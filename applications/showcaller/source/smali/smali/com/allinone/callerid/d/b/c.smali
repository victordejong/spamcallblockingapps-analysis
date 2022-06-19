.class public Lcom/allinone/callerid/d/b/c;
.super Ljava/lang/Object;
.source "ResourceDb.java"


# static fields
.field private static a:Lcom/allinone/callerid/d/b/c;


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

    const-string v1, "resourcedb.db"

    .line 3
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbName(Ljava/lang/String;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbVersion(I)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/d/b/c$c;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/d/b/c$c;-><init>(Lcom/allinone/callerid/d/b/c;)V

    .line 5
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbOpenListener(Lorg/xutils/DbManager$DbOpenListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/d/b/c$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/d/b/c$b;-><init>(Lcom/allinone/callerid/d/b/c;)V

    .line 6
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbUpgradeListener(Lorg/xutils/DbManager$DbUpgradeListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/d/b/c$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/d/b/c$a;-><init>(Lcom/allinone/callerid/d/b/c;)V

    .line 7
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setTableCreateListener(Lorg/xutils/DbManager$TableCreateListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lorg/xutils/x;->getDb(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/d/b/c;->b:Lorg/xutils/DbManager;
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

.method public static d()Lcom/allinone/callerid/d/b/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/d/b/c;->a:Lcom/allinone/callerid/d/b/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/d/b/c;

    invoke-direct {v0}, Lcom/allinone/callerid/d/b/c;-><init>()V

    sput-object v0, Lcom/allinone/callerid/d/b/c;->a:Lcom/allinone/callerid/d/b/c;

    .line 3
    :cond_0
    sget-object v0, Lcom/allinone/callerid/d/b/c;->a:Lcom/allinone/callerid/d/b/c;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/d/b/c;->b:Lorg/xutils/DbManager;

    const-class v1, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    const-string v1, "contacts_id"

    const-string v2, "="

    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getContacts_id()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getDataId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setDataId(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setPath(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getThemtname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setThemtname(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->isIsdiy()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setIsdiy(Z)V

    .line 6
    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->isUseVideoAudioRing()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setUseVideoAudioRing(Z)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/d/b/c;->b:Lorg/xutils/DbManager;

    const-string v1, "data_id"

    const-string v2, "path"

    const-string v3, "themtname"

    const-string v4, "isdiy"

    const-string v5, "isUseVideoAudioRing"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/xutils/DbManager;->update(Ljava/lang/Object;[Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/d/b/c;->b:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->save(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b()Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/allinone/callerid/d/b/c;->b:Lorg/xutils/DbManager;

    const-class v2, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    invoke-interface {v1, v2}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v1

    const-string v2, "isdiy"

    const-string v3, "="

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3, v4}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    const-string v0, "="

    :try_start_0
    const-string v1, "path"

    .line 1
    invoke-static {v1, v0, p1}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object p1

    const-string v1, "isdiy"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v0, v2}, Lorg/xutils/db/sqlite/WhereBuilder;->and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/d/b/c;->b:Lorg/xutils/DbManager;

    const-class v1, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    invoke-interface {v0, v1, p1}, Lorg/xutils/DbManager;->delete(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public e()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/d/b/c;->b:Lorg/xutils/DbManager;

    const-class v1, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    const-string v1, "isdiy"

    const-string v2, "="

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v3}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

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

.method public f(Ljava/lang/String;)Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/d/b/c;->b:Lorg/xutils/DbManager;

    const-class v1, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    const-string v1, "contacts_id"

    const-string v2, "="

    invoke-virtual {v0, v1, v2, p1}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;
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

.method public g(Ljava/lang/String;)Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/d/b/c;->b:Lorg/xutils/DbManager;

    const-class v1, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    const-string v1, "num"

    const-string v2, "="

    invoke-virtual {v0, v1, v2, p1}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;
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

.method public h(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/allinone/callerid/d/b/c;->b:Lorg/xutils/DbManager;

    const-class v2, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    invoke-interface {v1, v2}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v1

    const-string v2, "data_id"

    const-string v3, "="

    invoke-virtual {v1, v2, v3, p1}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2
    sget-boolean v1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "callscreen"

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "personaliseContact:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method
