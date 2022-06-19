.class public Lcom/google/android/material/e/a;
.super Landroidx/appcompat/widget/AppCompatCheckBox;
.source "MaterialCheckBox.java"


# static fields
.field private static final a:I

.field private static final b:[[I


# instance fields
.field private c:Landroid/content/res/ColorStateList;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 44
    sget v0, Lcom/google/android/material/a$k;->Widget_MaterialComponents_CompoundButton_CheckBox:I

    sput v0, Lcom/google/android/material/e/a;->a:I

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/material/e/a;->b:[[I

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

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/google/android/material/a$b;->checkboxStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/e/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 65
    sget v0, Lcom/google/android/material/e/a;->a:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/internal/i;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    invoke-virtual {p0}, Lcom/google/android/material/e/a;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    sget-object v2, Lcom/google/android/material/a$l;->MaterialCheckBox:[I

    sget v4, Lcom/google/android/material/e/a;->a:I

    new-array v5, v6, [I

    move-object v1, p2

    move v3, p3

    .line 70
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/i;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 75
    sget v2, Lcom/google/android/material/a$l;->MaterialCheckBox_buttonTint:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    sget v2, Lcom/google/android/material/a$l;->MaterialCheckBox_buttonTint:I

    .line 78
    invoke-static {v0, v1, v2}, Lcom/google/android/material/n/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 76
    invoke-static {p0, v0}, Landroidx/core/widget/c;->a(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 82
    :cond_0
    sget v0, Lcom/google/android/material/a$l;->MaterialCheckBox_useMaterialThemeColors:I

    .line 83
    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/e/a;->d:Z

    .line 85
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    return-void
.end method

.method private getMaterialThemeColorsTintList()Landroid/content/res/ColorStateList;
    .locals 7

    .prologue
    const v6, 0x3ec28f5c    # 0.38f

    .line 117
    iget-object v0, p0, Lcom/google/android/material/e/a;->c:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 118
    sget-object v0, Lcom/google/android/material/e/a;->b:[[I

    array-length v0, v0

    new-array v0, v0, [I

    .line 119
    sget v1, Lcom/google/android/material/a$b;->colorControlActivated:I

    invoke-static {p0, v1}, Lcom/google/android/material/g/a;->a(Landroid/view/View;I)I

    move-result v1

    .line 120
    sget v2, Lcom/google/android/material/a$b;->colorSurface:I

    invoke-static {p0, v2}, Lcom/google/android/material/g/a;->a(Landroid/view/View;I)I

    move-result v2

    .line 121
    sget v3, Lcom/google/android/material/a$b;->colorOnSurface:I

    invoke-static {p0, v3}, Lcom/google/android/material/g/a;->a(Landroid/view/View;I)I

    move-result v3

    .line 123
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 124
    invoke-static {v2, v1, v5}, Lcom/google/android/material/g/a;->a(IIF)I

    move-result v1

    aput v1, v0, v4

    .line 125
    const/4 v1, 0x1

    const v4, 0x3f0a3d71    # 0.54f

    .line 126
    invoke-static {v2, v3, v4}, Lcom/google/android/material/g/a;->a(IIF)I

    move-result v4

    aput v4, v0, v1

    .line 127
    const/4 v1, 0x2

    .line 128
    invoke-static {v2, v3, v6}, Lcom/google/android/material/g/a;->a(IIF)I

    move-result v4

    aput v4, v0, v1

    .line 129
    const/4 v1, 0x3

    .line 130
    invoke-static {v2, v3, v6}, Lcom/google/android/material/g/a;->a(IIF)I

    move-result v2

    aput v2, v0, v1

    .line 132
    new-instance v1, Landroid/content/res/ColorStateList;

    sget-object v2, Lcom/google/android/material/e/a;->b:[[I

    invoke-direct {v1, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v1, p0, Lcom/google/android/material/e/a;->c:Landroid/content/res/ColorStateList;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/e/a;->c:Landroid/content/res/ColorStateList;

    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->onAttachedToWindow()V

    .line 92
    iget-boolean v0, p0, Lcom/google/android/material/e/a;->d:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/core/widget/c;->a(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/e/a;->setUseMaterialThemeColors(Z)V

    .line 95
    :cond_0
    return-void
.end method

.method public setUseMaterialThemeColors(Z)V
    .locals 1

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/google/android/material/e/a;->d:Z

    .line 104
    if-eqz p1, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/google/android/material/e/a;->getMaterialThemeColorsTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/widget/c;->a(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/core/widget/c;->a(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method
