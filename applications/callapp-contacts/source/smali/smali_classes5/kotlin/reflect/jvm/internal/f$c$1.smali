.class final Lkotlin/reflect/jvm/internal/f$c$1;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/f$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/reflect/Type;",
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
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002 \u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Ljava/lang/reflect/Type;",
        "R",
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
.field final synthetic a:Lkotlin/reflect/jvm/internal/f$c;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/f$c;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/f$c$1;->a:Lkotlin/reflect/jvm/internal/f$c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1077
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/f$c$1;->a:Lkotlin/reflect/jvm/internal/f$c;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/f$c;->a:Lkotlin/reflect/jvm/internal/f;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/f;->a(Lkotlin/reflect/jvm/internal/f;)Ljava/lang/reflect/Type;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/f$c$1;->a:Lkotlin/reflect/jvm/internal/f$c;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/f$c;->a:Lkotlin/reflect/jvm/internal/f;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/f;->c()Lkotlin/reflect/jvm/internal/a/d;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/a/d;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    :cond_0
    return-object v0
.end method
