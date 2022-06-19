.class public final Lkotlin/reflect/jvm/internal/impl/resolve/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlin/reflect/jvm/internal/impl/descriptors/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/descriptors/aa<",
            "Lkotlin/reflect/jvm/internal/impl/resolve/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/aa;

    const-string v1, "ResolutionAnchorProvider"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/aa;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/k;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/aa;

    return-void
.end method

.method public static final a(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;)Lkotlin/reflect/jvm/internal/impl/descriptors/ab;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/k;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/aa;

    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ab;->getCapability(Lkotlin/reflect/jvm/internal/impl/descriptors/aa;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/j;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {v0, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/j;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;)Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    move-result-object p0

    return-object p0
.end method
