.class public final Lscala/collection/concurrent/RestartException$;
.super Ljava/lang/Throwable;
.source "TrieMap.scala"

# interfaces
.implements Lscala/util/control/ControlThrowable;


# static fields
.field public static final MODULE$:Lscala/collection/concurrent/RestartException$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/concurrent/RestartException$;

    invoke-direct {v0}, Lscala/collection/concurrent/RestartException$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1097
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    sput-object p0, Lscala/collection/concurrent/RestartException$;->MODULE$:Lscala/collection/concurrent/RestartException$;

    invoke-static {p0}, Lscala/util/control/NoStackTrace$class;->$init$(Lscala/util/control/NoStackTrace;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1097
    sget-object v0, Lscala/collection/concurrent/RestartException$;->MODULE$:Lscala/collection/concurrent/RestartException$;

    return-object v0
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    .line 1097
    invoke-static {p0}, Lscala/util/control/NoStackTrace$class;->fillInStackTrace(Lscala/util/control/NoStackTrace;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$util$control$NoStackTrace$$super$fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    .line 1097
    invoke-super {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method
