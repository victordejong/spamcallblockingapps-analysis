.class final Lkotlin/reflect/jvm/internal/u$c$b;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/u$c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/ao;",
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
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001\"\u0006\u0008\u0000\u0010\u0003 \u0001\"\u0006\u0008\u0001\u0010\u0003 \u0001H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyGetterDescriptor;",
        "kotlin.jvm.PlatformType",
        "V",
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
.field final synthetic a:Lkotlin/reflect/jvm/internal/u$c;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/u$c;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/u$c$b;->a:Lkotlin/reflect/jvm/internal/u$c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 2

    .line 1152
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/u$c$b;->a:Lkotlin/reflect/jvm/internal/u$c;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/u$c;->a()Lkotlin/reflect/jvm/internal/u;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/u;->l()Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/ao;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/u$c$b;->a:Lkotlin/reflect/jvm/internal/u$c;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/u$c;->a()Lkotlin/reflect/jvm/internal/u;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/u;->l()Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/c;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/an;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ao;

    :cond_0
    return-object v0
.end method
