.class public final Lscala/concurrent/duration/Duration$$anonfun$4;
.super Lscala/runtime/AbstractFunction1;
.source "Duration.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/duration/Duration$;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/Tuple2<",
        "Ljava/util/concurrent/TimeUnit;",
        "Ljava/lang/String;",
        ">;",
        "Lscala/collection/immutable/List<",
        "Lscala/Tuple2<",
        "Ljava/lang/String;",
        "Ljava/util/concurrent/TimeUnit;",
        ">;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 94
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/concurrent/duration/Duration$$anonfun$4;->apply(Lscala/Tuple2;)Lscala/collection/immutable/List;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/Tuple2;)Lscala/collection/immutable/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/lang/String;",
            ">;)",
            "Lscala/collection/immutable/List<",
            "Lscala/Tuple2<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/TimeUnit;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 94
    sget-object v0, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lscala/concurrent/duration/Duration$;->scala$concurrent$duration$Duration$$expandLabels(Ljava/lang/String;)Lscala/collection/immutable/List;

    move-result-object v0

    new-instance v1, Lscala/concurrent/duration/Duration$$anonfun$4$$anonfun$apply$1;

    invoke-direct {v1, p0, p1}, Lscala/concurrent/duration/Duration$$anonfun$4$$anonfun$apply$1;-><init>(Lscala/concurrent/duration/Duration$$anonfun$4;Lscala/Tuple2;)V

    sget-object p1, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {p1}, Lscala/collection/immutable/List$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lscala/collection/immutable/List;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/List;

    return-object p1

    :cond_0
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
