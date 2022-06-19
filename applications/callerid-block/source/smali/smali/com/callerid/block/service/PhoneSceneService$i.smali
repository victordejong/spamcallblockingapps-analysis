.class Lcom/callerid/block/service/PhoneSceneService$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/f/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/service/PhoneSceneService;->t(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lcom/callerid/block/service/PhoneSceneService;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    iput-object p2, p0, Lcom/callerid/block/service/PhoneSceneService$i;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/callerid/block/service/PhoneSceneService$i;->b:Ljava/lang/String;

    iput p4, p0, Lcom/callerid/block/service/PhoneSceneService$i;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6

    const-string v0, "showfloat_outgoing"

    const-string v1, "testyahu"

    const-string v2, ""

    if-eqz p1, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v2

    invoke-static {}, Lcom/callerid/block/util/k;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "contact"

    invoke-virtual {v2, v3, v4}, Lcom/callerid/block/util/k;->h(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8054\u7cfb\u4eba\u53bb\u7535\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/callerid/block/util/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v1

    const-string v2, "outgoing_contact"

    invoke-virtual {v1, v2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callerid/block/service/PhoneSceneService$i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/callerid/block/util/n0;->a0(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/callerid/block/service/PhoneSceneService$i;->b:Ljava/lang/String;

    iget v3, p0, Lcom/callerid/block/service/PhoneSceneService$i;->c:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, p1}, Lcom/callerid/block/f/c;->h0(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "showfloat_outgoing_contact"

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "show_close_is_contact"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    iget-object v3, p0, Lcom/callerid/block/service/PhoneSceneService$i;->b:Ljava/lang/String;

    iget v4, p0, Lcom/callerid/block/service/PhoneSceneService$i;->c:I

    const/4 v5, 0x1

    invoke-static {p1, v3, v4, v5, v2}, Lcom/callerid/block/f/c;->h0(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    invoke-static {}, Lcom/callerid/block/util/k;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "stranger"

    invoke-virtual {p1, v2, v3}, Lcom/callerid/block/util/k;->h(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u964c\u751f\u4eba\u53bb\u7535\uff1a"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/callerid/block/util/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v1, "outgoing_unkonwn"

    invoke-virtual {p1, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    return-void
.end method
