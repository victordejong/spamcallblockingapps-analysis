.class Landroidx/core/h/a/d$b;
.super Landroidx/core/h/a/d$a;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/h/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Landroidx/core/h/a/d;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroidx/core/h/a/d$a;-><init>(Landroidx/core/h/a/d;)V

    .line 81
    return-void
.end method


# virtual methods
.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Landroidx/core/h/a/d$b;->a:Landroidx/core/h/a/d;

    invoke-virtual {v0, p1}, Landroidx/core/h/a/d;->b(I)Landroidx/core/h/a/c;

    move-result-object v0

    .line 86
    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroidx/core/h/a/c;->a()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_0
.end method
