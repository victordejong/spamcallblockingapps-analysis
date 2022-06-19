.class public Lcom/mglab/scm/visual/c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mglab/scm/visual/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Landroid/widget/EditText;

.field public d:Ljava/lang/String;

.field public e:I

.field public final synthetic f:Lcom/mglab/scm/visual/c;


# direct methods
.method public constructor <init>(Lcom/mglab/scm/visual/c;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mglab/scm/visual/c$e;->f:Lcom/mglab/scm/visual/c;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/mglab/scm/visual/c$e;->c:Landroid/widget/EditText;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/mglab/scm/visual/c$e;->a:Z

    .line 5
    iput-boolean p1, p0, Lcom/mglab/scm/visual/c$e;->b:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 1
    sget-object v0, Lcom/mglab/scm/visual/c;->k:Le2/g;

    sget-object v1, Le2/b;->a:Le2/b;

    invoke-virtual {v0, v1}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object v0

    iget-object v2, p0, Lcom/mglab/scm/visual/c$e;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/mglab/scm/visual/c$e;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mglab/scm/visual/c$e;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mglab/scm/visual/c$e;->f:Lcom/mglab/scm/visual/c;

    .line 4
    iget-object v1, v1, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mglab/scm/visual/c$e;->f:Lcom/mglab/scm/visual/c;

    .line 7
    iget v2, v0, Lcom/mglab/scm/visual/c;->d:I

    const/4 v4, 0x2

    const v5, 0x7f1100b7

    const v6, 0x7f1100bc

    const/4 v7, 0x0

    if-ne v2, v4, :cond_2

    .line 8
    iget-boolean v0, v0, Lcom/mglab/scm/visual/c;->e:Z

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/mglab/scm/visual/c$e;->d:Ljava/lang/String;

    invoke-static {v0}, Lh8/q;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    sget-object v0, Lcom/mglab/scm/visual/c;->k:Le2/g;

    invoke-virtual {v0, v1}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 11
    iget-object v0, p0, Lcom/mglab/scm/visual/c$e;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mglab/scm/visual/c$e;->f:Lcom/mglab/scm/visual/c;

    .line 12
    iget-object v1, v1, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/mglab/scm/visual/c$e;->d:Ljava/lang/String;

    invoke-static {v0}, Lh8/q;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    sget-object v0, Lcom/mglab/scm/visual/c;->k:Le2/g;

    invoke-virtual {v0, v1}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 16
    iget-object v0, p0, Lcom/mglab/scm/visual/c$e;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mglab/scm/visual/c$e;->f:Lcom/mglab/scm/visual/c;

    .line 17
    iget-object v1, v1, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    if-ne v2, v3, :cond_4

    .line 19
    iget-boolean v0, v0, Lcom/mglab/scm/visual/c;->e:Z

    if-eqz v0, :cond_3

    .line 20
    iget-object v0, p0, Lcom/mglab/scm/visual/c$e;->d:Ljava/lang/String;

    invoke-static {v0}, Lh8/q;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    sget-object v0, Lcom/mglab/scm/visual/c;->k:Le2/g;

    invoke-virtual {v0, v1}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 22
    iget-object v0, p0, Lcom/mglab/scm/visual/c$e;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mglab/scm/visual/c$e;->f:Lcom/mglab/scm/visual/c;

    .line 23
    iget-object v1, v1, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 25
    :cond_3
    iget-object v0, p0, Lcom/mglab/scm/visual/c$e;->d:Ljava/lang/String;

    invoke-static {v0}, Lh8/q;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26
    sget-object v0, Lcom/mglab/scm/visual/c;->k:Le2/g;

    invoke-virtual {v0, v1}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 27
    iget-object v0, p0, Lcom/mglab/scm/visual/c$e;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mglab/scm/visual/c$e;->f:Lcom/mglab/scm/visual/c;

    .line 28
    iget-object v1, v1, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    .line 29
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean p1, p0, Lcom/mglab/scm/visual/c$e;->b:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/mglab/scm/visual/c$e;->b:Z

    .line 3
    iget p1, p0, Lcom/mglab/scm/visual/c$e;->e:I

    iget-object v0, p0, Lcom/mglab/scm/visual/c$e;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/mglab/scm/visual/c$e;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/mglab/scm/visual/c$e;->e:I

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/mglab/scm/visual/c$e;->c:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/mglab/scm/visual/c$e;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/mglab/scm/visual/c$e;->c:Landroid/widget/EditText;

    iget v0, p0, Lcom/mglab/scm/visual/c$e;->e:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/mglab/scm/visual/c$e;->a:Z

    .line 8
    iput-boolean p1, p0, Lcom/mglab/scm/visual/c$e;->b:Z

    .line 9
    invoke-virtual {p0}, Lcom/mglab/scm/visual/c$e;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    monitor-enter p0

    .line 1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean p2, p0, Lcom/mglab/scm/visual/c$e;->a:Z

    if-nez p2, :cond_6

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p0, Lcom/mglab/scm/visual/c$e;->a:Z

    .line 3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p4, 0x0

    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge p4, v1, :cond_5

    .line 5
    invoke-interface {p1, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    const/16 v3, 0x2a

    const/16 v4, 0x2b

    if-lt v1, v2, :cond_0

    const/16 v2, 0x39

    if-le v1, v2, :cond_1

    :cond_0
    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_4

    :cond_1
    if-eq v1, v4, :cond_2

    if-ne v1, v3, :cond_3

    :cond_2
    if-eqz p4, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 7
    :cond_5
    iget-object p1, p0, Lcom/mglab/scm/visual/c$e;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p1

    iput p1, p0, Lcom/mglab/scm/visual/c$e;->e:I

    .line 8
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mglab/scm/visual/c$e;->d:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 9
    iget p1, p0, Lcom/mglab/scm/visual/c$e;->e:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/mglab/scm/visual/c$e;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
