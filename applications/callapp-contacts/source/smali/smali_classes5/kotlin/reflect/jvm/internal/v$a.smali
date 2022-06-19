.class final Lkotlin/reflect/jvm/internal/v$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/v;->a(Lkotlin/reflect/jvm/internal/u$a;Z)Lkotlin/reflect/jvm/internal/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "isJvmStaticProperty",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/u$a;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/u$a;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/v$a;->a:Lkotlin/reflect/jvm/internal/u$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 187
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/v$a;->a:Lkotlin/reflect/jvm/internal/u$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/u$a;->a()Lkotlin/reflect/jvm/internal/u;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/u;->l()Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v0

    invoke-static {}, Lkotlin/reflect/jvm/internal/aj;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->b(Lkotlin/reflect/jvm/internal/impl/c/b;)Z

    move-result v0

    return v0
.end method

.method public final synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/v$a;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
