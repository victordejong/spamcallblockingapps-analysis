.class public final Lscala/concurrent/duration/Deadline$;
.super Ljava/lang/Object;
.source "Deadline.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/concurrent/duration/Deadline$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/concurrent/duration/Deadline$;

    invoke-direct {v0}, Lscala/concurrent/duration/Deadline$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/concurrent/duration/Deadline$;->MODULE$:Lscala/concurrent/duration/Deadline$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 66
    sget-object v0, Lscala/concurrent/duration/Deadline$;->MODULE$:Lscala/concurrent/duration/Deadline$;

    return-object v0
.end method


# virtual methods
.method public apply(Lscala/concurrent/duration/FiniteDuration;)Lscala/concurrent/duration/Deadline;
    .locals 1

    .line 26
    new-instance v0, Lscala/concurrent/duration/Deadline;

    invoke-direct {v0, p1}, Lscala/concurrent/duration/Deadline;-><init>(Lscala/concurrent/duration/FiniteDuration;)V

    return-object v0
.end method

.method public now()Lscala/concurrent/duration/Deadline;
    .locals 5

    .line 72
    new-instance v0, Lscala/concurrent/duration/Deadline;

    sget-object v1, Lscala/concurrent/duration/Duration$;->MODULE$:Lscala/concurrent/duration/Duration$;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lscala/concurrent/duration/Duration$;->apply(JLjava/util/concurrent/TimeUnit;)Lscala/concurrent/duration/FiniteDuration;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/concurrent/duration/Deadline;-><init>(Lscala/concurrent/duration/FiniteDuration;)V

    return-object v0
.end method

.method public unapply(Lscala/concurrent/duration/Deadline;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/duration/Deadline;",
            ")",
            "Lscala/Option<",
            "Lscala/concurrent/duration/FiniteDuration;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 26
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-virtual {p1}, Lscala/concurrent/duration/Deadline;->time()Lscala/concurrent/duration/FiniteDuration;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
