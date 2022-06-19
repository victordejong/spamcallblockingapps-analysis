.class Landroidx/j/ae;
.super Landroidx/j/ad;
.source "ViewUtilsApi21.java"


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 33
    sput-boolean v0, Landroidx/j/ae;->a:Z

    .line 37
    sput-boolean v0, Landroidx/j/ae;->b:Z

    .line 41
    sput-boolean v0, Landroidx/j/ae;->c:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroidx/j/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 46
    sget-boolean v0, Landroidx/j/ae;->b:Z

    if-eqz v0, :cond_0

    .line 50
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/j/ae;->b:Z

    goto :goto_0
.end method

.method public b(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 60
    sget-boolean v0, Landroidx/j/ae;->c:Z

    if-eqz v0, :cond_0

    .line 64
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/View;->transformMatrixToLocal(Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/j/ae;->c:Z

    goto :goto_0
.end method
