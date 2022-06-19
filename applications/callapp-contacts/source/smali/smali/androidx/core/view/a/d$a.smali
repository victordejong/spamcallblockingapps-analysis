.class Landroidx/core/view/a/d$a;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Landroidx/core/view/a/d;


# direct methods
.method constructor <init>(Landroidx/core/view/a/d;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 39
    iput-object p1, p0, Landroidx/core/view/a/d$a;->a:Landroidx/core/view/a/d;

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 44
    iget-object v0, p0, Landroidx/core/view/a/d$a;->a:Landroidx/core/view/a/d;

    .line 45
    invoke-virtual {v0, p1}, Landroidx/core/view/a/d;->a(I)Landroidx/core/view/a/c;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2655
    :cond_0
    iget-object p1, p1, Landroidx/core/view/a/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p1
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1

    .line 73
    iget-object v0, p0, Landroidx/core/view/a/d$a;->a:Landroidx/core/view/a/d;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/a/d;->a(IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
