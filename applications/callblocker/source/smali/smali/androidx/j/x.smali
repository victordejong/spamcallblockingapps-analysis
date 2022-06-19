.class Landroidx/j/x;
.super Ljava/lang/Object;
.source "ViewGroupUtils.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/j/x;->a:Z

    return-void
.end method

.method static a(Landroid/view/ViewGroup;)Landroidx/j/w;
    .locals 2

    .prologue
    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 47
    new-instance v0, Landroidx/j/v;

    invoke-direct {v0, p0}, Landroidx/j/v;-><init>(Landroid/view/ViewGroup;)V

    .line 49
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroidx/j/u;->a(Landroid/view/ViewGroup;)Landroidx/j/u;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Landroid/view/ViewGroup;Z)V
    .locals 2

    .prologue
    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 57
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 63
    :goto_0
    return-void

    .line 58
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 59
    invoke-static {p0, p1}, Landroidx/j/x;->b(Landroid/view/ViewGroup;Z)V

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {p0, p1}, Landroidx/j/y;->a(Landroid/view/ViewGroup;Z)V

    goto :goto_0
.end method

.method private static b(Landroid/view/ViewGroup;Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 68
    sget-boolean v0, Landroidx/j/x;->a:Z

    if-eqz v0, :cond_0

    .line 72
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->suppressLayout(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/j/x;->a:Z

    goto :goto_0
.end method
