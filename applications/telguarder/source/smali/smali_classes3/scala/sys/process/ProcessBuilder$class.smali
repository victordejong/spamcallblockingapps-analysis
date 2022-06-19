.class public abstract Lscala/sys/process/ProcessBuilder$class;
.super Ljava/lang/Object;
.source "ProcessBuilder.scala"


# direct methods
.method public static $init$(Lscala/sys/process/ProcessBuilder;)V
    .locals 0

    return-void
.end method

.method public static lines(Lscala/sys/process/ProcessBuilder;)Lscala/collection/immutable/Stream;
    .locals 0

    .line 178
    invoke-interface {p0}, Lscala/sys/process/ProcessBuilder;->lineStream()Lscala/collection/immutable/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static lines(Lscala/sys/process/ProcessBuilder;Lscala/sys/process/ProcessLogger;)Lscala/collection/immutable/Stream;
    .locals 0

    .line 190
    invoke-interface {p0, p1}, Lscala/sys/process/ProcessBuilder;->lineStream(Lscala/sys/process/ProcessLogger;)Lscala/collection/immutable/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static lines_$bang(Lscala/sys/process/ProcessBuilder;)Lscala/collection/immutable/Stream;
    .locals 0

    .line 202
    invoke-interface {p0}, Lscala/sys/process/ProcessBuilder;->lineStream_$bang()Lscala/collection/immutable/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static lines_$bang(Lscala/sys/process/ProcessBuilder;Lscala/sys/process/ProcessLogger;)Lscala/collection/immutable/Stream;
    .locals 0

    .line 214
    invoke-interface {p0, p1}, Lscala/sys/process/ProcessBuilder;->lineStream_$bang(Lscala/sys/process/ProcessLogger;)Lscala/collection/immutable/Stream;

    move-result-object p0

    return-object p0
.end method
