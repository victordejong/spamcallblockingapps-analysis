.class public Lcom/callapp/contacts/util/ViewUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 175
    sput-object v0, Lcom/callapp/contacts/util/ViewUtils;->a:[F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;F)F
    .locals 1

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    .line 93
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static a(Landroid/graphics/Paint;Ljava/lang/String;)F
    .locals 0

    .line 690
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static a()I
    .locals 1

    .line 158
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;ILandroid/graphics/Typeface;Ljava/lang/CharSequence;)I
    .locals 2

    .line 1421
    invoke-static {p3}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1424
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1425
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    if-eqz p2, :cond_1

    .line 1427
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    const/4 p0, 0x1

    const/high16 p2, 0x41800000    # 16.0f

    .line 1429
    invoke-virtual {v0, p0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 p0, 0x40000000    # 2.0f

    .line 1430
    invoke-static {p1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    .line 1431
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1433
    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1434
    invoke-virtual {v0, p0, p1}, Landroid/widget/TextView;->measure(II)V

    .line 1435
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/String;C)I
    .locals 4

    .line 958
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 959
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-char v3, p0, v1

    if-ne v3, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public static varargs a([I)I
    .locals 4

    .line 815
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    .line 817
    aget v3, p0, v1

    .line 818
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public static a(Ljava/lang/String;Landroid/util/SparseIntArray;I)Landroid/text/SpannableString;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 923
    invoke-static {p0, p1, v0, p2, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Ljava/lang/String;Landroid/util/SparseIntArray;IILjava/lang/Character;)Landroid/text/SpannableString;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Landroid/util/SparseIntArray;II)Landroid/text/SpannableString;
    .locals 1

    const/4 v0, 0x0

    .line 927
    invoke-static {p0, p1, p2, p3, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Ljava/lang/String;Landroid/util/SparseIntArray;IILjava/lang/Character;)Landroid/text/SpannableString;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Landroid/util/SparseIntArray;IILjava/lang/Character;)Landroid/text/SpannableString;
    .locals 5

    .line 931
    new-instance v0, Landroid/text/SpannableString;

    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_2

    const/4 p0, 0x0

    .line 933
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge p0, v1, :cond_2

    .line 934
    invoke-virtual {p1, p0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 937
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-lt v2, v1, :cond_1

    if-ltz v1, :cond_1

    add-int/2addr v1, p2

    add-int/2addr v2, p2

    if-eqz p4, :cond_0

    .line 942
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 943
    invoke-virtual {v0}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-static {v3, v4}, Lcom/callapp/contacts/util/ViewUtils;->a(Ljava/lang/String;C)I

    move-result v3

    add-int/2addr v2, v3

    .line 946
    :cond_0
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    if-gt v2, v3, :cond_1

    .line 947
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v4, 0x12

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static a(Ljava/lang/String;Landroid/util/SparseIntArray;ILjava/lang/Character;)Landroid/text/SpannableString;
    .locals 1

    const/4 v0, 0x0

    .line 919
    invoke-static {p0, p1, v0, p2, p3}, Lcom/callapp/contacts/util/ViewUtils;->a(Ljava/lang/String;Landroid/util/SparseIntArray;IILjava/lang/Character;)Landroid/text/SpannableString;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/View;IIII)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 2

    .line 564
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_0

    .line 565
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_0
    if-ne p2, v1, :cond_1

    .line 566
    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_1
    if-ne p3, v1, :cond_2

    .line 567
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_2
    if-ne p4, v1, :cond_3

    .line 568
    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 569
    :cond_3
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 570
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static a(Landroid/widget/TextView;FF)Ljava/lang/String;
    .locals 3

    .line 695
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    const-string v0, ":"

    .line 1690
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    float-to-int p0, p0

    mul-float p1, p1, p2

    .line 697
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v1, p0

    :goto_0
    int-to-float v2, v1

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_0

    .line 701
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v1, p0

    goto :goto_0

    .line 705
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 302
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a03d7

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a0459

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0a62

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f0a0a5f

    .line 312
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/Switch;->toggle()V

    :goto_0
    return-void

    :cond_1
    const p1, 0x7f0a0456

    .line 308
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/Switch;->toggle()V

    return-void

    :cond_2
    const p1, 0x7f0a03d5

    .line 304
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/Switch;->toggle()V

    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 153
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 154
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public static a(Landroid/view/View;I)V
    .locals 2

    .line 342
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_0

    .line 343
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    return-void

    .line 345
    :cond_0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-void
.end method

.method public static a(Landroid/view/View;II)V
    .locals 2

    .line 536
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_0

    .line 1527
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    if-eq p2, v1, :cond_1

    .line 1530
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 536
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static a(Landroid/view/View;III)V
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 910
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 911
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 912
    instance-of p1, p0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_1

    .line 913
    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    .line 914
    invoke-virtual {p0, p3, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Landroid/view/View;IIIILandroid/text/SpannableString;Landroid/view/View$OnClickListener;Z)V
    .locals 0

    if-eqz p0, :cond_2

    .line 834
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 836
    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_2

    .line 838
    invoke-static {p5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 839
    invoke-virtual {p0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p7, :cond_0

    const/4 p1, 0x0

    .line 841
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    if-eqz p4, :cond_1

    .line 846
    invoke-virtual {p0, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 849
    :cond_1
    invoke-virtual {p0, p6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public static a(Landroid/view/View;IIILjava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 8

    .line 828
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, p4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const v3, 0x7f0a0568

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v6, p5

    invoke-static/range {v0 .. v7}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;IIIILandroid/text/SpannableString;Landroid/view/View$OnClickListener;Z)V

    return-void
.end method

.method public static a(Landroid/view/View;IILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const v0, 0x7f06008a

    .line 451
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz p0, :cond_6

    const v1, 0x7f0a0387

    .line 1466
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1492
    instance-of v2, v1, Landroid/widget/ImageView;

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 1494
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1496
    :cond_0
    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    invoke-static {v5, p1, v2}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    .line 1497
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    if-nez v0, :cond_2

    .line 1501
    move-object p1, v1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 1502
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v0, v5, :cond_1

    .line 1503
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1505
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 1506
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_3

    .line 1507
    check-cast v1, Landroid/widget/ImageView;

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_3
    :goto_1
    const p1, 0x7f0a0388

    .line 1467
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1513
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    if-nez p2, :cond_4

    .line 1515
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1517
    :cond_4
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    .line 1518
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const v2, 0x7f060089

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {v0, p2, v1}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    .line 1520
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_2
    const p1, 0x7f0a038a

    .line 1469
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Ljava/lang/String;)V

    const p1, 0x7f0a0389

    .line 1470
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p4}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 355
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/ViewUtils$8;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/util/ViewUtils$8;-><init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 249
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/ViewUtils$3;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/util/ViewUtils$3;-><init>(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;Lcom/callapp/contacts/api/ContextRunnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/callapp/contacts/api/ContextRunnable<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 990
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/ViewUtils$11;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/util/ViewUtils$11;-><init>(Landroid/view/View;Lcom/callapp/contacts/api/ContextRunnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    .line 855
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 856
    instance-of v0, p0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    .line 857
    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    .line 858
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 862
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_1

    .line 863
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070364

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_1
    return-void
.end method

.method private static a(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 474
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 475
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    .line 477
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0601ec

    .line 478
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x0

    .line 479
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 p1, 0x8

    .line 481
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static a(Landroid/view/View;Z)V
    .locals 2

    .line 222
    invoke-static {p0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 223
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/ViewUtils$1;

    invoke-direct {v1, p1, p0}, Lcom/callapp/contacts/util/ViewUtils$1;-><init>(ZLandroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/widget/TextView;II)V
    .locals 1

    .line 89
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/widget/TextView;Ljava/lang/String;II)V

    return-void
.end method

.method public static a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2

    .line 271
    invoke-static {p0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 272
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/ViewUtils$5;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/util/ViewUtils$5;-><init>(Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static a(Landroid/widget/TextView;Ljava/lang/String;II)V
    .locals 3

    .line 108
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 109
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    int-to-float p2, p2

    const/4 v2, 0x0

    .line 111
    invoke-virtual {p0, v2, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    int-to-float v1, v1

    .line 112
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    div-float/2addr v1, p1

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, v1, p1

    if-gtz p1, :cond_1

    int-to-float p1, p3

    mul-float p2, p2, v1

    .line 115
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 114
    invoke-virtual {p0, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void
.end method

.method public static a(Lcom/google/android/material/appbar/AppBarLayout;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 986
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    return-void
.end method

.method public static a(Landroid/view/View;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 200
    instance-of p0, p0, Landroid/view/ViewStub;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/view/View;FF)Z
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 163
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 166
    aget v2, v0, v1

    int-to-float v2, v2

    sub-float/2addr p1, v2

    float-to-int p1, p1

    const/4 v2, 0x1

    .line 167
    aget v0, v0, v2

    int-to-float v0, v0

    sub-float/2addr p2, v0

    float-to-int p2, p2

    if-ltz p2, :cond_0

    .line 169
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gt p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-ltz p1, :cond_1

    .line 170
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    if-gt p1, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz p2, :cond_2

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public static a(Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 134
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 136
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p0

    if-nez p0, :cond_0

    return v1

    .line 139
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-long v4, p0

    mul-long v2, v2, v4

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-long v4, p0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-long p0, p0

    mul-long v4, v4, p0

    const-wide/16 p0, 0x0

    cmp-long v0, v4, p0

    if-gtz v0, :cond_1

    return v1

    :cond_1
    const-wide/16 p0, 0x64

    mul-long v2, v2, p0

    const-wide/16 p0, 0x1

    mul-long v4, v4, p0

    cmp-long p0, v2, v4

    if-ltz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static b(Landroid/view/View;)Landroid/view/View;
    .locals 1

    .line 204
    invoke-static {p0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    check-cast p0, Landroid/view/ViewStub;

    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static b(Landroid/view/View;I)V
    .locals 2

    if-eqz p0, :cond_0

    .line 367
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/ViewUtils$9;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/util/ViewUtils$9;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static b(Landroid/view/View;II)V
    .locals 2

    .line 615
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 616
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v1, p1, :cond_0

    .line 617
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 618
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 621
    :cond_0
    iget p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p1, p2, :cond_1

    .line 622
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 623
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public static b(Landroid/view/View;IIII)V
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 872
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 873
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 874
    instance-of p1, p0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_1

    .line 876
    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    .line 877
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 878
    invoke-virtual {p0, p4, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Landroid/view/View;Z)V
    .locals 2

    .line 235
    invoke-static {p0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 236
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/ViewUtils$2;

    invoke-direct {v1, p1, p0}, Lcom/callapp/contacts/util/ViewUtils$2;-><init>(ZLandroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Landroid/widget/TextView;II)V
    .locals 1

    .line 101
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/widget/TextView;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public static c(Landroid/view/View;)Landroidx/core/e/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Landroidx/core/e/b<",
            "Ljava/lang/Boolean;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 212
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 213
    invoke-static {p0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 215
    check-cast p0, Landroid/view/ViewStub;

    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p0

    .line 218
    :cond_0
    invoke-static {v0, p0}, Landroidx/core/e/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/e/b;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/view/View;I)V
    .locals 1

    const/high16 v0, -0x80000000

    .line 552
    invoke-static {p0, v0, v0, v0, p1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;IIII)Landroid/view/ViewGroup$MarginLayoutParams;

    return-void
.end method

.method public static c(Landroid/view/View;II)V
    .locals 0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 887
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 889
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 890
    instance-of p1, p0, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz p1, :cond_1

    .line 892
    check-cast p0, Landroid/graphics/drawable/ShapeDrawable;

    .line 893
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    .line 894
    :cond_1
    instance-of p1, p0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_2

    .line 896
    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    .line 897
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void

    .line 898
    :cond_2
    instance-of p1, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p1, :cond_3

    .line 900
    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    .line 901
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static c(Landroid/view/View;Z)V
    .locals 2

    .line 261
    invoke-static {p0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/ViewUtils$4;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/util/ViewUtils$4;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static d(Landroid/view/View;)V
    .locals 1

    .line 1653
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 1654
    :goto_0
    instance-of v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-nez v0, :cond_0

    .line 1655
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 1659
    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    .line 668
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    return-void
.end method

.method public static d(Landroid/view/View;I)V
    .locals 1

    const/high16 v0, -0x80000000

    .line 556
    invoke-static {p0, v0, p1, v0, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;IIII)Landroid/view/ViewGroup$MarginLayoutParams;

    return-void
.end method

.method private static d(Landroid/view/View;II)V
    .locals 3

    .line 575
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 576
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne p1, v2, :cond_0

    .line 577
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    :cond_0
    if-ne p2, v2, :cond_1

    .line 578
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    .line 579
    :cond_1
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static e(Landroid/view/View;I)V
    .locals 1

    const/high16 v0, -0x80000000

    .line 591
    invoke-static {p0, p1, v0}, Lcom/callapp/contacts/util/ViewUtils;->d(Landroid/view/View;II)V

    return-void
.end method

.method public static f(Landroid/view/View;I)V
    .locals 1

    const/high16 v0, -0x80000000

    .line 595
    invoke-static {p0, v0, p1}, Lcom/callapp/contacts/util/ViewUtils;->d(Landroid/view/View;II)V

    return-void
.end method

.method public static g(Landroid/view/View;I)V
    .locals 2

    .line 599
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 600
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, p1, :cond_0

    .line 601
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 602
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public static getDimension(I)F
    .locals 1

    .line 824
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0
.end method

.method public static getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 350
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/view/View;I)V
    .locals 2

    .line 607
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 608
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v1, p1, :cond_0

    .line 609
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 610
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public static isLocaleLTR()Z
    .locals 2

    .line 439
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 440
    invoke-virtual {v0, v0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method
