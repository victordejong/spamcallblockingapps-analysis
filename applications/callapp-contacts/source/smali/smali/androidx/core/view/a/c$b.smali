.class public final Landroidx/core/view/a/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 765
    iput-object p1, p0, Landroidx/core/view/a/c$b;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(IIZI)Landroidx/core/view/a/c$b;
    .locals 2

    .line 734
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x15

    if-lt p2, v1, :cond_0

    .line 735
    new-instance p2, Landroidx/core/view/a/c$b;

    invoke-static {p0, p1, v0, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p0

    invoke-direct {p2, p0}, Landroidx/core/view/a/c$b;-><init>(Ljava/lang/Object;)V

    return-object p2

    .line 737
    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x13

    if-lt p2, p3, :cond_1

    .line 738
    new-instance p2, Landroidx/core/view/a/c$b;

    invoke-static {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p0

    invoke-direct {p2, p0}, Landroidx/core/view/a/c$b;-><init>(Ljava/lang/Object;)V

    return-object p2

    .line 741
    :cond_1
    new-instance p0, Landroidx/core/view/a/c$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/core/view/a/c$b;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
