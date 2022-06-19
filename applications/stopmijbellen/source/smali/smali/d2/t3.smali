.class public Ld2/t3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ld2/r3;


# direct methods
.method public constructor <init>(Ld2/r3;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/t3;->b:Ld2/r3;

    iput-object p2, p0, Ld2/t3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Ld2/t3;->b:Ld2/r3;

    new-instance v1, Ld2/r3$b;

    iget-object v2, p0, Ld2/t3;->b:Ld2/r3;

    iget-object v3, p0, Ld2/t3;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Ld2/r3$b;-><init>(Ld2/r3;Landroid/content/Context;)V

    .line 2
    iput-object v1, v0, Ld2/r3;->I:Ld2/r3$b;

    .line 3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Ld2/t3;->b:Ld2/r3;

    .line 4
    iget v1, v1, Ld2/r3;->a:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 5
    invoke-direct {v0, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 6
    iget-object v1, p0, Ld2/t3;->b:Ld2/r3;

    .line 7
    iget-object v3, v1, Ld2/r3;->F:Ld2/j0;

    .line 8
    iget v3, v3, Ld2/j0;->i:I

    .line 9
    iget v1, v1, Ld2/r3;->a:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    sub-int/2addr v3, v1

    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1, v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 11
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 12
    iget-object v1, p0, Ld2/t3;->b:Ld2/r3;

    .line 13
    iget-object v2, v1, Ld2/r3;->F:Ld2/j0;

    .line 14
    iget-object v1, v1, Ld2/r3;->I:Ld2/r3$b;

    .line 15
    invoke-virtual {v2, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
