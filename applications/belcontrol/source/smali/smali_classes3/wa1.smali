.class public final synthetic Lwa1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/kedlin/cca/ui/CCAFragmentActivity;

.field public final synthetic b:Landroid/widget/EditText;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/kedlin/cca/ui/CCAFragmentActivity;Landroid/widget/EditText;Landroid/view/View;Landroid/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwa1;->a:Lcom/kedlin/cca/ui/CCAFragmentActivity;

    iput-object p2, p0, Lwa1;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lwa1;->c:Landroid/view/View;

    iput-object p4, p0, Lwa1;->d:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lwa1;->a:Lcom/kedlin/cca/ui/CCAFragmentActivity;

    iget-object v1, p0, Lwa1;->b:Landroid/widget/EditText;

    iget-object v2, p0, Lwa1;->c:Landroid/view/View;

    iget-object v3, p0, Lwa1;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->y(Landroid/widget/EditText;Landroid/view/View;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method
