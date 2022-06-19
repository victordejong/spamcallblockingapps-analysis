.class public final Lscala/collection/parallel/CompositeThrowable$$anonfun$$lessinit$greater$1;
.super Lscala/runtime/AbstractFunction1;
.source "package.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/CompositeThrowable;-><init>(Lscala/collection/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/Throwable;",
        "Ljava/lang/String;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 149
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/CompositeThrowable$$anonfun$$lessinit$greater$1;->apply(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 6

    .line 149
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    sget-object v1, Lscala/Predef$any2stringadd$;->MODULE$:Lscala/Predef$any2stringadd$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v2, p1}, Lscala/Predef$;->any2stringadd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v1, v2, v3}, Lscala/Predef$any2stringadd$;->$plus$extension(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {v4, p1}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object p1

    const/16 v4, 0xa

    invoke-interface {p1, v4}, Lscala/collection/mutable/ArrayOps;->take(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {v2, p1}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object p1

    new-instance v2, Lscala/collection/immutable/StringOps;

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v4, "..."

    invoke-direct {v2, v4}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v4, Lscala/Array$;->MODULE$:Lscala/Array$;

    sget-object v5, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {v5}, Lscala/reflect/ClassTag$;->Any()Lscala/reflect/ClassTag;

    move-result-object v5

    invoke-virtual {v4, v5}, Lscala/Array$;->canBuildFrom(Lscala/reflect/ClassTag;)Lscala/collection/generic/CanBuildFrom;

    move-result-object v4

    invoke-interface {p1, v2, v4}, Lscala/collection/mutable/ArrayOps;->$plus$plus(Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lscala/Predef$;->genericArrayOps(Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object p1

    invoke-interface {p1, v3}, Lscala/collection/mutable/ArrayOps;->mkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
