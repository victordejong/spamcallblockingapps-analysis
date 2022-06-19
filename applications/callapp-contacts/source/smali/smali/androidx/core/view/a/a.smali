.class public final Landroidx/core/view/a/a;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Landroidx/core/view/a/c;

.field private final c:I


# direct methods
.method public constructor <init>(ILandroidx/core/view/a/c;I)V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 56
    iput p1, p0, Landroidx/core/view/a/a;->a:I

    .line 57
    iput-object p2, p0, Landroidx/core/view/a/a;->b:Landroidx/core/view/a/c;

    .line 58
    iput p3, p0, Landroidx/core/view/a/a;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 69
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 70
    iget v0, p0, Landroidx/core/view/a/a;->a:I

    const-string v1, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    iget-object v0, p0, Landroidx/core/view/a/a;->b:Landroidx/core/view/a/c;

    iget v1, p0, Landroidx/core/view/a/a;->c:I

    .line 3029
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 3030
    iget-object v0, v0, Landroidx/core/view/a/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    :cond_0
    return-void
.end method
