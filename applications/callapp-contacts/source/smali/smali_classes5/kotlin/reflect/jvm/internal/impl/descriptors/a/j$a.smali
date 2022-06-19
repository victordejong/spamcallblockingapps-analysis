.class final Lkotlin/reflect/jvm/internal/impl/descriptors/a/j$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/a/j;-><init>(Lkotlin/reflect/jvm/internal/impl/builtins/g;Lkotlin/reflect/jvm/internal/impl/c/b;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/reflect/jvm/internal/impl/types/SimpleType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/j;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a/j;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/j$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 2

    .line 1033
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/j$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/j;

    .line 2027
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/j;->a:Lkotlin/reflect/jvm/internal/impl/builtins/g;

    .line 1033
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/j$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/j;

    .line 2029
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/j;->b:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 1033
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    return-object v0
.end method
