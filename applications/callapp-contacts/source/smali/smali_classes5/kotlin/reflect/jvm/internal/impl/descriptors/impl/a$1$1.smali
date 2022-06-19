.class final Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;",
        "Lkotlin/reflect/jvm/internal/impl/types/SimpleType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$1;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$1;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$1$1;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 50
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;

    .line 1053
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$1$1;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$1;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$1;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;->refineDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1055
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$1$1;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$1;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$1;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;->defaultType:Lkotlin/reflect/jvm/internal/impl/f/i;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/f/i;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    return-object p1

    .line 1057
    :cond_0
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ax;

    if-eqz v1, :cond_1

    .line 1058
    move-object p1, v0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ax;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/g;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->getDefaultTypeProjections(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->computeExpandedType(Lkotlin/reflect/jvm/internal/impl/descriptors/ax;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    return-object p1

    .line 1064
    :cond_1
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;

    if-eqz v1, :cond_2

    .line 1065
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/g;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v1

    invoke-interface {v1, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v1

    .line 1066
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/q;->getUnsubstitutedMemberScope(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object p1

    invoke-static {v1, p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeUnsubstitutedType(Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Lkotlin/reflect/jvm/internal/impl/resolve/e/h;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    return-object p1

    .line 1073
    :cond_2
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/g;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    return-object p1
.end method
