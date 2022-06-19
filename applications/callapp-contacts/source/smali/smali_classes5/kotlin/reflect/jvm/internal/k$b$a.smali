.class final Lkotlin/reflect/jvm/internal/k$b$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/k$b;-><init>(Lkotlin/reflect/jvm/internal/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/j;",
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
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeModuleData;",
        "kotlin.jvm.PlatformType",
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
.field final synthetic a:Lkotlin/reflect/jvm/internal/k$b;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/k$b;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/k$b$a;->a:Lkotlin/reflect/jvm/internal/k$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1037
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/k$b$a;->a:Lkotlin/reflect/jvm/internal/k$b;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/k$b;->j:Lkotlin/reflect/jvm/internal/k;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/k;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/ac;->a(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/j;

    move-result-object v0

    return-object v0
.end method
