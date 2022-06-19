.class Lcom/rey/material/widget/LTabIndicator$d;
.super Lcom/callerid/block/customview/LFrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rey/material/widget/LTabIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private c:Landroid/widget/TextView;

.field private d:Landroid/graphics/Typeface;

.field final synthetic e:Lcom/rey/material/widget/LTabIndicator;


# direct methods
.method public constructor <init>(Lcom/rey/material/widget/LTabIndicator;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/rey/material/widget/LTabIndicator$d;-><init>(Lcom/rey/material/widget/LTabIndicator;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/rey/material/widget/LTabIndicator;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    iput-object p1, p0, Lcom/rey/material/widget/LTabIndicator$d;->e:Lcom/rey/material/widget/LTabIndicator;

    invoke-direct {p0, p2, p3}, Lcom/callerid/block/customview/LFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lcom/callerid/block/util/r0;->a()Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/rey/material/widget/LTabIndicator$d;->d:Landroid/graphics/Typeface;

    invoke-direct {p0}, Lcom/rey/material/widget/LTabIndicator$d;->c()V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/callerid/block/customview/LFrameLayout;->setDelayClick(Z)V

    iget p1, p1, Lcom/rey/material/widget/LTabIndicator;->q:I

    invoke-virtual {p0, p1}, Lcom/callerid/block/customview/LFrameLayout;->setColor(I)V

    return-void
.end method

.method private c()V
    .locals 4

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rey/material/widget/LTabIndicator$d;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/rey/material/widget/LTabIndicator$d;->e:Lcom/rey/material/widget/LTabIndicator;

    invoke-static {v0}, Lcom/rey/material/widget/LTabIndicator;->a(Lcom/rey/material/widget/LTabIndicator;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rey/material/widget/LTabIndicator$d;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rey/material/widget/LTabIndicator$d;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    iget-object v0, p0, Lcom/rey/material/widget/LTabIndicator$d;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rey/material/widget/LTabIndicator$d;->e:Lcom/rey/material/widget/LTabIndicator;

    iget v1, v1, Lcom/rey/material/widget/LTabIndicator;->z:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/rey/material/widget/LTabIndicator$d;->c:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/rey/material/widget/LTabIndicator$d;->c:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/rey/material/widget/LTabIndicator$d;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rey/material/widget/LTabIndicator$d;->e:Lcom/rey/material/widget/LTabIndicator;

    iget v2, v1, Lcom/rey/material/widget/LTabIndicator;->x:I

    iget v1, v1, Lcom/rey/material/widget/LTabIndicator;->y:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/rey/material/widget/LTabIndicator$d;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public b()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/rey/material/widget/LTabIndicator$d;->c:Landroid/widget/TextView;

    return-object v0
.end method
