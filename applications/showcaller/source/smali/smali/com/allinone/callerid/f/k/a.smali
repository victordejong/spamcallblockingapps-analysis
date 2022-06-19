.class public Lcom/allinone/callerid/f/k/a;
.super Ljava/lang/Object;
.source "CustomRecordDb.java"


# static fields
.field private static a:Lcom/allinone/callerid/f/k/a;


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

    const-string v1, "CustomRecordDb"

    .line 3
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbName(Ljava/lang/String;)Lorg/xutils/DbManager$DaoConfig;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbVersion(I)Lorg/xutils/DbManager$DaoConfig;

    .line 5
    new-instance v1, Lcom/allinone/callerid/f/k/a$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/f/k/a$a;-><init>(Lcom/allinone/callerid/f/k/a;)V

    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbUpgradeListener(Lorg/xutils/DbManager$DbUpgradeListener;)Lorg/xutils/DbManager$DaoConfig;

    .line 6
    invoke-static {v0}, Lorg/xutils/x;->getDb(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/f/k/a;->b:Lorg/xutils/DbManager;
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

.method public static c()Lcom/allinone/callerid/f/k/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/f/k/a;->a:Lcom/allinone/callerid/f/k/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/f/k/a;

    invoke-direct {v0}, Lcom/allinone/callerid/f/k/a;-><init>()V

    sput-object v0, Lcom/allinone/callerid/f/k/a;->a:Lcom/allinone/callerid/f/k/a;

    .line 3
    :cond_0
    sget-object v0, Lcom/allinone/callerid/f/k/a;->a:Lcom/allinone/callerid/f/k/a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/allinone/callerid/bean/recorder/CustomRecord;)Z
    .locals 4

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/f/k/a;->b:Lorg/xutils/DbManager;

    const-class v1, Lcom/allinone/callerid/bean/recorder/CustomRecord;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    const-string v1, "phone"

    const-string v2, "="

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/recorder/CustomRecord;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/bean/recorder/CustomRecord;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/f/k/a;->b:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->saveOrUpdate(Ljava/lang/Object;)V

    return v1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/recorder/CustomRecord;->getType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/bean/recorder/CustomRecord;->setType(I)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/f/k/a;->b:Lorg/xutils/DbManager;

    invoke-interface {p1, v0}, Lorg/xutils/DbManager;->saveOrUpdate(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lorg/xutils/db/sqlite/WhereBuilder;->b()Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v0

    const-string v1, "phone"

    const-string v2, "="

    .line 2
    invoke-virtual {v0, v1, v2, p1}, Lorg/xutils/db/sqlite/WhereBuilder;->and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/f/k/a;->b:Lorg/xutils/DbManager;

    const-class v1, Lcom/allinone/callerid/bean/recorder/CustomRecord;

    invoke-interface {p1, v1, v0}, Lorg/xutils/DbManager;->delete(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/f/k/a;->b:Lorg/xutils/DbManager;

    const-class v1, Lcom/allinone/callerid/bean/recorder/CustomRecord;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    const-string v1, "phone"

    const-string v2, "="

    invoke-virtual {v0, v1, v2, p1}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/bean/recorder/CustomRecord;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/recorder/CustomRecord;->getType()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public e(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/bean/recorder/CustomRecord;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/f/k/a;->b:Lorg/xutils/DbManager;

    const-class v1, Lcom/allinone/callerid/bean/recorder/CustomRecord;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "="

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object p1

    const-string v0, "id"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/xutils/db/Selector;->orderBy(Ljava/lang/String;Z)Lorg/xutils/db/Selector;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object p1
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
