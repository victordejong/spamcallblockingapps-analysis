.class final Landroidx/core/view/a/d$b;
.super Landroidx/core/view/a/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Landroidx/core/view/a/d;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Landroidx/core/view/a/d$a;-><init>(Landroidx/core/view/a/d;)V

    return-void
.end method


# virtual methods
.method public final findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 85
    iget-object v0, p0, Landroidx/core/view/a/d$b;->a:Landroidx/core/view/a/d;

    invoke-virtual {v0, p1}, Landroidx/core/view/a/d;->b(I)Landroidx/core/view/a/c;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2655
    :cond_0
    iget-object p1, p1, Landroidx/core/view/a/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p1
.end method
