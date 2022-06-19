.class public abstract Lscala/sys/process/ProcessBuilder$Source$class;
.super Ljava/lang/Object;
.source "ProcessBuilder.scala"


# direct methods
.method public static $hash$greater(Lscala/sys/process/ProcessBuilder$Source;Ljava/io/File;)Lscala/sys/process/ProcessBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 331
    invoke-static {p0, p1, v0}, Lscala/sys/process/ProcessBuilder$Source$class;->toFile(Lscala/sys/process/ProcessBuilder$Source;Ljava/io/File;Z)Lscala/sys/process/ProcessBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static $hash$greater(Lscala/sys/process/ProcessBuilder$Source;Lscala/Function0;)Lscala/sys/process/ProcessBuilder;
    .locals 3

    .line 340
    new-instance v0, Lscala/sys/process/ProcessBuilderImpl$OStreamBuilder;

    sget-object v1, Lscala/sys/process/ProcessBuilder$;->MODULE$:Lscala/sys/process/ProcessBuilder$;

    const-string v2, "<output stream>"

    invoke-direct {v0, v1, p1, v2}, Lscala/sys/process/ProcessBuilderImpl$OStreamBuilder;-><init>(Lscala/sys/process/ProcessBuilder$;Lscala/Function0;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lscala/sys/process/ProcessBuilder$Source;->$hash$greater(Lscala/sys/process/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static $hash$greater(Lscala/sys/process/ProcessBuilder$Source;Lscala/sys/process/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;
    .locals 3

    .line 343
    new-instance v0, Lscala/sys/process/ProcessBuilderImpl$PipedBuilder;

    sget-object v1, Lscala/sys/process/ProcessBuilder$;->MODULE$:Lscala/sys/process/ProcessBuilder$;

    invoke-interface {p0}, Lscala/sys/process/ProcessBuilder$Source;->toSource()Lscala/sys/process/ProcessBuilder;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lscala/sys/process/ProcessBuilderImpl$PipedBuilder;-><init>(Lscala/sys/process/ProcessBuilder$;Lscala/sys/process/ProcessBuilder;Lscala/sys/process/ProcessBuilder;Z)V

    return-object v0
.end method

.method public static $hash$greater$greater(Lscala/sys/process/ProcessBuilder$Source;Ljava/io/File;)Lscala/sys/process/ProcessBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 334
    invoke-static {p0, p1, v0}, Lscala/sys/process/ProcessBuilder$Source$class;->toFile(Lscala/sys/process/ProcessBuilder$Source;Ljava/io/File;Z)Lscala/sys/process/ProcessBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static $init$(Lscala/sys/process/ProcessBuilder$Source;)V
    .locals 0

    return-void
.end method

.method public static cat(Lscala/sys/process/ProcessBuilder$Source;)Lscala/sys/process/ProcessBuilder;
    .locals 0

    .line 346
    invoke-interface {p0}, Lscala/sys/process/ProcessBuilder$Source;->toSource()Lscala/sys/process/ProcessBuilder;

    move-result-object p0

    return-object p0
.end method

.method private static toFile(Lscala/sys/process/ProcessBuilder$Source;Ljava/io/File;Z)Lscala/sys/process/ProcessBuilder;
    .locals 2

    .line 347
    new-instance v0, Lscala/sys/process/ProcessBuilderImpl$FileOutput;

    sget-object v1, Lscala/sys/process/ProcessBuilder$;->MODULE$:Lscala/sys/process/ProcessBuilder$;

    invoke-direct {v0, v1, p1, p2}, Lscala/sys/process/ProcessBuilderImpl$FileOutput;-><init>(Lscala/sys/process/ProcessBuilder$;Ljava/io/File;Z)V

    invoke-interface {p0, v0}, Lscala/sys/process/ProcessBuilder$Source;->$hash$greater(Lscala/sys/process/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;

    move-result-object p0

    return-object p0
.end method
