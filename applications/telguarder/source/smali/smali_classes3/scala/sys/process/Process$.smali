.class public final Lscala/sys/process/Process$;
.super Ljava/lang/Object;
.source "Process.scala"

# interfaces
.implements Lscala/sys/process/ProcessImpl;
.implements Lscala/sys/process/ProcessCreation;


# static fields
.field public static final MODULE$:Lscala/sys/process/Process$;


# instance fields
.field private volatile Future$module:Lscala/sys/process/ProcessImpl$Future$;

.field private volatile Spawn$module:Lscala/sys/process/ProcessImpl$Spawn$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/sys/process/Process$;

    invoke-direct {v0}, Lscala/sys/process/Process$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/sys/process/Process$;->MODULE$:Lscala/sys/process/Process$;

    invoke-static {p0}, Lscala/sys/process/ProcessImpl$class;->$init$(Lscala/sys/process/Process$;)V

    invoke-static {p0}, Lscala/sys/process/ProcessCreation$class;->$init$(Lscala/sys/process/ProcessCreation;)V

    return-void
.end method

.method private Future$lzycompute()Lscala/sys/process/ProcessImpl$Future$;
    .locals 1

    .line 41
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lscala/sys/process/Process$;->Future$module:Lscala/sys/process/ProcessImpl$Future$;

    if-nez v0, :cond_0

    new-instance v0, Lscala/sys/process/ProcessImpl$Future$;

    invoke-direct {v0, p0}, Lscala/sys/process/ProcessImpl$Future$;-><init>(Lscala/sys/process/Process$;)V

    iput-object v0, p0, Lscala/sys/process/Process$;->Future$module:Lscala/sys/process/ProcessImpl$Future$;

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/sys/process/Process$;->Future$module:Lscala/sys/process/ProcessImpl$Future$;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private Spawn$lzycompute()Lscala/sys/process/ProcessImpl$Spawn$;
    .locals 1

    .line 41
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lscala/sys/process/Process$;->Spawn$module:Lscala/sys/process/ProcessImpl$Spawn$;

    if-nez v0, :cond_0

    new-instance v0, Lscala/sys/process/ProcessImpl$Spawn$;

    invoke-direct {v0, p0}, Lscala/sys/process/ProcessImpl$Spawn$;-><init>(Lscala/sys/process/Process$;)V

    iput-object v0, p0, Lscala/sys/process/Process$;->Spawn$module:Lscala/sys/process/ProcessImpl$Spawn$;

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/sys/process/Process$;->Spawn$module:Lscala/sys/process/ProcessImpl$Spawn$;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public Future()Lscala/sys/process/ProcessImpl$Future$;
    .locals 1

    .line 41
    iget-object v0, p0, Lscala/sys/process/Process$;->Future$module:Lscala/sys/process/ProcessImpl$Future$;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/sys/process/Process$;->Future$lzycompute()Lscala/sys/process/ProcessImpl$Future$;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/sys/process/Process$;->Future$module:Lscala/sys/process/ProcessImpl$Future$;

    :goto_0
    return-object v0
.end method

.method public Spawn()Lscala/sys/process/ProcessImpl$Spawn$;
    .locals 1

    .line 41
    iget-object v0, p0, Lscala/sys/process/Process$;->Spawn$module:Lscala/sys/process/ProcessImpl$Spawn$;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/sys/process/Process$;->Spawn$lzycompute()Lscala/sys/process/ProcessImpl$Spawn$;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/sys/process/Process$;->Spawn$module:Lscala/sys/process/ProcessImpl$Spawn$;

    :goto_0
    return-object v0
.end method

.method public apply(Ljava/io/File;)Lscala/sys/process/ProcessBuilder$FileBuilder;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/sys/process/ProcessCreation$class;->apply(Lscala/sys/process/ProcessCreation;Ljava/io/File;)Lscala/sys/process/ProcessBuilder$FileBuilder;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/net/URL;)Lscala/sys/process/ProcessBuilder$URLBuilder;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/sys/process/ProcessCreation$class;->apply(Lscala/sys/process/ProcessCreation;Ljava/net/URL;)Lscala/sys/process/ProcessBuilder$URLBuilder;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/sys/process/ProcessCreation$class;->apply(Lscala/sys/process/ProcessCreation;Ljava/lang/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/String;)Lscala/sys/process/ProcessBuilder;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/sys/process/ProcessCreation$class;->apply(Lscala/sys/process/ProcessCreation;Ljava/lang/String;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/String;Ljava/io/File;Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lscala/collection/Seq<",
            "Lscala/Tuple2<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lscala/sys/process/ProcessBuilder;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2, p3}, Lscala/sys/process/ProcessCreation$class;->apply(Lscala/sys/process/ProcessCreation;Ljava/lang/String;Ljava/io/File;Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/String;Lscala/Function0;)Lscala/sys/process/ProcessBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lscala/Function0<",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/sys/process/ProcessBuilder;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lscala/sys/process/ProcessCreation$class;->apply(Lscala/sys/process/ProcessCreation;Ljava/lang/String;Lscala/Function0;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/String;Lscala/Option;Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lscala/Option<",
            "Ljava/io/File;",
            ">;",
            "Lscala/collection/Seq<",
            "Lscala/Tuple2<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lscala/sys/process/ProcessBuilder;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2, p3}, Lscala/sys/process/ProcessCreation$class;->apply(Lscala/sys/process/ProcessCreation;Ljava/lang/String;Lscala/Option;Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/String;Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lscala/collection/Seq<",
            "Ljava/lang/String;",
            ">;)",
            "Lscala/sys/process/ProcessBuilder;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lscala/sys/process/ProcessCreation$class;->apply(Lscala/sys/process/ProcessCreation;Ljava/lang/String;Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "Ljava/lang/String;",
            ">;)",
            "Lscala/sys/process/ProcessBuilder;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/sys/process/ProcessCreation$class;->apply(Lscala/sys/process/ProcessCreation;Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lscala/collection/Seq;Ljava/io/File;Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "Lscala/collection/Seq<",
            "Lscala/Tuple2<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lscala/sys/process/ProcessBuilder;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2, p3}, Lscala/sys/process/ProcessCreation$class;->apply(Lscala/sys/process/ProcessCreation;Lscala/collection/Seq;Ljava/io/File;Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lscala/collection/Seq;Lscala/Option;Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "Ljava/lang/String;",
            ">;",
            "Lscala/Option<",
            "Ljava/io/File;",
            ">;",
            "Lscala/collection/Seq<",
            "Lscala/Tuple2<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lscala/sys/process/ProcessBuilder;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2, p3}, Lscala/sys/process/ProcessCreation$class;->apply(Lscala/sys/process/ProcessCreation;Lscala/collection/Seq;Lscala/Option;Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public apply(Z)Lscala/sys/process/ProcessBuilder;
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lscala/sys/process/ProcessCreation$class;->apply(Lscala/sys/process/ProcessCreation;Z)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public applySeq(Lscala/collection/Seq;Lscala/Function1;)Lscala/collection/Seq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq<",
            "TT;>;",
            "Lscala/Function1<",
            "TT;",
            "Lscala/sys/process/ProcessBuilder$Source;",
            ">;)",
            "Lscala/collection/Seq<",
            "Lscala/sys/process/ProcessBuilder$Source;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lscala/sys/process/ProcessCreation$class;->applySeq(Lscala/sys/process/ProcessCreation;Lscala/collection/Seq;Lscala/Function1;)Lscala/collection/Seq;

    move-result-object p1

    return-object p1
.end method

.method public cat(Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "Lscala/sys/process/ProcessBuilder$Source;",
            ">;)",
            "Lscala/sys/process/ProcessBuilder;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lscala/sys/process/ProcessCreation$class;->cat(Lscala/sys/process/ProcessCreation;Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public cat(Lscala/sys/process/ProcessBuilder$Source;Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/sys/process/ProcessBuilder$Source;",
            "Lscala/collection/Seq<",
            "Lscala/sys/process/ProcessBuilder$Source;",
            ">;)",
            "Lscala/sys/process/ProcessBuilder;"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lscala/sys/process/ProcessCreation$class;->cat(Lscala/sys/process/ProcessCreation;Lscala/sys/process/ProcessBuilder$Source;Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method
