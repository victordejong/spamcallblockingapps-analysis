.class public final Landroidx/core/h/a/a;
.super Landroid/text/style/ClickableSpan;
.source "AccessibilityClickableSpanCompat.java"


# instance fields
.field private final a:I

.field private final b:Landroidx/core/h/a/c;

.field private final c:I


# direct methods
.method public constructor <init>(ILandroidx/core/h/a/c;I)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 55
    iput p1, p0, Landroidx/core/h/a/a;->a:I

    .line 56
    iput-object p2, p0, Landroidx/core/h/a/a;->b:Landroidx/core/h/a/c;

    .line 57
    iput p3, p0, Landroidx/core/h/a/a;->c:I

    .line 58
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 69
    const-string/jumbo v1, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    iget v2, p0, Landroidx/core/h/a/a;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    iget-object v1, p0, Landroidx/core/h/a/a;->b:Landroidx/core/h/a/c;

    iget v2, p0, Landroidx/core/h/a/a;->c:I

    invoke-virtual {v1, v2, v0}, Landroidx/core/h/a/c;->a(ILandroid/os/Bundle;)Z

    .line 71
    return-void
.end method
