.class Landroidx/j/ad;
.super Landroidx/j/ai;
.source "ViewUtilsApi19.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/j/ad;->a:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroidx/j/ai;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)F
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 52
    sget-boolean v0, Landroidx/j/ad;->a:Z

    if-eqz v0, :cond_0

    .line 56
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTransitionAlpha()F
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 61
    :goto_0
    return v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/j/ad;->a:Z

    .line 61
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/view/View;F)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 36
    sget-boolean v0, Landroidx/j/ad;->a:Z

    if-eqz v0, :cond_0

    .line 40
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionAlpha(F)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/j/ad;->a:Z

    .line 46
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 72
    return-void
.end method
