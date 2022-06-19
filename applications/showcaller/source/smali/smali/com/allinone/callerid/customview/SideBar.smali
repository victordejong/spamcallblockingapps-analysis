.class public Lcom/allinone/callerid/customview/SideBar;
.super Landroid/view/View;
.source "SideBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/customview/SideBar$a;
    }
.end annotation


# static fields
.field public static d:[Ljava/lang/String;


# instance fields
.field private e:Lcom/allinone/callerid/customview/SideBar$a;

.field private f:I

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/widget/TextView;

.field private i:I

.field private j:I

.field private k:I

.field private l:Landroid/graphics/Typeface;

.field private m:F


# direct methods
.method static constructor <clinit>()V
    .locals 28

    const-string v0, "\u2606"

    const-string v1, "#"

    const-string v2, "A"

    const-string v3, "B"

    const-string v4, "C"

    const-string v5, "D"

    const-string v6, "E"

    const-string v7, "F"

    const-string v8, "G"

    const-string v9, "H"

    const-string v10, "I"

    const-string v11, "J"

    const-string v12, "K"

    const-string v13, "L"

    const-string v14, "M"

    const-string v15, "N"

    const-string v16, "O"

    const-string v17, "P"

    const-string v18, "Q"

    const-string v19, "R"

    const-string v20, "S"

    const-string v21, "T"

    const-string v22, "U"

    const-string v23, "V"

    const-string v24, "W"

    const-string v25, "X"

    const-string v26, "Y"

    const-string v27, "Z"

    .line 1
    filled-new-array/range {v0 .. v27}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/allinone/callerid/customview/SideBar;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 9
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/allinone/callerid/customview/SideBar;->f:I

    .line 11
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/customview/SideBar;->g:Landroid/graphics/Paint;

    .line 12
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/customview/SideBar;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 6
    iput p2, p0, Lcom/allinone/callerid/customview/SideBar;->f:I

    .line 7
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/allinone/callerid/customview/SideBar;->g:Landroid/graphics/Paint;

    .line 8
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/customview/SideBar;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 2
    iput p2, p0, Lcom/allinone/callerid/customview/SideBar;->f:I

    .line 3
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/allinone/callerid/customview/SideBar;->g:Landroid/graphics/Paint;

    .line 4
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/customview/SideBar;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f040119

    const v1, 0x7f06004d

    .line 1
    invoke-static {p1, v0, v1}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/customview/SideBar;->j:I

    const v0, 0x7f04011b

    const v1, 0x7f06003a

    .line 2
    invoke-static {p1, v0, v1}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/customview/SideBar;->k:I

    const v0, 0x7f040481

    const v1, 0x7f0802d8

    .line 3
    invoke-static {p1, v0, v1}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/customview/SideBar;->i:I

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/customview/SideBar;->l:Landroid/graphics/Typeface;

    const/high16 v0, 0x41500000    # 13.0f

    .line 5
    invoke-static {p1, v0}, Lcom/allinone/callerid/util/j;->b(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/allinone/callerid/customview/SideBar;->m:F

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 3
    iget v1, p0, Lcom/allinone/callerid/customview/SideBar;->f:I

    .line 4
    iget-object v2, p0, Lcom/allinone/callerid/customview/SideBar;->e:Lcom/allinone/callerid/customview/SideBar$a;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    sget-object v3, Lcom/allinone/callerid/customview/SideBar;->d:[Ljava/lang/String;

    array-length v3, v3

    int-to-float v3, v3

    mul-float p1, p1, v3

    float-to-int p1, p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    .line 6
    iget v0, p0, Lcom/allinone/callerid/customview/SideBar;->i:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    if-eq v1, p1, :cond_3

    if-ltz p1, :cond_3

    .line 7
    sget-object v0, Lcom/allinone/callerid/customview/SideBar;->d:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_3

    if-eqz v2, :cond_0

    .line 8
    aget-object v0, v0, p1

    invoke-interface {v2, v0}, Lcom/allinone/callerid/customview/SideBar$a;->a(Ljava/lang/String;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/customview/SideBar;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 10
    sget-object v1, Lcom/allinone/callerid/customview/SideBar;->d:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/customview/SideBar;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    :cond_1
    iput p1, p0, Lcom/allinone/callerid/customview/SideBar;->f:I

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 14
    :cond_2
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, -0x1

    .line 15
    iput p1, p0, Lcom/allinone/callerid/customview/SideBar;->f:I

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 17
    iget-object p1, p0, Lcom/allinone/callerid/customview/SideBar;->h:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    const/4 v0, 0x4

    .line 18
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_0
    return v4
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    .line 4
    sget-object v2, Lcom/allinone/callerid/customview/SideBar;->d:[Ljava/lang/String;

    array-length v3, v2

    int-to-float v3, v3

    div-float v3, v0, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v0, v3

    .line 5
    array-length v2, v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/4 v2, 0x0

    .line 6
    :goto_0
    sget-object v3, Lcom/allinone/callerid/customview/SideBar;->d:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 7
    iget-object v3, p0, Lcom/allinone/callerid/customview/SideBar;->g:Landroid/graphics/Paint;

    iget v5, p0, Lcom/allinone/callerid/customview/SideBar;->j:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object v3, p0, Lcom/allinone/callerid/customview/SideBar;->g:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/allinone/callerid/customview/SideBar;->l:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 9
    iget-object v3, p0, Lcom/allinone/callerid/customview/SideBar;->g:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    iget-object v3, p0, Lcom/allinone/callerid/customview/SideBar;->g:Landroid/graphics/Paint;

    iget v6, p0, Lcom/allinone/callerid/customview/SideBar;->m:F

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 11
    iget v3, p0, Lcom/allinone/callerid/customview/SideBar;->f:I

    if-ne v2, v3, :cond_0

    .line 12
    iget-object v3, p0, Lcom/allinone/callerid/customview/SideBar;->g:Landroid/graphics/Paint;

    iget v6, p0, Lcom/allinone/callerid/customview/SideBar;->k:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    iget-object v3, p0, Lcom/allinone/callerid/customview/SideBar;->g:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 14
    :cond_0
    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    iget-object v5, p0, Lcom/allinone/callerid/customview/SideBar;->g:Landroid/graphics/Paint;

    sget-object v6, Lcom/allinone/callerid/customview/SideBar;->d:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    div-float/2addr v5, v4

    sub-float/2addr v3, v5

    int-to-float v5, v2

    mul-float v5, v5, v0

    add-float/2addr v5, v0

    .line 15
    sget-object v6, Lcom/allinone/callerid/customview/SideBar;->d:[Ljava/lang/String;

    aget-object v6, v6, v2

    iget-object v7, p0, Lcom/allinone/callerid/customview/SideBar;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v3, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 16
    iget-object v3, p0, Lcom/allinone/callerid/customview/SideBar;->g:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setOnTouchingLetterChangedListener(Lcom/allinone/callerid/customview/SideBar$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/customview/SideBar;->e:Lcom/allinone/callerid/customview/SideBar$a;

    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/customview/SideBar;->h:Landroid/widget/TextView;

    return-void
.end method
