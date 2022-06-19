.class public final Lcom/google/android/material/internal/i;
.super Ljava/lang/Object;
.source "ThemeEnforcement.java"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-array v0, v3, [I

    sget v1, Lcom/google/android/material/a$b;->colorPrimary:I

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/internal/i;->a:[I

    .line 47
    new-array v0, v3, [I

    sget v1, Lcom/google/android/material/a$b;->colorPrimaryVariant:I

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/internal/i;->b:[I

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/high16 v1, 0x1010000

    aput v1, v0, v2

    sget v1, Lcom/google/android/material/a$b;->theme:I

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/material/internal/i;->c:[I

    .line 52
    new-array v0, v3, [I

    sget v1, Lcom/google/android/material/a$b;->materialThemeOverlay:I

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/internal/i;->d:[I

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/util/AttributeSet;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 294
    sget-object v0, Lcom/google/android/material/internal/i;->c:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 295
    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 296
    const/4 v1, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 297
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 298
    if-eqz v0, :cond_0

    .line 301
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;
    .locals 2

    .prologue
    .line 268
    .line 269
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/internal/i;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result v1

    .line 270
    if-eqz v1, :cond_1

    instance-of v0, p0, Landroidx/appcompat/view/d;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroidx/appcompat/view/d;

    .line 272
    invoke-virtual {v0}, Landroidx/appcompat/view/d;->a()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 275
    :cond_0
    new-instance v0, Landroidx/appcompat/view/d;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/view/d;-><init>(Landroid/content/Context;I)V

    .line 279
    invoke-static {v0, p1}, Lcom/google/android/material/internal/i;->a(Landroid/content/Context;Landroid/util/AttributeSet;)I

    move-result v1

    .line 280
    if-eqz v1, :cond_2

    .line 281
    new-instance p0, Landroidx/appcompat/view/d;

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/view/d;-><init>(Landroid/content/Context;I)V

    .line 284
    :cond_1
    :goto_0
    return-object p0

    :cond_2
    move-object p0, v0

    goto :goto_0
.end method

.method public static varargs a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;
    .locals 1

    .prologue
    .line 81
    invoke-static {p0, p1, p3, p4}, Lcom/google/android/material/internal/i;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 84
    invoke-static/range {p0 .. p5}, Lcom/google/android/material/internal/i;->c(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 87
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 218
    sget-object v0, Lcom/google/android/material/internal/i;->a:[I

    const-string/jumbo v1, "Theme.AppCompat"

    invoke-static {p0, v0, v1}, Lcom/google/android/material/internal/i;->a(Landroid/content/Context;[ILjava/lang/String;)V

    .line 219
    return-void
.end method

.method private static a(Landroid/content/Context;[ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 247
    invoke-static {p0, p1}, Lcom/google/android/material/internal/i;->a(Landroid/content/Context;[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The style on this component requires your app theme to be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (or a descendant)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;[I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 234
    invoke-virtual {p0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    move v0, v1

    .line 235
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 236
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 237
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 242
    :goto_1
    return v1

    .line 235
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 242
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static varargs b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/ap;
    .locals 1

    .prologue
    .line 120
    invoke-static {p0, p1, p3, p4}, Lcom/google/android/material/internal/i;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 123
    invoke-static/range {p0 .. p5}, Lcom/google/android/material/internal/i;->c(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 126
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/ap;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/ap;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 222
    sget-object v0, Lcom/google/android/material/internal/i;->b:[I

    const-string/jumbo v1, "Theme.MaterialComponents"

    invoke-static {p0, v0, v1}, Lcom/google/android/material/internal/i;->a(Landroid/content/Context;[ILjava/lang/String;)V

    .line 223
    return-void
.end method

.method private static b(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .prologue
    .line 134
    sget-object v0, Lcom/google/android/material/a$l;->ThemeEnforcement:[I

    .line 135
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 137
    sget v1, Lcom/google/android/material/a$l;->ThemeEnforcement_enforceMaterialTheme:I

    const/4 v2, 0x0

    .line 138
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 139
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    if-eqz v1, :cond_1

    .line 142
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/google/android/material/a$b;->isMaterialTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    .line 146
    if-eqz v1, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    iget v0, v0, Landroid/util/TypedValue;->data:I

    if-nez v0, :cond_1

    .line 150
    :cond_0
    invoke-static {p0}, Lcom/google/android/material/internal/i;->b(Landroid/content/Context;)V

    .line 153
    :cond_1
    invoke-static {p0}, Lcom/google/android/material/internal/i;->a(Landroid/content/Context;)V

    .line 154
    return-void
.end method

.method private static c(Landroid/content/Context;Landroid/util/AttributeSet;II)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 315
    sget-object v0, Lcom/google/android/material/internal/i;->d:[I

    .line 316
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 318
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 319
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 320
    return v1
.end method

.method private static varargs c(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 163
    sget-object v1, Lcom/google/android/material/a$l;->ThemeEnforcement:[I

    .line 164
    invoke-virtual {p0, p1, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 166
    sget v2, Lcom/google/android/material/a$l;->ThemeEnforcement_enforceTextAppearance:I

    .line 167
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 169
    if-nez v2, :cond_1

    .line 170
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 196
    :cond_0
    return-void

    .line 176
    :cond_1
    if-eqz p5, :cond_2

    array-length v2, p5

    if-nez v2, :cond_4

    .line 178
    :cond_2
    sget v2, Lcom/google/android/material/a$l;->ThemeEnforcement_android_textAppearance:I

    .line 179
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eq v2, v3, :cond_3

    const/4 v0, 0x1

    .line 189
    :cond_3
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 191
    if-nez v0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_4
    invoke-static/range {p0 .. p5}, Lcom/google/android/material/internal/i;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Z

    move-result v0

    goto :goto_0
.end method

.method private static varargs d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x1

    .line 205
    .line 206
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 207
    array-length v3, p5

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget v4, p5, v1

    .line 208
    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 209
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 214
    :goto_1
    return v0

    .line 207
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 214
    const/4 v0, 0x1

    goto :goto_1
.end method
