.class public Ld80;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Z

.field public static final b:Z

.field public static c:Landroid/graphics/PorterDuffXfermode;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    sput-boolean v3, Ld80;->a:Z

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sput-boolean v1, Ld80;->b:Z

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Ld80;->c:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method public static synthetic A(Lhe0;Landroid/animation/ValueAnimator;)V
    .locals 0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public static B(Ljava/lang/Exception;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This feature is implemented using reflection. If you see this exception, something in your setup is not standard. Please create an issue on https://github.com/ZieIony/Carbon/issues. Please provide at least the following information: \n - device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", API "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n - method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(...)\n - cause: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Carbon"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static C(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    sget-boolean v0, Ld80;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_0
    instance-of v0, p0, Le9;

    if-eqz v0, :cond_1

    check-cast p0, Le9;

    invoke-interface {p0, p1}, Le9;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_1
    return-void
.end method

.method public static D(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    sget-boolean v0, Ld80;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_0
    instance-of v0, p0, Le9;

    if-eqz v0, :cond_1

    check-cast p0, Le9;

    invoke-interface {p0, p1}, Le9;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-interface {p0, p2}, Le9;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_1
    return-void
.end method

.method public static E(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    sget-boolean v0, Ld80;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Le9;

    if-eqz v0, :cond_1

    check-cast p0, Le9;

    invoke-interface {p0, p1}, Le9;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Landroid/view/View;)F
    .locals 2

    instance-of v0, p0, Lhe0;

    const/high16 v1, 0x437f0000    # 255.0f

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p0

    check-cast v0, Lhe0;

    invoke-interface {v0}, Lhe0;->getBackgroundTint()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-float p0, p0

    return p0
.end method

.method public static b(Landroid/view/View;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;
    .locals 5

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Li80;->carbon_defaultColor:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v2, v3, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-ne p1, v4, :cond_2

    new-instance p1, Lcarbon/drawable/DefaultColorStateList;

    invoke-direct {p1, p0}, Lcarbon/drawable/DefaultColorStateList;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_2
    sget p2, Li80;->carbon_defaultColorPrimary:I

    if-ne p1, p2, :cond_3

    new-instance p1, Lcarbon/drawable/DefaultPrimaryColorStateList;

    invoke-direct {p1, p0}, Lcarbon/drawable/DefaultPrimaryColorStateList;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_3
    sget p2, Li80;->carbon_defaultColorAccent:I

    if-ne p1, p2, :cond_4

    new-instance p1, Lcarbon/drawable/DefaultAccentColorStateList;

    invoke-direct {p1, p0}, Lcarbon/drawable/DefaultAccentColorStateList;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_4
    sget p2, Li80;->carbon_defaultIconColor:I

    if-ne p1, p2, :cond_5

    new-instance p1, Lcarbon/drawable/DefaultIconColorStateList;

    invoke-direct {p1, p0}, Lcarbon/drawable/DefaultIconColorStateList;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_5
    sget p2, Li80;->carbon_defaultIconColorInverse:I

    if-ne p1, p2, :cond_6

    new-instance p1, Lcarbon/drawable/DefaultIconColorInverseStateList;

    invoke-direct {p1, p0}, Lcarbon/drawable/DefaultIconColorInverseStateList;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_6
    sget p2, Li80;->carbon_defaultIconColorAccent:I

    if-ne p1, p2, :cond_7

    new-instance p1, Lcarbon/drawable/DefaultIconColorAccentStateList;

    invoke-direct {p1, p0}, Lcarbon/drawable/DefaultIconColorAccentStateList;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_7
    sget p2, Li80;->carbon_defaultIconColorAccentInverse:I

    if-ne p1, p2, :cond_8

    new-instance p1, Lcarbon/drawable/DefaultIconColorAccentInverseStateList;

    invoke-direct {p1, p0}, Lcarbon/drawable/DefaultIconColorAccentInverseStateList;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_8
    sget p2, Li80;->carbon_defaultIconColorPrimary:I

    if-ne p1, p2, :cond_9

    new-instance p1, Lcarbon/drawable/DefaultIconColorPrimaryStateList;

    invoke-direct {p1, p0}, Lcarbon/drawable/DefaultIconColorPrimaryStateList;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_9
    sget p2, Li80;->carbon_defaultIconColorPrimaryInverse:I

    if-ne p1, p2, :cond_a

    new-instance p1, Lcarbon/drawable/DefaultIconColorPrimaryInverseStateList;

    invoke-direct {p1, p0}, Lcarbon/drawable/DefaultIconColorPrimaryInverseStateList;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_a
    sget p2, Li80;->carbon_defaultTextPrimaryColor:I

    if-ne p1, p2, :cond_b

    new-instance p1, Lcarbon/drawable/DefaultTextPrimaryColorStateList;

    invoke-direct {p1, p0}, Lcarbon/drawable/DefaultTextPrimaryColorStateList;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_b
    sget p2, Li80;->carbon_defaultTextSecondaryColor:I

    if-ne p1, p2, :cond_c

    new-instance p1, Lcarbon/drawable/DefaultTextSecondaryColorStateList;

    invoke-direct {p1, p0}, Lcarbon/drawable/DefaultTextSecondaryColorStateList;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_c
    sget p2, Li80;->carbon_defaultTextPrimaryColorInverse:I

    if-ne p1, p2, :cond_d

    new-instance p1, Lcarbon/drawable/DefaultTextPrimaryColorInverseStateList;

    invoke-direct {p1, p0}, Lcarbon/drawable/DefaultTextPrimaryColorInverseStateList;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_d
    sget p2, Li80;->carbon_defaultTextSecondaryColorInverse:I

    if-ne p1, p2, :cond_e

    new-instance p1, Lcarbon/drawable/DefaultTextSecondaryColorInverseStateList;

    invoke-direct {p1, p0}, Lcarbon/drawable/DefaultTextSecondaryColorInverseStateList;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_e
    sget p2, Li80;->carbon_defaultTextColorPrimary:I

    if-ne p1, p2, :cond_f

    new-instance p1, Lcarbon/drawable/DefaultTextColorPrimaryStateList;

    invoke-direct {p1, p0}, Lcarbon/drawable/DefaultTextColorPrimaryStateList;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_f
    sget p2, Li80;->carbon_defaultTextColorAccent:I

    if-ne p1, p2, :cond_10

    new-instance p1, Lcarbon/drawable/DefaultTextColorAccentStateList;

    invoke-direct {p1, p0}, Lcarbon/drawable/DefaultTextColorAccentStateList;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_10
    sget p2, Li80;->carbon_defaultRippleColor:I

    const v0, 0xffffff

    const/high16 v2, 0x12000000

    if-ne p1, p2, :cond_11

    sget p1, Lh80;->carbon_rippleColor:I

    :goto_0
    invoke-static {p0, p1}, Ld80;->g(Landroid/content/Context;I)I

    move-result p0

    and-int/2addr p0, v0

    or-int/2addr p0, v2

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_11
    sget p2, Li80;->carbon_defaultRippleColorPrimary:I

    if-ne p1, p2, :cond_12

    sget p1, Lh80;->colorPrimary:I

    goto :goto_0

    :cond_12
    sget p2, Li80;->carbon_defaultRippleColorAccent:I

    if-ne p1, p2, :cond_13

    sget p1, Lh80;->colorAccent:I

    goto :goto_0

    :catch_0
    :cond_13
    return-object v1
.end method

.method public static c(Landroid/content/Context;)F
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static d(Landroid/graphics/drawable/Drawable;)I
    .locals 2

    const/16 v0, 0xff

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v1, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result p0

    return p0

    :cond_1
    instance-of v1, p0, Lob0;

    if-eqz v1, :cond_2

    check-cast p0, Lob0;

    invoke-interface {p0}, Lob0;->getAlpha()I

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public static e(Landroid/content/Context;I)Lwc0;
    .locals 2

    invoke-static {p0}, Lf80;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lwc0;

    invoke-direct {v0, p0}, Lwc0;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/MenuInflater;

    invoke-direct {v1, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-object v0
.end method

.method public static f(Landroid/content/Context;Landroid/view/Menu;)Lwc0;
    .locals 6

    invoke-static {p0}, Lf80;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lwc0;

    invoke-direct {v0, p0}, Lwc0;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-interface {p1, p0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-interface {v1}, Landroid/view/MenuItem;->getOrder()I

    move-result v4

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lwc0;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v1

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static g(Landroid/content/Context;I)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, v1, Landroid/util/TypedValue;->data:I

    :goto_0
    return p0
.end method

.method public static h(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/Context;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Le80;

    invoke-direct {p1, p0, p2}, Le80;-><init>(Landroid/content/Context;I)V

    return-object p1

    :cond_0
    return-object p0
.end method

.method public static i(Lga0;Landroid/content/res/TypedArray;[I)V
    .locals 3

    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    aget v1, p2, v1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget v1, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lfa0$h;->values()[Lfa0$h;

    move-result-object v1

    iget v2, v2, Landroid/util/TypedValue;->data:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lfa0$h;->a()Landroid/animation/Animator;

    move-result-object v1

    :goto_0
    invoke-interface {p0, v1}, Lga0;->setInAnimator(Landroid/animation/Animator;)V

    :cond_2
    const/4 v1, 0x1

    aget p2, p2, v1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget p1, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p2, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-static {}, Lfa0$h;->values()[Lfa0$h;

    move-result-object p1

    iget p2, v1, Landroid/util/TypedValue;->data:I

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lfa0$h;->b()Landroid/animation/Animator;

    move-result-object p1

    :goto_1
    invoke-interface {p0, p1}, Lga0;->setOutAnimator(Landroid/animation/Animator;)V

    :cond_4
    return-void
.end method

.method public static j(Lae0;Landroid/content/res/TypedArray;[I)V
    .locals 5

    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v2, 0x1

    aget v2, p2, v2

    const/4 v3, 0x2

    aget v3, p2, v3

    const/4 v4, 0x3

    aget p2, p2, v4

    invoke-static {}, Lgh0;->values()[Lgh0;

    move-result-object v4

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    aget-object v0, v4, v0

    invoke-interface {p0, v0}, Lae0;->setAutoSizeText(Lgh0;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-interface {p0, v1}, Lae0;->setMinTextSize(F)V

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-interface {p0, v0}, Lae0;->setMaxTextSize(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-interface {p0, p1}, Lae0;->setAutoSizeStepGranularity(F)V

    return-void
.end method

.method public static k(Lee0;Landroid/content/res/TypedArray;[I)V
    .locals 12

    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x1

    aget v1, p2, v1

    const/4 v2, 0x2

    aget v2, p2, v2

    const/4 v3, 0x3

    aget v3, p2, v3

    const/4 v4, 0x4

    aget v4, p2, v4

    const/4 v5, 0x5

    aget v5, p2, v5

    const/4 v6, 0x6

    aget v6, p2, v6

    const/4 v7, 0x7

    aget v7, p2, v7

    const/16 v8, 0x8

    aget v8, p2, v8

    const/16 v9, 0x9

    aget p2, p2, v9

    invoke-interface {p0}, Lee0;->getShapeModel()Lvd0;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {p1, v4, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const v11, 0x3dcccccd    # 0.1f

    invoke-static {v4, v11}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {p1, p2, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p1, v5, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {p1, v6, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    invoke-virtual {p1, v7, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    invoke-virtual {p1, v8, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    cmpl-float p2, v4, v0

    if-ltz p2, :cond_0

    new-instance p2, Lod0;

    invoke-direct {p2, v4}, Lod0;-><init>(F)V

    goto :goto_0

    :cond_0
    new-instance p2, Lsd0;

    invoke-direct {p2, v0}, Lsd0;-><init>(F)V

    :goto_0
    invoke-virtual {v9, p2}, Lvd0;->q(Lnd0;)V

    cmpl-float p2, v5, v1

    if-ltz p2, :cond_1

    new-instance p2, Lod0;

    invoke-direct {p2, v5}, Lod0;-><init>(F)V

    goto :goto_1

    :cond_1
    new-instance p2, Lsd0;

    invoke-direct {p2, v1}, Lsd0;-><init>(F)V

    :goto_1
    invoke-virtual {v9, p2}, Lvd0;->r(Lnd0;)V

    cmpl-float p2, v6, v2

    if-ltz p2, :cond_2

    new-instance p2, Lod0;

    invoke-direct {p2, v6}, Lod0;-><init>(F)V

    goto :goto_2

    :cond_2
    new-instance p2, Lsd0;

    invoke-direct {p2, v2}, Lsd0;-><init>(F)V

    :goto_2
    invoke-virtual {v9, p2}, Lvd0;->l(Lnd0;)V

    cmpl-float p2, p1, v3

    if-ltz p2, :cond_3

    new-instance p2, Lod0;

    invoke-direct {p2, p1}, Lod0;-><init>(F)V

    goto :goto_3

    :cond_3
    new-instance p2, Lsd0;

    invoke-direct {p2, v3}, Lsd0;-><init>(F)V

    :goto_3
    invoke-virtual {v9, p2}, Lvd0;->m(Lnd0;)V

    invoke-interface {p0, v9}, Lee0;->setShapeModel(Lvd0;)V

    return-void
.end method

.method public static l(Landroid/view/View;Landroid/content/res/TypedArray;I)V
    .locals 1

    invoke-static {p0, p1, p2}, Ld80;->b(Landroid/view/View;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Lsb0;

    new-instance v0, Ly70;

    invoke-direct {v0, p0}, Ly70;-><init>(Landroid/view/View;)V

    invoke-static {p1, v0}, Lcarbon/animation/AnimatedColorStateList;->b(Landroid/content/res/ColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcarbon/animation/AnimatedColorStateList;

    move-result-object p1

    invoke-direct {p2, p1}, Lsb0;-><init>(Lcarbon/animation/AnimatedColorStateList;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public static m(Landroid/widget/TextView;Landroid/content/res/TypedArray;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Ld80;->b(Landroid/view/View;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Lz70;

    invoke-direct {p2, p0}, Lz70;-><init>(Landroid/widget/TextView;)V

    invoke-static {p1, p2}, Lcarbon/animation/AnimatedColorStateList;->b(Landroid/content/res/ColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcarbon/animation/AnimatedColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public static n(Lud0;Landroid/content/res/TypedArray;[I)V
    .locals 4

    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x1

    aget v1, p2, v1

    const/4 v2, 0x2

    aget v2, p2, v2

    const/4 v3, 0x3

    aget p2, p2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-interface {p0, v0}, Lud0;->setElevation(F)V

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lfe0;

    invoke-interface {v0}, Lfe0;->getStateAnimator()Lia0;

    move-result-object v0

    invoke-static {v0, p0}, Lfa0;->N(Lia0;Lud0;)V

    :cond_0
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-interface {p0, v0}, Lud0;->setElevationShadowColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-interface {p0, v0}, Lud0;->setOutlineAmbientShadowColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-interface {p0, p1}, Lud0;->setOutlineSpotShadowColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method

.method public static o(Landroid/widget/TextView;Landroid/content/res/TypedArray;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static p(Lce0;Landroid/content/res/TypedArray;[I)V
    .locals 7

    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v2, 0x1

    aget v2, p2, v2

    const/4 v3, 0x2

    aget v3, p2, v3

    const/4 v4, 0x3

    aget v4, p2, v4

    const/4 v5, 0x4

    aget v5, p2, v5

    const/4 v6, 0x5

    aget p2, p2, v6

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {p1, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    invoke-interface {p0, v2, v3, v4, v1}, Lce0;->setInset(IIII)V

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-interface {p0, p1}, Lce0;->setInsetColor(I)V

    return-void
.end method

.method public static q(Lde0;Landroid/content/res/TypedArray;[I)V
    .locals 2

    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x1

    aget p2, p2, v1

    const/high16 v1, 0x4f000000

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    invoke-interface {p0, v0}, Lde0;->setMaximumWidth(I)V

    invoke-interface {p0, p1}, Lde0;->setMaximumHeight(I)V

    return-void
.end method

.method public static r(Lmc0;Landroid/content/res/TypedArray;[I)V
    .locals 7

    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x1

    aget v2, p2, v1

    const/4 v3, 0x2

    aget v3, p2, v3

    const/4 v4, 0x3

    aget p2, p2, v4

    move-object v4, p0

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    invoke-static {v4, p1, v0}, Ld80;->b(Landroid/view/View;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    :cond_1
    if-eqz v5, :cond_2

    invoke-static {}, Lhc0$a;->values()[Lhc0$a;

    move-result-object v0

    sget-object v6, Lhc0$a;->b:Lhc0$a;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    invoke-static {v5, v0, v4, v1, p1}, Lgc0;->a(Landroid/content/res/ColorStateList;Lhc0$a;Landroid/view/View;ZI)Lhc0;

    move-result-object p1

    invoke-interface {p0, p1}, Lmc0;->setRippleDrawable(Lhc0;)V

    :cond_2
    return-void
.end method

.method public static s(Lge0;Landroid/content/res/TypedArray;[I)V
    .locals 3

    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x1

    aget p2, p2, v1

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-static {v1, p1, v0}, Ld80;->b(Landroid/view/View;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    new-instance v0, Lb80;

    invoke-direct {v0, v1}, Lb80;-><init>(Landroid/view/View;)V

    invoke-static {v2, v0}, Lcarbon/animation/AnimatedColorStateList;->b(Landroid/content/res/ColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcarbon/animation/AnimatedColorStateList;

    move-result-object v0

    invoke-interface {p0, v0}, Lge0;->setStroke(Landroid/content/res/ColorStateList;)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-interface {p0, p1}, Lge0;->setStrokeWidth(F)V

    return-void
.end method

.method public static t(Lhe0;Landroid/content/res/TypedArray;[I)V
    .locals 7

    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v2, 0x1

    aget v3, p2, v2

    const/4 v4, 0x2

    aget v4, p2, v4

    const/4 v5, 0x3

    aget v5, p2, v5

    const/4 v6, 0x4

    aget p2, p2, v6

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, p0

    check-cast v6, Landroid/view/View;

    invoke-static {v6, p1, v1}, Ld80;->b(Landroid/view/View;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    :cond_0
    if-eqz v6, :cond_1

    new-instance v1, Lc80;

    invoke-direct {v1, p0}, Lc80;-><init>(Lhe0;)V

    invoke-static {v6, v1}, Lcarbon/animation/AnimatedColorStateList;->b(Landroid/content/res/ColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcarbon/animation/AnimatedColorStateList;

    move-result-object v1

    invoke-interface {p0, v1}, Lhe0;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    sget-object v1, Lhe0;->i:[Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    aget-object v3, v1, v3

    invoke-interface {p0, v3}, Lhe0;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, p0

    check-cast v3, Landroid/view/View;

    invoke-static {v3, p1, v4}, Ld80;->b(Landroid/view/View;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_3

    new-instance v4, La80;

    invoke-direct {v4, p0}, La80;-><init>(Lhe0;)V

    invoke-static {v3, v4}, Lcarbon/animation/AnimatedColorStateList;->b(Landroid/content/res/ColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcarbon/animation/AnimatedColorStateList;

    move-result-object v3

    invoke-interface {p0, v3}, Lhe0;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_3
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget-object v1, v1, v2

    invoke-interface {p0, v1}, Lhe0;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-interface {p0, p1}, Lhe0;->setAnimateColorChangesEnabled(Z)V

    :cond_4
    return-void
.end method

.method public static u(Lie0;Landroid/content/res/TypedArray;[I)V
    .locals 5

    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x1

    aget v1, p2, v1

    const/4 v2, 0x2

    aget v2, p2, v2

    const/4 v3, 0x3

    aget v3, p2, v3

    const/4 v4, 0x4

    aget p2, p2, v4

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    invoke-interface {p0, v1, v2, v3, p1}, Lie0;->setTouchMargin(IIII)V

    return-void
.end method

.method public static v(Lvd0;)Z
    .locals 2

    invoke-virtual {p0}, Lvd0;->g()Lnd0;

    move-result-object v0

    invoke-virtual {v0}, Lnd0;->d()F

    move-result v0

    const v1, 0x3e4ccccd    # 0.2f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lvd0;->h()Lnd0;

    move-result-object v0

    invoke-virtual {v0}, Lnd0;->d()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lvd0;->b()Lnd0;

    move-result-object v0

    invoke-virtual {v0}, Lnd0;->d()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lvd0;->c()Lnd0;

    move-result-object p0

    invoke-virtual {p0}, Lnd0;->d()F

    move-result p0

    cmpg-float p0, p0, v1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic w(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public static synthetic x(Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/TextView;->postInvalidate()V

    return-void
.end method

.method public static synthetic y(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public static synthetic z(Lhe0;Landroid/animation/ValueAnimator;)V
    .locals 0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
