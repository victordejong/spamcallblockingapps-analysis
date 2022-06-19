.class public final Landroidx/core/widget/i;
.super Ljava/lang/Object;
.source "TextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/i$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/reflect/Field;

.field private static b:Z

.field private static c:Ljava/lang/reflect/Field;

.field private static d:Z


# direct methods
.method private static a(Landroid/text/TextDirectionHeuristic;)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 957
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v1, :cond_1

    .line 974
    :cond_0
    :goto_0
    return v0

    .line 959
    :cond_1
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-eq p0, v1, :cond_0

    .line 961
    sget-object v1, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v1, :cond_2

    .line 962
    const/4 v0, 0x2

    goto :goto_0

    .line 963
    :cond_2
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v1, :cond_3

    .line 964
    const/4 v0, 0x3

    goto :goto_0

    .line 965
    :cond_3
    sget-object v1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v1, :cond_4

    .line 966
    const/4 v0, 0x4

    goto :goto_0

    .line 967
    :cond_4
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v1, :cond_5

    .line 968
    const/4 v0, 0x5

    goto :goto_0

    .line 969
    :cond_5
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v1, :cond_6

    .line 970
    const/4 v0, 0x6

    goto :goto_0

    .line 971
    :cond_6
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    if-ne p0, v1, :cond_0

    .line 972
    const/4 v0, 0x7

    goto :goto_0
.end method

.method public static a(Landroid/widget/TextView;)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 226
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 227
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    .line 244
    :goto_0
    return v0

    .line 230
    :cond_0
    sget-boolean v0, Landroidx/core/widget/i;->d:Z

    if-nez v0, :cond_1

    .line 231
    const-string/jumbo v0, "mMaxMode"

    invoke-static {v0}, Landroidx/core/widget/i;->a(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/widget/i;->c:Ljava/lang/reflect/Field;

    .line 232
    sput-boolean v2, Landroidx/core/widget/i;->d:Z

    .line 234
    :cond_1
    sget-object v0, Landroidx/core/widget/i;->c:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3

    sget-object v0, Landroidx/core/widget/i;->c:Ljava/lang/reflect/Field;

    invoke-static {v0, p0}, Landroidx/core/widget/i;->a(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 236
    sget-boolean v0, Landroidx/core/widget/i;->b:Z

    if-nez v0, :cond_2

    .line 237
    const-string/jumbo v0, "mMaximum"

    invoke-static {v0}, Landroidx/core/widget/i;->a(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/widget/i;->a:Ljava/lang/reflect/Field;

    .line 238
    sput-boolean v2, Landroidx/core/widget/i;->b:Z

    .line 240
    :cond_2
    sget-object v0, Landroidx/core/widget/i;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3

    .line 241
    sget-object v0, Landroidx/core/widget/i;->a:Ljava/lang/reflect/Field;

    invoke-static {v0, p0}, Landroidx/core/widget/i;->a(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v0

    goto :goto_0

    .line 244
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I
    .locals 3

    .prologue
    .line 126
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 130
    :goto_0
    return v0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    const-string/jumbo v0, "TextViewCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not retrieve value of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " field."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .locals 2

    .prologue
    .line 519
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-gt v0, v1, :cond_0

    instance-of v0, p1, Landroidx/core/widget/i$a;

    if-eqz v0, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-object p1

    :cond_1
    new-instance v0, Landroidx/core/widget/i$a;

    invoke-direct {v0, p1, p0}, Landroidx/core/widget/i$a;-><init>(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)V

    move-object p1, v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 4

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 116
    :try_start_0
    const-class v1, Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 117
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-object v0

    .line 118
    :catch_0
    move-exception v1

    .line 119
    const-string/jumbo v1, "TextViewCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not retrieve "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " field."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/widget/TextView;I)V
    .locals 2

    .prologue
    .line 283
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 284
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static a(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 987
    invoke-static {p0}, Landroidx/core/g/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 989
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 993
    :cond_0
    :goto_0
    return-void

    .line 990
    :cond_1
    instance-of v0, p0, Landroidx/core/widget/k;

    if-eqz v0, :cond_0

    .line 991
    check-cast p0, Landroidx/core/widget/k;

    invoke-interface {p0, p1}, Landroidx/core/widget/k;->setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public static a(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    .line 1021
    invoke-static {p0}, Landroidx/core/g/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 1023
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1028
    :cond_0
    :goto_0
    return-void

    .line 1024
    :cond_1
    instance-of v0, p0, Landroidx/core/widget/k;

    if-eqz v0, :cond_0

    .line 1025
    check-cast p0, Landroidx/core/widget/k;

    invoke-interface {p0, p1}, Landroidx/core/widget/k;->setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public static a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 151
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 152
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 159
    :goto_0
    return-void

    .line 153
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_4

    .line 154
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_1

    move v1, v0

    .line 155
    :goto_1
    if-eqz v1, :cond_2

    move-object v0, p3

    :goto_2
    if-eqz v1, :cond_3

    :goto_3
    invoke-virtual {p0, v0, p2, p1, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 154
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, p1

    .line 155
    goto :goto_2

    :cond_3
    move-object p1, p3

    goto :goto_3

    .line 157
    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static a(Landroid/widget/TextView;Landroidx/core/f/c$a;)V
    .locals 3

    .prologue
    .line 842
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 843
    invoke-virtual {p1}, Landroidx/core/f/c$a;->b()Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/widget/i;->a(Landroid/text/TextDirectionHeuristic;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 846
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_2

    .line 847
    invoke-virtual {p1}, Landroidx/core/f/c$a;->a()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    .line 850
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/core/f/c$a;->a()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 853
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextScaleX()F

    move-result v1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    .line 856
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 858
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 869
    :goto_0
    return-void

    .line 862
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/core/f/c$a;->a()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 866
    invoke-virtual {p1}, Landroidx/core/f/c$a;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBreakStrategy(I)V

    .line 867
    invoke-virtual {p1}, Landroidx/core/f/c$a;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    goto :goto_0
.end method

.method public static a(Landroid/widget/TextView;Landroidx/core/f/c;)V
    .locals 2

    .prologue
    .line 884
    invoke-static {p0}, Landroidx/core/widget/i;->e(Landroid/widget/TextView;)Landroidx/core/f/c$a;

    move-result-object v0

    .line 885
    invoke-virtual {p1}, Landroidx/core/f/c;->a()Landroidx/core/f/c$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/f/c$a;->a(Landroidx/core/f/c$a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 886
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Given text can not be applied to TextView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 888
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 889
    return-void
.end method

.method public static b(Landroid/widget/TextView;I)V
    .locals 4

    .prologue
    .line 693
    invoke-static {p1}, Landroidx/core/g/f;->a(I)I

    .line 694
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 695
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 701
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    .line 704
    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 705
    :cond_2
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 713
    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le p1, v1, :cond_0

    .line 714
    neg-int v0, v0

    sub-int v0, p1, v0

    .line 715
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    .line 716
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    .line 715
    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 707
    :cond_3
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    goto :goto_1
.end method

.method public static b(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 295
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    .line 296
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 310
    :goto_0
    return-object v0

    .line 298
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_3

    .line 299
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 300
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 301
    if-eqz v0, :cond_1

    .line 303
    aget-object v0, v2, v4

    .line 304
    aget-object v3, v2, v1

    .line 305
    aput-object v0, v2, v1

    .line 306
    aput-object v3, v2, v4

    :cond_1
    move-object v0, v2

    .line 308
    goto :goto_0

    :cond_2
    move v0, v1

    .line 299
    goto :goto_1

    .line 310
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Landroid/widget/TextView;)I
    .locals 2

    .prologue
    .line 768
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public static c(Landroid/widget/TextView;I)V
    .locals 4

    .prologue
    .line 738
    invoke-static {p1}, Landroidx/core/g/f;->a(I)I

    .line 740
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 742
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 745
    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 746
    :cond_0
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 754
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le p1, v1, :cond_1

    .line 755
    sub-int v0, p1, v0

    .line 756
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    .line 757
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    .line 756
    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 759
    :cond_1
    return-void

    .line 748
    :cond_2
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    goto :goto_0
.end method

.method public static d(Landroid/widget/TextView;)I
    .locals 2

    .prologue
    .line 778
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static d(Landroid/widget/TextView;I)V
    .locals 2

    .prologue
    .line 796
    invoke-static {p1}, Landroidx/core/g/f;->a(I)I

    .line 798
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    .line 800
    if-eq p1, v0, :cond_0

    .line 802
    sub-int v0, p1, v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 804
    :cond_0
    return-void
.end method

.method public static e(Landroid/widget/TextView;)Landroidx/core/f/c$a;
    .locals 3

    .prologue
    .line 815
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 816
    new-instance v0, Landroidx/core/f/c$a;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextMetricsParams()Landroid/text/PrecomputedText$Params;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/f/c$a;-><init>(Landroid/text/PrecomputedText$Params;)V

    .line 827
    :goto_0
    return-object v0

    .line 818
    :cond_0
    new-instance v0, Landroidx/core/f/c$a$a;

    new-instance v1, Landroid/text/TextPaint;

    .line 819
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    invoke-direct {v0, v1}, Landroidx/core/f/c$a$a;-><init>(Landroid/text/TextPaint;)V

    .line 820
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 821
    invoke-virtual {p0}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/f/c$a$a;->a(I)Landroidx/core/f/c$a$a;

    .line 822
    invoke-virtual {p0}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/f/c$a$a;->b(I)Landroidx/core/f/c$a$a;

    .line 824
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_2

    .line 825
    invoke-static {p0}, Landroidx/core/widget/i;->f(Landroid/widget/TextView;)Landroid/text/TextDirectionHeuristic;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/f/c$a$a;->a(Landroid/text/TextDirectionHeuristic;)Landroidx/core/f/c$a$a;

    .line 827
    :cond_2
    invoke-virtual {v0}, Landroidx/core/f/c$a$a;->a()Landroidx/core/f/c$a;

    move-result-object v0

    goto :goto_0
.end method

.method private static f(Landroid/widget/TextView;)Landroid/text/TextDirectionHeuristic;
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 901
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    instance-of v2, v2, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v2, :cond_0

    .line 903
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 948
    :goto_0
    return-object v0

    .line 906
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_3

    .line 907
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 913
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v2

    .line 914
    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStrings()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    .line 917
    invoke-virtual {v2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 918
    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v1

    .line 919
    if-eq v1, v0, :cond_1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    .line 921
    :cond_1
    sget-object v0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 923
    :cond_2
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 929
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_4

    .line 932
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 935
    if-eqz v0, :cond_5

    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    :cond_4
    move v0, v1

    .line 929
    goto :goto_1

    .line 935
    :cond_5
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 938
    :pswitch_0
    sget-object v0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 940
    :pswitch_1
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 942
    :pswitch_2
    sget-object v0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 944
    :pswitch_3
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 946
    :pswitch_4
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 948
    :pswitch_5
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .line 932
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
