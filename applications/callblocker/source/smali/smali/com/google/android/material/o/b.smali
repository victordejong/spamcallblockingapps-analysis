.class public Lcom/google/android/material/o/b;
.super Ljava/lang/Object;
.source "RippleUtils.java"


# static fields
.field public static final a:Z

.field static final b:Ljava/lang/String;

.field private static final c:[I

.field private static final d:[I

.field private static final e:[I

.field private static final f:[I

.field private static final g:[I

.field private static final h:[I

.field private static final i:[I

.field private static final j:[I

.field private static final k:[I

.field private static final l:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/google/android/material/o/b;->a:Z

    .line 44
    new-array v0, v1, [I

    const v3, 0x10100a7

    aput v3, v0, v2

    sput-object v0, Lcom/google/android/material/o/b;->c:[I

    .line 47
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/material/o/b;->d:[I

    .line 50
    new-array v0, v1, [I

    const v3, 0x101009c

    aput v3, v0, v2

    sput-object v0, Lcom/google/android/material/o/b;->e:[I

    .line 53
    new-array v0, v1, [I

    const v3, 0x1010367

    aput v3, v0, v2

    sput-object v0, Lcom/google/android/material/o/b;->f:[I

    .line 57
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/material/o/b;->g:[I

    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/material/o/b;->h:[I

    .line 63
    new-array v0, v4, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/material/o/b;->i:[I

    .line 66
    new-array v0, v4, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/material/o/b;->j:[I

    .line 69
    new-array v0, v1, [I

    const v1, 0x10100a1

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/o/b;->k:[I

    .line 73
    new-array v0, v4, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/android/material/o/b;->l:[I

    .line 77
    const-class v0, Lcom/google/android/material/o/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/o/b;->b:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 42
    goto :goto_0

    .line 47
    :array_0
    .array-data 4
        0x1010367
        0x101009c
    .end array-data

    .line 57
    :array_1
    .array-data 4
        0x10100a1
        0x10100a7
    .end array-data

    .line 60
    :array_2
    .array-data 4
        0x10100a1
        0x1010367
        0x101009c
    .end array-data

    .line 63
    :array_3
    .array-data 4
        0x10100a1
        0x101009c
    .end array-data

    .line 66
    :array_4
    .array-data 4
        0x10100a1
        0x1010367
    .end array-data

    .line 73
    :array_5
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 256
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0xff

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 257
    invoke-static {p0, v0}, Landroidx/core/graphics/a;->b(II)I

    move-result v0

    return v0
.end method

.method private static a(Landroid/content/res/ColorStateList;[I)I
    .locals 2

    .prologue
    .line 241
    if-eqz p0, :cond_1

    .line 242
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 246
    :goto_0
    sget-boolean v1, Lcom/google/android/material/o/b;->a:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/material/o/b;->a(I)I

    move-result v0

    :cond_0
    return v0

    .line 244
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 112
    sget-boolean v0, Lcom/google/android/material/o/b;->a:Z

    if-eqz v0, :cond_0

    .line 115
    new-array v1, v5, [[I

    .line 116
    new-array v2, v5, [I

    .line 125
    sget-object v0, Lcom/google/android/material/o/b;->k:[I

    aput-object v0, v1, v4

    .line 126
    sget-object v0, Lcom/google/android/material/o/b;->g:[I

    invoke-static {p0, v0}, Lcom/google/android/material/o/b;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v0

    aput v0, v2, v4

    .line 130
    sget-object v0, Landroid/util/StateSet;->NOTHING:[I

    aput-object v0, v1, v3

    .line 131
    sget-object v0, Lcom/google/android/material/o/b;->c:[I

    invoke-static {p0, v0}, Lcom/google/android/material/o/b;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v0

    aput v0, v2, v3

    .line 134
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 184
    :goto_0
    return-object v0

    .line 136
    :cond_0
    const/16 v0, 0xa

    .line 138
    new-array v1, v0, [[I

    .line 139
    new-array v2, v0, [I

    .line 142
    sget-object v0, Lcom/google/android/material/o/b;->g:[I

    aput-object v0, v1, v4

    .line 143
    sget-object v0, Lcom/google/android/material/o/b;->g:[I

    invoke-static {p0, v0}, Lcom/google/android/material/o/b;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v0

    aput v0, v2, v4

    .line 146
    sget-object v0, Lcom/google/android/material/o/b;->h:[I

    aput-object v0, v1, v3

    .line 147
    sget-object v0, Lcom/google/android/material/o/b;->h:[I

    invoke-static {p0, v0}, Lcom/google/android/material/o/b;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v0

    aput v0, v2, v3

    .line 150
    sget-object v0, Lcom/google/android/material/o/b;->i:[I

    aput-object v0, v1, v5

    .line 151
    sget-object v0, Lcom/google/android/material/o/b;->i:[I

    invoke-static {p0, v0}, Lcom/google/android/material/o/b;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v0

    aput v0, v2, v5

    .line 152
    const/4 v0, 0x3

    .line 154
    sget-object v3, Lcom/google/android/material/o/b;->j:[I

    aput-object v3, v1, v0

    .line 155
    sget-object v3, Lcom/google/android/material/o/b;->j:[I

    invoke-static {p0, v3}, Lcom/google/android/material/o/b;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v3

    aput v3, v2, v0

    .line 156
    const/4 v0, 0x4

    .line 159
    sget-object v3, Lcom/google/android/material/o/b;->k:[I

    aput-object v3, v1, v0

    .line 160
    aput v4, v2, v0

    .line 161
    const/4 v0, 0x5

    .line 163
    sget-object v3, Lcom/google/android/material/o/b;->c:[I

    aput-object v3, v1, v0

    .line 164
    sget-object v3, Lcom/google/android/material/o/b;->c:[I

    invoke-static {p0, v3}, Lcom/google/android/material/o/b;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v3

    aput v3, v2, v0

    .line 165
    const/4 v0, 0x6

    .line 167
    sget-object v3, Lcom/google/android/material/o/b;->d:[I

    aput-object v3, v1, v0

    .line 168
    sget-object v3, Lcom/google/android/material/o/b;->d:[I

    invoke-static {p0, v3}, Lcom/google/android/material/o/b;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v3

    aput v3, v2, v0

    .line 169
    const/4 v0, 0x7

    .line 171
    sget-object v3, Lcom/google/android/material/o/b;->e:[I

    aput-object v3, v1, v0

    .line 172
    sget-object v3, Lcom/google/android/material/o/b;->e:[I

    invoke-static {p0, v3}, Lcom/google/android/material/o/b;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v3

    aput v3, v2, v0

    .line 173
    const/16 v0, 0x8

    .line 175
    sget-object v3, Lcom/google/android/material/o/b;->f:[I

    aput-object v3, v1, v0

    .line 176
    sget-object v3, Lcom/google/android/material/o/b;->f:[I

    invoke-static {p0, v3}, Lcom/google/android/material/o/b;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v3

    aput v3, v2, v0

    .line 177
    const/16 v0, 0x9

    .line 180
    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    aput-object v3, v1, v0

    .line 181
    aput v4, v2, v0

    .line 184
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto/16 :goto_0
.end method

.method public static a([I)Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 221
    .line 224
    array-length v5, p0

    move v4, v3

    move v0, v3

    move v2, v3

    :goto_0
    if-ge v4, v5, :cond_4

    aget v6, p0, v4

    .line 225
    const v7, 0x101009e

    if-ne v6, v7, :cond_1

    move v2, v1

    .line 224
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 227
    :cond_1
    const v7, 0x101009c

    if-ne v6, v7, :cond_2

    move v0, v1

    .line 228
    goto :goto_1

    .line 229
    :cond_2
    const v7, 0x10100a7

    if-ne v6, v7, :cond_3

    move v0, v1

    .line 230
    goto :goto_1

    .line 231
    :cond_3
    const v7, 0x1010367

    if-ne v6, v7, :cond_0

    move v0, v1

    .line 232
    goto :goto_1

    .line 235
    :cond_4
    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    :goto_2
    return v1

    :cond_5
    move v1, v3

    goto :goto_2
.end method

.method public static b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 203
    if-eqz p0, :cond_1

    .line 204
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-gt v0, v1, :cond_0

    .line 206
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/material/o/b;->l:[I

    .line 207
    invoke-virtual {p0, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    sget-object v0, Lcom/google/android/material/o/b;->b:Ljava/lang/String;

    const-string/jumbo v1, "Use a non-transparent color for the default color as it will be used to finish ripple animations."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0
.end method
