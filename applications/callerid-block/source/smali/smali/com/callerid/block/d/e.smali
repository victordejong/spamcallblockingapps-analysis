.class public Lcom/callerid/block/d/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:Lcom/callerid/block/d/e;


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

    const-string v1, "whatsapp_call_number"

    const/4 v2, 0x1

    new-instance v3, Lcom/callerid/block/d/e$a;

    invoke-direct {v3, p0}, Lcom/callerid/block/d/e$a;-><init>(Lcom/callerid/block/d/e;)V

    invoke-static {v0, v1, v2, v3}, Lcom/lidroid/xutils/DbUtils;->create(Landroid/content/Context;Ljava/lang/String;ILcom/lidroid/xutils/DbUtils$DbUpgradeListener;)Lcom/lidroid/xutils/DbUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/d/e;->a:Lcom/lidroid/xutils/DbUtils;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a()Lcom/callerid/block/d/e;
    .locals 1

    sget-object v0, Lcom/callerid/block/d/e;->b:Lcom/callerid/block/d/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/callerid/block/d/e;

    invoke-direct {v0}, Lcom/callerid/block/d/e;-><init>()V

    sput-object v0, Lcom/callerid/block/d/e;->b:Lcom/callerid/block/d/e;

    :cond_0
    sget-object v0, Lcom/callerid/block/d/e;->b:Lcom/callerid/block/d/e;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lcom/callerid/block/bean/WhatsAppBean;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/d/e;->a:Lcom/lidroid/xutils/DbUtils;

    const-class v1, Lcom/callerid/block/bean/WhatsAppBean;

    invoke-static {v1}, Lcom/lidroid/xutils/db/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v1

    const-string v2, "number"

    const-string v3, "="

    invoke-virtual {v1, v2, v3, p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/DbUtils;->findFirst(Lcom/lidroid/xutils/db/sqlite/Selector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/bean/WhatsAppBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callerid/block/bean/WhatsAppBean;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/d/e;->a:Lcom/lidroid/xutils/DbUtils;

    const-class v1, Lcom/callerid/block/bean/WhatsAppBean;

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/DbUtils;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Lcom/callerid/block/bean/WhatsAppBean;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/d/e;->a:Lcom/lidroid/xutils/DbUtils;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/DbUtils;->saveOrUpdate(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public varargs e(Lcom/callerid/block/bean/WhatsAppBean;[Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/d/e;->a:Lcom/lidroid/xutils/DbUtils;

    invoke-virtual {v0, p1, p2}, Lcom/lidroid/xutils/DbUtils;->update(Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
