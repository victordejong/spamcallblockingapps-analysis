.class public final Lt9/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/t$a;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp9/t;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ls9/e;

.field public final c:Lt9/c;

.field public final d:Ls9/c;

.field public final e:I

.field public final f:Lp9/y;

.field public final g:Lp9/e;

.field public final h:Lp9/o;

.field public final i:I

.field public final j:I

.field public final k:I

.field public l:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ls9/e;Lt9/c;Ls9/c;ILp9/y;Lp9/e;Lp9/o;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lp9/t;",
            ">;",
            "Ls9/e;",
            "Lt9/c;",
            "Ls9/c;",
            "I",
            "Lp9/y;",
            "Lp9/e;",
            "Lp9/o;",
            "III)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lt9/f;->a:Ljava/util/List;

    .line 3
    iput-object p4, p0, Lt9/f;->d:Ls9/c;

    .line 4
    iput-object p2, p0, Lt9/f;->b:Ls9/e;

    .line 5
    iput-object p3, p0, Lt9/f;->c:Lt9/c;

    .line 6
    iput p5, p0, Lt9/f;->e:I

    .line 7
    iput-object p6, p0, Lt9/f;->f:Lp9/y;

    .line 8
    iput-object p7, p0, Lt9/f;->g:Lp9/e;

    .line 9
    iput-object p8, p0, Lt9/f;->h:Lp9/o;

    .line 10
    iput p9, p0, Lt9/f;->i:I

    .line 11
    iput p10, p0, Lt9/f;->j:I

    .line 12
    iput p11, p0, Lt9/f;->k:I

    return-void
.end method


# virtual methods
.method public a(Lp9/y;)Lp9/b0;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt9/f;->b:Ls9/e;

    iget-object v1, p0, Lt9/f;->c:Lt9/c;

    iget-object v2, p0, Lt9/f;->d:Ls9/c;

    invoke-virtual {p0, p1, v0, v1, v2}, Lt9/f;->b(Lp9/y;Ls9/e;Lt9/c;Ls9/c;)Lp9/b0;

    move-result-object p1

    return-object p1
.end method

.method public b(Lp9/y;Ls9/e;Lt9/c;Ls9/c;)Lp9/b0;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lt9/f;->e:I

    iget-object v2, v0, Lt9/f;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 2
    iget v1, v0, Lt9/f;->l:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lt9/f;->l:I

    .line 3
    iget-object v1, v0, Lt9/f;->c:Lt9/c;

    const-string v3, "network interceptor "

    if-eqz v1, :cond_1

    iget-object v1, v0, Lt9/f;->d:Ls9/c;

    move-object/from16 v10, p1

    .line 4
    iget-object v4, v10, Lp9/y;->a:Lp9/s;

    .line 5
    invoke-virtual {v1, v4}, Ls9/c;->k(Lp9/s;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v3}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lt9/f;->a:Ljava/util/List;

    iget v5, v0, Lt9/f;->e:I

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " must retain the same host and port"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object/from16 v10, p1

    .line 7
    :goto_0
    iget-object v1, v0, Lt9/f;->c:Lt9/c;

    const-string v15, " must call proceed() exactly once"

    if-eqz v1, :cond_3

    iget v1, v0, Lt9/f;->l:I

    if-gt v1, v2, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v3}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lt9/f;->a:Ljava/util/List;

    iget v5, v0, Lt9/f;->e:I

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_3
    :goto_1
    new-instance v1, Lt9/f;

    iget-object v2, v0, Lt9/f;->a:Ljava/util/List;

    iget v14, v0, Lt9/f;->e:I

    add-int/lit8 v9, v14, 0x1

    iget-object v11, v0, Lt9/f;->g:Lp9/e;

    iget-object v12, v0, Lt9/f;->h:Lp9/o;

    iget v13, v0, Lt9/f;->i:I

    iget v8, v0, Lt9/f;->j:I

    iget v7, v0, Lt9/f;->k:I

    move-object v4, v1

    move-object v5, v2

    move-object/from16 v6, p2

    move/from16 v16, v7

    move-object/from16 v7, p3

    move/from16 v17, v8

    move-object/from16 v8, p4

    move-object/from16 v10, p1

    move-object/from16 v18, v3

    move v3, v14

    move/from16 v14, v17

    move-object/from16 v19, v15

    move/from16 v15, v16

    invoke-direct/range {v4 .. v15}, Lt9/f;-><init>(Ljava/util/List;Ls9/e;Lt9/c;Ls9/c;ILp9/y;Lp9/e;Lp9/o;III)V

    .line 10
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp9/t;

    .line 11
    invoke-interface {v2, v1}, Lp9/t;->a(Lp9/t$a;)Lp9/b0;

    move-result-object v3

    if-eqz p3, :cond_5

    .line 12
    iget v4, v0, Lt9/f;->e:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iget-object v6, v0, Lt9/f;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_5

    iget v1, v1, Lt9/f;->l:I

    if-ne v1, v5, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v18

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v19

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    const-string v1, "interceptor "

    if-eqz v3, :cond_7

    .line 14
    iget-object v4, v3, Lp9/b0;->g:Lp9/d0;

    if-eqz v4, :cond_6

    return-object v3

    .line 15
    :cond_6
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned a response with no body"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 16
    :cond_7
    new-instance v3, Ljava/lang/NullPointerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned null"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 17
    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method
