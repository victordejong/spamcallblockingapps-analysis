.class public abstract Lscala/sys/process/ProcessBuilder$Sink$class;
.super Ljava/lang/Object;
.source "ProcessBuilder.scala"


# direct methods
.method public static $hash$less(Lscala/sys/process/ProcessBuilder$Sink;Ljava/io/File;)Lscala/sys/process/ProcessBuilder;
    .locals 2

    .line 357
    new-instance v0, Lscala/sys/process/ProcessBuilderImpl$FileInput;

    sget-object v1, Lscala/sys/process/ProcessBuilder$;->MODULE$:Lscala/sys/process/ProcessBuilder$;

    invoke-direct {v0, v1, p1}, Lscala/sys/process/ProcessBuilderImpl$FileInput;-><init>(Lscala/sys/process/ProcessBuilder$;Ljava/io/File;)V

    invoke-interface {p0, v0}, Lscala/sys/process/ProcessBuilder$Sink;->$hash$less(Lscala/sys/process/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static $hash$less(Lscala/sys/process/ProcessBuilder$Sink;Ljava/net/URL;)Lscala/sys/process/ProcessBuilder;
    .locals 2

    .line 360
    new-instance v0, Lscala/sys/process/ProcessBuilderImpl$URLInput;

    sget-object v1, Lscala/sys/process/ProcessBuilder$;->MODULE$:Lscala/sys/process/ProcessBuilder$;

    invoke-direct {v0, v1, p1}, Lscala/sys/process/ProcessBuilderImpl$URLInput;-><init>(Lscala/sys/process/ProcessBuilder$;Ljava/net/URL;)V

    invoke-interface {p0, v0}, Lscala/sys/process/ProcessBuilder$Sink;->$hash$less(Lscala/sys/process/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static $hash$less(Lscala/sys/process/ProcessBuilder$Sink;Lscala/Function0;)Lscala/sys/process/ProcessBuilder;
    .locals 3

    .line 366
    new-instance v0, Lscala/sys/process/ProcessBuilderImpl$IStreamBuilder;

    sget-object v1, Lscala/sys/process/ProcessBuilder$;->MODULE$:Lscala/sys/process/ProcessBuilder$;

    const-string v2, "<input stream>"

    invoke-direct {v0, v1, p1, v2}, Lscala/sys/process/ProcessBuilderImpl$IStreamBuilder;-><init>(Lscala/sys/process/ProcessBuilder$;Lscala/Function0;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lscala/sys/process/ProcessBuilder$Sink;->$hash$less(Lscala/sys/process/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static $hash$less(Lscala/sys/process/ProcessBuilder$Sink;Lscala/sys/process/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;
    .locals 3

    .line 369
    new-instance v0, Lscala/sys/process/ProcessBuilderImpl$PipedBuilder;

    sget-object v1, Lscala/sys/process/ProcessBuilder$;->MODULE$:Lscala/sys/process/ProcessBuilder$;

    invoke-interface {p0}, Lscala/sys/process/ProcessBuilder$Sink;->toSink()Lscala/sys/process/ProcessBuilder;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p0, v2}, Lscala/sys/process/ProcessBuilderImpl$PipedBuilder;-><init>(Lscala/sys/process/ProcessBuilder$;Lscala/sys/process/ProcessBuilder;Lscala/sys/process/ProcessBuilder;Z)V

    return-object v0
.end method

.method public static $init$(Lscala/sys/process/ProcessBuilder$Sink;)V
    .locals 0

    return-void
.end method
