.class public Lcom/kedlin/cca/ui/EveryCallerSignInForm$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


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

    iput-object p1, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm$a;->a:Lcom/kedlin/cca/ui/EveryCallerSignInForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm$a;->a:Lcom/kedlin/cca/ui/EveryCallerSignInForm;

    invoke-static {p1}, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->a(Lcom/kedlin/cca/ui/EveryCallerSignInForm;)Landroid/widget/EditText;

    move-result-object p1

    sget-object p2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 p3, 0x2

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/kedlin/cca/ui/EveryCallerSignInForm$a;->a:Lcom/kedlin/cca/ui/EveryCallerSignInForm;

    invoke-static {p1}, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->a(Lcom/kedlin/cca/ui/EveryCallerSignInForm;)Landroid/widget/EditText;

    move-result-object p1

    sget-object p2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method
