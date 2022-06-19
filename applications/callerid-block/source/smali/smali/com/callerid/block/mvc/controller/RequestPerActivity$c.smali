.class Lcom/callerid/block/mvc/controller/RequestPerActivity$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/util/x0/a$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/RequestPerActivity;->a0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/mvc/controller/RequestPerActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/RequestPerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity$c;->a:Lcom/callerid/block/mvc/controller/RequestPerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "wbb"

    const-string v1, "\u5f00\u542f\u4e86\u6743\u9650"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity$c;->a:Lcom/callerid/block/mvc/controller/RequestPerActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/RequestPerActivity;->T(Lcom/callerid/block/mvc/controller/RequestPerActivity;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity$c;->a:Lcom/callerid/block/mvc/controller/RequestPerActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/RequestPerActivity;->U(Lcom/callerid/block/mvc/controller/RequestPerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "request_permission_enabled"

    invoke-virtual {v0, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
