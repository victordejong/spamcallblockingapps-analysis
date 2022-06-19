.class final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;

.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/load/java/d/t;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;Lkotlin/reflect/jvm/internal/impl/load/java/d/t;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f$a;->b:Lkotlin/reflect/jvm/internal/impl/load/java/d/t;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 3

    .line 1040
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;

    .line 2027
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 1040
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f$a;->b:Lkotlin/reflect/jvm/internal/impl/load/java/d/t;

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/d/t;)V

    return-object v0
.end method
