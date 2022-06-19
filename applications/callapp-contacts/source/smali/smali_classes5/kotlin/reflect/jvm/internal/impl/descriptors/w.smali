.class public interface abstract Lkotlin/reflect/jvm/internal/impl/descriptors/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;
    }
.end annotation


# virtual methods
.method public abstract getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;
.end method

.method public abstract getInitialSignatureDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/w;
.end method

.method public abstract getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/w;
.end method

.method public abstract getOverriddenDescriptors()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/w;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isHiddenForResolutionEverywhereBesideSupercalls()Z
.end method

.method public abstract isHiddenToOvercomeSignatureClash()Z
.end method

.method public abstract isInfix()Z
.end method

.method public abstract isInline()Z
.end method

.method public abstract isOperator()Z
.end method

.method public abstract isSuspend()Z
.end method

.method public abstract isTailrec()Z
.end method

.method public abstract newCopyBuilder()Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/w$a<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/w;",
            ">;"
        }
    .end annotation
.end method

.method public abstract substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/w;
.end method
