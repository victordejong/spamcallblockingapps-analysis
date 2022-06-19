.class final Lkotlin/a/at$a;
.super Lkotlin/c/b/a/i;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/a/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/c/b/a/i;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/g/j<",
        "-",
        "Ljava/util/List<",
        "+TT;>;>;",
        "Lkotlin/c/d<",
        "-",
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00040\u0003H\u008a@\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lkotlin/sequences/SequenceScope;",
        "",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/c/b/a/e;
    b = "SlidingWindow.kt"
    c = {
        0x22,
        0x28,
        0x31,
        0x37,
        0x3a
    }
    d = "invokeSuspend"
    e = "kotlin.collections.SlidingWindowKt$windowedIterator$1"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Ljava/util/Iterator;

.field final synthetic h:Z

.field final synthetic i:Z

.field private synthetic j:Ljava/lang/Object;


# direct methods
.method constructor <init>(IILjava/util/Iterator;ZZLkotlin/c/d;)V
    .locals 0

    iput p1, p0, Lkotlin/a/at$a;->e:I

    iput p2, p0, Lkotlin/a/at$a;->f:I

    iput-object p3, p0, Lkotlin/a/at$a;->g:Ljava/util/Iterator;

    iput-boolean p4, p0, Lkotlin/a/at$a;->h:Z

    iput-boolean p5, p0, Lkotlin/a/at$a;->i:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/c/b/a/i;-><init>(ILkotlin/c/d;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1057
    sget-object v0, Lkotlin/c/a/a;->COROUTINE_SUSPENDED:Lkotlin/c/a/a;

    .line 24
    iget v1, p0, Lkotlin/a/at$a;->d:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v7, :cond_4

    if-eq v1, v5, :cond_0

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-static {p1}, Lkotlin/p;->a(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 61
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_2
    iget-object v1, p0, Lkotlin/a/at$a;->a:Ljava/lang/Object;

    check-cast v1, Lkotlin/a/ao;

    iget-object v4, p0, Lkotlin/a/at$a;->j:Ljava/lang/Object;

    check-cast v4, Lkotlin/g/j;

    invoke-static {p1}, Lkotlin/p;->a(Ljava/lang/Object;)V

    move-object p1, p0

    goto/16 :goto_9

    :cond_3
    iget-object v1, p0, Lkotlin/a/at$a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v5, p0, Lkotlin/a/at$a;->a:Ljava/lang/Object;

    check-cast v5, Lkotlin/a/ao;

    iget-object v8, p0, Lkotlin/a/at$a;->j:Ljava/lang/Object;

    check-cast v8, Lkotlin/g/j;

    invoke-static {p1}, Lkotlin/p;->a(Ljava/lang/Object;)V

    move-object p1, p0

    goto/16 :goto_6

    :cond_4
    iget v1, p0, Lkotlin/a/at$a;->c:I

    iget-object v2, p0, Lkotlin/a/at$a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v3, p0, Lkotlin/a/at$a;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lkotlin/a/at$a;->j:Ljava/lang/Object;

    check-cast v4, Lkotlin/g/j;

    invoke-static {p1}, Lkotlin/p;->a(Ljava/lang/Object;)V

    move-object p1, p0

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lkotlin/p;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lkotlin/a/at$a;->j:Ljava/lang/Object;

    check-cast p1, Lkotlin/g/j;

    .line 25
    iget v1, p0, Lkotlin/a/at$a;->e:I

    const/16 v8, 0x400

    invoke-static {v1, v8}, Lkotlin/f/d;->d(II)I

    move-result v1

    .line 26
    iget v8, p0, Lkotlin/a/at$a;->f:I

    iget v9, p0, Lkotlin/a/at$a;->e:I

    sub-int/2addr v8, v9

    if-ltz v8, :cond_c

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 30
    iget-object v3, p0, Lkotlin/a/at$a;->g:Ljava/util/Iterator;

    move-object v4, p1

    move-object p1, p0

    move-object v13, v3

    move-object v3, v2

    move-object v2, v13

    :cond_6
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    if-lez v1, :cond_7

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 32
    :cond_7
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget v10, p1, Lkotlin/a/at$a;->e:I

    if-ne v9, v10, :cond_6

    .line 34
    iput-object v4, p1, Lkotlin/a/at$a;->j:Ljava/lang/Object;

    iput-object v3, p1, Lkotlin/a/at$a;->a:Ljava/lang/Object;

    iput-object v2, p1, Lkotlin/a/at$a;->b:Ljava/lang/Object;

    iput v8, p1, Lkotlin/a/at$a;->c:I

    iput v7, p1, Lkotlin/a/at$a;->d:I

    invoke-virtual {v4, v3, p1}, Lkotlin/g/j;->a(Ljava/lang/Object;Lkotlin/c/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_8

    return-object v0

    :cond_8
    move v1, v8

    .line 35
    :goto_1
    iget-boolean v8, p1, Lkotlin/a/at$a;->h:Z

    if-eqz v8, :cond_9

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    iget v8, p1, Lkotlin/a/at$a;->e:I

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    move v8, v1

    goto :goto_0

    .line 39
    :cond_a
    move-object v1, v3

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v7

    if-eqz v1, :cond_17

    .line 40
    iget-boolean v1, p1, Lkotlin/a/at$a;->i:Z

    if-nez v1, :cond_b

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p1, Lkotlin/a/at$a;->e:I

    if-ne v1, v2, :cond_17

    :cond_b
    iput-object v6, p1, Lkotlin/a/at$a;->j:Ljava/lang/Object;

    iput-object v6, p1, Lkotlin/a/at$a;->a:Ljava/lang/Object;

    iput-object v6, p1, Lkotlin/a/at$a;->b:Ljava/lang/Object;

    iput v5, p1, Lkotlin/a/at$a;->d:I

    invoke-virtual {v4, v3, p1}, Lkotlin/g/j;->a(Ljava/lang/Object;Lkotlin/c/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_17

    return-object v0

    .line 43
    :cond_c
    new-instance v5, Lkotlin/a/ao;

    invoke-direct {v5, v1}, Lkotlin/a/ao;-><init>(I)V

    .line 44
    iget-object v1, p0, Lkotlin/a/at$a;->g:Ljava/util/Iterator;

    move-object v8, p1

    move-object p1, p0

    :cond_d
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 1172
    invoke-virtual {v5}, Lkotlin/a/ao;->b()Z

    move-result v10

    if-nez v10, :cond_12

    .line 1176
    iget-object v10, v5, Lkotlin/a/ao;->e:[Ljava/lang/Object;

    iget v11, v5, Lkotlin/a/ao;->c:I

    invoke-virtual {v5}, Lkotlin/a/ao;->size()I

    move-result v12

    add-int/2addr v11, v12

    .line 1209
    invoke-static {v5}, Lkotlin/a/ao;->c(Lkotlin/a/ao;)I

    move-result v12

    rem-int/2addr v11, v12

    aput-object v9, v10, v11

    .line 1177
    invoke-virtual {v5}, Lkotlin/a/ao;->size()I

    move-result v9

    add-int/2addr v9, v7

    iput v9, v5, Lkotlin/a/ao;->d:I

    .line 46
    invoke-virtual {v5}, Lkotlin/a/ao;->b()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 47
    invoke-virtual {v5}, Lkotlin/a/ao;->size()I

    move-result v9

    iget v10, p1, Lkotlin/a/at$a;->e:I

    if-ge v9, v10, :cond_f

    .line 2163
    iget v9, v5, Lkotlin/a/ao;->b:I

    iget v11, v5, Lkotlin/a/ao;->b:I

    shr-int/2addr v11, v7

    add-int/2addr v9, v11

    add-int/2addr v9, v7

    invoke-static {v9, v10}, Lkotlin/f/d;->d(II)I

    move-result v9

    .line 2164
    iget v10, v5, Lkotlin/a/ao;->c:I

    if-nez v10, :cond_e

    iget-object v10, v5, Lkotlin/a/ao;->e:[Ljava/lang/Object;

    invoke-static {v10, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    const-string v10, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v5, v9}, Lkotlin/a/ao;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    .line 2165
    :goto_4
    new-instance v10, Lkotlin/a/ao;

    invoke-virtual {v5}, Lkotlin/a/ao;->size()I

    move-result v5

    invoke-direct {v10, v9, v5}, Lkotlin/a/ao;-><init>([Ljava/lang/Object;I)V

    move-object v5, v10

    goto :goto_3

    .line 49
    :cond_f
    iget-boolean v9, p1, Lkotlin/a/at$a;->h:Z

    if-eqz v9, :cond_10

    move-object v9, v5

    check-cast v9, Ljava/util/List;

    goto :goto_5

    :cond_10
    new-instance v9, Ljava/util/ArrayList;

    move-object v10, v5

    check-cast v10, Ljava/util/Collection;

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v9, Ljava/util/List;

    :goto_5
    iput-object v8, p1, Lkotlin/a/at$a;->j:Ljava/lang/Object;

    iput-object v5, p1, Lkotlin/a/at$a;->a:Ljava/lang/Object;

    iput-object v1, p1, Lkotlin/a/at$a;->b:Ljava/lang/Object;

    iput v4, p1, Lkotlin/a/at$a;->d:I

    invoke-virtual {v8, v9, p1}, Lkotlin/g/j;->a(Ljava/lang/Object;Lkotlin/c/d;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v0, :cond_11

    return-object v0

    .line 50
    :cond_11
    :goto_6
    iget v9, p1, Lkotlin/a/at$a;->f:I

    invoke-virtual {v5, v9}, Lkotlin/a/ao;->a(I)V

    goto/16 :goto_3

    .line 1173
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ring buffer is full"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 53
    :cond_13
    iget-boolean v1, p1, Lkotlin/a/at$a;->i:Z

    if-eqz v1, :cond_17

    move-object v1, v5

    move-object v4, v8

    .line 54
    :goto_7
    invoke-virtual {v1}, Lkotlin/a/ao;->size()I

    move-result v5

    iget v8, p1, Lkotlin/a/at$a;->f:I

    if-le v5, v8, :cond_16

    .line 55
    iget-boolean v5, p1, Lkotlin/a/at$a;->h:Z

    if-eqz v5, :cond_14

    move-object v5, v1

    check-cast v5, Ljava/util/List;

    goto :goto_8

    :cond_14
    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v1

    check-cast v8, Ljava/util/Collection;

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v5, Ljava/util/List;

    :goto_8
    iput-object v4, p1, Lkotlin/a/at$a;->j:Ljava/lang/Object;

    iput-object v1, p1, Lkotlin/a/at$a;->a:Ljava/lang/Object;

    iput-object v6, p1, Lkotlin/a/at$a;->b:Ljava/lang/Object;

    iput v3, p1, Lkotlin/a/at$a;->d:I

    invoke-virtual {v4, v5, p1}, Lkotlin/g/j;->a(Ljava/lang/Object;Lkotlin/c/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_15

    return-object v0

    .line 56
    :cond_15
    :goto_9
    iget v5, p1, Lkotlin/a/at$a;->f:I

    invoke-virtual {v1, v5}, Lkotlin/a/ao;->a(I)V

    goto :goto_7

    .line 58
    :cond_16
    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v7

    if-eqz v3, :cond_17

    iput-object v6, p1, Lkotlin/a/at$a;->j:Ljava/lang/Object;

    iput-object v6, p1, Lkotlin/a/at$a;->a:Ljava/lang/Object;

    iput-object v6, p1, Lkotlin/a/at$a;->b:Ljava/lang/Object;

    iput v2, p1, Lkotlin/a/at$a;->d:I

    invoke-virtual {v4, v1, p1}, Lkotlin/g/j;->a(Ljava/lang/Object;Lkotlin/c/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_17

    return-object v0

    .line 61
    :cond_17
    :goto_a
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/c/d;)Lkotlin/c/d;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/c/d<",
            "*>;)",
            "Lkotlin/c/d<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/a/at$a;

    iget v2, p0, Lkotlin/a/at$a;->e:I

    iget v3, p0, Lkotlin/a/at$a;->f:I

    iget-object v4, p0, Lkotlin/a/at$a;->g:Ljava/util/Iterator;

    iget-boolean v5, p0, Lkotlin/a/at$a;->h:Z

    iget-boolean v6, p0, Lkotlin/a/at$a;->i:Z

    move-object v1, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lkotlin/a/at$a;-><init>(IILjava/util/Iterator;ZZLkotlin/c/d;)V

    iput-object p1, v0, Lkotlin/a/at$a;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/d;

    invoke-virtual {p0, p1, p2}, Lkotlin/a/at$a;->a(Ljava/lang/Object;Lkotlin/c/d;)Lkotlin/c/d;

    move-result-object p1

    check-cast p1, Lkotlin/a/at$a;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lkotlin/a/at$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
