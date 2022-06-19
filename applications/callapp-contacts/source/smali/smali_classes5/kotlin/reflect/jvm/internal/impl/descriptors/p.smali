.class public abstract Lkotlin/reflect/jvm/internal/impl/descriptors/p;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/s;
.source "SourceFile"


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/descriptors/bf;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/bf;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/s;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/p;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/bf;

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/descriptors/bf;
    .locals 1

    .line 78
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/p;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/bf;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1078
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/p;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/bf;

    .line 85
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/bf;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lkotlin/reflect/jvm/internal/impl/descriptors/s;
    .locals 2

    .line 2078
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/p;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/bf;

    .line 91
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/bf;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/bf;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/bf;)Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v0

    const-string v1, "toDescriptorVisibility(delegate.normalize())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
