.class public Lcom/callerid/block/customview/SideBar;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/customview/SideBar$a;
    }
.end annotation


# static fields
.field public static k:[Ljava/lang/String;


# instance fields
.field private b:Lcom/callerid/block/customview/SideBar$a;

.field private c:I

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/widget/TextView;

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/graphics/Typeface;

.field private j:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u2605"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "#"

    aput-object v2, v0, v1

    sput-object v0, Lcom/callerid/block/customview/SideBar;->k:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/callerid/block/customview/SideBar;->c:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/callerid/block/customview/SideBar;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/callerid/block/customview/SideBar;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/callerid/block/customview/SideBar;->c:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/callerid/block/customview/SideBar;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/callerid/block/customview/SideBar;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/callerid/block/customview/SideBar;->c:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/callerid/block/customview/SideBar;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/callerid/block/customview/SideBar;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    const v1, 0x7f040112

    const v2, 0x7f060072

    invoke-static {v0, v1, v2}, Lcom/callerid/block/util/p0;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/callerid/block/customview/SideBar;->g:I

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    const v1, 0x7f040114

    const v2, 0x7f06005a

    invoke-static {v0, v1, v2}, Lcom/callerid/block/util/p0;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/callerid/block/customview/SideBar;->h:I

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    const v1, 0x7f040460

    const v2, 0x7f080191

    invoke-static {v0, v1, v2}, Lcom/callerid/block/util/p0;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/callerid/block/customview/SideBar;->f:I

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/customview/SideBar;->i:Landroid/graphics/Typeface;

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v0, v1}, Lcom/callerid/block/util/g;->c(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/callerid/block/customview/SideBar;->j:F

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lcom/callerid/block/customview/SideBar;->c:I

    iget-object v2, p0, Lcom/callerid/block/customview/SideBar;->b:Lcom/callerid/block/customview/SideBar$a;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    sget-object v3, Lcom/callerid/block/customview/SideBar;->k:[Ljava/lang/String;

    array-length v3, v3

    int-to-float v3, v3

    mul-float p1, p1, v3

    float-to-int p1, p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    iget v0, p0, Lcom/callerid/block/customview/SideBar;->f:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    if-eq v1, p1, :cond_3

    if-ltz p1, :cond_3

    sget-object v0, Lcom/callerid/block/customview/SideBar;->k:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_3

    if-eqz v2, :cond_0

    aget-object v0, v0, p1

    invoke-interface {v2, v0}, Lcom/callerid/block/customview/SideBar$a;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/customview/SideBar;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/callerid/block/customview/SideBar;->k:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/callerid/block/customview/SideBar;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iput p1, p0, Lcom/callerid/block/customview/SideBar;->c:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/callerid/block/customview/SideBar;->c:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/callerid/block/customview/SideBar;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_0
    return v4
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    sget-object v2, Lcom/callerid/block/customview/SideBar;->k:[Ljava/lang/String;

    array-length v3, v2

    int-to-float v3, v3

    div-float v3, v0, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v0, v3

    array-length v2, v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/callerid/block/customview/SideBar;->k:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/callerid/block/customview/SideBar;->d:Landroid/graphics/Paint;

    iget v5, p0, Lcom/callerid/block/customview/SideBar;->g:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/callerid/block/customview/SideBar;->d:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/callerid/block/customview/SideBar;->i:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v3, p0, Lcom/callerid/block/customview/SideBar;->d:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, p0, Lcom/callerid/block/customview/SideBar;->d:Landroid/graphics/Paint;

    iget v6, p0, Lcom/callerid/block/customview/SideBar;->j:F

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v3, p0, Lcom/callerid/block/customview/SideBar;->c:I

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lcom/callerid/block/customview/SideBar;->d:Landroid/graphics/Paint;

    iget v6, p0, Lcom/callerid/block/customview/SideBar;->h:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/callerid/block/customview/SideBar;->d:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_0
    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    iget-object v5, p0, Lcom/callerid/block/customview/SideBar;->d:Landroid/graphics/Paint;

    sget-object v6, Lcom/callerid/block/customview/SideBar;->k:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    div-float/2addr v5, v4

    sub-float/2addr v3, v5

    int-to-float v5, v2

    mul-float v5, v5, v0

    add-float/2addr v5, v0

    sget-object v6, Lcom/callerid/block/customview/SideBar;->k:[Ljava/lang/String;

    aget-object v6, v6, v2

    iget-object v7, p0, Lcom/callerid/block/customview/SideBar;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v3, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/callerid/block/customview/SideBar;->d:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setOnTouchingLetterChangedListener(Lcom/callerid/block/customview/SideBar$a;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/customview/SideBar;->b:Lcom/callerid/block/customview/SideBar$a;

    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/customview/SideBar;->e:Landroid/widget/TextView;

    return-void
.end method
