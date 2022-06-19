.class public Ln7/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll7/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln7/a;->d(Ln7/h;ILn7/a$d;Lq7/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Ln7/h;

.field public final synthetic c:Ln7/a$d;

.field public final synthetic d:Lq7/a;

.field public final synthetic e:Ln7/g$g;

.field public final synthetic f:I

.field public final synthetic g:Ln7/a;


# direct methods
.method public constructor <init>(Ln7/a;Ln7/h;Ln7/a$d;Lq7/a;Ln7/g$g;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln7/a$c;->g:Ln7/a;

    iput-object p2, p0, Ln7/a$c;->b:Ln7/h;

    iput-object p3, p0, Ln7/a$c;->c:Ln7/a$d;

    iput-object p4, p0, Ln7/a$c;->d:Lq7/a;

    iput-object p5, p0, Ln7/a$c;->e:Ln7/g$g;

    iput p6, p0, Ln7/a$c;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lk7/j;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    iget-boolean v2, v0, Ln7/a$c;->a:Z

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v2, Ll7/c$a;

    invoke-direct {v2}, Ll7/c$a;-><init>()V

    invoke-interface {v1, v2}, Lk7/m;->b(Ll7/c;)V

    .line 3
    new-instance v2, Ll7/a$a;

    invoke-direct {v2}, Ll7/a$a;-><init>()V

    invoke-interface {v1, v2}, Lk7/m;->h(Ll7/a;)V

    .line 4
    invoke-interface/range {p2 .. p2}, Lk7/m;->close()V

    .line 5
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "double connect callback"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 6
    iput-boolean v2, v0, Ln7/a$c;->a:Z

    .line 7
    iget-object v2, v0, Ln7/a$c;->b:Ln7/h;

    const-string v3, "socket connected"

    invoke-virtual {v2, v3}, Ln7/h;->e(Ljava/lang/String;)V

    .line 8
    iget-object v2, v0, Ln7/a$c;->c:Ln7/a$d;

    invoke-virtual {v2}, Lm7/f;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    .line 9
    invoke-interface/range {p2 .. p2}, Lk7/m;->close()V

    :cond_2
    return-void

    .line 10
    :cond_3
    iget-object v2, v0, Ln7/a$c;->c:Ln7/a$d;

    iget-object v3, v2, Ln7/a$d;->l:Ljava/lang/Runnable;

    if-eqz v3, :cond_4

    .line 11
    iget-object v2, v2, Ln7/a$d;->k:Lm7/a;

    invoke-interface {v2}, Lm7/a;->cancel()Z

    :cond_4
    if-eqz p1, :cond_5

    .line 12
    iget-object v3, v0, Ln7/a$c;->g:Ln7/a;

    iget-object v4, v0, Ln7/a$c;->c:Ln7/a$d;

    const/4 v6, 0x0

    iget-object v7, v0, Ln7/a$c;->b:Ln7/h;

    iget-object v8, v0, Ln7/a$c;->d:Lq7/a;

    move-object/from16 v5, p1

    .line 13
    invoke-virtual/range {v3 .. v8}, Ln7/a;->e(Ln7/a$d;Ljava/lang/Exception;Ln7/j;Ln7/h;Lq7/a;)V

    return-void

    .line 14
    :cond_5
    iget-object v2, v0, Ln7/a$c;->e:Ln7/g$g;

    iput-object v1, v2, Ln7/g$c;->e:Lk7/j;

    .line 15
    iget-object v12, v0, Ln7/a$c;->c:Ln7/a$d;

    iput-object v1, v12, Ln7/a$d;->j:Lk7/j;

    .line 16
    iget-object v1, v0, Ln7/a$c;->g:Ln7/a;

    iget-object v13, v0, Ln7/a$c;->b:Ln7/h;

    iget v3, v0, Ln7/a$c;->f:I

    iget-object v14, v0, Ln7/a$c;->d:Lq7/a;

    .line 17
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v4, Ln7/d;

    move-object v9, v4

    move-object v10, v1

    move-object v11, v13

    move-object v15, v2

    move/from16 v16, v3

    invoke-direct/range {v9 .. v16}, Ln7/d;-><init>(Ln7/a;Ln7/h;Ln7/a$d;Ln7/h;Lq7/a;Ln7/g$g;I)V

    .line 19
    new-instance v3, Ln7/e;

    invoke-direct {v3, v1, v4}, Ln7/e;-><init>(Ln7/a;Ln7/j;)V

    iput-object v3, v2, Ln7/g$c;->g:Ll7/a;

    .line 20
    new-instance v3, Ln7/f;

    invoke-direct {v3, v1, v4}, Ln7/f;-><init>(Ln7/a;Ln7/j;)V

    iput-object v3, v2, Ln7/g$c;->h:Ll7/a;

    .line 21
    iput-object v4, v2, Ln7/g$c;->f:Ln7/g$i;

    .line 22
    iget-object v3, v2, Ln7/g$c;->e:Lk7/j;

    .line 23
    iput-object v3, v4, Ln7/j;->j:Lk7/j;

    if-nez v3, :cond_6

    goto :goto_1

    .line 24
    :cond_6
    iget-object v4, v4, Ln7/j;->h:Ll7/a;

    invoke-interface {v3, v4}, Lk7/m;->h(Ll7/a;)V

    .line 25
    :goto_1
    iget-object v1, v1, Ln7/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln7/g;

    .line 26
    invoke-interface {v3, v2}, Ln7/g;->b(Ln7/g$c;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_8
    return-void
.end method
