.class public final Lkotlin/reflect/jvm/internal/impl/builtins/g$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/builtins/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/builtins/g;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/builtins/g;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/g$4;->b:Lkotlin/reflect/jvm/internal/impl/builtins/g;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/builtins/g$4;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 3

    .line 1115
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/g$4;->b:Lkotlin/reflect/jvm/internal/impl/builtins/g;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/builtins/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1120
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/g$4;->b:Lkotlin/reflect/jvm/internal/impl/builtins/g;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/g$4;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/builtins/g;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    const/4 v0, 0x0

    return-object v0

    .line 1116
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Built-ins module is already set: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/builtins/g$4;->b:Lkotlin/reflect/jvm/internal/impl/builtins/g;

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/builtins/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (attempting to reset to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/builtins/g$4;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
