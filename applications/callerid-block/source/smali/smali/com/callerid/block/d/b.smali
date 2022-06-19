.class public Lcom/callerid/block/d/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:Lcom/callerid/block/d/b;


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

    const-string v1, "collectuserinfo"

    const/4 v2, 0x1

    new-instance v3, Lcom/callerid/block/d/b$a;

    invoke-direct {v3, p0}, Lcom/callerid/block/d/b$a;-><init>(Lcom/callerid/block/d/b;)V

    invoke-static {v0, v1, v2, v3}, Lcom/lidroid/xutils/DbUtils;->create(Landroid/content/Context;Ljava/lang/String;ILcom/lidroid/xutils/DbUtils$DbUpgradeListener;)Lcom/lidroid/xutils/DbUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/d/b;->a:Lcom/lidroid/xutils/DbUtils;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static b()Lcom/callerid/block/d/b;
    .locals 1

    sget-object v0, Lcom/callerid/block/d/b;->b:Lcom/callerid/block/d/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/callerid/block/d/b;

    invoke-direct {v0}, Lcom/callerid/block/d/b;-><init>()V

    sput-object v0, Lcom/callerid/block/d/b;->b:Lcom/callerid/block/d/b;

    :cond_0
    sget-object v0, Lcom/callerid/block/d/b;->b:Lcom/callerid/block/d/b;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/d/b;->a:Lcom/lidroid/xutils/DbUtils;

    const-class v1, Lcom/callerid/block/bean/CollectInfo;

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

.method public c(Lcom/callerid/block/bean/CollectInfo;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/d/b;->a:Lcom/lidroid/xutils/DbUtils;

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

.method public d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callerid/block/bean/CollectInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/d/b;->a:Lcom/lidroid/xutils/DbUtils;

    const-class v1, Lcom/callerid/block/bean/CollectInfo;

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/DbUtils;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Lcom/lidroid/xutils/exception/DbException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method
