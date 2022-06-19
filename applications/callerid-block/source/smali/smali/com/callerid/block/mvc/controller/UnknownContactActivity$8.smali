.class Lcom/callerid/block/mvc/controller/UnknownContactActivity$8;
.super Lcom/rey/material/app/SimpleDialog$Builder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/UnknownContactActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic n:Lcom/callerid/block/mvc/controller/UnknownContactActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/UnknownContactActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$8;->n:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

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
    new-instance p1, Lcom/callerid/block/mvc/controller/UnknownContactActivity$m;

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$8;->n:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-direct {p1, v0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity$m;-><init>(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
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

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$8;->n:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/UnknownContactActivity;->n0(Lcom/callerid/block/mvc/controller/UnknownContactActivity;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/rey/material/app/Dialog;->r0(Landroid/graphics/Typeface;)Lcom/rey/material/app/Dialog;

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/UnknownContactActivity$8;->n:Lcom/callerid/block/mvc/controller/UnknownContactActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/callerid/block/util/t0;->e0(Lcom/rey/material/app/Dialog;I)V

    return-void
.end method
