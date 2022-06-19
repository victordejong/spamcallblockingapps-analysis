.class Landroidx/j/ag;
.super Landroidx/j/af;
.source "ViewUtilsApi23.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/j/ag;->a:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroidx/j/af;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1

    .line 39
    invoke-super {p0, p1, p2}, Landroidx/j/af;->a(Landroid/view/View;I)V

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    sget-boolean v0, Landroidx/j/ag;->a:Z

    if-eqz v0, :cond_0

    .line 45
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/j/ag;->a:Z

    goto :goto_0
.end method
