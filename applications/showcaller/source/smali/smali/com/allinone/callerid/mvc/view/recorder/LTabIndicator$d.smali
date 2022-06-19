.class Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$d;
.super Lcom/allinone/callerid/customview/LFrameLayout;
.source "LTabIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private e:Landroid/widget/TextView;

.field private f:Landroid/graphics/Typeface;

.field final synthetic g:Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;


# direct methods
.method public constructor <init>(Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$d;-><init>(Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$d;->g:Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;

    .line 3
    invoke-direct {p0, p2, p3}, Lcom/allinone/callerid/customview/LFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/f1;->a()Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$d;->f:Landroid/graphics/Typeface;

    .line 5
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$d;->c()V

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p2}, Lcom/allinone/callerid/customview/LFrameLayout;->setDelayClick(Z)V

    .line 7
    iget p1, p1, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->s:I

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/customview/LFrameLayout;->setColor(I)V

    return-void
.end method

.method private c()V
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$d;->e:Landroid/widget/TextView;

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$d;->g:Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->a(Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$d;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$d;->f:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$d;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$d;->g:Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;

    iget v1, v1, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->B:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$d;->e:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$d;->e:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$d;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$d;->g:Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;

    iget v2, v1, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->z:I

    iget v1, v1, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->A:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 8
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 9
    iget-object v1, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$d;->e:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public b()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator$d;->e:Landroid/widget/TextView;

    return-object v0
.end method
