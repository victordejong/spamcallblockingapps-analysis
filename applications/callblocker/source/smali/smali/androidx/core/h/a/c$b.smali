.class public Landroidx/core/h/a/c$b;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/h/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 702
    iput-object p1, p0, Landroidx/core/h/a/c$b;->a:Ljava/lang/Object;

    .line 703
    return-void
.end method

.method public static a(IIZI)Landroidx/core/h/a/c$b;
    .locals 2

    .prologue
    .line 671
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 672
    new-instance v0, Landroidx/core/h/a/c$b;

    invoke-static {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/h/a/c$b;-><init>(Ljava/lang/Object;)V

    .line 678
    :goto_0
    return-object v0

    .line 674
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 675
    new-instance v0, Landroidx/core/h/a/c$b;

    invoke-static {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/h/a/c$b;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 678
    :cond_1
    new-instance v0, Landroidx/core/h/a/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/core/h/a/c$b;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method
