.class final Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t$b;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;-><init>(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/builtins/g;Lkotlin/reflect/jvm/internal/impl/d/b;Ljava/util/Map;Lkotlin/reflect/jvm/internal/impl/c/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/reflect/jvm/internal/impl/c/b;",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/aj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t$b;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 66
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1067
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t$b;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    .line 2031
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 1067
    invoke-direct {v0, v1, p1, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/f/n;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/aj;

    return-object v0
.end method
