.class final Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/c/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/aq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$3;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 2

    .line 1088
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/n;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a$3;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/n;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)V

    return-object v0
.end method
