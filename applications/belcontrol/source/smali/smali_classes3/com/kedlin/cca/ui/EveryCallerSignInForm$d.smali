.class public Lcom/kedlin/cca/ui/EveryCallerSignInForm$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    iput-object p1, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm$d;->a:Lcom/kedlin/cca/ui/EveryCallerSignInForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    if-eqz p2, :cond_0

    return-void

    :cond_0
    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p2, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    iget-object p2, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm$d;->a:Lcom/kedlin/cca/ui/EveryCallerSignInForm;

    invoke-static {p2}, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->a(Lcom/kedlin/cca/ui/EveryCallerSignInForm;)Landroid/widget/EditText;

    move-result-object p2

    const v0, 0x7f060191

    const v1, 0x7f060199

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm$d;->a:Lcom/kedlin/cca/ui/EveryCallerSignInForm;

    invoke-static {p1}, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->a(Lcom/kedlin/cca/ui/EveryCallerSignInForm;)Landroid/widget/EditText;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->e(Lcom/kedlin/cca/ui/EveryCallerSignInForm;Landroid/widget/TextView;)Z

    move-result p1

    iget-object p2, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm$d;->a:Lcom/kedlin/cca/ui/EveryCallerSignInForm;

    invoke-static {p2}, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->a(Lcom/kedlin/cca/ui/EveryCallerSignInForm;)Landroid/widget/EditText;

    move-result-object v2

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const v0, 0x7f060199

    :goto_0
    invoke-static {p2, v2, v0}, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->d(Lcom/kedlin/cca/ui/EveryCallerSignInForm;Landroid/widget/EditText;I)V

    return-void

    :cond_3
    iget-object p2, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm$d;->a:Lcom/kedlin/cca/ui/EveryCallerSignInForm;

    invoke-static {p2}, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->b(Lcom/kedlin/cca/ui/EveryCallerSignInForm;)Landroid/widget/EditText;

    move-result-object p2

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm$d;->a:Lcom/kedlin/cca/ui/EveryCallerSignInForm;

    invoke-static {p1}, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->b(Lcom/kedlin/cca/ui/EveryCallerSignInForm;)Landroid/widget/EditText;

    move-result-object p2

    iget-object v2, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm$d;->a:Lcom/kedlin/cca/ui/EveryCallerSignInForm;

    invoke-static {v2}, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->b(Lcom/kedlin/cca/ui/EveryCallerSignInForm;)Landroid/widget/EditText;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->e(Lcom/kedlin/cca/ui/EveryCallerSignInForm;Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const v0, 0x7f060199

    :goto_1
    invoke-static {p1, p2, v0}, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->d(Lcom/kedlin/cca/ui/EveryCallerSignInForm;Landroid/widget/EditText;I)V

    :cond_5
    return-void

    :cond_6
    :goto_2
    iget-object p2, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm$d;->a:Lcom/kedlin/cca/ui/EveryCallerSignInForm;

    check-cast p1, Landroid/widget/EditText;

    const v0, 0x7f060192

    invoke-static {p2, p1, v0}, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->d(Lcom/kedlin/cca/ui/EveryCallerSignInForm;Landroid/widget/EditText;I)V

    return-void
.end method
