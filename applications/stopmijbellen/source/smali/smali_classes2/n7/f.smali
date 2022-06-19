.class public Ln7/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll7/a;


# instance fields
.field public final synthetic a:Ln7/j;


# direct methods
.method public constructor <init>(Ln7/a;Ln7/j;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ln7/f;->a:Ln7/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Ln7/f;->a:Ln7/j;

    invoke-virtual {v0, p1}, Ln7/j;->n(Ljava/lang/Exception;)V

    goto :goto_1

    .line 2
    :cond_0
    iget-object p1, p0, Ln7/f;->a:Ln7/j;

    check-cast p1, Ln7/d;

    .line 3
    iget-object v0, p1, Ln7/d;->q:Ln7/a$d;

    invoke-virtual {v0}, Lm7/f;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p1, Ln7/d;->q:Ln7/a$d;

    iget-object v1, v0, Ln7/a$d;->l:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 5
    iget-object v0, v0, Ln7/a$d;->k:Lm7/a;

    invoke-interface {v0}, Lm7/a;->cancel()Z

    .line 6
    :cond_2
    iget-object v0, p1, Ln7/d;->r:Ln7/h;

    const-string v1, "Received headers:\n"

    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ln7/j;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln7/h;->e(Ljava/lang/String;)V

    .line 7
    iget-object v0, p1, Ln7/d;->v:Ln7/a;

    iget-object v0, v0, Ln7/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln7/g;

    .line 8
    iget-object v2, p1, Ln7/d;->t:Ln7/g$g;

    invoke-interface {v1, v2}, Ln7/g;->f(Ln7/g$d;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
