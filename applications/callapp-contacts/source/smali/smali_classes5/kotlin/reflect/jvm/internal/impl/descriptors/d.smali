.class public interface abstract Lkotlin/reflect/jvm/internal/impl/descriptors/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/f;
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/h;


# virtual methods
.method public abstract getCompanionObjectDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/d;
.end method

.method public abstract getConstructors()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;
.end method

.method public abstract getDeclaredTypeParameters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
.end method

.method public abstract getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/e;
.end method

.method public abstract getMemberScope(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;)Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
.end method

.method public abstract getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;
.end method

.method public abstract getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/d;
.end method

.method public abstract getSealedSubclasses()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStaticScope()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
.end method

.method public abstract getThisAsReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;
.end method

.method public abstract getUnsubstitutedInnerClassesScope()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
.end method

.method public abstract getUnsubstitutedMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
.end method

.method public abstract getUnsubstitutedPrimaryConstructor()Lkotlin/reflect/jvm/internal/impl/descriptors/c;
.end method

.method public abstract getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;
.end method

.method public abstract isCompanionObject()Z
.end method

.method public abstract isData()Z
.end method

.method public abstract isFun()Z
.end method

.method public abstract isInline()Z
.end method

.method public abstract isValue()Z
.end method
