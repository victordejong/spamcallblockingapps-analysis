.class public Lo8/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic a:Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;

.field public final synthetic b:Lcom/mglab/scm/visual/c;


# direct methods
.method public constructor <init>(Lcom/mglab/scm/visual/c;Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo8/h0;->b:Lcom/mglab/scm/visual/c;

    iput-object p2, p0, Lo8/h0;->a:Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/mglab/scm/visual/c;->k:Le2/g;

    sget-object v1, Le2/b;->a:Le2/b;

    invoke-virtual {v0, v1}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lo8/h0;->a:Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;

    iget-object v0, p0, Lo8/h0;->b:Lcom/mglab/scm/visual/c;

    .line 4
    iget-object v0, v0, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1100ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
