.class public Lcom/callerid/block/d/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:Lcom/callerid/block/d/a;


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

    const-string v1, "com.block.adcontent"

    const/4 v2, 0x1

    new-instance v3, Lcom/callerid/block/d/a$a;

    invoke-direct {v3, p0}, Lcom/callerid/block/d/a$a;-><init>(Lcom/callerid/block/d/a;)V

    invoke-static {v0, v1, v2, v3}, Lcom/lidroid/xutils/DbUtils;->create(Landroid/content/Context;Ljava/lang/String;ILcom/lidroid/xutils/DbUtils$DbUpgradeListener;)Lcom/lidroid/xutils/DbUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/d/a;->a:Lcom/lidroid/xutils/DbUtils;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static c()Lcom/callerid/block/d/a;
    .locals 1

    sget-object v0, Lcom/callerid/block/d/a;->b:Lcom/callerid/block/d/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/callerid/block/d/a;

    invoke-direct {v0}, Lcom/callerid/block/d/a;-><init>()V

    sput-object v0, Lcom/callerid/block/d/a;->b:Lcom/callerid/block/d/a;

    :cond_0
    sget-object v0, Lcom/callerid/block/d/a;->b:Lcom/callerid/block/d/a;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 6

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/callerid/block/d/a;->a:Lcom/lidroid/xutils/DbUtils;

    const-class v2, Lcom/callerid/block/bean/AdContent;

    invoke-static {v2}, Lcom/lidroid/xutils/db/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v2

    const-string v3, "adname"

    const-string v4, "="

    const-string v5, "firstname"

    invoke-virtual {v2, v3, v4, v5}, Lcom/lidroid/xutils/db/sqlite/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lidroid/xutils/DbUtils;->findFirst(Lcom/lidroid/xutils/db/sqlite/Selector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callerid/block/bean/AdContent;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/callerid/block/bean/AdContent;->isSelected()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method public b()V
    .locals 5

    const-string v0, "firstname"

    :try_start_0
    iget-object v1, p0, Lcom/callerid/block/d/a;->a:Lcom/lidroid/xutils/DbUtils;

    const-class v2, Lcom/callerid/block/bean/AdContent;

    invoke-static {v2}, Lcom/lidroid/xutils/db/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v2

    const-string v3, "adname"

    const-string v4, "="

    invoke-virtual {v2, v3, v4, v0}, Lcom/lidroid/xutils/db/sqlite/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lidroid/xutils/DbUtils;->findFirst(Lcom/lidroid/xutils/db/sqlite/Selector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callerid/block/bean/AdContent;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lcom/callerid/block/bean/AdContent;->setSelected(Z)V

    iget-object v0, p0, Lcom/callerid/block/d/a;->a:Lcom/lidroid/xutils/DbUtils;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "isSelected"

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/lidroid/xutils/DbUtils;->update(Ljava/lang/Object;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/callerid/block/bean/AdContent;

    invoke-direct {v1}, Lcom/callerid/block/bean/AdContent;-><init>()V

    invoke-virtual {v1, v0}, Lcom/callerid/block/bean/AdContent;->setAdname(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/callerid/block/bean/AdContent;->setSelected(Z)V

    iget-object v0, p0, Lcom/callerid/block/d/a;->a:Lcom/lidroid/xutils/DbUtils;

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/DbUtils;->saveOrUpdate(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 5

    const-string v0, "firstname"

    :try_start_0
    iget-object v1, p0, Lcom/callerid/block/d/a;->a:Lcom/lidroid/xutils/DbUtils;

    const-class v2, Lcom/callerid/block/bean/AdContent;

    invoke-static {v2}, Lcom/lidroid/xutils/db/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v2

    const-string v3, "adname"

    const-string v4, "="

    invoke-virtual {v2, v3, v4, v0}, Lcom/lidroid/xutils/db/sqlite/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lidroid/xutils/DbUtils;->findFirst(Lcom/lidroid/xutils/db/sqlite/Selector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callerid/block/bean/AdContent;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lcom/callerid/block/bean/AdContent;->setSelected(Z)V

    iget-object v0, p0, Lcom/callerid/block/d/a;->a:Lcom/lidroid/xutils/DbUtils;

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "isSelected"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lidroid/xutils/DbUtils;->update(Ljava/lang/Object;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/callerid/block/bean/AdContent;

    invoke-direct {v1}, Lcom/callerid/block/bean/AdContent;-><init>()V

    invoke-virtual {v1, v0}, Lcom/callerid/block/bean/AdContent;->setAdname(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/callerid/block/bean/AdContent;->setSelected(Z)V

    iget-object v0, p0, Lcom/callerid/block/d/a;->a:Lcom/lidroid/xutils/DbUtils;

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/DbUtils;->saveOrUpdate(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
