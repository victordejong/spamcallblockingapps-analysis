.class public final Lcom/google/android/material/theme/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[I

.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/high16 v1, 0x1010000

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 48
    sget v1, Lcom/google/android/material/a$b;->theme:I

    const/4 v3, 0x1

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/material/theme/a/a;->a:[I

    new-array v0, v3, [I

    .line 51
    sget v1, Lcom/google/android/material/a$b;->materialThemeOverlay:I

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/theme/a/a;->b:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;
    .locals 2

    .line 1112
    sget-object v0, Lcom/google/android/material/theme/a/a;->b:[I

    .line 1113
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x0

    .line 1115
    invoke-virtual {p2, p3, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 1116
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    instance-of p2, p0, Landroidx/appcompat/view/d;

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move-object p2, p0

    check-cast p2, Landroidx/appcompat/view/d;

    .line 1142
    iget p2, p2, Landroidx/appcompat/view/d;->a:I

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz v0, :cond_4

    if-eqz p2, :cond_1

    goto :goto_2

    .line 75
    :cond_1
    new-instance p2, Landroidx/appcompat/view/d;

    invoke-direct {p2, p0, v0}, Landroidx/appcompat/view/d;-><init>(Landroid/content/Context;I)V

    .line 2094
    sget-object v0, Lcom/google/android/material/theme/a/a;->a:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 2095
    invoke-virtual {p0, p3, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 2096
    invoke-virtual {p0, v1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 2097
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move p1, p3

    :goto_1
    if-eqz p1, :cond_3

    .line 81
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_3
    return-object p2

    :cond_4
    :goto_2
    return-object p0
.end method
