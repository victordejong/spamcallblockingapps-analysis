.class public Lcom/callerid/block/d/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:Lcom/callerid/block/d/c;


# instance fields
.field private a:Lcom/lidroid/xutils/DbUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    const-string v1, "reportnumberdb"

    const/4 v2, 0x2

    new-instance v3, Lcom/callerid/block/d/c$a;

    invoke-direct {v3, p0}, Lcom/callerid/block/d/c$a;-><init>(Lcom/callerid/block/d/c;)V

    invoke-static {v0, v1, v2, v3}, Lcom/lidroid/xutils/DbUtils;->create(Landroid/content/Context;Ljava/lang/String;ILcom/lidroid/xutils/DbUtils$DbUpgradeListener;)Lcom/lidroid/xutils/DbUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/d/c;->a:Lcom/lidroid/xutils/DbUtils;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static c()Lcom/callerid/block/d/c;
    .locals 1

    sget-object v0, Lcom/callerid/block/d/c;->b:Lcom/callerid/block/d/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/callerid/block/d/c;

    invoke-direct {v0}, Lcom/callerid/block/d/c;-><init>()V

    sput-object v0, Lcom/callerid/block/d/c;->b:Lcom/callerid/block/d/c;

    :cond_0
    sget-object v0, Lcom/callerid/block/d/c;->b:Lcom/callerid/block/d/c;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/callerid/block/d/c;->a:Lcom/lidroid/xutils/DbUtils;

    const-class v2, Lcom/callerid/block/bean/NumberContent;

    invoke-static {v2}, Lcom/lidroid/xutils/db/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v2

    const-string v3, "number"

    const-string v4, "="

    invoke-virtual {v2, v3, v4, p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/lidroid/xutils/DbUtils;->findFirst(Lcom/lidroid/xutils/db/sqlite/Selector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/bean/NumberContent;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/callerid/block/bean/NumberContent;->is_reported()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/callerid/block/bean/NumberContent;->getReported_time()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    cmp-long p1, v1, v3

    if-gez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/callerid/block/d/c;->a:Lcom/lidroid/xutils/DbUtils;

    const-class v2, Lcom/callerid/block/bean/NumberContent;

    invoke-static {v2}, Lcom/lidroid/xutils/db/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v2

    const-string v3, "number"

    const-string v4, "="

    invoke-virtual {v2, v3, v4, p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/lidroid/xutils/DbUtils;->findFirst(Lcom/lidroid/xutils/db/sqlite/Selector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/bean/NumberContent;

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/callerid/block/bean/NumberContent;->getSuggest_time()J

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

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/d/c;->a:Lcom/lidroid/xutils/DbUtils;

    const-class v1, Lcom/callerid/block/bean/NumberContent;

    invoke-static {v1}, Lcom/lidroid/xutils/db/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v1

    const-string v2, "number"

    const-string v3, "="

    invoke-virtual {v1, v2, v3, p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/DbUtils;->findFirst(Lcom/lidroid/xutils/db/sqlite/Selector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/bean/NumberContent;

    const-wide/32 v1, 0x2932e00

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/callerid/block/bean/NumberContent;->setSuggest_time(J)V

    iget-object p1, p0, Lcom/callerid/block/d/c;->a:Lcom/lidroid/xutils/DbUtils;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "suggest_time"

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/lidroid/xutils/DbUtils;->update(Ljava/lang/Object;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/callerid/block/bean/NumberContent;

    invoke-direct {v0}, Lcom/callerid/block/bean/NumberContent;-><init>()V

    invoke-virtual {v0, p1}, Lcom/callerid/block/bean/NumberContent;->setNumber(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/callerid/block/bean/NumberContent;->setSuggest_time(J)V

    iget-object p1, p0, Lcom/callerid/block/d/c;->a:Lcom/lidroid/xutils/DbUtils;

    invoke-virtual {p1, v0}, Lcom/lidroid/xutils/DbUtils;->saveOrUpdate(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/lidroid/xutils/exception/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/d/c;->a:Lcom/lidroid/xutils/DbUtils;

    const-class v1, Lcom/callerid/block/bean/NumberContent;

    invoke-static {v1}, Lcom/lidroid/xutils/db/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v1

    const-string v2, "number"

    const-string v3, "="

    invoke-virtual {v1, v2, v3, p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/DbUtils;->findFirst(Lcom/lidroid/xutils/db/sqlite/Selector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/bean/NumberContent;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/callerid/block/bean/NumberContent;->setIs_reported(Z)V

    iget-object p1, p0, Lcom/callerid/block/d/c;->a:Lcom/lidroid/xutils/DbUtils;

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "is_reported"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v2}, Lcom/lidroid/xutils/DbUtils;->update(Ljava/lang/Object;[Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/callerid/block/bean/NumberContent;->setReported_time(J)V

    iget-object p1, p0, Lcom/callerid/block/d/c;->a:Lcom/lidroid/xutils/DbUtils;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "reported_time"

    aput-object v2, v1, v4

    invoke-virtual {p1, v0, v1}, Lcom/lidroid/xutils/DbUtils;->update(Ljava/lang/Object;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/callerid/block/bean/NumberContent;

    invoke-direct {v0}, Lcom/callerid/block/bean/NumberContent;-><init>()V

    invoke-virtual {v0, p1}, Lcom/callerid/block/bean/NumberContent;->setNumber(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/callerid/block/bean/NumberContent;->setIs_reported(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/callerid/block/bean/NumberContent;->setReported_time(J)V

    iget-object p1, p0, Lcom/callerid/block/d/c;->a:Lcom/lidroid/xutils/DbUtils;

    invoke-virtual {p1, v0}, Lcom/lidroid/xutils/DbUtils;->saveOrUpdate(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
