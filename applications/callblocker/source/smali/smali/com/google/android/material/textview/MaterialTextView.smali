.class public Lcom/google/android/material/textview/MaterialTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "MaterialTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 81
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    invoke-static {p1}, Lcom/google/android/material/textview/MaterialTextView;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 96
    invoke-static {p1, v0, p2, p3, p4}, Lcom/google/android/material/textview/MaterialTextView;->a(Landroid/content/Context;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    invoke-static {v0, p2, p3, p4}, Lcom/google/android/material/textview/MaterialTextView;->a(Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;II)I

    move-result v1

    .line 98
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 99
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/textview/MaterialTextView;->a(Landroid/content/res/Resources$Theme;I)V

    .line 103
    :cond_0
    return-void
.end method

.method private static varargs a(Landroid/content/Context;Landroid/content/res/TypedArray;[I)I
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 137
    .line 139
    const/4 v0, 0x0

    move v1, v2

    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_0

    if-gez v1, :cond_0

    .line 140
    aget v1, p2, v0

    invoke-static {p0, p1, v1, v2}, Lcom/google/android/material/n/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    move-result v1

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_0
    return v1
.end method

.method private static a(Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;II)I
    .locals 3

    .prologue
    .line 168
    sget-object v0, Lcom/google/android/material/a$l;->MaterialTextView:[I

    .line 169
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 171
    sget v1, Lcom/google/android/material/a$l;->MaterialTextView_android_textAppearance:I

    const/4 v2, -0x1

    .line 172
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 173
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 174
    return v1
.end method

.method private a(Landroid/content/res/Resources$Theme;I)V
    .locals 5

    .prologue
    .line 115
    sget-object v0, Lcom/google/android/material/a$l;->MaterialTextAppearance:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Lcom/google/android/material/textview/MaterialTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    sget v4, Lcom/google/android/material/a$l;->MaterialTextAppearance_android_lineHeight:I

    aput v4, v2, v3

    const/4 v3, 0x1

    sget v4, Lcom/google/android/material/a$l;->MaterialTextAppearance_lineHeight:I

    aput v4, v2, v3

    .line 117
    invoke-static {v1, v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->a(Landroid/content/Context;Landroid/content/res/TypedArray;[I)I

    move-result v1

    .line 122
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 124
    if-ltz v1, :cond_0

    .line 125
    invoke-virtual {p0, v1}, Lcom/google/android/material/textview/MaterialTextView;->setLineHeight(I)V

    .line 127
    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 130
    sget v0, Lcom/google/android/material/a$b;->textAppearanceLineHeightEnabled:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/material/n/b;->a(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method private static a(Landroid/content/Context;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;II)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 152
    sget-object v2, Lcom/google/android/material/a$l;->MaterialTextView:[I

    .line 153
    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 155
    const/4 v3, 0x2

    new-array v3, v3, [I

    sget v4, Lcom/google/android/material/a$l;->MaterialTextView_android_lineHeight:I

    aput v4, v3, v1

    sget v4, Lcom/google/android/material/a$l;->MaterialTextView_lineHeight:I

    aput v4, v3, v0

    .line 156
    invoke-static {p0, v2, v3}, Lcom/google/android/material/textview/MaterialTextView;->a(Landroid/content/Context;Landroid/content/res/TypedArray;[I)I

    move-result v3

    .line 161
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 163
    const/4 v2, -0x1

    if-eq v3, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 109
    invoke-static {p1}, Lcom/google/android/material/textview/MaterialTextView;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/material/textview/MaterialTextView;->a(Landroid/content/res/Resources$Theme;I)V

    .line 112
    :cond_0
    return-void
.end method
