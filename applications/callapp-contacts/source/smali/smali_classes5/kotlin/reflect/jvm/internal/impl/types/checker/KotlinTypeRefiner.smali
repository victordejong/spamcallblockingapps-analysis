.class public abstract Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract findClassAcrossModuleDependencies(Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;
.end method

.method public abstract getOrPutScopeForClass(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lkotlin/reflect/jvm/internal/impl/resolve/e/h;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            "Lkotlin/jvm/functions/Function0<",
            "+TS;>;)TS;"
        }
    .end annotation
.end method

.method public abstract isRefinementNeededForModule(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;)Z
.end method

.method public abstract isRefinementNeededForTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;)Z
.end method

.method public abstract refineDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;
.end method

.method public abstract refineSupertypes(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            ")",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract refineType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
.end method
