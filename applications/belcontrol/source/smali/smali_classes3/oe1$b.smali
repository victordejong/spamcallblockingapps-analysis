.class public final Loe1$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Loe1;->c0(Lcom/kedlin/cca/ui/CCAFragmentActivity;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/kedlin/cca/ui/CCAFragmentActivity;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/kedlin/cca/ui/CCAFragmentActivity;)V
    .locals 0

    iput-object p1, p0, Loe1$b;->a:Ljava/lang/String;

    iput-object p2, p0, Loe1$b;->b:Lcom/kedlin/cca/ui/CCAFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-object p2, Lcom/flexaspect/android/everycallcontrol/ui/base/AbstractPurchaseFragment;->m:Ljava/lang/String;

    iget-object v0, p0, Loe1$b;->a:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Loe1$b;->b:Lcom/kedlin/cca/ui/CCAFragmentActivity;

    const-class v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mycredits/CreditsFragment;

    invoke-virtual {p2, p0, v0, p1}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    return-void
.end method
