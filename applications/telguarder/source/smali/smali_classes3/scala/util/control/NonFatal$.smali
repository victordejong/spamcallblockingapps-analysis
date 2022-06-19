.class public final Lscala/util/control/NonFatal$;
.super Ljava/lang/Object;
.source "NonFatal.scala"


# static fields
.field public static final MODULE$:Lscala/util/control/NonFatal$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/util/control/NonFatal$;

    invoke-direct {v0}, Lscala/util/control/NonFatal$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/util/control/NonFatal$;->MODULE$:Lscala/util/control/NonFatal$;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Throwable;)Z
    .locals 2

    .line 35
    instance-of v0, p1, Ljava/lang/VirtualMachineError;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    instance-of v0, p1, Ljava/lang/ThreadDeath;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/LinkageError;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    instance-of p1, p1, Lscala/util/control/ControlThrowable;

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_1
    xor-int/2addr p1, v1

    return p1
.end method

.method public unapply(Ljava/lang/Throwable;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lscala/Option<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lscala/util/control/NonFatal$;->apply(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lscala/Some;

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_0
    return-object v0
.end method
