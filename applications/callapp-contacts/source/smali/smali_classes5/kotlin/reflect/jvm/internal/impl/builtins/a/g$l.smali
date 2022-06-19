.class final Lkotlin/reflect/jvm/internal/impl/builtins/a/g$l;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/builtins/a/g;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/builtins/a/g;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/builtins/a/g;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$l;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 2

    .line 1071
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$l;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/g;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->a(Lkotlin/reflect/jvm/internal/impl/builtins/a/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ab;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object v0

    const-string v1, "This member is not fully supported by Kotlin compiler, so it may be absent or have different signature in next major version"

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/f;->a(Lkotlin/reflect/jvm/internal/impl/builtins/g;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    move-result-object v0

    .line 1074
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;

    invoke-static {v0}, Lkotlin/a/n;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;->a(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v0

    return-object v0
.end method
