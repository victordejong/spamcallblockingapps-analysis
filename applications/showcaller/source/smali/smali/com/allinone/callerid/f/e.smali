.class public Lcom/allinone/callerid/f/e;
.super Ljava/lang/Object;
.source "NumberContentDb.java"


# static fields
.field private static a:Lcom/allinone/callerid/f/e;


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

    const-string v1, "com.callid.number"

    .line 3
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbName(Ljava/lang/String;)Lorg/xutils/DbManager$DaoConfig;

    const/4 v1, 0x7

    .line 4
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbVersion(I)Lorg/xutils/DbManager$DaoConfig;

    .line 5
    new-instance v1, Lcom/allinone/callerid/f/e$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/f/e$a;-><init>(Lcom/allinone/callerid/f/e;)V

    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbUpgradeListener(Lorg/xutils/DbManager$DbUpgradeListener;)Lorg/xutils/DbManager$DaoConfig;

    .line 6
    invoke-static {v0}, Lorg/xutils/x;->getDb(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/f/e;->b:Lorg/xutils/DbManager;
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

.method public static d()Lcom/allinone/callerid/f/e;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/f/e;->a:Lcom/allinone/callerid/f/e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/f/e;

    invoke-direct {v0}, Lcom/allinone/callerid/f/e;-><init>()V

    sput-object v0, Lcom/allinone/callerid/f/e;->a:Lcom/allinone/callerid/f/e;

    .line 3
    :cond_0
    sget-object v0, Lcom/allinone/callerid/f/e;->a:Lcom/allinone/callerid/f/e;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/f/e;->e(Ljava/lang/String;)Lcom/allinone/callerid/bean/NumberContent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/NumberContent;->is_reported()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/NumberContent;->getReported_time()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p1, v1, v3

    if-gez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/f/e;->d()Lcom/allinone/callerid/f/e;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/allinone/callerid/f/e;->e(Ljava/lang/String;)Lcom/allinone/callerid/bean/NumberContent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/NumberContent;->getSuggest_time()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p1, v1, v3

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/f/e;->e(Ljava/lang/String;)Lcom/allinone/callerid/bean/NumberContent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/NumberContent;->is_reported_wrong()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method public e(Ljava/lang/String;)Lcom/allinone/callerid/bean/NumberContent;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/f/e;->b:Lorg/xutils/DbManager;

    const-class v1, Lcom/allinone/callerid/bean/NumberContent;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    const-string v1, "number"

    const-string v2, "="

    invoke-virtual {v0, v1, v2, p1}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/bean/NumberContent;
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

.method public f(Ljava/lang/String;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/f/e;->b:Lorg/xutils/DbManager;

    const-class v1, Lcom/allinone/callerid/bean/NumberContent;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    const-string v1, "number"

    const-string v2, "="

    invoke-virtual {v0, v1, v2, p1}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/bean/NumberContent;

    const-wide/32 v1, 0x2932e00

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/allinone/callerid/bean/NumberContent;->setSuggest_time(J)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/f/e;->b:Lorg/xutils/DbManager;

    const-string v1, "suggest_time"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/xutils/DbManager;->update(Ljava/lang/Object;[Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/allinone/callerid/bean/NumberContent;

    invoke-direct {v0}, Lcom/allinone/callerid/bean/NumberContent;-><init>()V

    .line 5
    invoke-virtual {v0, p1}, Lcom/allinone/callerid/bean/NumberContent;->setNumber(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/allinone/callerid/bean/NumberContent;->setSuggest_time(J)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/f/e;->b:Lorg/xutils/DbManager;

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

.method public g(Ljava/lang/String;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/f/e;->b:Lorg/xutils/DbManager;

    const-class v1, Lcom/allinone/callerid/bean/NumberContent;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    const-string v1, "number"

    const-string v2, "="

    invoke-virtual {v0, v1, v2, p1}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/bean/NumberContent;

    const-wide/32 v1, 0x5265c00

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v3}, Lcom/allinone/callerid/bean/NumberContent;->setIs_reported(Z)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/f/e;->b:Lorg/xutils/DbManager;

    const-string v3, "is_reported"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Lorg/xutils/DbManager;->update(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/allinone/callerid/bean/NumberContent;->setReported_time(J)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/f/e;->b:Lorg/xutils/DbManager;

    const-string v1, "reported_time"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/xutils/DbManager;->update(Ljava/lang/Object;[Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/allinone/callerid/bean/NumberContent;

    invoke-direct {v0}, Lcom/allinone/callerid/bean/NumberContent;-><init>()V

    .line 7
    invoke-virtual {v0, p1}, Lcom/allinone/callerid/bean/NumberContent;->setNumber(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, v3}, Lcom/allinone/callerid/bean/NumberContent;->setIs_reported(Z)V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/allinone/callerid/bean/NumberContent;->setReported_time(J)V

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/f/e;->b:Lorg/xutils/DbManager;

    invoke-interface {p1, v0}, Lorg/xutils/DbManager;->saveOrUpdate(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/f/e;->b:Lorg/xutils/DbManager;

    const-class v1, Lcom/allinone/callerid/bean/NumberContent;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    const-string v1, "number"

    const-string v2, "="

    invoke-virtual {v0, v1, v2, p1}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/bean/NumberContent;

    const-wide/32 v1, 0x5265c00

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/bean/NumberContent;

    invoke-direct {v0}, Lcom/allinone/callerid/bean/NumberContent;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/allinone/callerid/bean/NumberContent;->setNumber(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/allinone/callerid/bean/NumberContent;->setSubtype_mark_time(J)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/f/e;->b:Lorg/xutils/DbManager;

    invoke-interface {p1, v0}, Lorg/xutils/DbManager;->saveOrUpdate(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/allinone/callerid/bean/NumberContent;->setSubtype_mark_time(J)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/f/e;->b:Lorg/xutils/DbManager;

    const-string v1, "subtype_mark_time"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/xutils/DbManager;->update(Ljava/lang/Object;[Ljava/lang/String;)V
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

.method public i(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/f/e;->b:Lorg/xutils/DbManager;

    const-class v1, Lcom/allinone/callerid/bean/NumberContent;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    const-string v1, "number"

    const-string v2, "="

    invoke-virtual {v0, v1, v2, p1}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/bean/NumberContent;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/NumberContent;->setIs_reported_wrong(Z)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/f/e;->b:Lorg/xutils/DbManager;

    const-string v1, "is_reported_wrong"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/xutils/DbManager;->update(Ljava/lang/Object;[Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/allinone/callerid/bean/NumberContent;

    invoke-direct {v0}, Lcom/allinone/callerid/bean/NumberContent;-><init>()V

    .line 5
    invoke-virtual {v0, p1}, Lcom/allinone/callerid/bean/NumberContent;->setNumber(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/NumberContent;->setIs_reported_wrong(Z)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/f/e;->b:Lorg/xutils/DbManager;

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

.method public j(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/f/e;->b:Lorg/xutils/DbManager;

    const-class v1, Lcom/allinone/callerid/bean/NumberContent;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    const-string v1, "number"

    const-string v2, "="

    invoke-virtual {v0, v1, v2, p1}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/bean/NumberContent;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/allinone/callerid/bean/NumberContent;->setShow_submit_comment_time(J)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/f/e;->b:Lorg/xutils/DbManager;

    const-string v1, "show_submit_comment_time"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/xutils/DbManager;->update(Ljava/lang/Object;[Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/allinone/callerid/bean/NumberContent;

    invoke-direct {v0}, Lcom/allinone/callerid/bean/NumberContent;-><init>()V

    .line 5
    invoke-virtual {v0, p1}, Lcom/allinone/callerid/bean/NumberContent;->setNumber(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/allinone/callerid/bean/NumberContent;->setShow_submit_comment_time(J)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/f/e;->b:Lorg/xutils/DbManager;

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

.method public k(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/f/e;->b:Lorg/xutils/DbManager;

    const-class v1, Lcom/allinone/callerid/bean/NumberContent;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    const-string v1, "number"

    const-string v2, "="

    invoke-virtual {v0, v1, v2, p1}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/bean/NumberContent;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/allinone/callerid/bean/NumberContent;->setSubmit_commentst_time(J)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/f/e;->b:Lorg/xutils/DbManager;

    const-string v1, "submit_commentst_time"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/xutils/DbManager;->update(Ljava/lang/Object;[Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/allinone/callerid/bean/NumberContent;

    invoke-direct {v0}, Lcom/allinone/callerid/bean/NumberContent;-><init>()V

    .line 5
    invoke-virtual {v0, p1}, Lcom/allinone/callerid/bean/NumberContent;->setNumber(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/allinone/callerid/bean/NumberContent;->setSubmit_commentst_time(J)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/f/e;->b:Lorg/xutils/DbManager;

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
