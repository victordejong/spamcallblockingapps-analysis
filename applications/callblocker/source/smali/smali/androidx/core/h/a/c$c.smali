.class public Landroidx/core/h/a/c$c;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/h/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 826
    iput-object p1, p0, Landroidx/core/h/a/c$c;->a:Ljava/lang/Object;

    .line 827
    return-void
.end method

.method public static a(IIIIZZ)Landroidx/core/h/a/c$c;
    .locals 2

    .prologue
    .line 792
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 793
    new-instance v0, Landroidx/core/h/a/c$c;

    invoke-static/range {p0 .. p5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/h/a/c$c;-><init>(Ljava/lang/Object;)V

    .line 799
    :goto_0
    return-object v0

    .line 795
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 796
    new-instance v0, Landroidx/core/h/a/c$c;

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/h/a/c$c;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 799
    :cond_1
    new-instance v0, Landroidx/core/h/a/c$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/core/h/a/c$c;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method
