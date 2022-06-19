.class public abstract Lscala/sys/process/ProcessImplicits$class;
.super Ljava/lang/Object;
.source "Process.scala"


# direct methods
.method public static $init$(Lscala/sys/process/ProcessImplicits;)V
    .locals 0

    return-void
.end method

.method public static builderToProcess(Lscala/sys/process/ProcessImplicits;Ljava/lang/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;
    .locals 0

    .line 192
    sget-object p0, Lscala/sys/process/Process$;->MODULE$:Lscala/sys/process/Process$;

    invoke-virtual {p0, p1}, Lscala/sys/process/Process$;->apply(Ljava/lang/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static buildersToProcess(Lscala/sys/process/ProcessImplicits;Lscala/collection/Seq;Lscala/Function1;)Lscala/collection/Seq;
    .locals 0

    .line 189
    sget-object p0, Lscala/sys/process/Process$;->MODULE$:Lscala/sys/process/Process$;

    invoke-static {p0, p1, p2}, Lscala/sys/process/ProcessCreation$class;->applySeq(Lscala/sys/process/ProcessCreation;Lscala/collection/Seq;Lscala/Function1;)Lscala/collection/Seq;

    move-result-object p0

    return-object p0
.end method

.method public static fileToProcess(Lscala/sys/process/ProcessImplicits;Ljava/io/File;)Lscala/sys/process/ProcessBuilder$FileBuilder;
    .locals 0

    .line 202
    sget-object p0, Lscala/sys/process/Process$;->MODULE$:Lscala/sys/process/Process$;

    invoke-virtual {p0, p1}, Lscala/sys/process/Process$;->apply(Ljava/io/File;)Lscala/sys/process/ProcessBuilder$FileBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static stringSeqToProcess(Lscala/sys/process/ProcessImplicits;Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;
    .locals 0

    .line 222
    sget-object p0, Lscala/sys/process/Process$;->MODULE$:Lscala/sys/process/Process$;

    invoke-virtual {p0, p1}, Lscala/sys/process/Process$;->apply(Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static stringToProcess(Lscala/sys/process/ProcessImplicits;Ljava/lang/String;)Lscala/sys/process/ProcessBuilder;
    .locals 0

    .line 215
    sget-object p0, Lscala/sys/process/Process$;->MODULE$:Lscala/sys/process/Process$;

    invoke-virtual {p0, p1}, Lscala/sys/process/Process$;->apply(Ljava/lang/String;)Lscala/sys/process/ProcessBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static urlToProcess(Lscala/sys/process/ProcessImplicits;Ljava/net/URL;)Lscala/sys/process/ProcessBuilder$URLBuilder;
    .locals 0

    .line 212
    sget-object p0, Lscala/sys/process/Process$;->MODULE$:Lscala/sys/process/Process$;

    invoke-virtual {p0, p1}, Lscala/sys/process/Process$;->apply(Ljava/net/URL;)Lscala/sys/process/ProcessBuilder$URLBuilder;

    move-result-object p0

    return-object p0
.end method
