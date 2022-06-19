.class Lcom/callerid/block/service/PhoneSceneService$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/f/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/service/PhoneSceneService;->r(Landroid/content/Context;IJILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:J


# direct methods
.method constructor <init>(Lcom/callerid/block/service/PhoneSceneService;ILandroid/content/Context;ILjava/lang/String;J)V
    .locals 0

    iput p2, p0, Lcom/callerid/block/service/PhoneSceneService$f;->a:I

    iput-object p3, p0, Lcom/callerid/block/service/PhoneSceneService$f;->b:Landroid/content/Context;

    iput p4, p0, Lcom/callerid/block/service/PhoneSceneService$f;->c:I

    iput-object p5, p0, Lcom/callerid/block/service/PhoneSceneService$f;->d:Ljava/lang/String;

    iput-wide p6, p0, Lcom/callerid/block/service/PhoneSceneService$f;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u59d3\u540d\u4e3a=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "outgoginghangup"

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/callerid/block/service/PhoneSceneService$f;->a:I

    if-nez p1, :cond_1

    const-string p1, "\u8054\u7cfb\u4eba\u5df2\u63a5\u6302\u65ad"

    invoke-static {v1, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callerid/block/service/PhoneSceneService$f;->b:Landroid/content/Context;

    iget v3, p0, Lcom/callerid/block/service/PhoneSceneService$f;->c:I

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "\u964c\u751f\u4eba\u6765\u7535\u63a5\u542c\u6302\u65ad"

    invoke-static {v1, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callerid/block/service/PhoneSceneService$f;->b:Landroid/content/Context;

    iget v3, p0, Lcom/callerid/block/service/PhoneSceneService$f;->c:I

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/callerid/block/service/PhoneSceneService$f;->d:Ljava/lang/String;

    iget-wide v6, p0, Lcom/callerid/block/service/PhoneSceneService$f;->e:J

    const/4 v8, 0x5

    invoke-static/range {v2 .. v8}, Lcom/callerid/block/util/m0;->b(Landroid/content/Context;IILjava/lang/String;JI)V

    :cond_1
    return-void
.end method
