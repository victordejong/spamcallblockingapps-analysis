.class final Lkotlin/reflect/jvm/internal/a/b$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/a/b;->a(Ljava/lang/Class;Ljava/util/Map;Ljava/util/List;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "equals",
        "",
        "T",
        "",
        "other",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/util/List;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/a/b$a;->a:Ljava/lang/Class;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/a/b$a;->b:Ljava/util/List;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/a/b$a;->c:Ljava/util/Map;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 6

    .line 108
    instance-of v0, p1, Ljava/lang/annotation/Annotation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Ljava/lang/annotation/Annotation;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/a;->a(Ljava/lang/annotation/Annotation;)Lkotlin/reflect/c;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/a;->a(Lkotlin/reflect/c;)Ljava/lang/Class;

    move-result-object v1

    :cond_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/a/b$a;->a:Ljava/lang/Class;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/a/b$a;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 185
    instance-of v2, v0, Ljava/util/Collection;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 186
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 109
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/a/b$a;->c:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    .line 110
    invoke-virtual {v2, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 112
    instance-of v5, v4, [Z

    if-eqz v5, :cond_4

    check-cast v4, [Z

    const-string v5, "null cannot be cast to non-null type kotlin.BooleanArray"

    invoke-static {v2, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, [Z

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v2

    goto/16 :goto_1

    .line 113
    :cond_4
    instance-of v5, v4, [C

    if-eqz v5, :cond_5

    check-cast v4, [C

    const-string v5, "null cannot be cast to non-null type kotlin.CharArray"

    invoke-static {v2, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, [C

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v2

    goto/16 :goto_1

    .line 114
    :cond_5
    instance-of v5, v4, [B

    if-eqz v5, :cond_6

    check-cast v4, [B

    const-string v5, "null cannot be cast to non-null type kotlin.ByteArray"

    invoke-static {v2, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, [B

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    goto/16 :goto_1

    .line 115
    :cond_6
    instance-of v5, v4, [S

    if-eqz v5, :cond_7

    check-cast v4, [S

    const-string v5, "null cannot be cast to non-null type kotlin.ShortArray"

    invoke-static {v2, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, [S

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v2

    goto :goto_1

    .line 116
    :cond_7
    instance-of v5, v4, [I

    if-eqz v5, :cond_8

    check-cast v4, [I

    const-string v5, "null cannot be cast to non-null type kotlin.IntArray"

    invoke-static {v2, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, [I

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    goto :goto_1

    .line 117
    :cond_8
    instance-of v5, v4, [F

    if-eqz v5, :cond_9

    check-cast v4, [F

    const-string v5, "null cannot be cast to non-null type kotlin.FloatArray"

    invoke-static {v2, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, [F

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    goto :goto_1

    .line 118
    :cond_9
    instance-of v5, v4, [J

    if-eqz v5, :cond_a

    check-cast v4, [J

    const-string v5, "null cannot be cast to non-null type kotlin.LongArray"

    invoke-static {v2, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, [J

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    goto :goto_1

    .line 119
    :cond_a
    instance-of v5, v4, [D

    if-eqz v5, :cond_b

    check-cast v4, [D

    const-string v5, "null cannot be cast to non-null type kotlin.DoubleArray"

    invoke-static {v2, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, [D

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v2

    goto :goto_1

    .line 120
    :cond_b
    instance-of v5, v4, [Ljava/lang/Object;

    if-eqz v5, :cond_c

    check-cast v4, [Ljava/lang/Object;

    const-string v5, "null cannot be cast to non-null type kotlin.Array<*>"

    invoke-static {v2, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    .line 121
    :cond_c
    invoke-static {v4, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_d
    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_e

    return v3

    :cond_e
    return v1
.end method

.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/a/b$a;->a(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
