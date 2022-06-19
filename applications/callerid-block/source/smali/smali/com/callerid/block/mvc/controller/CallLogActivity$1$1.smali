.class Lcom/callerid/block/mvc/controller/CallLogActivity$1$1;
.super Lcom/rey/material/app/SimpleDialog$Builder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/CallLogActivity$1;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic n:I

.field final synthetic o:Lcom/callerid/block/mvc/controller/CallLogActivity$1;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/CallLogActivity$1;II)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/CallLogActivity$1$1;->o:Lcom/callerid/block/mvc/controller/CallLogActivity$1;

    iput p3, p0, Lcom/callerid/block/mvc/controller/CallLogActivity$1$1;->n:I

    invoke-direct {p0, p2}, Lcom/rey/material/app/SimpleDialog$Builder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/rey/material/app/a;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/rey/material/app/Dialog$Builder;->a(Lcom/rey/material/app/a;)V

    return-void
.end method

.method public d(Lcom/rey/material/app/a;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/rey/material/app/Dialog$Builder;->d(Lcom/rey/material/app/a;)V

    :try_start_0
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/CallLogActivity$1$1;->o:Lcom/callerid/block/mvc/controller/CallLogActivity$1;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/CallLogActivity$1;->a:Lcom/callerid/block/mvc/controller/CallLogActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/CallLogActivity$1$1;->o:Lcom/callerid/block/mvc/controller/CallLogActivity$1;

    iget-object v0, v0, Lcom/callerid/block/mvc/controller/CallLogActivity$1;->a:Lcom/callerid/block/mvc/controller/CallLogActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/CallLogActivity;->Q(Lcom/callerid/block/mvc/controller/CallLogActivity;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/callerid/block/mvc/controller/CallLogActivity$1$1;->n:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/callerid/block/mvc/controller/CallLogActivity$1$1$a;

    invoke-direct {v1, p0}, Lcom/callerid/block/mvc/controller/CallLogActivity$1$1$a;-><init>(Lcom/callerid/block/mvc/controller/CallLogActivity$1$1;)V

    invoke-static {p1, v0, v1}, Lcom/callerid/block/h/a/d/g;->b(Landroid/content/Context;Ljava/lang/String;Lcom/callerid/block/h/a/d/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected i(Lcom/rey/material/app/Dialog;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Lcom/rey/material/app/Dialog;->K(II)Lcom/rey/material/app/Dialog;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/rey/material/app/Dialog;->r0(Landroid/graphics/Typeface;)Lcom/rey/material/app/Dialog;

    return-void
.end method
