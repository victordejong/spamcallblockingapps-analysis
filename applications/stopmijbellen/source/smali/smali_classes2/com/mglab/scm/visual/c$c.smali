.class public Lcom/mglab/scm/visual/c$c;
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
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mglab/scm/visual/c;


# direct methods
.method public constructor <init>(Lcom/mglab/scm/visual/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mglab/scm/visual/c$c;->a:Lcom/mglab/scm/visual/c;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/mglab/scm/visual/c$c;->a:Lcom/mglab/scm/visual/c;

    .line 2
    iget-object p1, p1, Lcom/mglab/scm/visual/c;->i:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 4
    sget-object p1, Lcom/mglab/scm/visual/c;->k:Le2/g;

    const v0, 0x7f090169

    invoke-virtual {p1, v0}, Le2/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/rengwuxian/materialedittext/MaterialEditText;

    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/widget/k;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/appcompat/widget/k;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/widget/k;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/mglab/scm/visual/c$c;->a:Lcom/mglab/scm/visual/c;

    .line 8
    iget-object v0, v0, Lcom/mglab/scm/visual/c;->h:Ljava/util/List;

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo8/i;

    .line 10
    check-cast v2, Lcom/mglab/scm/visual/ContactItem;

    .line 11
    iget-object v3, v2, Lcom/mglab/scm/visual/ContactItem;->c:Ljava/lang/String;

    .line 12
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 13
    iget-object v3, v2, Lcom/mglab/scm/visual/ContactItem;->b:Ljava/lang/String;

    .line 14
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 15
    :cond_2
    iget-boolean v3, v2, Lcom/mglab/scm/visual/ContactItem;->e:Z

    if-nez v3, :cond_3

    .line 16
    iput-boolean v1, v2, Lcom/mglab/scm/visual/ContactItem;->e:Z

    .line 17
    :cond_3
    iget-object v3, p0, Lcom/mglab/scm/visual/c$c;->a:Lcom/mglab/scm/visual/c;

    .line 18
    iget-object v3, v3, Lcom/mglab/scm/visual/c;->i:Ljava/util/List;

    .line 19
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/mglab/scm/visual/c$c;->a:Lcom/mglab/scm/visual/c;

    .line 21
    iget-object p1, p1, Lcom/mglab/scm/visual/c;->h:Ljava/util/List;

    .line 22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo8/i;

    .line 23
    check-cast v0, Lcom/mglab/scm/visual/ContactItem;

    .line 24
    iget-boolean v2, v0, Lcom/mglab/scm/visual/ContactItem;->e:Z

    if-nez v2, :cond_5

    .line 25
    iput-boolean v1, v0, Lcom/mglab/scm/visual/ContactItem;->e:Z

    .line 26
    :cond_5
    iget-object v2, p0, Lcom/mglab/scm/visual/c$c;->a:Lcom/mglab/scm/visual/c;

    .line 27
    iget-object v2, v2, Lcom/mglab/scm/visual/c;->i:Ljava/util/List;

    .line 28
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 29
    :cond_6
    iget-object p1, p0, Lcom/mglab/scm/visual/c$c;->a:Lcom/mglab/scm/visual/c;

    new-instance v0, Lo8/j;

    iget-object v2, p0, Lcom/mglab/scm/visual/c$c;->a:Lcom/mglab/scm/visual/c;

    .line 30
    iget-object v3, v2, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    .line 31
    iget-object v2, v2, Lcom/mglab/scm/visual/c;->i:Ljava/util/List;

    .line 32
    invoke-direct {v0, v3, v2}, Lo8/j;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 33
    iput-object v0, p1, Lcom/mglab/scm/visual/c;->g:Lo8/j;

    .line 34
    iget-object p1, p0, Lcom/mglab/scm/visual/c$c;->a:Lcom/mglab/scm/visual/c;

    .line 35
    iget-object v0, p1, Lcom/mglab/scm/visual/c;->j:Landroid/widget/ListView;

    .line 36
    iget-object p1, p1, Lcom/mglab/scm/visual/c;->g:Lo8/j;

    .line 37
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 38
    iget-object p1, p0, Lcom/mglab/scm/visual/c$c;->a:Lcom/mglab/scm/visual/c;

    .line 39
    iget-object p1, p1, Lcom/mglab/scm/visual/c;->g:Lo8/j;

    .line 40
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 41
    sget-object p1, Lcom/mglab/scm/visual/c;->k:Le2/g;

    sget-object v0, Le2/b;->a:Le2/b;

    invoke-virtual {p1, v0}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 42
    sget-object p1, Lcom/mglab/scm/visual/c;->k:Le2/g;

    invoke-virtual {p1, v0}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object p1

    const v0, 0x7f11018f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
