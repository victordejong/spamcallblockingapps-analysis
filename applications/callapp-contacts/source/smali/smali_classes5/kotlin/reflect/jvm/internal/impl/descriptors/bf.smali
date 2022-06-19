.class public abstract Lkotlin/reflect/jvm/internal/impl/descriptors/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field public final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/bf;->a:Ljava/lang/String;

    .line 10
    iput-boolean p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/bf;->b:Z

    return-void
.end method


# virtual methods
.method public a(Lkotlin/reflect/jvm/internal/impl/descriptors/bf;)Ljava/lang/Integer;
    .locals 1

    const-string/jumbo v0, "visibility"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/be;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/be;

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/be;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/bf;Lkotlin/reflect/jvm/internal/impl/descriptors/bf;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/bf;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lkotlin/reflect/jvm/internal/impl/descriptors/bf;
    .locals 0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/bf;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
