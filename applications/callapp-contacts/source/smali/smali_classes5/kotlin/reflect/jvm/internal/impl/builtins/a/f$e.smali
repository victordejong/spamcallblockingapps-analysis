.class public final Lkotlin/reflect/jvm/internal/impl/builtins/a/f$e;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/builtins/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/reflect/jvm/internal/impl/builtins/a/f$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

.field final synthetic b:Z


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Z)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$e;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    iput-boolean p2, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$e;->b:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 3

    .line 1071
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$b;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$e;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    iget-boolean v2, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$e;->b:Z

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$b;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Z)V

    return-object v0
.end method
