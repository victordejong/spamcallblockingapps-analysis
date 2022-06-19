.class final Lkotlin/reflect/jvm/internal/impl/builtins/a/g$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/utils/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/builtins/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/reflect/jvm/internal/impl/utils/b$c<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/builtins/a/g$j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$j;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$j;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$j;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/g$j;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic getNeighbors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 218
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    .line 1218
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getOverriddenDescriptors()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    return-object p1
.end method
