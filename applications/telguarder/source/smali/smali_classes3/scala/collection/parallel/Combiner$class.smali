.class public abstract Lscala/collection/parallel/Combiner$class;
.super Ljava/lang/Object;
.source "Combiner.scala"


# direct methods
.method public static $init$(Lscala/collection/parallel/Combiner;)V
    .locals 1

    .line 36
    sget-object v0, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-virtual {v0}, Lscala/collection/parallel/package$;->defaultTaskSupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/parallel/Combiner;->_combinerTaskSupport_$eq(Lscala/collection/parallel/TaskSupport;)V

    return-void
.end method

.method public static canBeShared(Lscala/collection/parallel/Combiner;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static combinerTaskSupport(Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/TaskSupport;
    .locals 1

    .line 39
    invoke-interface {p0}, Lscala/collection/parallel/Combiner;->_combinerTaskSupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    if-nez v0, :cond_0

    .line 41
    sget-object v0, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-virtual {v0}, Lscala/collection/parallel/package$;->defaultTaskSupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/parallel/Combiner;->_combinerTaskSupport_$eq(Lscala/collection/parallel/TaskSupport;)V

    .line 42
    sget-object p0, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-virtual {p0}, Lscala/collection/parallel/package$;->defaultTaskSupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static combinerTaskSupport_$eq(Lscala/collection/parallel/Combiner;Lscala/collection/parallel/TaskSupport;)V
    .locals 0

    .line 46
    invoke-interface {p0, p1}, Lscala/collection/parallel/Combiner;->_combinerTaskSupport_$eq(Lscala/collection/parallel/TaskSupport;)V

    return-void
.end method

.method public static resultWithTaskSupport(Lscala/collection/parallel/Combiner;)Ljava/lang/Object;
    .locals 2

    .line 86
    invoke-interface {p0}, Lscala/collection/parallel/Combiner;->result()Ljava/lang/Object;

    move-result-object v0

    .line 87
    sget-object v1, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-interface {p0}, Lscala/collection/parallel/Combiner;->combinerTaskSupport()Lscala/collection/parallel/TaskSupport;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lscala/collection/parallel/package$;->setTaskSupport(Ljava/lang/Object;Lscala/collection/parallel/TaskSupport;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
