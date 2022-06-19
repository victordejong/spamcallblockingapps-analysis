.class public abstract Lscala/sys/process/ProcessCreation$class;
.super Ljava/lang/Object;
.source "Process.scala"


# direct methods
.method public static $init$(Lscala/sys/process/ProcessCreation;)V
    .locals 0

    return-void
.end method

.method public static apply(Lscala/sys/process/ProcessCreation;Ljava/io/File;)Lscala/sys/process/ProcessBuilder$FileBuilder;
    .locals 1

    .line 122
    new-instance p0, Lscala/sys/process/ProcessBuilderImpl$FileImpl;

    sget-object v0, Lscala/sys/process/ProcessBuilder$;->MODULE$:Lscala/sys/process/ProcessBuilder$;

    invoke-direct {p0, v0, p1}, Lscala/sys/process/ProcessBuilderImpl$FileImpl;-><init>(Lscala/sys/process/ProcessBuilder$;Ljava/io/File;)V

    return-object p0
.end method

.method public static apply(Lscala/sys/process/ProcessCreation;Ljava/net/URL;)Lscala/sys/process/ProcessBuilder$URLBuilder;
    .locals 1

    .line 128
    new-instance p0, Lscala/sys/process/ProcessBuilderImpl$URLImpl;

    sget-object v0, Lscala/sys/process/ProcessBuilder$;->MODULE$:Lscala/sys/process/ProcessBuilder$;

    invoke-direct {p0, v0, p1}, Lscala/sys/process/ProcessBuilderImpl$URLImpl;-><init>(Lscala/sys/process/ProcessBuilder$;Ljava/net/URL;)V

    return-object p0
.end method

.method public static apply(Lscala/sys/process/ProcessCreation;Ljava/lang/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;
    .locals 1

    .line 116
    new-instance p0, Lscala/sys/process/ProcessBuilderImpl$Simple;

    sget-object v0, Lscala/sys/process/ProcessBuilder$;->MODULE$:Lscala/sys/process/ProcessBuilder$;

    invoke-direct {p0, v0, p1}, Lscala/sys/process/ProcessBuilderImpl$Simple;-><init>(Lscala/sys/process/ProcessBuilder$;Ljava/lang/ProcessBuilder;)V

    return-object p0
.end method

.method public static apply(Lscala/sys/process/ProcessCreation;Ljava/lang/String;)Lscala/sys/process/ProcessBuilder;
    .locals 3

    .line 52
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x0

    new-array v2, v2, [Lscala/Tuple2;

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-interface {p0, p1, v0, v1}, Lscala/sys/process/ProcessCreation;->apply(Ljava/lang/String;Lscala/Option;Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static apply(Lscala/sys/process/ProcessCreation;Ljava/lang/String;Ljava/io/File;Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;
    .locals 1

    .line 74
    new-instance v0, Lscala/Some;

    invoke-direct {v0, p2}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p1, v0, p3}, Lscala/sys/process/ProcessCreation;->apply(Ljava/lang/String;Lscala/Option;Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static apply(Lscala/sys/process/ProcessCreation;Ljava/lang/String;Lscala/Function0;)Lscala/sys/process/ProcessBuilder;
    .locals 1

    .line 139
    new-instance p0, Lscala/sys/process/ProcessBuilderImpl$Dummy;

    sget-object v0, Lscala/sys/process/ProcessBuilder$;->MODULE$:Lscala/sys/process/ProcessBuilder$;

    invoke-direct {p0, v0, p1, p2}, Lscala/sys/process/ProcessBuilderImpl$Dummy;-><init>(Lscala/sys/process/ProcessBuilder$;Ljava/lang/String;Lscala/Function0;)V

    return-object p0
.end method

.method public static apply(Lscala/sys/process/ProcessCreation;Ljava/lang/String;Lscala/Option;Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;
    .locals 2

    .line 90
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v1, "\\s+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    invoke-interface {p0, p1, p2, p3}, Lscala/sys/process/ProcessCreation;->apply(Lscala/collection/Seq;Lscala/Option;Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static apply(Lscala/sys/process/ProcessCreation;Ljava/lang/String;Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;
    .locals 2

    .line 66
    sget-object v0, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v0}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lscala/collection/Seq;->$plus$colon(Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/Seq;

    sget-object p2, Lscala/None$;->MODULE$:Lscala/None$;

    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v1, 0x0

    new-array v1, v1, [Lscala/Tuple2;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-interface {p0, p1, p2, v0}, Lscala/sys/process/ProcessCreation;->apply(Lscala/collection/Seq;Lscala/Option;Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static apply(Lscala/sys/process/ProcessCreation;Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;
    .locals 3

    .line 59
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x0

    new-array v2, v2, [Lscala/Tuple2;

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-interface {p0, p1, v0, v1}, Lscala/sys/process/ProcessCreation;->apply(Lscala/collection/Seq;Lscala/Option;Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static apply(Lscala/sys/process/ProcessCreation;Lscala/collection/Seq;Ljava/io/File;Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;
    .locals 1

    .line 82
    new-instance v0, Lscala/Some;

    invoke-direct {v0, p2}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p1, v0, p3}, Lscala/sys/process/ProcessCreation;->apply(Lscala/collection/Seq;Lscala/Option;Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static apply(Lscala/sys/process/ProcessCreation;Lscala/collection/Seq;Lscala/Option;Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;
    .locals 3

    .line 104
    new-instance v0, Ljava/lang/ProcessBuilder;

    sget-object v1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object v1

    invoke-interface {p1, v1}, Lscala/collection/Seq;->toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 105
    new-instance p1, Lscala/sys/process/ProcessCreation$$anonfun$apply$2;

    invoke-direct {p1, p0, v0}, Lscala/sys/process/ProcessCreation$$anonfun$apply$2;-><init>(Lscala/sys/process/ProcessCreation;Ljava/lang/ProcessBuilder;)V

    invoke-virtual {p2}, Lscala/Option;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    iget-object p1, p1, Lscala/sys/process/ProcessCreation$$anonfun$apply$2;->jpb$1:Ljava/lang/ProcessBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    .line 106
    :cond_0
    new-instance p1, Lscala/sys/process/ProcessCreation$$anonfun$apply$3;

    invoke-direct {p1, p0, v0}, Lscala/sys/process/ProcessCreation$$anonfun$apply$3;-><init>(Lscala/sys/process/ProcessCreation;Ljava/lang/ProcessBuilder;)V

    invoke-interface {p3, p1}, Lscala/collection/Seq;->foreach(Lscala/Function1;)V

    .line 107
    invoke-interface {p0, v0}, Lscala/sys/process/ProcessCreation;->apply(Ljava/lang/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static apply(Lscala/sys/process/ProcessCreation;Z)Lscala/sys/process/ProcessBuilder;
    .locals 2

    .line 133
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lscala/sys/process/ProcessCreation$$anonfun$apply$1;

    invoke-direct {v1, p0, p1}, Lscala/sys/process/ProcessCreation$$anonfun$apply$1;-><init>(Lscala/sys/process/ProcessCreation;Z)V

    invoke-interface {p0, v0, v1}, Lscala/sys/process/ProcessCreation;->apply(Ljava/lang/String;Lscala/Function0;)Lscala/sys/process/ProcessBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static applySeq(Lscala/sys/process/ProcessCreation;Lscala/collection/Seq;Lscala/Function1;)Lscala/collection/Seq;
    .locals 0

    .line 144
    sget-object p0, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {p0}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lscala/collection/Seq;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/Seq;

    return-object p0
.end method

.method public static cat(Lscala/sys/process/ProcessCreation;Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;
    .locals 2

    .line 173
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p1}, Lscala/collection/Seq;->nonEmpty()Z

    move-result v1

    invoke-virtual {v0, v1}, Lscala/Predef$;->require(Z)V

    .line 174
    new-instance v0, Lscala/sys/process/ProcessCreation$$anonfun$cat$1;

    invoke-direct {v0, p0}, Lscala/sys/process/ProcessCreation$$anonfun$cat$1;-><init>(Lscala/sys/process/ProcessCreation;)V

    sget-object v1, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v1}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lscala/collection/Seq;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/TraversableOnce;

    new-instance v0, Lscala/sys/process/ProcessCreation$$anonfun$cat$2;

    invoke-direct {v0, p0}, Lscala/sys/process/ProcessCreation$$anonfun$cat$2;-><init>(Lscala/sys/process/ProcessCreation;)V

    invoke-interface {p1, v0}, Lscala/collection/TraversableOnce;->reduceLeft(Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/sys/process/ProcessBuilder;

    return-object p0
.end method

.method public static cat(Lscala/sys/process/ProcessCreation;Lscala/sys/process/ProcessBuilder$Source;Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;
    .locals 1

    .line 164
    sget-object v0, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v0}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lscala/collection/Seq;->$plus$colon(Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/Seq;

    invoke-interface {p0, p1}, Lscala/sys/process/ProcessCreation;->cat(Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;

    move-result-object p0

    return-object p0
.end method
