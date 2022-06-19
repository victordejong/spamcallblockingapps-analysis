.class final Landroidx/transition/ChangeTransform$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Landroid/graphics/Matrix;

.field final b:[F

.field c:F

.field d:F

.field private final e:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;[F)V
    .locals 1

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/transition/ChangeTransform$b;->a:Landroid/graphics/Matrix;

    .line 564
    iput-object p1, p0, Landroidx/transition/ChangeTransform$b;->e:Landroid/view/View;

    .line 565
    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Landroidx/transition/ChangeTransform$b;->b:[F

    const/4 p2, 0x2

    .line 566
    aget p2, p1, p2

    iput p2, p0, Landroidx/transition/ChangeTransform$b;->c:F

    const/4 p2, 0x5

    .line 567
    aget p1, p1, p2

    iput p1, p0, Landroidx/transition/ChangeTransform$b;->d:F

    .line 568
    invoke-virtual {p0}, Landroidx/transition/ChangeTransform$b;->a()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    .line 583
    iget-object v0, p0, Landroidx/transition/ChangeTransform$b;->b:[F

    iget v1, p0, Landroidx/transition/ChangeTransform$b;->c:F

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 584
    iget v1, p0, Landroidx/transition/ChangeTransform$b;->d:F

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 585
    iget-object v1, p0, Landroidx/transition/ChangeTransform$b;->a:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    .line 586
    iget-object v0, p0, Landroidx/transition/ChangeTransform$b;->e:Landroid/view/View;

    iget-object v1, p0, Landroidx/transition/ChangeTransform$b;->a:Landroid/graphics/Matrix;

    invoke-static {v0, v1}, Landroidx/transition/ai;->c(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method
