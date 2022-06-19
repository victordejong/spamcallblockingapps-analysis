.class public Le2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic a:Le2/g;


# direct methods
.method public constructor <init>(Le2/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le2/f;->a:Le2/g;

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

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 2
    iget-object p2, p0, Le2/f;->a:Le2/g;

    iget-object p2, p2, Le2/g;->c:Le2/g$a;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 3
    :goto_0
    iget-object p3, p0, Le2/f;->a:Le2/g;

    sget-object p4, Le2/b;->a:Le2/b;

    invoke-virtual {p3, p4}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object p3

    xor-int/lit8 p4, p2, 0x1

    .line 4
    invoke-virtual {p3, p4}, Landroid/view/View;->setEnabled(Z)V

    .line 5
    iget-object p3, p0, Le2/f;->a:Le2/g;

    invoke-virtual {p3, p1, p2}, Le2/g;->e(IZ)V

    .line 6
    iget-object p1, p0, Le2/f;->a:Le2/g;

    iget-object p1, p1, Le2/g;->c:Le2/g$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
