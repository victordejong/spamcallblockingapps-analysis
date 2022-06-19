.class public abstract Lscala/App$class;
.super Ljava/lang/Object;
.source "App.scala"


# direct methods
.method public static $init$(Lscala/App;)V
    .locals 2

    .line 44
    sget-object v0, Lscala/compat/Platform$;->MODULE$:Lscala/compat/Platform$;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lscala/App;->scala$App$_setter_$executionStart_$eq(J)V

    .line 53
    new-instance v0, Lscala/collection/mutable/ListBuffer;

    invoke-direct {v0}, Lscala/collection/mutable/ListBuffer;-><init>()V

    invoke-interface {p0, v0}, Lscala/App;->scala$App$_setter_$scala$App$$initCode_$eq(Lscala/collection/mutable/ListBuffer;)V

    return-void
.end method

.method public static args(Lscala/App;)[Ljava/lang/String;
    .locals 0

    .line 49
    invoke-interface {p0}, Lscala/App;->scala$App$$_args()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static delayedInit(Lscala/App;Lscala/Function0;)V
    .locals 0

    .line 64
    invoke-interface {p0}, Lscala/App;->scala$App$$initCode()Lscala/collection/mutable/ListBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lscala/collection/mutable/ListBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ListBuffer;

    return-void
.end method

.method public static main(Lscala/App;[Ljava/lang/String;)V
    .locals 3

    .line 75
    invoke-interface {p0, p1}, Lscala/App;->scala$App$$_args_$eq([Ljava/lang/String;)V

    .line 76
    invoke-interface {p0}, Lscala/App;->scala$App$$initCode()Lscala/collection/mutable/ListBuffer;

    move-result-object p1

    new-instance v0, Lscala/App$$anonfun$main$1;

    invoke-direct {v0, p0}, Lscala/App$$anonfun$main$1;-><init>(Lscala/App;)V

    invoke-static {p1, v0}, Lscala/collection/generic/TraversableForwarder$class;->foreach(Lscala/collection/generic/TraversableForwarder;Lscala/Function1;)V

    .line 77
    sget-object p1, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    const-string v0, "scala.time"

    invoke-static {p1, v0}, Lscala/util/PropertiesTrait$class;->propIsSet(Lscala/util/PropertiesTrait;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 78
    sget-object p1, Lscala/compat/Platform$;->MODULE$:Lscala/compat/Platform$;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p0}, Lscala/App;->executionStart()J

    move-result-wide p0

    sub-long/2addr v0, p0

    .line 79
    sget-object p0, Lscala/Console$;->MODULE$:Lscala/Console$;

    new-instance p1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {p1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v2, "[total "

    invoke-virtual {p1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    const-string v0, "ms]"

    invoke-virtual {p1, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lscala/Console$;->out()Ljava/io/PrintStream;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
