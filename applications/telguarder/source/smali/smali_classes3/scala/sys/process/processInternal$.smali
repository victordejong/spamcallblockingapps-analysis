.class public final Lscala/sys/process/processInternal$;
.super Ljava/lang/Object;
.source "package.scala"


# static fields
.field public static final MODULE$:Lscala/sys/process/processInternal$;


# instance fields
.field private final processDebug:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/sys/process/processInternal$;

    invoke-direct {v0}, Lscala/sys/process/processInternal$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/sys/process/processInternal$;->MODULE$:Lscala/sys/process/processInternal$;

    .line 224
    sget-object v0, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    invoke-virtual {v0}, Lscala/sys/package$;->props()Lscala/sys/SystemProperties;

    move-result-object v0

    const-string v1, "scala.process.debug"

    invoke-virtual {v0, v1}, Lscala/sys/SystemProperties;->contains(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lscala/sys/process/processInternal$;->processDebug:Z

    .line 225
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Initializing process package."

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/sys/process/processInternal$;->dbg(Lscala/collection/Seq;)V

    return-void
.end method


# virtual methods
.method public dbg(Lscala/collection/Seq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 246
    invoke-virtual {p0}, Lscala/sys/process/processInternal$;->processDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    sget-object v0, Lscala/Console$;->MODULE$:Lscala/Console$;

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v2, "[process] "

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-interface {p1, v2}, Lscala/collection/Seq;->mkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/Console$;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public ioFailure(Lscala/Function1;)Lscala/PartialFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Ljava/io/IOException;",
            "TT;>;)",
            "Lscala/PartialFunction<",
            "Ljava/lang/Throwable;",
            "TT;>;"
        }
    .end annotation

    .line 242
    new-instance v0, Lscala/sys/process/processInternal$$anonfun$ioFailure$1;

    invoke-direct {v0, p1}, Lscala/sys/process/processInternal$$anonfun$ioFailure$1;-><init>(Lscala/Function1;)V

    return-object v0
.end method

.method public onInterrupt(Lscala/Function0;)Lscala/PartialFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TT;>;)",
            "Lscala/PartialFunction<",
            "Ljava/lang/Throwable;",
            "TT;>;"
        }
    .end annotation

    .line 238
    new-instance v0, Lscala/sys/process/processInternal$$anonfun$onInterrupt$1;

    invoke-direct {v0, p1}, Lscala/sys/process/processInternal$$anonfun$onInterrupt$1;-><init>(Lscala/Function0;)V

    return-object v0
.end method

.method public final processDebug()Z
    .locals 1

    .line 224
    iget-boolean v0, p0, Lscala/sys/process/processInternal$;->processDebug:Z

    return v0
.end method
