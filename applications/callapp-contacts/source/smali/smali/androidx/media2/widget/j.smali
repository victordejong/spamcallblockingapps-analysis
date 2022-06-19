.class final Landroidx/media2/widget/j;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/widget/j$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 36
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 30
    sget p1, Landroidx/media2/widget/j$a;->c:I

    iput p1, p0, Landroidx/media2/widget/j;->a:I

    .line 1141
    invoke-virtual {p0}, Landroidx/media2/widget/j;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    .line 1142
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 1144
    sget v0, Landroidx/media2/widget/l$f;->media2_widget_music_with_title_landscape:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/widget/j;->b:Landroid/view/View;

    .line 1146
    sget v0, Landroidx/media2/widget/l$f;->media2_widget_music_with_title_portrait:I

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/widget/j;->c:Landroid/view/View;

    .line 1148
    sget v0, Landroidx/media2/widget/l$f;->media2_widget_music_without_title:I

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/widget/j;->d:Landroid/view/View;

    .line 1150
    iget-object p1, p0, Landroidx/media2/widget/j;->b:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/media2/widget/j;->addView(Landroid/view/View;)V

    .line 1151
    iget-object p1, p0, Landroidx/media2/widget/j;->c:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/media2/widget/j;->addView(Landroid/view/View;)V

    .line 1152
    iget-object p1, p0, Landroidx/media2/widget/j;->d:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/media2/widget/j;->addView(Landroid/view/View;)V

    return-void
.end method

.method private static a(Landroid/view/View;)Z
    .locals 2

    .line 156
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v0

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    .line 157
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result p0

    and-int/2addr p0, v1

    or-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method final a(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 111
    invoke-virtual {p0}, Landroidx/media2/widget/j;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 113
    invoke-virtual {p0, v1}, Landroidx/media2/widget/j;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget v3, Landroidx/media2/widget/l$e;->album:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 115
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 4

    .line 121
    invoke-virtual {p0}, Landroidx/media2/widget/j;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 123
    invoke-virtual {p0, v1}, Landroidx/media2/widget/j;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget v3, Landroidx/media2/widget/l$e;->title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 125
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 4

    .line 131
    invoke-virtual {p0}, Landroidx/media2/widget/j;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 133
    invoke-virtual {p0, v1}, Landroidx/media2/widget/j;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget v3, Landroidx/media2/widget/l$e;->artist:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 135
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 5

    .line 80
    iget p1, p0, Landroidx/media2/widget/j;->a:I

    sget v0, Landroidx/media2/widget/j$a;->a:I

    if-ne p1, v0, :cond_0

    .line 81
    iget-object p1, p0, Landroidx/media2/widget/j;->b:Landroid/view/View;

    goto :goto_0

    .line 82
    :cond_0
    iget p1, p0, Landroidx/media2/widget/j;->a:I

    sget v0, Landroidx/media2/widget/j$a;->b:I

    if-ne p1, v0, :cond_1

    .line 83
    iget-object p1, p0, Landroidx/media2/widget/j;->c:Landroid/view/View;

    goto :goto_0

    .line 85
    :cond_1
    iget-object p1, p0, Landroidx/media2/widget/j;->d:Landroid/view/View;

    .line 88
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/widget/j;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 90
    invoke-virtual {p0, v2}, Landroidx/media2/widget/j;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 92
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    const/4 v4, 0x4

    .line 94
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p4, p2

    .line 104
    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p5, p3

    .line 105
    div-int/lit8 p5, p5, 0x2

    add-int/2addr p2, p4

    add-int/2addr p3, p5

    .line 107
    invoke-virtual {p1, p4, p5, p2, p3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected final onMeasure(II)V
    .locals 4

    .line 43
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_5

    .line 44
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 48
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 49
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/4 v0, 0x0

    const/high16 v2, -0x80000000

    if-le p1, p2, :cond_1

    .line 52
    sget v3, Landroidx/media2/widget/j$a;->a:I

    iput v3, p0, Landroidx/media2/widget/j;->a:I

    .line 53
    iget-object v3, p0, Landroidx/media2/widget/j;->b:Landroid/view/View;

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 54
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 53
    invoke-virtual {v3, v0, v2}, Landroid/view/View;->measure(II)V

    .line 55
    iget-object v0, p0, Landroidx/media2/widget/j;->b:Landroid/view/View;

    invoke-static {v0}, Landroidx/media2/widget/j;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media2/widget/j;->b:Landroid/view/View;

    .line 56
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-le v0, p1, :cond_3

    .line 57
    :cond_0
    sget v0, Landroidx/media2/widget/j$a;->c:I

    iput v0, p0, Landroidx/media2/widget/j;->a:I

    goto :goto_0

    .line 60
    :cond_1
    sget v3, Landroidx/media2/widget/j$a;->b:I

    iput v3, p0, Landroidx/media2/widget/j;->a:I

    .line 61
    iget-object v3, p0, Landroidx/media2/widget/j;->c:Landroid/view/View;

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 62
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 61
    invoke-virtual {v3, v2, v0}, Landroid/view/View;->measure(II)V

    .line 63
    iget-object v0, p0, Landroidx/media2/widget/j;->c:Landroid/view/View;

    invoke-static {v0}, Landroidx/media2/widget/j;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media2/widget/j;->c:Landroid/view/View;

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-le v0, p2, :cond_3

    .line 65
    :cond_2
    sget v0, Landroidx/media2/widget/j$a;->c:I

    iput v0, p0, Landroidx/media2/widget/j;->a:I

    .line 69
    :cond_3
    :goto_0
    iget v0, p0, Landroidx/media2/widget/j;->a:I

    sget v2, Landroidx/media2/widget/j$a;->c:I

    if-ne v0, v2, :cond_4

    .line 70
    iget-object v0, p0, Landroidx/media2/widget/j;->d:Landroid/view/View;

    div-int/lit8 v2, p1, 0x2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    div-int/lit8 v3, p2, 0x2

    .line 71
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 70
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 74
    :cond_4
    invoke-virtual {p0, p1, p2}, Landroidx/media2/widget/j;->setMeasuredDimension(II)V

    return-void

    .line 45
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "MusicView should be measured in MeasureSpec.EXACTLY"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method
