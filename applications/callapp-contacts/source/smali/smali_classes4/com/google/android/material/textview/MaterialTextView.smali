.class public Lcom/google/android/material/textview/MaterialTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    .line 83
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .line 93
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/material/theme/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    invoke-virtual {p0}, Lcom/google/android/material/textview/MaterialTextView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 97
    invoke-static {p1}, Lcom/google/android/material/textview/MaterialTextView;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1156
    sget-object v1, Lcom/google/android/material/a$l;->MaterialTextView:[I

    .line 1157
    invoke-virtual {v0, p2, v1, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 1159
    sget v3, Lcom/google/android/material/a$l;->MaterialTextView_android_lineHeight:I

    const/4 v4, 0x0

    aput v3, v2, v4

    sget v3, Lcom/google/android/material/a$l;->MaterialTextView_lineHeight:I

    const/4 v5, 0x1

    aput v3, v2, v5

    .line 1160
    invoke-static {p1, v1, v2}, Lcom/google/android/material/textview/MaterialTextView;->a(Landroid/content/Context;Landroid/content/res/TypedArray;[I)I

    move-result p1

    .line 1165
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const/4 v4, 0x1

    :cond_0
    if-nez v4, :cond_1

    .line 1172
    sget-object p1, Lcom/google/android/material/a$l;->MaterialTextView:[I

    .line 1173
    invoke-virtual {v0, p2, p1, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1175
    sget p2, Lcom/google/android/material/a$l;->MaterialTextView_android_textAppearance:I

    .line 1176
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 1177
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eq p2, v1, :cond_1

    .line 103
    invoke-direct {p0, v0, p2}, Lcom/google/android/material/textview/MaterialTextView;->a(Landroid/content/res/Resources$Theme;I)V

    :cond_1
    return-void
.end method

.method private static varargs a(Landroid/content/Context;Landroid/content/res/TypedArray;[I)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    if-gez v2, :cond_0

    .line 144
    aget v2, p2, v1

    invoke-static {p0, p1, v2, v0}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private a(Landroid/content/res/Resources$Theme;I)V
    .locals 3

    .line 119
    sget-object v0, Lcom/google/android/material/a$l;->MaterialTextAppearance:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 122
    invoke-virtual {p0}, Lcom/google/android/material/textview/MaterialTextView;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [I

    sget v1, Lcom/google/android/material/a$l;->MaterialTextAppearance_android_lineHeight:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/google/android/material/a$l;->MaterialTextAppearance_lineHeight:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 121
    invoke-static {p2, p1, v0}, Lcom/google/android/material/textview/MaterialTextView;->a(Landroid/content/Context;Landroid/content/res/TypedArray;[I)I

    move-result p2

    .line 126
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-ltz p2, :cond_0

    .line 129
    invoke-virtual {p0, p2}, Lcom/google/android/material/textview/MaterialTextView;->setLineHeight(I)V

    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 2

    .line 134
    sget v0, Lcom/google/android/material/a$b;->textAppearanceLineHeightEnabled:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/material/h/b;->a(Landroid/content/Context;IZ)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .line 111
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 113
    invoke-static {p1}, Lcom/google/android/material/textview/MaterialTextView;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->a(Landroid/content/res/Resources$Theme;I)V

    :cond_0
    return-void
.end method
