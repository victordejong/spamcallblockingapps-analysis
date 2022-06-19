.class public abstract Lscala/collection/generic/GenericClassTagTraversableTemplate$class;
.super Ljava/lang/Object;
.source "GenericClassTagTraversableTemplate.scala"


# direct methods
.method public static $init$(Lscala/collection/generic/GenericClassTagTraversableTemplate;)V
    .locals 0

    return-void
.end method

.method public static classManifestCompanion(Lscala/collection/generic/GenericClassTagTraversableTemplate;)Lscala/collection/generic/GenericClassTagCompanion;
    .locals 0

    .line 29
    invoke-interface {p0}, Lscala/collection/generic/GenericClassTagTraversableTemplate;->classTagCompanion()Lscala/collection/generic/GenericClassTagCompanion;

    move-result-object p0

    return-object p0
.end method

.method public static genericClassManifestBuilder(Lscala/collection/generic/GenericClassTagTraversableTemplate;Lscala/reflect/ClassTag;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 31
    invoke-interface {p0, p1}, Lscala/collection/generic/GenericClassTagTraversableTemplate;->genericClassTagBuilder(Lscala/reflect/ClassTag;)Lscala/collection/mutable/Builder;

    move-result-object p0

    return-object p0
.end method

.method public static genericClassTagBuilder(Lscala/collection/generic/GenericClassTagTraversableTemplate;Lscala/reflect/ClassTag;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 27
    invoke-interface {p0}, Lscala/collection/generic/GenericClassTagTraversableTemplate;->classTagCompanion()Lscala/collection/generic/GenericClassTagCompanion;

    move-result-object p0

    invoke-virtual {p0, p1}, Lscala/collection/generic/GenericClassTagCompanion;->newBuilder(Lscala/reflect/ClassTag;)Lscala/collection/mutable/Builder;

    move-result-object p0

    return-object p0
.end method
