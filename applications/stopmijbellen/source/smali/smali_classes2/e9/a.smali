.class public Le9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic a:Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;


# direct methods
.method public constructor <init>(Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le9/a;->a:Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le9/a;->a:Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;

    sget v0, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->v0:I

    .line 2
    invoke-virtual {p1}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->d()V

    .line 3
    iget-object p1, p0, Le9/a;->a:Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;

    .line 4
    iget-boolean v0, p1, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->R:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 7
    :goto_0
    iget-object p1, p0, Le9/a;->a:Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->postInvalidate()V

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
