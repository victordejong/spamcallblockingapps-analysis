.class public Lcom/google/android/material/radiobutton/MaterialRadioButton;
.super Landroidx/appcompat/widget/AppCompatRadioButton;
.source "SourceFile"


# static fields
.field private static final a:I

.field private static final b:[[I


# instance fields
.field private c:Landroid/content/res/ColorStateList;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 45
    sget v0, Lcom/google/android/material/a$k;->Widget_MaterialComponents_CompoundButton_RadioButton:I

    sput v0, Lcom/google/android/material/radiobutton/MaterialRadioButton;->a:I

    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 47
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/material/radiobutton/MaterialRadioButton;->b:[[I

    return-void

    :array_0
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        -0x10100a0
    .end array-data

    :array_2
    .array-data 4
        -0x101009e
        0x10100a0
    .end array-data

    :array_3
    .array-data 4
        -0x101009e
        -0x10100a0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/radiobutton/MaterialRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 62
    sget v0, Lcom/google/android/material/a$b;->radioButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/radiobutton/MaterialRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 67
    sget v4, Lcom/google/android/material/radiobutton/MaterialRadioButton;->a:I

    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    invoke-virtual {p0}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 71
    sget-object v2, Lcom/google/android/material/a$l;->MaterialRadioButton:[I

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 72
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/l;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 77
    sget p3, Lcom/google/android/material/a$l;->MaterialRadioButton_buttonTint:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 78
    sget p3, Lcom/google/android/material/a$l;->MaterialRadioButton_buttonTint:I

    .line 80
    invoke-static {p1, p2, p3}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 78
    invoke-static {p0, p1}, Landroidx/core/widget/c;->a(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 84
    :cond_0
    sget p1, Lcom/google/android/material/a$l;->MaterialRadioButton_useMaterialThemeColors:I

    .line 85
    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/radiobutton/MaterialRadioButton;->d:Z

    .line 87
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 92
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatRadioButton;->onAttachedToWindow()V

    .line 94
    iget-boolean v0, p0, Lcom/google/android/material/radiobutton/MaterialRadioButton;->d:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/core/widget/c;->a(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 95
    invoke-virtual {p0, v0}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setUseMaterialThemeColors(Z)V

    :cond_0
    return-void
.end method

.method public setUseMaterialThemeColors(Z)V
    .locals 6

    .line 105
    iput-boolean p1, p0, Lcom/google/android/material/radiobutton/MaterialRadioButton;->d:Z

    if-eqz p1, :cond_1

    .line 1119
    iget-object p1, p0, Lcom/google/android/material/radiobutton/MaterialRadioButton;->c:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_0

    .line 1120
    sget p1, Lcom/google/android/material/a$b;->colorControlActivated:I

    .line 2053
    invoke-static {p0, p1}, Lcom/google/android/material/h/b;->a(Landroid/view/View;I)I

    move-result p1

    .line 1121
    sget v0, Lcom/google/android/material/a$b;->colorOnSurface:I

    .line 3053
    invoke-static {p0, v0}, Lcom/google/android/material/h/b;->a(Landroid/view/View;I)I

    move-result v0

    .line 1122
    sget v1, Lcom/google/android/material/a$b;->colorSurface:I

    .line 4053
    invoke-static {p0, v1}, Lcom/google/android/material/h/b;->a(Landroid/view/View;I)I

    move-result v1

    .line 1124
    sget-object v2, Lcom/google/android/material/radiobutton/MaterialRadioButton;->b:[[I

    array-length v3, v2

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 1126
    invoke-static {v1, p1, v5}, Lcom/google/android/material/b/a;->a(IIF)I

    move-result p1

    aput p1, v3, v4

    const/4 p1, 0x1

    const v4, 0x3f0a3d71    # 0.54f

    .line 1128
    invoke-static {v1, v0, v4}, Lcom/google/android/material/b/a;->a(IIF)I

    move-result v4

    aput v4, v3, p1

    const/4 p1, 0x2

    const v4, 0x3ec28f5c    # 0.38f

    .line 1130
    invoke-static {v1, v0, v4}, Lcom/google/android/material/b/a;->a(IIF)I

    move-result v5

    aput v5, v3, p1

    const/4 p1, 0x3

    .line 1132
    invoke-static {v1, v0, v4}, Lcom/google/android/material/b/a;->a(IIF)I

    move-result v0

    aput v0, v3, p1

    .line 1133
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object p1, p0, Lcom/google/android/material/radiobutton/MaterialRadioButton;->c:Landroid/content/res/ColorStateList;

    .line 1136
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/radiobutton/MaterialRadioButton;->c:Landroid/content/res/ColorStateList;

    .line 107
    invoke-static {p0, p1}, Landroidx/core/widget/c;->a(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 109
    invoke-static {p0, p1}, Landroidx/core/widget/c;->a(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    return-void
.end method
