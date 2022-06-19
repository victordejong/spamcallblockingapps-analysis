.class public Li30;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lo30;

.field public static final b:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, Ln30;

    invoke-direct {v0}, Ln30;-><init>()V

    :goto_0
    sput-object v0, Li30;->a:Lo30;

    goto :goto_1

    :cond_0
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    new-instance v0, Lm30;

    invoke-direct {v0}, Lm30;-><init>()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x16

    if-lt v0, v1, :cond_2

    new-instance v0, Ll30;

    invoke-direct {v0}, Ll30;-><init>()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    new-instance v0, Lk30;

    invoke-direct {v0}, Lk30;-><init>()V

    goto :goto_0

    :cond_3
    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    new-instance v0, Lj30;

    invoke-direct {v0}, Lj30;-><init>()V

    goto :goto_0

    :cond_4
    new-instance v0, Lo30;

    invoke-direct {v0}, Lo30;-><init>()V

    goto :goto_0

    :goto_1
    new-instance v0, Li30$a;

    const-class v1, Ljava/lang/Float;

    const-string v2, "translationAlpha"

    invoke-direct {v0, v1, v2}, Li30$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Li30;->b:Landroid/util/Property;

    new-instance v0, Li30$b;

    const-class v1, Landroid/graphics/Rect;

    const-string v2, "clipBounds"

    invoke-direct {v0, v1, v2}, Li30$b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Li30;->c:Landroid/util/Property;

    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 1

    sget-object v0, Li30;->a:Lo30;

    invoke-virtual {v0, p0}, Lo30;->a(Landroid/view/View;)V

    return-void
.end method

.method public static b(Landroid/view/View;)Lh30;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    new-instance v0, Lg30;

    invoke-direct {v0, p0}, Lg30;-><init>(Landroid/view/View;)V

    return-object v0

    :cond_0
    invoke-static {p0}, Lf30;->a(Landroid/view/View;)Lf30;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/view/View;)F
    .locals 1

    sget-object v0, Li30;->a:Lo30;

    invoke-virtual {v0, p0}, Lo30;->c(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static d(Landroid/view/View;)Ls30;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    new-instance v0, Lr30;

    invoke-direct {v0, p0}, Lr30;-><init>(Landroid/view/View;)V

    return-object v0

    :cond_0
    new-instance v0, Lq30;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-direct {v0, p0}, Lq30;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static e(Landroid/view/View;)V
    .locals 1

    sget-object v0, Li30;->a:Lo30;

    invoke-virtual {v0, p0}, Lo30;->d(Landroid/view/View;)V

    return-void
.end method

.method public static f(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1

    sget-object v0, Li30;->a:Lo30;

    invoke-virtual {v0, p0, p1}, Lo30;->e(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public static g(Landroid/view/View;IIII)V
    .locals 6

    sget-object v0, Li30;->a:Lo30;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lo30;->f(Landroid/view/View;IIII)V

    return-void
.end method

.method public static h(Landroid/view/View;F)V
    .locals 1

    sget-object v0, Li30;->a:Lo30;

    invoke-virtual {v0, p0, p1}, Lo30;->g(Landroid/view/View;F)V

    return-void
.end method

.method public static i(Landroid/view/View;I)V
    .locals 1

    sget-object v0, Li30;->a:Lo30;

    invoke-virtual {v0, p0, p1}, Lo30;->h(Landroid/view/View;I)V

    return-void
.end method

.method public static j(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1

    sget-object v0, Li30;->a:Lo30;

    invoke-virtual {v0, p0, p1}, Lo30;->i(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public static k(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1

    sget-object v0, Li30;->a:Lo30;

    invoke-virtual {v0, p0, p1}, Lo30;->j(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method
