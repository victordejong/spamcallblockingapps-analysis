.class public abstract Lscala/util/control/TailCalls$TailRec;
.super Ljava/lang/Object;
.source "TailCalls.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/util/control/TailCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TailRec"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final flatMap(Lscala/Function1;)Lscala/util/control/TailCalls$TailRec;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;",
            "Lscala/util/control/TailCalls$TailRec<",
            "TB;>;>;)",
            "Lscala/util/control/TailCalls$TailRec<",
            "TB;>;"
        }
    .end annotation

    .line 54
    instance-of v0, p0, Lscala/util/control/TailCalls$Done;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lscala/util/control/TailCalls$Done;

    new-instance v1, Lscala/util/control/TailCalls$Call;

    new-instance v2, Lscala/util/control/TailCalls$TailRec$$anonfun$flatMap$1;

    invoke-direct {v2, p0, p1, v0}, Lscala/util/control/TailCalls$TailRec$$anonfun$flatMap$1;-><init>(Lscala/util/control/TailCalls$TailRec;Lscala/Function1;Lscala/util/control/TailCalls$Done;)V

    invoke-direct {v1, v2}, Lscala/util/control/TailCalls$Call;-><init>(Lscala/Function0;)V

    goto :goto_0

    .line 56
    :cond_0
    instance-of v0, p0, Lscala/util/control/TailCalls$Call;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lscala/util/control/TailCalls$Call;

    new-instance v1, Lscala/util/control/TailCalls$Cont;

    invoke-direct {v1, v0, p1}, Lscala/util/control/TailCalls$Cont;-><init>(Lscala/util/control/TailCalls$TailRec;Lscala/Function1;)V

    goto :goto_0

    .line 58
    :cond_1
    instance-of v0, p0, Lscala/util/control/TailCalls$Cont;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lscala/util/control/TailCalls$Cont;

    new-instance v1, Lscala/util/control/TailCalls$Cont;

    invoke-virtual {v0}, Lscala/util/control/TailCalls$Cont;->a()Lscala/util/control/TailCalls$TailRec;

    move-result-object v2

    new-instance v3, Lscala/util/control/TailCalls$TailRec$$anonfun$flatMap$2;

    invoke-direct {v3, p0, p1, v0}, Lscala/util/control/TailCalls$TailRec$$anonfun$flatMap$2;-><init>(Lscala/util/control/TailCalls$TailRec;Lscala/Function1;Lscala/util/control/TailCalls$Cont;)V

    invoke-direct {v1, v2, v3}, Lscala/util/control/TailCalls$Cont;-><init>(Lscala/util/control/TailCalls$TailRec;Lscala/Function1;)V

    :goto_0
    return-object v1

    .line 54
    :cond_2
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, p0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final map(Lscala/Function1;)Lscala/util/control/TailCalls$TailRec;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TB;>;)",
            "Lscala/util/control/TailCalls$TailRec<",
            "TB;>;"
        }
    .end annotation

    .line 49
    new-instance v0, Lscala/util/control/TailCalls$TailRec$$anonfun$map$1;

    invoke-direct {v0, p0, p1}, Lscala/util/control/TailCalls$TailRec$$anonfun$map$1;-><init>(Lscala/util/control/TailCalls$TailRec;Lscala/Function1;)V

    instance-of p1, p0, Lscala/util/control/TailCalls$Done;

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Lscala/util/control/TailCalls$Done;

    new-instance v1, Lscala/util/control/TailCalls$Call;

    new-instance v2, Lscala/util/control/TailCalls$TailRec$$anonfun$flatMap$1;

    invoke-direct {v2, p0, v0, p1}, Lscala/util/control/TailCalls$TailRec$$anonfun$flatMap$1;-><init>(Lscala/util/control/TailCalls$TailRec;Lscala/Function1;Lscala/util/control/TailCalls$Done;)V

    invoke-direct {v1, v2}, Lscala/util/control/TailCalls$Call;-><init>(Lscala/Function0;)V

    goto :goto_0

    :cond_0
    instance-of p1, p0, Lscala/util/control/TailCalls$Call;

    if-eqz p1, :cond_1

    move-object p1, p0

    check-cast p1, Lscala/util/control/TailCalls$Call;

    new-instance v1, Lscala/util/control/TailCalls$Cont;

    invoke-direct {v1, p1, v0}, Lscala/util/control/TailCalls$Cont;-><init>(Lscala/util/control/TailCalls$TailRec;Lscala/Function1;)V

    goto :goto_0

    :cond_1
    instance-of p1, p0, Lscala/util/control/TailCalls$Cont;

    if-eqz p1, :cond_2

    move-object p1, p0

    check-cast p1, Lscala/util/control/TailCalls$Cont;

    new-instance v1, Lscala/util/control/TailCalls$Cont;

    invoke-virtual {p1}, Lscala/util/control/TailCalls$Cont;->a()Lscala/util/control/TailCalls$TailRec;

    move-result-object v2

    new-instance v3, Lscala/util/control/TailCalls$TailRec$$anonfun$flatMap$2;

    invoke-direct {v3, p0, v0, p1}, Lscala/util/control/TailCalls$TailRec$$anonfun$flatMap$2;-><init>(Lscala/util/control/TailCalls$TailRec;Lscala/Function1;Lscala/util/control/TailCalls$Cont;)V

    invoke-direct {v1, v2, v3}, Lscala/util/control/TailCalls$Cont;-><init>(Lscala/util/control/TailCalls$TailRec;Lscala/Function1;)V

    :goto_0
    return-object v1

    :cond_2
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, p0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final result()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    move-object v0, p0

    .line 75
    :goto_0
    instance-of v1, v0, Lscala/util/control/TailCalls$Done;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/util/control/TailCalls$Done;

    .line 76
    invoke-virtual {v0}, Lscala/util/control/TailCalls$Done;->value()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 77
    :cond_0
    instance-of v1, v0, Lscala/util/control/TailCalls$Call;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/util/control/TailCalls$Call;

    invoke-virtual {v0}, Lscala/util/control/TailCalls$Call;->rest()Lscala/Function0;

    move-result-object v0

    invoke-interface {v0}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/util/control/TailCalls$TailRec;

    goto :goto_0

    .line 78
    :cond_1
    instance-of v1, v0, Lscala/util/control/TailCalls$Cont;

    if-eqz v1, :cond_b

    move-object v1, v0

    check-cast v1, Lscala/util/control/TailCalls$Cont;

    invoke-virtual {v1}, Lscala/util/control/TailCalls$Cont;->a()Lscala/util/control/TailCalls$TailRec;

    move-result-object v2

    .line 79
    instance-of v3, v2, Lscala/util/control/TailCalls$Done;

    if-eqz v3, :cond_2

    check-cast v2, Lscala/util/control/TailCalls$Done;

    invoke-virtual {v1}, Lscala/util/control/TailCalls$Cont;->f()Lscala/Function1;

    move-result-object v0

    invoke-virtual {v2}, Lscala/util/control/TailCalls$Done;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/util/control/TailCalls$TailRec;

    goto :goto_0

    .line 80
    :cond_2
    instance-of v3, v2, Lscala/util/control/TailCalls$Call;

    if-eqz v3, :cond_6

    check-cast v2, Lscala/util/control/TailCalls$Call;

    invoke-virtual {v2}, Lscala/util/control/TailCalls$Call;->rest()Lscala/Function0;

    move-result-object v0

    invoke-interface {v0}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/util/control/TailCalls$TailRec;

    invoke-virtual {v1}, Lscala/util/control/TailCalls$Cont;->f()Lscala/Function1;

    move-result-object v1

    instance-of v2, v0, Lscala/util/control/TailCalls$Done;

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Lscala/util/control/TailCalls$Done;

    new-instance v3, Lscala/util/control/TailCalls$Call;

    new-instance v4, Lscala/util/control/TailCalls$TailRec$$anonfun$flatMap$1;

    invoke-direct {v4, v0, v1, v2}, Lscala/util/control/TailCalls$TailRec$$anonfun$flatMap$1;-><init>(Lscala/util/control/TailCalls$TailRec;Lscala/Function1;Lscala/util/control/TailCalls$Done;)V

    invoke-direct {v3, v4}, Lscala/util/control/TailCalls$Call;-><init>(Lscala/Function0;)V

    :goto_1
    move-object v0, v3

    goto :goto_0

    :cond_3
    instance-of v2, v0, Lscala/util/control/TailCalls$Call;

    if-eqz v2, :cond_4

    check-cast v0, Lscala/util/control/TailCalls$Call;

    new-instance v2, Lscala/util/control/TailCalls$Cont;

    invoke-direct {v2, v0, v1}, Lscala/util/control/TailCalls$Cont;-><init>(Lscala/util/control/TailCalls$TailRec;Lscala/Function1;)V

    move-object v0, v2

    goto :goto_0

    :cond_4
    instance-of v2, v0, Lscala/util/control/TailCalls$Cont;

    if-eqz v2, :cond_5

    move-object v2, v0

    check-cast v2, Lscala/util/control/TailCalls$Cont;

    new-instance v3, Lscala/util/control/TailCalls$Cont;

    invoke-virtual {v2}, Lscala/util/control/TailCalls$Cont;->a()Lscala/util/control/TailCalls$TailRec;

    move-result-object v4

    new-instance v5, Lscala/util/control/TailCalls$TailRec$$anonfun$flatMap$2;

    invoke-direct {v5, v0, v1, v2}, Lscala/util/control/TailCalls$TailRec$$anonfun$flatMap$2;-><init>(Lscala/util/control/TailCalls$TailRec;Lscala/Function1;Lscala/util/control/TailCalls$Cont;)V

    invoke-direct {v3, v4, v5}, Lscala/util/control/TailCalls$Cont;-><init>(Lscala/util/control/TailCalls$TailRec;Lscala/Function1;)V

    goto :goto_1

    :cond_5
    new-instance v1, Lscala/MatchError;

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 81
    :cond_6
    instance-of v3, v2, Lscala/util/control/TailCalls$Cont;

    if-eqz v3, :cond_a

    check-cast v2, Lscala/util/control/TailCalls$Cont;

    invoke-virtual {v2}, Lscala/util/control/TailCalls$Cont;->a()Lscala/util/control/TailCalls$TailRec;

    move-result-object v3

    new-instance v4, Lscala/util/control/TailCalls$TailRec$$anonfun$result$1;

    invoke-direct {v4, v0, v2, v1}, Lscala/util/control/TailCalls$TailRec$$anonfun$result$1;-><init>(Lscala/util/control/TailCalls$TailRec;Lscala/util/control/TailCalls$Cont;Lscala/util/control/TailCalls$Cont;)V

    instance-of v0, v3, Lscala/util/control/TailCalls$Done;

    if-eqz v0, :cond_7

    move-object v0, v3

    check-cast v0, Lscala/util/control/TailCalls$Done;

    new-instance v1, Lscala/util/control/TailCalls$Call;

    new-instance v2, Lscala/util/control/TailCalls$TailRec$$anonfun$flatMap$1;

    invoke-direct {v2, v3, v4, v0}, Lscala/util/control/TailCalls$TailRec$$anonfun$flatMap$1;-><init>(Lscala/util/control/TailCalls$TailRec;Lscala/Function1;Lscala/util/control/TailCalls$Done;)V

    invoke-direct {v1, v2}, Lscala/util/control/TailCalls$Call;-><init>(Lscala/Function0;)V

    :goto_2
    move-object v0, v1

    goto/16 :goto_0

    :cond_7
    instance-of v0, v3, Lscala/util/control/TailCalls$Call;

    if-eqz v0, :cond_8

    check-cast v3, Lscala/util/control/TailCalls$Call;

    new-instance v0, Lscala/util/control/TailCalls$Cont;

    invoke-direct {v0, v3, v4}, Lscala/util/control/TailCalls$Cont;-><init>(Lscala/util/control/TailCalls$TailRec;Lscala/Function1;)V

    goto/16 :goto_0

    :cond_8
    instance-of v0, v3, Lscala/util/control/TailCalls$Cont;

    if-eqz v0, :cond_9

    move-object v0, v3

    check-cast v0, Lscala/util/control/TailCalls$Cont;

    new-instance v1, Lscala/util/control/TailCalls$Cont;

    invoke-virtual {v0}, Lscala/util/control/TailCalls$Cont;->a()Lscala/util/control/TailCalls$TailRec;

    move-result-object v2

    new-instance v5, Lscala/util/control/TailCalls$TailRec$$anonfun$flatMap$2;

    invoke-direct {v5, v3, v4, v0}, Lscala/util/control/TailCalls$TailRec$$anonfun$flatMap$2;-><init>(Lscala/util/control/TailCalls$TailRec;Lscala/Function1;Lscala/util/control/TailCalls$Cont;)V

    invoke-direct {v1, v2, v5}, Lscala/util/control/TailCalls$Cont;-><init>(Lscala/util/control/TailCalls$TailRec;Lscala/Function1;)V

    goto :goto_2

    :cond_9
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, v3}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 78
    :cond_a
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, v2}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 75
    :cond_b
    new-instance v1, Lscala/MatchError;

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final resume()Lscala/util/Either;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/util/Either<",
            "Lscala/Function0<",
            "Lscala/util/control/TailCalls$TailRec<",
            "TA;>;>;TA;>;"
        }
    .end annotation

    move-object v0, p0

    .line 63
    :goto_0
    instance-of v1, v0, Lscala/util/control/TailCalls$Done;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/util/control/TailCalls$Done;

    sget-object v1, Lscala/package$;->MODULE$:Lscala/package$;

    .line 64
    invoke-virtual {v0}, Lscala/util/control/TailCalls$Done;->value()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lscala/util/Right;

    invoke-direct {v1, v0}, Lscala/util/Right;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    .line 65
    :cond_0
    instance-of v1, v0, Lscala/util/control/TailCalls$Call;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/util/control/TailCalls$Call;

    sget-object v1, Lscala/package$;->MODULE$:Lscala/package$;

    invoke-virtual {v0}, Lscala/util/control/TailCalls$Call;->rest()Lscala/Function0;

    move-result-object v0

    new-instance v1, Lscala/util/Left;

    invoke-direct {v1, v0}, Lscala/util/Left;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    .line 66
    :cond_1
    instance-of v1, v0, Lscala/util/control/TailCalls$Cont;

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Lscala/util/control/TailCalls$Cont;

    invoke-virtual {v1}, Lscala/util/control/TailCalls$Cont;->a()Lscala/util/control/TailCalls$TailRec;

    move-result-object v2

    .line 67
    instance-of v3, v2, Lscala/util/control/TailCalls$Done;

    if-eqz v3, :cond_2

    check-cast v2, Lscala/util/control/TailCalls$Done;

    invoke-virtual {v1}, Lscala/util/control/TailCalls$Cont;->f()Lscala/Function1;

    move-result-object v0

    invoke-virtual {v2}, Lscala/util/control/TailCalls$Done;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/util/control/TailCalls$TailRec;

    goto :goto_0

    .line 68
    :cond_2
    instance-of v3, v2, Lscala/util/control/TailCalls$Call;

    if-eqz v3, :cond_3

    check-cast v2, Lscala/util/control/TailCalls$Call;

    sget-object v3, Lscala/package$;->MODULE$:Lscala/package$;

    new-instance v3, Lscala/util/control/TailCalls$TailRec$$anonfun$resume$1;

    invoke-direct {v3, v0, v2, v1}, Lscala/util/control/TailCalls$TailRec$$anonfun$resume$1;-><init>(Lscala/util/control/TailCalls$TailRec;Lscala/util/control/TailCalls$Call;Lscala/util/control/TailCalls$Cont;)V

    new-instance v1, Lscala/util/Left;

    invoke-direct {v1, v3}, Lscala/util/Left;-><init>(Ljava/lang/Object;)V

    :goto_1
    return-object v1

    .line 69
    :cond_3
    instance-of v3, v2, Lscala/util/control/TailCalls$Cont;

    if-eqz v3, :cond_7

    check-cast v2, Lscala/util/control/TailCalls$Cont;

    invoke-virtual {v2}, Lscala/util/control/TailCalls$Cont;->a()Lscala/util/control/TailCalls$TailRec;

    move-result-object v3

    new-instance v4, Lscala/util/control/TailCalls$TailRec$$anonfun$resume$2;

    invoke-direct {v4, v0, v2, v1}, Lscala/util/control/TailCalls$TailRec$$anonfun$resume$2;-><init>(Lscala/util/control/TailCalls$TailRec;Lscala/util/control/TailCalls$Cont;Lscala/util/control/TailCalls$Cont;)V

    instance-of v0, v3, Lscala/util/control/TailCalls$Done;

    if-eqz v0, :cond_4

    move-object v0, v3

    check-cast v0, Lscala/util/control/TailCalls$Done;

    new-instance v1, Lscala/util/control/TailCalls$Call;

    new-instance v2, Lscala/util/control/TailCalls$TailRec$$anonfun$flatMap$1;

    invoke-direct {v2, v3, v4, v0}, Lscala/util/control/TailCalls$TailRec$$anonfun$flatMap$1;-><init>(Lscala/util/control/TailCalls$TailRec;Lscala/Function1;Lscala/util/control/TailCalls$Done;)V

    invoke-direct {v1, v2}, Lscala/util/control/TailCalls$Call;-><init>(Lscala/Function0;)V

    :goto_2
    move-object v0, v1

    goto :goto_0

    :cond_4
    instance-of v0, v3, Lscala/util/control/TailCalls$Call;

    if-eqz v0, :cond_5

    check-cast v3, Lscala/util/control/TailCalls$Call;

    new-instance v0, Lscala/util/control/TailCalls$Cont;

    invoke-direct {v0, v3, v4}, Lscala/util/control/TailCalls$Cont;-><init>(Lscala/util/control/TailCalls$TailRec;Lscala/Function1;)V

    goto/16 :goto_0

    :cond_5
    instance-of v0, v3, Lscala/util/control/TailCalls$Cont;

    if-eqz v0, :cond_6

    move-object v0, v3

    check-cast v0, Lscala/util/control/TailCalls$Cont;

    new-instance v1, Lscala/util/control/TailCalls$Cont;

    invoke-virtual {v0}, Lscala/util/control/TailCalls$Cont;->a()Lscala/util/control/TailCalls$TailRec;

    move-result-object v2

    new-instance v5, Lscala/util/control/TailCalls$TailRec$$anonfun$flatMap$2;

    invoke-direct {v5, v3, v4, v0}, Lscala/util/control/TailCalls$TailRec$$anonfun$flatMap$2;-><init>(Lscala/util/control/TailCalls$TailRec;Lscala/Function1;Lscala/util/control/TailCalls$Cont;)V

    invoke-direct {v1, v2, v5}, Lscala/util/control/TailCalls$Cont;-><init>(Lscala/util/control/TailCalls$TailRec;Lscala/Function1;)V

    goto :goto_2

    :cond_6
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, v3}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 66
    :cond_7
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, v2}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 63
    :cond_8
    new-instance v1, Lscala/MatchError;

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
