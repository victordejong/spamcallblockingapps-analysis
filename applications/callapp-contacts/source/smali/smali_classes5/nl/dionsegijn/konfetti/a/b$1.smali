.class final synthetic Lnl/dionsegijn/konfetti/a/b$1;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/dionsegijn/konfetti/a/b;-><init>(Lnl/dionsegijn/konfetti/c/a;Lnl/dionsegijn/konfetti/c/b;Lnl/dionsegijn/konfetti/models/Vector;[Lnl/dionsegijn/konfetti/models/Size;[Lnl/dionsegijn/konfetti/models/Shape;[ILnl/dionsegijn/konfetti/models/ConfettiConfig;Lnl/dionsegijn/konfetti/a/a;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/n;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/v;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method constructor <init>(Lnl/dionsegijn/konfetti/a/b;)V
    .locals 7

    const-class v3, Lnl/dionsegijn/konfetti/a/b;

    const/4 v1, 0x0

    const-string v4, "addConfetti"

    const-string v5, "addConfetti()V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/n;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 19
    iget-object v0, p0, Lnl/dionsegijn/konfetti/a/b$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lnl/dionsegijn/konfetti/a/b;

    .line 1040
    invoke-static {v0}, Lnl/dionsegijn/konfetti/a/b;->a(Lnl/dionsegijn/konfetti/a/b;)V

    .line 19
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method
