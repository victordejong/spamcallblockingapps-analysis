.class public Lcom/kedlin/cca/ui/CCAFragmentActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kedlin/cca/ui/CCAFragmentActivity;->w(Ljava/lang/String;Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/EditText;

.field public final synthetic b:Landroid/app/AlertDialog;

.field public final synthetic c:Lcom/kedlin/cca/ui/CCAFragmentActivity;


# direct methods
.method public constructor <init>(Lcom/kedlin/cca/ui/CCAFragmentActivity;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/CCAFragmentActivity$a;->c:Lcom/kedlin/cca/ui/CCAFragmentActivity;

    iput-object p2, p0, Lcom/kedlin/cca/ui/CCAFragmentActivity$a;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/kedlin/cca/ui/CCAFragmentActivity$a;->b:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/kedlin/cca/ui/CCAFragmentActivity$a;->a:Landroid/widget/EditText;

    const v0, 0x7f0a04b3

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Li91;->s()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Li91;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/kedlin/cca/ui/CCAFragmentActivity$a;->c:Lcom/kedlin/cca/ui/CCAFragmentActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1, v1}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->p(Lcom/kedlin/cca/ui/CCAFragmentActivity;Li91;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/kedlin/cca/ui/CCAFragmentActivity$a;->b:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    return-void
.end method
