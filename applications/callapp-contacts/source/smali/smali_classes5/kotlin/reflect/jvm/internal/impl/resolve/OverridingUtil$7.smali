.class final Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/resolve/h;

.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/descriptors/b;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/resolve/h;Lkotlin/reflect/jvm/internal/impl/descriptors/b;)V
    .locals 0

    .line 872
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$7;->a:Lkotlin/reflect/jvm/internal/impl/resolve/h;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$7;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 872
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    .line 1875
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$7;->a:Lkotlin/reflect/jvm/internal/impl/resolve/h;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$7;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    invoke-virtual {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/h;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Lkotlin/reflect/jvm/internal/impl/descriptors/b;)V

    .line 1876
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
