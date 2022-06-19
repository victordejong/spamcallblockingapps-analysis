.class public final Lkotlin/reflect/jvm/internal/impl/builtins/a/f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/builtins/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field final a:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

.field final b:Z


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Z)V
    .locals 1

    const-string v0, "ownerModuleDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$b;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    .line 59
    iput-boolean p2, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$b;->b:Z

    return-void
.end method
