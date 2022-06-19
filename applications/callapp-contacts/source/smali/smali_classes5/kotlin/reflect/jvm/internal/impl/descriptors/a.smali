.class public interface abstract Lkotlin/reflect/jvm/internal/impl/descriptors/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/av;
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/l;
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/av<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/a;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/l;",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/o;"
    }
.end annotation


# virtual methods
.method public abstract getDispatchReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;
.end method

.method public abstract getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;
.end method

.method public abstract getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/a;
.end method

.method public abstract getOverriddenDescriptors()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
.end method

.method public abstract getTypeParameters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserData(Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a$a<",
            "TV;>;)TV;"
        }
    .end annotation
.end method

.method public abstract getValueParameters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ba;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasSynthesizedParameterNames()Z
.end method
