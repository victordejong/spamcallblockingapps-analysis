.class Lcom/callerid/block/mvc/controller/RequestPerActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/RequestPerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/mvc/controller/RequestPerActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/RequestPerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity$a;->b:Lcom/callerid/block/mvc/controller/RequestPerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "request_per_click"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity$a;->b:Lcom/callerid/block/mvc/controller/RequestPerActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/RequestPerActivity;->Q(Lcom/callerid/block/mvc/controller/RequestPerActivity;)V

    return-void
.end method
