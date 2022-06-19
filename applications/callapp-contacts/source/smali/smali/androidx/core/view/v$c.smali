.class final Landroidx/core/view/v$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/view/View;Landroidx/core/view/ac;Landroid/graphics/Rect;)Landroidx/core/view/ac;
    .locals 1

    .line 4430
    invoke-virtual {p1}, Landroidx/core/view/ac;->e()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4433
    invoke-virtual {p0, v0, p2}, Landroid/view/View;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object p0

    .line 4432
    invoke-static {p0}, Landroidx/core/view/ac;->a(Landroid/view/WindowInsets;)Landroidx/core/view/ac;

    move-result-object p0

    return-object p0

    .line 4435
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    return-object p1
.end method
