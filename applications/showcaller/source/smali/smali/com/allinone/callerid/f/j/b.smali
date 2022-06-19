.class public Lcom/allinone/callerid/f/j/b;
.super Ljava/lang/Object;
.source "WeekDb.java"


# static fields
.field private static a:Lcom/allinone/callerid/f/j/b;


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

    const-string v1, "WeekDb"

    .line 3
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbName(Ljava/lang/String;)Lorg/xutils/DbManager$DaoConfig;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbVersion(I)Lorg/xutils/DbManager$DaoConfig;

    .line 5
    new-instance v1, Lcom/allinone/callerid/f/j/b$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/f/j/b$a;-><init>(Lcom/allinone/callerid/f/j/b;)V

    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbUpgradeListener(Lorg/xutils/DbManager$DbUpgradeListener;)Lorg/xutils/DbManager$DaoConfig;

    .line 6
    invoke-static {v0}, Lorg/xutils/x;->getDb(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/f/j/b;->b:Lorg/xutils/DbManager;
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

.method public static a()Lcom/allinone/callerid/f/j/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/f/j/b;->a:Lcom/allinone/callerid/f/j/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/f/j/b;

    invoke-direct {v0}, Lcom/allinone/callerid/f/j/b;-><init>()V

    sput-object v0, Lcom/allinone/callerid/f/j/b;->a:Lcom/allinone/callerid/f/j/b;

    .line 3
    :cond_0
    sget-object v0, Lcom/allinone/callerid/f/j/b;->a:Lcom/allinone/callerid/f/j/b;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/allinone/callerid/f/j/b;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x7

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 4
    new-instance v2, Lcom/allinone/callerid/bean/WeekInfo;

    invoke-direct {v2}, Lcom/allinone/callerid/bean/WeekInfo;-><init>()V

    add-int/lit8 v1, v1, 0x1

    .line 5
    invoke-virtual {v2, v1}, Lcom/allinone/callerid/bean/WeekInfo;->setWeekId(I)V

    .line 6
    invoke-virtual {v2, v3}, Lcom/allinone/callerid/bean/WeekInfo;->setSelect(Z)V

    .line 7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    new-instance v1, Lcom/allinone/callerid/bean/WeekInfo;

    invoke-direct {v1}, Lcom/allinone/callerid/bean/WeekInfo;-><init>()V

    .line 9
    invoke-virtual {v1, v3}, Lcom/allinone/callerid/bean/WeekInfo;->setSelect(Z)V

    const/4 v2, -0x1

    .line 10
    invoke-virtual {v1, v2}, Lcom/allinone/callerid/bean/WeekInfo;->setWeekId(I)V

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {p0, v0}, Lcom/allinone/callerid/f/j/b;->e(Ljava/util/ArrayList;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public c()Z
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/f/j/b;->b:Lorg/xutils/DbManager;

    const-class v3, Lcom/allinone/callerid/bean/WeekInfo;

    invoke-interface {v0, v3}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    const-string v3, "weekId"

    const-string v4, "="

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v4, v1}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/bean/WeekInfo;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/allinone/callerid/bean/WeekInfo;->isSelect()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    return v2

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/bean/WeekInfo;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/f/j/b;->b:Lorg/xutils/DbManager;

    const-class v1, Lcom/allinone/callerid/bean/WeekInfo;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

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

.method public e(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/bean/WeekInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    const-string v1, "wbb"

    if-eqz v0, :cond_0

    const-string v0, "\u4fdd\u5b58\u6570\u636e\u96c6\u5408: "

    .line 2
    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/f/j/b;->b:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->saveOrUpdate(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveData_Exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public f(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/bean/WeekInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/f/j/b;->b:Lorg/xutils/DbManager;

    const-class v1, Lcom/allinone/callerid/bean/WeekInfo;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->delete(Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/f/j/b;->b:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->save(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveData_Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "wbb"

    invoke-static {v0, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
