.class public Lcom/callerid/block/d/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:Lcom/callerid/block/d/d;


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

    const-string v1, "com.callid.search.vest"

    const/4 v2, 0x5

    new-instance v3, Lcom/callerid/block/d/d$a;

    invoke-direct {v3, p0}, Lcom/callerid/block/d/d$a;-><init>(Lcom/callerid/block/d/d;)V

    invoke-static {v0, v1, v2, v3}, Lcom/lidroid/xutils/DbUtils;->create(Landroid/content/Context;Ljava/lang/String;ILcom/lidroid/xutils/DbUtils$DbUpgradeListener;)Lcom/lidroid/xutils/DbUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/d/d;->a:Lcom/lidroid/xutils/DbUtils;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static b()Lcom/callerid/block/d/d;
    .locals 1

    sget-object v0, Lcom/callerid/block/d/d;->b:Lcom/callerid/block/d/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/callerid/block/d/d;

    invoke-direct {v0}, Lcom/callerid/block/d/d;-><init>()V

    sput-object v0, Lcom/callerid/block/d/d;->b:Lcom/callerid/block/d/d;

    :cond_0
    sget-object v0, Lcom/callerid/block/d/d;->b:Lcom/callerid/block/d/d;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/d/d;->a:Lcom/lidroid/xutils/DbUtils;

    const-class v1, Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/DbUtils;->deleteAll(Ljava/lang/Class;)V
    :try_end_0
    .catch Lcom/lidroid/xutils/exception/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public c(Lcom/callerid/block/bean/EZSearchContacts;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/d/d;->a:Lcom/lidroid/xutils/DbUtils;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/DbUtils;->saveOrUpdate(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/lidroid/xutils/exception/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/callerid/block/bean/EZSearchContacts;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/d/d;->a:Lcom/lidroid/xutils/DbUtils;

    const-class v1, Lcom/callerid/block/bean/EZSearchContacts;

    invoke-static {v1}, Lcom/lidroid/xutils/db/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v1

    const-string v2, "old_tel_number"

    const-string v3, "="

    invoke-virtual {v1, v2, v3, p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/DbUtils;->findFirst(Lcom/lidroid/xutils/db/sqlite/Selector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/bean/EZSearchContacts;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Lcom/callerid/block/bean/EZSearchContacts;
    .locals 4

    const-string v0, "="

    const-string v1, "old_tel_number"

    :try_start_0
    iget-object v2, p0, Lcom/callerid/block/d/d;->a:Lcom/lidroid/xutils/DbUtils;

    const-class v3, Lcom/callerid/block/bean/EZSearchContacts;

    invoke-static {v3}, Lcom/lidroid/xutils/db/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v3

    invoke-virtual {v3, v1, v0, p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object p1

    invoke-virtual {p1, v1, v0, p2}, Lcom/lidroid/xutils/db/sqlite/Selector;->or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/lidroid/xutils/DbUtils;->findFirst(Lcom/lidroid/xutils/db/sqlite/Selector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/bean/EZSearchContacts;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public varargs f(Lcom/callerid/block/bean/EZSearchContacts;[Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/d/d;->a:Lcom/lidroid/xutils/DbUtils;

    invoke-virtual {v0, p1, p2}, Lcom/lidroid/xutils/DbUtils;->update(Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/lidroid/xutils/exception/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
