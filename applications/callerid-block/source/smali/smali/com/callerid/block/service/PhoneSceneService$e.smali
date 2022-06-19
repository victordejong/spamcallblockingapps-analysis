.class Lcom/callerid/block/service/PhoneSceneService$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/f/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/service/PhoneSceneService;->k(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/callerid/block/service/PhoneSceneService;


# direct methods
.method constructor <init>(Lcom/callerid/block/service/PhoneSceneService;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/service/PhoneSceneService$e;->c:Lcom/callerid/block/service/PhoneSceneService;

    iput-object p2, p0, Lcom/callerid/block/service/PhoneSceneService$e;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/callerid/block/service/PhoneSceneService$e;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/n0;->b(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/callerid/block/service/PhoneSceneService$e;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/callerid/block/util/n0;->E(Landroid/content/Context;)J

    move-result-wide v4

    cmp-long p1, v0, v4

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/callerid/block/service/PhoneSceneService$e;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/callerid/block/util/n0;->E(Landroid/content/Context;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "0"

    :goto_0
    iget-object v0, p0, Lcom/callerid/block/service/PhoneSceneService$e;->c:Lcom/callerid/block/service/PhoneSceneService;

    iget-object v1, p0, Lcom/callerid/block/service/PhoneSceneService$e;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/callerid/block/service/PhoneSceneService$e;->b:Ljava/lang/String;

    const-string v5, "1"

    invoke-static {v0, v1, v4, v5, p1}, Lcom/callerid/block/service/PhoneSceneService;->e(Lcom/callerid/block/service/PhoneSceneService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    invoke-static {p1, v2, v3}, Lcom/callerid/block/util/n0;->l0(Landroid/content/Context;J)V

    :goto_1
    return-void
.end method
