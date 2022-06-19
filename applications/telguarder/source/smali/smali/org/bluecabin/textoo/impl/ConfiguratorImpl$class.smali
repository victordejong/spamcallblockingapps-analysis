.class public abstract Lorg/bluecabin/textoo/impl/ConfiguratorImpl$class;
.super Ljava/lang/Object;
.source "ConfiguratorImpl.scala"


# direct methods
.method public static $init$(Lorg/bluecabin/textoo/impl/ConfiguratorImpl;)V
    .locals 0

    return-void
.end method

.method public static final addChange(Lorg/bluecabin/textoo/impl/ConfiguratorImpl;Lorg/bluecabin/textoo/impl/Change;)Lorg/bluecabin/textoo/Configurator;
    .locals 1

    .line 20
    invoke-interface {p0}, Lorg/bluecabin/textoo/impl/ConfiguratorImpl;->changes()Lscala/collection/immutable/Queue;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/bluecabin/textoo/impl/Change;->addTo(Lscala/collection/immutable/Queue;)Lscala/collection/immutable/Queue;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/bluecabin/textoo/impl/ConfiguratorImpl;->updateChanges(Lscala/collection/immutable/Queue;)Lorg/bluecabin/textoo/Configurator;

    move-result-object p0

    return-object p0
.end method

.method public static final apply(Lorg/bluecabin/textoo/impl/ConfiguratorImpl;)Ljava/lang/Object;
    .locals 3

    .line 24
    invoke-interface {p0}, Lorg/bluecabin/textoo/impl/ConfiguratorImpl;->changes()Lscala/collection/immutable/Queue;

    move-result-object v0

    invoke-interface {p0}, Lorg/bluecabin/textoo/impl/ConfiguratorImpl;->initState()Lscala/Function0;

    move-result-object v1

    invoke-interface {v1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lorg/bluecabin/textoo/impl/ConfiguratorImpl$$anonfun$apply$1;

    invoke-direct {v2, p0}, Lorg/bluecabin/textoo/impl/ConfiguratorImpl$$anonfun$apply$1;-><init>(Lorg/bluecabin/textoo/impl/ConfiguratorImpl;)V

    invoke-virtual {v0, v1, v2}, Lscala/collection/immutable/Queue;->foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/bluecabin/textoo/impl/ConfiguratorImpl;->toResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final implicitTextooContext(Lorg/bluecabin/textoo/impl/ConfiguratorImpl;)Lorg/bluecabin/textoo/TextooContext;
    .locals 0

    .line 12
    invoke-interface {p0}, Lorg/bluecabin/textoo/impl/ConfiguratorImpl;->textooContext()Lorg/bluecabin/textoo/TextooContext;

    move-result-object p0

    return-object p0
.end method

.method public static toResult(Lorg/bluecabin/textoo/impl/ConfiguratorImpl;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method
