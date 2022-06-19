.class Lcom/callerid/block/fragment/EZCallLogFragment$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/fragment/EZCallLogFragment;->q0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/fragment/EZCallLogFragment;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/EZCallLogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$e;->b:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment$e;->b:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {v0}, Lcom/callerid/block/fragment/EZCallLogFragment;->f2(Lcom/callerid/block/fragment/EZCallLogFragment;)Lcom/callerid/block/main/MainActivity;

    move-result-object v0

    const-class v1, Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment$e;->b:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->z1(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$e;->b:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->f2(Lcom/callerid/block/fragment/EZCallLogFragment;)Lcom/callerid/block/main/MainActivity;

    move-result-object p1

    const v0, 0x7f010002

    const v1, 0x7f010009

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
