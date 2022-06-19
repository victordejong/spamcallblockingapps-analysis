.class public Lcom/kedlin/cca/ui/EveryCallerSignInForm$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kedlin/cca/ui/EveryCallerSignInForm;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/kedlin/cca/ui/EveryCallerSignInForm;


# direct methods
.method public constructor <init>(Lcom/kedlin/cca/ui/EveryCallerSignInForm;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm$c;->a:Lcom/kedlin/cca/ui/EveryCallerSignInForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    check-cast p1, Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm$c;->a:Lcom/kedlin/cca/ui/EveryCallerSignInForm;

    invoke-static {p1}, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->c(Lcom/kedlin/cca/ui/EveryCallerSignInForm;)Landroid/widget/CheckBox;

    move-result-object p1

    const v0, 0x7f11066f

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setText(I)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm$c;->a:Lcom/kedlin/cca/ui/EveryCallerSignInForm;

    invoke-static {p1}, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->b(Lcom/kedlin/cca/ui/EveryCallerSignInForm;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm$c;->a:Lcom/kedlin/cca/ui/EveryCallerSignInForm;

    invoke-static {p1}, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->c(Lcom/kedlin/cca/ui/EveryCallerSignInForm;)Landroid/widget/CheckBox;

    move-result-object p1

    const v0, 0x7f1103ad

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setText(I)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm$c;->a:Lcom/kedlin/cca/ui/EveryCallerSignInForm;

    invoke-static {p1}, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->b(Lcom/kedlin/cca/ui/EveryCallerSignInForm;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm$c;->a:Lcom/kedlin/cca/ui/EveryCallerSignInForm;

    invoke-static {p1}, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->b(Lcom/kedlin/cca/ui/EveryCallerSignInForm;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->invalidate()V

    iget-object p1, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm$c;->a:Lcom/kedlin/cca/ui/EveryCallerSignInForm;

    invoke-static {p1}, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->b(Lcom/kedlin/cca/ui/EveryCallerSignInForm;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm$c;->a:Lcom/kedlin/cca/ui/EveryCallerSignInForm;

    invoke-static {v0}, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->b(Lcom/kedlin/cca/ui/EveryCallerSignInForm;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method
