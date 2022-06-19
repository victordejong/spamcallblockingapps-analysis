.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/e;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/d;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/d/c;


# instance fields
.field private final b:Ljava/lang/annotation/Annotation;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/lang/annotation/Annotation;)V
    .locals 1

    const-string v0, "annotation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/d;-><init>(Lkotlin/reflect/jvm/internal/impl/c/e;)V

    .line 75
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/e;->b:Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public final b()Lkotlin/reflect/jvm/internal/impl/load/java/d/a;
    .locals 2

    .line 77
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/c;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/e;->b:Ljava/lang/annotation/Annotation;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/c;-><init>(Ljava/lang/annotation/Annotation;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/d/a;

    return-object v0
.end method
