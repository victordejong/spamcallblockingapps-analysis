.class public Lcom/pubmatic/sdk/monitor/POBMonitorView;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/monitor/POBMonitorView$a;
    }
.end annotation


# static fields
.field public static final BACKGROUND_COLOR:I


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field e:Landroid/widget/Button;

.field f:Landroid/graphics/Point;

.field private g:Landroid/view/ViewGroup;

.field private h:Lcom/pubmatic/sdk/monitor/POBMonitorView$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#3F4047"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/pubmatic/sdk/monitor/POBMonitorView;->BACKGROUND_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/pubmatic/sdk/monitor/POBMonitorView;->f:Landroid/graphics/Point;

    const p2, 0x1020002

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitorView;->g:Landroid/view/ViewGroup;

    const/16 p1, 0x5a

    invoke-static {p1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->convertDpToPixel(I)I

    move-result p2

    invoke-static {p1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->convertDpToPixel(I)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/pubmatic/sdk/monitor/POBMonitorView;->a(II)V

    return-void
.end method

.method private a(II)V
    .locals 4

    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v1, "\u2261"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x42300000    # 44.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 p2, 0xc

    invoke-static {p2}, Lcom/pubmatic/sdk/common/utility/POBUtils;->convertDpToPixel(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    sget v3, Lcom/pubmatic/sdk/monitor/POBMonitorView;->BACKGROUND_COLOR:I

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitorView;->f:Landroid/graphics/Point;

    iget v3, p1, Landroid/graphics/Point;->x:I

    if-nez v3, :cond_0

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-nez p1, :cond_0

    invoke-virtual {v2, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p1, 0xb

    invoke-virtual {v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p1, 0x50

    invoke-static {p1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->convertDpToPixel(I)I

    move-result p1

    iput p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 p1, 0x64

    invoke-static {p1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->convertDpToPixel(I)I

    move-result p1

    iput p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_0
    iget-object p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitorView;->f:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setX(F)V

    iget-object p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitorView;->f:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setY(F)V

    iput-object v0, p0, Lcom/pubmatic/sdk/monitor/POBMonitorView;->e:Landroid/widget/Button;

    invoke-virtual {p0, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p2, p0, Lcom/pubmatic/sdk/monitor/POBMonitorView;->g:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getTouchPointLocation()Landroid/graphics/Point;
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/pubmatic/sdk/monitor/POBMonitorView;->e:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/pubmatic/sdk/monitor/POBMonitorView;->e:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    return-object v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, p0, Lcom/pubmatic/sdk/monitor/POBMonitorView;->b:F

    add-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setY(F)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    iget v0, p0, Lcom/pubmatic/sdk/monitor/POBMonitorView;->a:F

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setX(F)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget v0, p0, Lcom/pubmatic/sdk/monitor/POBMonitorView;->c:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 v0, 0x41a00000    # 20.0f

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_3

    iget p2, p0, Lcom/pubmatic/sdk/monitor/POBMonitorView;->d:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_3

    iget-object p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitorView;->h:Lcom/pubmatic/sdk/monitor/POBMonitorView$a;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/pubmatic/sdk/monitor/POBMonitorView$a;->a()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    iput v0, p0, Lcom/pubmatic/sdk/monitor/POBMonitorView;->c:F

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iput p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitorView;->d:F

    iget p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitorView;->c:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitorView;->a:F

    iget p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitorView;->d:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitorView;->b:F

    :cond_3
    :goto_0
    return v1
.end method

.method public setListener(Lcom/pubmatic/sdk/monitor/POBMonitorView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitorView;->h:Lcom/pubmatic/sdk/monitor/POBMonitorView$a;

    return-void
.end method
