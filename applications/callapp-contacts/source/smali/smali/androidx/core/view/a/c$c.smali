.class public final Landroidx/core/view/a/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/a/c;
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

    .line 888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 889
    iput-object p1, p0, Landroidx/core/view/a/c$c;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(IIIIZ)Landroidx/core/view/a/c$c;
    .locals 7

    .line 855
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 856
    new-instance v0, Landroidx/core/view/a/c$c;

    const/4 v5, 0x0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/core/view/a/c$c;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 858
    :cond_0
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p4, v0, :cond_1

    .line 859
    new-instance p4, Landroidx/core/view/a/c$c;

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p0

    invoke-direct {p4, p0}, Landroidx/core/view/a/c$c;-><init>(Ljava/lang/Object;)V

    return-object p4

    .line 862
    :cond_1
    new-instance p0, Landroidx/core/view/a/c$c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/core/view/a/c$c;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
