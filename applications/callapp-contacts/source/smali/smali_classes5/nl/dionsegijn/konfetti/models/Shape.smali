.class public interface abstract Lnl/dionsegijn/konfetti/models/Shape;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnl/dionsegijn/konfetti/models/Shape$Square;,
        Lnl/dionsegijn/konfetti/models/Shape$Rectangle;,
        Lnl/dionsegijn/konfetti/models/Shape$Circle;,
        Lnl/dionsegijn/konfetti/models/Shape$DrawableShape;,
        Lnl/dionsegijn/konfetti/models/Shape$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\u0008f\u0018\u0000 \u000b2\u00020\u0001:\u0005\n\u000b\u000c\r\u000eJ \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH&\u00a8\u0006\u000f"
    }
    d2 = {
        "Lnl/dionsegijn/konfetti/models/Shape;",
        "",
        "draw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "paint",
        "Landroid/graphics/Paint;",
        "size",
        "",
        "Circle",
        "Companion",
        "DrawableShape",
        "Rectangle",
        "Square",
        "konfetti_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final CIRCLE:Lnl/dionsegijn/konfetti/models/Shape$Circle;

.field public static final Companion:Lnl/dionsegijn/konfetti/models/Shape$Companion;

.field public static final RECT:Lnl/dionsegijn/konfetti/models/Shape$Square;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnl/dionsegijn/konfetti/models/Shape$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnl/dionsegijn/konfetti/models/Shape$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lnl/dionsegijn/konfetti/models/Shape;->Companion:Lnl/dionsegijn/konfetti/models/Shape$Companion;

    .line 21
    sget-object v0, Lnl/dionsegijn/konfetti/models/Shape$Square;->INSTANCE:Lnl/dionsegijn/konfetti/models/Shape$Square;

    sput-object v0, Lnl/dionsegijn/konfetti/models/Shape;->RECT:Lnl/dionsegijn/konfetti/models/Shape$Square;

    .line 25
    sget-object v0, Lnl/dionsegijn/konfetti/models/Shape$Circle;->INSTANCE:Lnl/dionsegijn/konfetti/models/Shape$Circle;

    sput-object v0, Lnl/dionsegijn/konfetti/models/Shape;->CIRCLE:Lnl/dionsegijn/konfetti/models/Shape$Circle;

    return-void
.end method


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
.end method
