.class public Lcom/yanzhenjie/nohttp/tools/ResCompat;
.super Ljava/lang/Object;
.source "ResCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColor(I)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/yanzhenjie/nohttp/tools/ResCompat;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    return p0
.end method

.method public static getColor(ILandroid/content/res/Resources$Theme;)I
    .locals 3

    .line 2
    invoke-static {}, Lcom/yanzhenjie/nohttp/NoHttp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 4
    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    return p0

    .line 5
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/yanzhenjie/nohttp/tools/ResCompat;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 3

    .line 2
    invoke-static {}, Lcom/yanzhenjie/nohttp/NoHttp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 4
    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static getColorText(Ljava/lang/CharSequence;III)Landroid/text/SpannableString;
    .locals 1

    .line 1
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 p3, 0x21

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static getDeleteText(Ljava/lang/CharSequence;)Landroid/text/SpannableString;
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/yanzhenjie/nohttp/tools/ResCompat;->getDeleteText(Ljava/lang/CharSequence;II)Landroid/text/SpannableString;

    move-result-object p0

    return-object p0
.end method

.method public static getDeleteText(Ljava/lang/CharSequence;II)Landroid/text/SpannableString;
    .locals 2

    .line 2
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3
    new-instance p0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {p0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    const/16 v1, 0x21

    invoke-virtual {v0, p0, p1, p2, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/yanzhenjie/nohttp/tools/ResCompat;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 2
    invoke-static {}, Lcom/yanzhenjie/nohttp/NoHttp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 4
    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getImageSpanText(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;II)Landroid/text/SpannableString;
    .locals 2

    .line 1
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/tools/ResCompat;->setDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    .line 3
    new-instance p0, Landroid/text/style/ImageSpan;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/16 p1, 0x21

    .line 4
    invoke-virtual {v0, p0, p2, p3, p1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static getScaleText(Ljava/lang/CharSequence;III)Landroid/text/SpannableString;
    .locals 1

    .line 1
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    new-instance p0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {p0, p3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/16 p3, 0x21

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static setBackground(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/tools/ResCompat;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yanzhenjie/nohttp/tools/ResCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public static setBottomDrawable(Landroid/widget/TextView;I)V
    .locals 0

    .line 6
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/tools/ResCompat;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yanzhenjie/nohttp/tools/ResCompat;->setBottomDrawable(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setBottomDrawable(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/tools/ResCompat;->setDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    .line 5
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setCompoundDrawables(Landroid/widget/TextView;IIII)V
    .locals 0

    .line 6
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/tools/ResCompat;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 7
    invoke-static {p2}, Lcom/yanzhenjie/nohttp/tools/ResCompat;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 8
    invoke-static {p3}, Lcom/yanzhenjie/nohttp/tools/ResCompat;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 9
    invoke-static {p4}, Lcom/yanzhenjie/nohttp/tools/ResCompat;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 10
    invoke-static {p0, p1, p2, p3, p4}, Lcom/yanzhenjie/nohttp/tools/ResCompat;->setCompoundDrawables(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setCompoundDrawables(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/tools/ResCompat;->setDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    .line 2
    invoke-static {p2}, Lcom/yanzhenjie/nohttp/tools/ResCompat;->setDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    .line 3
    invoke-static {p3}, Lcom/yanzhenjie/nohttp/tools/ResCompat;->setDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-static {p4}, Lcom/yanzhenjie/nohttp/tools/ResCompat;->setDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setDrawableBounds(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public static setLeftDrawable(Landroid/widget/TextView;I)V
    .locals 0

    .line 6
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/tools/ResCompat;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yanzhenjie/nohttp/tools/ResCompat;->setLeftDrawable(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setLeftDrawable(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/tools/ResCompat;->setDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    .line 5
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setRightDrawable(Landroid/widget/TextView;I)V
    .locals 0

    .line 6
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/tools/ResCompat;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yanzhenjie/nohttp/tools/ResCompat;->setRightDrawable(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setRightDrawable(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/tools/ResCompat;->setDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    .line 5
    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setTopDrawable(Landroid/widget/TextView;I)V
    .locals 0

    .line 6
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/tools/ResCompat;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yanzhenjie/nohttp/tools/ResCompat;->setTopDrawable(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setTopDrawable(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/tools/ResCompat;->setDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    .line 5
    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
