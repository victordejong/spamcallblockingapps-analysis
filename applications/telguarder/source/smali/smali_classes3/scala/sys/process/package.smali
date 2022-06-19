.class public final Lscala/sys/process/package;
.super Ljava/lang/Object;
.source "package.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0001;Q!\u0001\u0002\t\u0002%\tq\u0001]1dW\u0006<WM\u0003\u0002\u0004\t\u00059\u0001O]8dKN\u001c(BA\u0003\u0007\u0003\r\u0019\u0018p\u001d\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001\u0001C\u0001\u0006\u000c\u001b\u0005\u0011a!\u0002\u0007\u0003\u0011\u0003i!a\u00029bG.\u000cw-Z\n\u0004\u00179\u0011\u0002CA\u0008\u0011\u001b\u00051\u0011BA\t\u0007\u0005\u0019\te.\u001f*fMB\u0011!bE\u0005\u0003)\t\u0011\u0001\u0003\u0015:pG\u0016\u001c8/S7qY&\u001c\u0017\u000e^:\t\u000bYYA\u0011A\u000c\u0002\rqJg.\u001b;?)\u0005I\u0001\"B\r\u000c\t\u0003Q\u0012a\u00046bm\u00064V.\u0011:hk6,g\u000e^:\u0016\u0003m\u00012\u0001H\u0012\'\u001d\ti\"E\u0004\u0002\u001fC5\tqD\u0003\u0002!\u0011\u00051AH]8pizJ\u0011aB\u0005\u0003\u0003\u0019I!\u0001J\u0013\u0003\t1K7\u000f\u001e\u0006\u0003\u0003\u0019\u0001\"a\n\u0016\u000f\u0005=A\u0013BA\u0015\u0007\u0003\u0019\u0001&/\u001a3fM&\u00111\u0006\u000c\u0002\u0007\'R\u0014\u0018N\\4\u000b\u0005%2\u0001\"\u0002\u0018\u000c\t\u0003y\u0013!B:uI&tW#\u0001\u0019\u0011\u0005E2T\"\u0001\u001a\u000b\u0005M\"\u0014AA5p\u0015\u0005)\u0014\u0001\u00026bm\u0006L!a\u000e\u001a\u0003\u0017%s\u0007/\u001e;TiJ,\u0017-\u001c\u0005\u0006s-!\tAO\u0001\u0007gR$w.\u001e;\u0016\u0003m\u0002\"!\r\u001f\n\u0005u\u0012$a\u0003)sS:$8\u000b\u001e:fC6DQaP\u0006\u0005\u0002i\naa\u001d;eKJ\u0014\u0008"
.end annotation


# direct methods
.method public static builderToProcess(Ljava/lang/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;
    .locals 1

    sget-object v0, Lscala/sys/process/package$;->MODULE$:Lscala/sys/process/package$;

    invoke-virtual {v0, p0}, Lscala/sys/process/package$;->builderToProcess(Ljava/lang/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static buildersToProcess(Lscala/collection/Seq;Lscala/Function1;)Lscala/collection/Seq;
    .locals 1
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

    sget-object v0, Lscala/sys/process/package$;->MODULE$:Lscala/sys/process/package$;

    invoke-virtual {v0, p0, p1}, Lscala/sys/process/package$;->buildersToProcess(Lscala/collection/Seq;Lscala/Function1;)Lscala/collection/Seq;

    move-result-object p0

    return-object p0
.end method

.method public static fileToProcess(Ljava/io/File;)Lscala/sys/process/ProcessBuilder$FileBuilder;
    .locals 1

    sget-object v0, Lscala/sys/process/package$;->MODULE$:Lscala/sys/process/package$;

    invoke-virtual {v0, p0}, Lscala/sys/process/package$;->fileToProcess(Ljava/io/File;)Lscala/sys/process/ProcessBuilder$FileBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static javaVmArguments()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/sys/process/package$;->MODULE$:Lscala/sys/process/package$;

    invoke-virtual {v0}, Lscala/sys/process/package$;->javaVmArguments()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public static stderr()Ljava/io/PrintStream;
    .locals 1

    sget-object v0, Lscala/sys/process/package$;->MODULE$:Lscala/sys/process/package$;

    invoke-virtual {v0}, Lscala/sys/process/package$;->stderr()Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public static stdin()Ljava/io/InputStream;
    .locals 1

    sget-object v0, Lscala/sys/process/package$;->MODULE$:Lscala/sys/process/package$;

    invoke-virtual {v0}, Lscala/sys/process/package$;->stdin()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static stdout()Ljava/io/PrintStream;
    .locals 1

    sget-object v0, Lscala/sys/process/package$;->MODULE$:Lscala/sys/process/package$;

    invoke-virtual {v0}, Lscala/sys/process/package$;->stdout()Ljava/io/PrintStream;

    move-result-object v0

    return-object v0
.end method

.method public static stringSeqToProcess(Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "Ljava/lang/String;",
            ">;)",
            "Lscala/sys/process/ProcessBuilder;"
        }
    .end annotation

    sget-object v0, Lscala/sys/process/package$;->MODULE$:Lscala/sys/process/package$;

    invoke-virtual {v0, p0}, Lscala/sys/process/package$;->stringSeqToProcess(Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static stringToProcess(Ljava/lang/String;)Lscala/sys/process/ProcessBuilder;
    .locals 1

    sget-object v0, Lscala/sys/process/package$;->MODULE$:Lscala/sys/process/package$;

    invoke-virtual {v0, p0}, Lscala/sys/process/package$;->stringToProcess(Ljava/lang/String;)Lscala/sys/process/ProcessBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static urlToProcess(Ljava/net/URL;)Lscala/sys/process/ProcessBuilder$URLBuilder;
    .locals 1

    sget-object v0, Lscala/sys/process/package$;->MODULE$:Lscala/sys/process/package$;

    invoke-virtual {v0, p0}, Lscala/sys/process/package$;->urlToProcess(Ljava/net/URL;)Lscala/sys/process/ProcessBuilder$URLBuilder;

    move-result-object p0

    return-object p0
.end method
