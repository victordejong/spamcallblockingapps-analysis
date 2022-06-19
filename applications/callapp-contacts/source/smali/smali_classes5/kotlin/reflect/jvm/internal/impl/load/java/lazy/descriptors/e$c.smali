.class final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e$c;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/d/a;Z)V
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
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e$c;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 3

    .line 1050
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e$c;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;->b()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e$c;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;->a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;)Lkotlin/reflect/jvm/internal/impl/load/java/d/a;

    move-result-object v0

    const-string v1, "No fqName: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->createErrorType(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    return-object v0

    .line 1051
    :cond_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/d;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/d;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e$c;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;->b(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    move-result-object v1

    .line 1129
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 2059
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->o:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    .line 1051
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ab;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/d;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/builtins/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1052
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e$c;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;->a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;)Lkotlin/reflect/jvm/internal/impl/load/java/d/a;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/a;->e()Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    move-result-object v1

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e$c;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;->b(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    move-result-object v2

    .line 2112
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 3055
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->k:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/i;

    .line 1052
    invoke-interface {v2, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/i;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1053
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e$c;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;->a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e;Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v1

    .line 1054
    :cond_1
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    return-object v0
.end method
