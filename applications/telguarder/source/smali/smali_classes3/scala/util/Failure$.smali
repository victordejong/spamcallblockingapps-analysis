.class public final Lscala/util/Failure$;
.super Ljava/lang/Object;
.source "Try.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/util/Failure$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/util/Failure$;

    invoke-direct {v0}, Lscala/util/Failure$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/util/Failure$;->MODULE$:Lscala/util/Failure$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 198
    sget-object v0, Lscala/util/Failure$;->MODULE$:Lscala/util/Failure$;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Throwable;)Lscala/util/Failure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lscala/util/Failure<",
            "TT;>;"
        }
    .end annotation

    .line 198
    new-instance v0, Lscala/util/Failure;

    invoke-direct {v0, p1}, Lscala/util/Failure;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Failure"

    return-object v0
.end method

.method public unapply(Lscala/util/Failure;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/util/Failure<",
            "TT;>;)",
            "Lscala/Option<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 198
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-virtual {p1}, Lscala/util/Failure;->exception()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
