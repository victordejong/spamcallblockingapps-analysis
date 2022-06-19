.class final Lkotlin/reflect/jvm/internal/impl/descriptors/ad$d;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/ad;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;)V
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
        "Lkotlin/reflect/jvm/internal/impl/descriptors/ae;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/descriptors/ad;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ad;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ad$d;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ad;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 28
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1029
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/k;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ad$d;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ad;

    .line 2022
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ad;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    .line 1029
    invoke-direct {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/k;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/c/b;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    return-object v0
.end method
