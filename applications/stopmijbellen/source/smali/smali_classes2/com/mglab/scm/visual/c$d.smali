.class public Lcom/mglab/scm/visual/c$d;
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
    name = "d"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Landroid/widget/EditText;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public final synthetic g:Lcom/mglab/scm/visual/c;


# direct methods
.method public constructor <init>(Lcom/mglab/scm/visual/c;Landroid/widget/EditText;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mglab/scm/visual/c$d;->g:Lcom/mglab/scm/visual/c;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p3, p0, Lcom/mglab/scm/visual/c$d;->f:I

    .line 4
    iput-object p2, p0, Lcom/mglab/scm/visual/c$d;->c:Landroid/widget/EditText;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/mglab/scm/visual/c$d;->a:Z

    .line 6
    iput-boolean p1, p0, Lcom/mglab/scm/visual/c$d;->b:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    .line 1
    const-class v0, Lh8/c;

    sget-object v1, Le2/b;->a:Le2/b;

    sget-object v2, Lcom/mglab/scm/visual/c;->k:Le2/g;

    invoke-virtual {v2, v1}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object v2

    iget-object v3, p0, Lcom/mglab/scm/visual/c$d;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2
    iget-object v2, p0, Lcom/mglab/scm/visual/c$d;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mglab/scm/visual/c$d;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mglab/scm/visual/c$d;->g:Lcom/mglab/scm/visual/c;

    .line 4
    iget-object v1, v1, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/mglab/scm/visual/c$d;->g:Lcom/mglab/scm/visual/c;

    .line 7
    iget v3, v2, Lcom/mglab/scm/visual/c;->d:I

    const v5, 0x7f1100bc

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-ne v3, v6, :cond_6

    .line 8
    iget-boolean v2, v2, Lcom/mglab/scm/visual/c;->e:Z

    if-eqz v2, :cond_3

    .line 9
    iget-object v2, p0, Lcom/mglab/scm/visual/c$d;->d:Ljava/lang/String;

    iget v3, p0, Lcom/mglab/scm/visual/c$d;->f:I

    new-array v5, v8, [Lx8/a;

    .line 10
    new-instance v9, Lw8/o;

    invoke-direct {v9, v5}, Lw8/o;-><init>([Lx8/a;)V

    .line 11
    new-instance v5, Lw8/g;

    invoke-direct {v5, v9, v0}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    new-array v0, v6, [Lw8/n;

    .line 12
    sget-object v6, Lh8/d;->j:Lx8/b;

    .line 13
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Lx8/b;->e(Ljava/lang/Object;)Lw8/k;

    move-result-object v6

    aput-object v6, v0, v8

    sget-object v6, Lh8/d;->f:Lx8/b;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Lx8/b;->g(Ljava/lang/Object;)Lw8/k;

    move-result-object v3

    aput-object v3, v0, v4

    .line 14
    new-instance v3, Lw8/r;

    invoke-direct {v3, v5, v0}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 15
    invoke-virtual {v3}, Lw8/r;->l()Ljava/util/List;

    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh8/c;

    .line 17
    iget v5, v3, Lh8/c;->f:I

    if-ne v5, v7, :cond_1

    .line 18
    iget-object v5, v3, Lh8/c;->c:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v5, v6, :cond_1

    .line 19
    iget-object v3, v3, Lh8/c;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_9

    .line 20
    sget-object v0, Lcom/mglab/scm/visual/c;->k:Le2/g;

    invoke-virtual {v0, v1}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 21
    iget-object v0, p0, Lcom/mglab/scm/visual/c$d;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mglab/scm/visual/c$d;->g:Lcom/mglab/scm/visual/c;

    .line 22
    iget-object v1, v1, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    .line 23
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 24
    :cond_3
    iget-object v2, p0, Lcom/mglab/scm/visual/c$d;->d:Ljava/lang/String;

    iget v3, p0, Lcom/mglab/scm/visual/c$d;->f:I

    new-array v6, v8, [Lx8/a;

    .line 25
    new-instance v9, Lw8/o;

    invoke-direct {v9, v6}, Lw8/o;-><init>([Lx8/a;)V

    .line 26
    new-instance v6, Lw8/g;

    invoke-direct {v6, v9, v0}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    new-array v0, v4, [Lw8/n;

    .line 27
    sget-object v9, Lh8/d;->j:Lx8/b;

    .line 28
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v7}, Lx8/b;->g(Ljava/lang/Object;)Lw8/k;

    move-result-object v7

    aput-object v7, v0, v8

    .line 29
    new-instance v7, Lw8/r;

    invoke-direct {v7, v6, v0}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 30
    invoke-virtual {v7}, Lw8/r;->l()Ljava/util/List;

    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lh8/c;

    .line 32
    iget v7, v6, Lh8/c;->b:I

    if-eq v7, v3, :cond_4

    iget-object v6, v6, Lh8/c;->c:Ljava/lang/String;

    invoke-static {v6, v2}, Lh8/q;->y(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_9

    .line 33
    sget-object v0, Lcom/mglab/scm/visual/c;->k:Le2/g;

    invoke-virtual {v0, v1}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 34
    iget-object v0, p0, Lcom/mglab/scm/visual/c$d;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mglab/scm/visual/c$d;->g:Lcom/mglab/scm/visual/c;

    .line 35
    iget-object v1, v1, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    .line 36
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    if-ne v3, v4, :cond_9

    .line 37
    iget-object v0, p0, Lcom/mglab/scm/visual/c$d;->d:Ljava/lang/String;

    iget v2, p0, Lcom/mglab/scm/visual/c$d;->f:I

    new-array v3, v8, [Lx8/a;

    .line 38
    new-instance v6, Lw8/o;

    invoke-direct {v6, v3}, Lw8/o;-><init>([Lx8/a;)V

    .line 39
    const-class v3, Lh8/w;

    .line 40
    new-instance v9, Lw8/g;

    invoke-direct {v9, v6, v3}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    new-array v3, v4, [Lw8/n;

    .line 41
    sget-object v6, Lh8/x;->j:Lx8/b;

    .line 42
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lx8/b;->g(Ljava/lang/Object;)Lw8/k;

    move-result-object v6

    aput-object v6, v3, v8

    .line 43
    new-instance v6, Lw8/r;

    invoke-direct {v6, v9, v3}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 44
    invoke-virtual {v6}, Lw8/r;->l()Ljava/util/List;

    move-result-object v3

    .line 45
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lh8/w;

    .line 46
    iget v7, v6, Lh8/w;->b:I

    if-eq v7, v2, :cond_7

    iget-object v6, v6, Lh8/w;->c:Ljava/lang/String;

    invoke-static {v6, v0}, Lh8/q;->y(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_9

    .line 47
    sget-object v0, Lcom/mglab/scm/visual/c;->k:Le2/g;

    invoke-virtual {v0, v1}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 48
    iget-object v0, p0, Lcom/mglab/scm/visual/c$d;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mglab/scm/visual/c$d;->g:Lcom/mglab/scm/visual/c;

    .line 49
    iget-object v1, v1, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    .line 50
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean p1, p0, Lcom/mglab/scm/visual/c$d;->b:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/mglab/scm/visual/c$d;->b:Z

    .line 3
    iget p1, p0, Lcom/mglab/scm/visual/c$d;->e:I

    iget-object v0, p0, Lcom/mglab/scm/visual/c$d;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/mglab/scm/visual/c$d;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/mglab/scm/visual/c$d;->e:I

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/mglab/scm/visual/c$d;->c:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/mglab/scm/visual/c$d;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/mglab/scm/visual/c$d;->c:Landroid/widget/EditText;

    iget v0, p0, Lcom/mglab/scm/visual/c$d;->e:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/mglab/scm/visual/c$d;->a:Z

    .line 8
    iput-boolean p1, p0, Lcom/mglab/scm/visual/c$d;->b:Z

    .line 9
    invoke-virtual {p0}, Lcom/mglab/scm/visual/c$d;->a()V
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
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean p2, p0, Lcom/mglab/scm/visual/c$d;->a:Z

    if-nez p2, :cond_5

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p0, Lcom/mglab/scm/visual/c$d;->a:Z

    .line 3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p4, 0x0

    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge p4, v1, :cond_4

    .line 5
    invoke-interface {p1, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    const/16 v3, 0x2b

    if-lt v1, v2, :cond_0

    const/16 v2, 0x39

    if-le v1, v2, :cond_1

    :cond_0
    if-ne v1, v3, :cond_3

    :cond_1
    if-ne v1, v3, :cond_2

    if-eqz p4, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 7
    :cond_4
    iget-object p1, p0, Lcom/mglab/scm/visual/c$d;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p1

    iput p1, p0, Lcom/mglab/scm/visual/c$d;->e:I

    .line 8
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mglab/scm/visual/c$d;->d:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 9
    iget p1, p0, Lcom/mglab/scm/visual/c$d;->e:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/mglab/scm/visual/c$d;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
