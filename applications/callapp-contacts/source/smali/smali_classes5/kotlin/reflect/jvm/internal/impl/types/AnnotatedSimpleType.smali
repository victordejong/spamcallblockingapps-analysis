.class final Lkotlin/reflect/jvm/internal/impl/types/AnnotatedSimpleType;
.super Lkotlin/reflect/jvm/internal/impl/types/DelegatingSimpleTypeImpl;
.source "SourceFile"


# instance fields
.field private final annotations:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/DelegatingSimpleTypeImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)V

    .line 276
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/types/AnnotatedSimpleType;->annotations:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    return-void
.end method


# virtual methods
.method public final getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;
    .locals 1

    .line 276
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/AnnotatedSimpleType;->annotations:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    return-object v0
.end method

.method public final replaceDelegate(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/AnnotatedSimpleType;
    .locals 2

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/AnnotatedSimpleType;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/AnnotatedSimpleType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/types/AnnotatedSimpleType;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)V

    return-object v0
.end method

.method public final bridge synthetic replaceDelegate(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/DelegatingSimpleType;
    .locals 0

    .line 274
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/AnnotatedSimpleType;->replaceDelegate(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/AnnotatedSimpleType;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/DelegatingSimpleType;

    return-object p1
.end method
