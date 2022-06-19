.class public final Lscala/sys/process/package$;
.super Ljava/lang/Object;
.source "package.scala"

# interfaces
.implements Lscala/sys/process/ProcessImplicits;


# static fields
.field public static final MODULE$:Lscala/sys/process/package$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/sys/process/package$;

    invoke-direct {v0}, Lscala/sys/process/package$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/sys/process/package$;->MODULE$:Lscala/sys/process/package$;

    invoke-static {p0}, Lscala/sys/process/ProcessImplicits$class;->$init$(Lscala/sys/process/ProcessImplicits;)V

    return-void
.end method


# virtual methods
.method public builderToProcess(Ljava/lang/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;
    .locals 0

    .line 202
    invoke-static {p0, p1}, Lscala/sys/process/ProcessImplicits$class;->builderToProcess(Lscala/sys/process/ProcessImplicits;Ljava/lang/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public buildersToProcess(Lscala/collection/Seq;Lscala/Function1;)Lscala/collection/Seq;
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

    .line 202
    invoke-static {p0, p1, p2}, Lscala/sys/process/ProcessImplicits$class;->buildersToProcess(Lscala/sys/process/ProcessImplicits;Lscala/collection/Seq;Lscala/Function1;)Lscala/collection/Seq;

    move-result-object p1

    return-object p1
.end method

.method public fileToProcess(Ljava/io/File;)Lscala/sys/process/ProcessBuilder$FileBuilder;
    .locals 0

    .line 202
    invoke-static {p0, p1}, Lscala/sys/process/ProcessImplicits$class;->fileToProcess(Lscala/sys/process/ProcessImplicits;Ljava/io/File;)Lscala/sys/process/ProcessBuilder$FileBuilder;

    move-result-object p1

    return-object p1
.end method

.method public javaVmArguments()Lscala/collection/immutable/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 207
    sget-object v0, Lscala/collection/JavaConversions$;->MODULE$:Lscala/collection/JavaConversions$;

    invoke-static {}, Ljava/lang/management/ManagementFactory;->getRuntimeMXBean()Ljava/lang/management/RuntimeMXBean;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/management/RuntimeMXBean;->getInputArguments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/JavaConversions$;->asScalaBuffer(Ljava/util/List;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/mutable/Buffer;->toList()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public stderr()Ljava/io/PrintStream;
    .locals 1

    .line 214
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    return-object v0
.end method

.method public stdin()Ljava/io/InputStream;
    .locals 1

    .line 210
    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public stdout()Ljava/io/PrintStream;
    .locals 1

    .line 212
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    return-object v0
.end method

.method public stringSeqToProcess(Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;
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

    .line 202
    invoke-static {p0, p1}, Lscala/sys/process/ProcessImplicits$class;->stringSeqToProcess(Lscala/sys/process/ProcessImplicits;Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public stringToProcess(Ljava/lang/String;)Lscala/sys/process/ProcessBuilder;
    .locals 0

    .line 202
    invoke-static {p0, p1}, Lscala/sys/process/ProcessImplicits$class;->stringToProcess(Lscala/sys/process/ProcessImplicits;Ljava/lang/String;)Lscala/sys/process/ProcessBuilder;

    move-result-object p1

    return-object p1
.end method

.method public urlToProcess(Ljava/net/URL;)Lscala/sys/process/ProcessBuilder$URLBuilder;
    .locals 0

    .line 202
    invoke-static {p0, p1}, Lscala/sys/process/ProcessImplicits$class;->urlToProcess(Lscala/sys/process/ProcessImplicits;Ljava/net/URL;)Lscala/sys/process/ProcessBuilder$URLBuilder;

    move-result-object p1

    return-object p1
.end method
