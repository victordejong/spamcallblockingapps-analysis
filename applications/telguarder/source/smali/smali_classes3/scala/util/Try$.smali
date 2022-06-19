.class public final Lscala/util/Try$;
.super Ljava/lang/Object;
.source "Try.scala"


# static fields
.field public static final MODULE$:Lscala/util/Try$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/util/Try$;

    invoke-direct {v0}, Lscala/util/Try$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/util/Try$;->MODULE$:Lscala/util/Try$;

    return-void
.end method


# virtual methods
.method public apply(Lscala/Function0;)Lscala/util/Try;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TT;>;)",
            "Lscala/util/Try<",
            "TT;>;"
        }
    .end annotation

    .line 192
    :try_start_0
    new-instance v0, Lscala/util/Success;

    invoke-interface {p1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/util/Success;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 193
    sget-object v0, Lscala/util/control/NonFatal$;->MODULE$:Lscala/util/control/NonFatal$;

    invoke-virtual {v0, p1}, Lscala/util/control/NonFatal$;->unapply(Ljava/lang/Throwable;)Lscala/Option;

    move-result-object v0

    invoke-virtual {v0}, Lscala/Option;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p1, Lscala/util/Failure;

    invoke-virtual {v0}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p1, v0}, Lscala/util/Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, p1

    :goto_0
    return-object v0

    .line 192
    :cond_0
    throw p1
.end method
