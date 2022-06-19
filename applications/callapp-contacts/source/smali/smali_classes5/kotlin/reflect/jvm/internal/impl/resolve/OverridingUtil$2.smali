.class final Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Ljava/util/Set;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "TD;TD;",
        "Lkotlin/n<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/a;",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/a;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 105
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    .line 1108
    new-instance v0, Lkotlin/n;

    invoke-direct {v0, p1, p2}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
