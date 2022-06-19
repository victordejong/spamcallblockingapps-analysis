.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/impl/m;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/a/b;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/u;


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/descriptors/an;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/an;)V
    .locals 1

    const-string v0, "annotations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "correspondingProperty"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/b;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)V

    .line 15
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/m;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    return-void
.end method
