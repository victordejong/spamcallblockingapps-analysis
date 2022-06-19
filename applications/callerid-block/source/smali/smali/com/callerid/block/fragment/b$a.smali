.class Lcom/callerid/block/fragment/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/fragment/b;->L0(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/fragment/b;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/b;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/b$a;->b:Lcom/callerid/block/fragment/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/callerid/block/fragment/b$a;->b:Lcom/callerid/block/fragment/b;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/callerid/block/fragment/b$a;->b:Lcom/callerid/block/fragment/b;

    invoke-static {v1}, Lcom/callerid/block/fragment/b;->F1(Lcom/callerid/block/fragment/b;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/callerid/block/mvc/controller/SelectContactsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->z1(Landroid/content/Intent;)V

    return-void
.end method
