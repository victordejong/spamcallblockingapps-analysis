.class Lcom/callerid/block/mvc/controller/RequestPerActivity$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/RequestPerActivity;->Z()V
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

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity$b;->b:Lcom/callerid/block/mvc/controller/RequestPerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090139

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "ou_meng_dialog_click"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity$b;->b:Lcom/callerid/block/mvc/controller/RequestPerActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/RequestPerActivity;->R(Lcom/callerid/block/mvc/controller/RequestPerActivity;)Lcom/callerid/block/e/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callerid/block/e/b;->dismiss()V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/RequestPerActivity$b;->b:Lcom/callerid/block/mvc/controller/RequestPerActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/RequestPerActivity;->S(Lcom/callerid/block/mvc/controller/RequestPerActivity;)V

    :goto_0
    return-void
.end method
