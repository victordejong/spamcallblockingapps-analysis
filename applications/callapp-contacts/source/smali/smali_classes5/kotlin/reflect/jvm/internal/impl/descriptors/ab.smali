.class public interface abstract Lkotlin/reflect/jvm/internal/impl/descriptors/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/k;


# virtual methods
.method public abstract getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/g;
.end method

.method public abstract getCapability(Lkotlin/reflect/jvm/internal/impl/descriptors/aa;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/aa<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getExpectedByModules()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ab;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackage(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/aj;
.end method

.method public abstract getSubPackagesOf(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            ">;"
        }
    .end annotation
.end method

.method public abstract shouldSeeInternalsOf(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;)Z
.end method
