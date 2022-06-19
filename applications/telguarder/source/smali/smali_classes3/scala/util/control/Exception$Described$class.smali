.class public abstract Lscala/util/control/Exception$Described$class;
.super Ljava/lang/Object;
.source "Exception.scala"


# direct methods
.method public static $init$(Lscala/util/control/Exception$Described;)V
    .locals 1

    const-string v0, ""

    .line 66
    invoke-interface {p0, v0}, Lscala/util/control/Exception$Described;->scala$util$control$Exception$Described$$_desc_$eq(Ljava/lang/String;)V

    return-void
.end method

.method public static desc(Lscala/util/control/Exception$Described;)Ljava/lang/String;
    .locals 0

    .line 67
    invoke-interface {p0}, Lscala/util/control/Exception$Described;->scala$util$control$Exception$Described$$_desc()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Lscala/util/control/Exception$Described;)Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-interface {p0}, Lscala/util/control/Exception$Described;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lscala/util/control/Exception$Described;->desc()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static withDesc(Lscala/util/control/Exception$Described;Ljava/lang/String;)Lscala/util/control/Exception$Described;
    .locals 0

    .line 69
    invoke-interface {p0, p1}, Lscala/util/control/Exception$Described;->scala$util$control$Exception$Described$$_desc_$eq(Ljava/lang/String;)V

    return-object p0
.end method
