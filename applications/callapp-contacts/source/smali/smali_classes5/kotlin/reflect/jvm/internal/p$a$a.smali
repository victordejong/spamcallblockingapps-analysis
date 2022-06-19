.class final Lkotlin/reflect/jvm/internal/p$a$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/p$a;-><init>(Lkotlin/reflect/jvm/internal/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;",
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
.field final synthetic a:Lkotlin/reflect/jvm/internal/p$a;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/p$a;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/p$a$a;->a:Lkotlin/reflect/jvm/internal/p$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1044
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f$a;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/p$a$a;->a:Lkotlin/reflect/jvm/internal/p$a;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/p$a;->d:Lkotlin/reflect/jvm/internal/p;

    .line 2039
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/p;->a:Ljava/lang/Class;

    .line 1044
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f$a;->a(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;

    move-result-object v0

    return-object v0
.end method
