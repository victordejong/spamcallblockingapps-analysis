.class public final Lscala/collection/parallel/CompositeThrowable$;
.super Lscala/runtime/AbstractFunction1;
.source "package.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/Set<",
        "Ljava/lang/Throwable;",
        ">;",
        "Lscala/collection/parallel/CompositeThrowable;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/parallel/CompositeThrowable$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/parallel/CompositeThrowable$;

    invoke-direct {v0}, Lscala/collection/parallel/CompositeThrowable$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 147
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    sput-object p0, Lscala/collection/parallel/CompositeThrowable$;->MODULE$:Lscala/collection/parallel/CompositeThrowable$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 147
    sget-object v0, Lscala/collection/parallel/CompositeThrowable$;->MODULE$:Lscala/collection/parallel/CompositeThrowable$;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 147
    check-cast p1, Lscala/collection/Set;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/CompositeThrowable$;->apply(Lscala/collection/Set;)Lscala/collection/parallel/CompositeThrowable;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lscala/collection/Set;)Lscala/collection/parallel/CompositeThrowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Set<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lscala/collection/parallel/CompositeThrowable;"
        }
    .end annotation

    .line 147
    new-instance v0, Lscala/collection/parallel/CompositeThrowable;

    invoke-direct {v0, p1}, Lscala/collection/parallel/CompositeThrowable;-><init>(Lscala/collection/Set;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "CompositeThrowable"

    return-object v0
.end method

.method public unapply(Lscala/collection/parallel/CompositeThrowable;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/CompositeThrowable;",
            ")",
            "Lscala/Option<",
            "Lscala/collection/Set<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 147
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-virtual {p1}, Lscala/collection/parallel/CompositeThrowable;->throwables()Lscala/collection/Set;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
