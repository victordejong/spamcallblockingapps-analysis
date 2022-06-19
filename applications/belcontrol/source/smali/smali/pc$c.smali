.class public Lpc$c;
.super Lvb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic b:Lpc;


# direct methods
.method public constructor <init>(Lpc;)V
    .locals 0

    iput-object p1, p0, Lpc$c;->b:Lpc;

    invoke-direct {p0}, Lvb;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lub;
    .locals 1

    iget-object v0, p0, Lpc$c;->b:Lpc;

    invoke-virtual {v0, p1}, Lpc;->obtainAccessibilityNodeInfo(I)Lub;

    move-result-object p1

    invoke-static {p1}, Lub;->Q(Lub;)Lub;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lub;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lpc$c;->b:Lpc;

    iget p1, p1, Lpc;->mAccessibilityFocusedVirtualViewId:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lpc$c;->b:Lpc;

    iget p1, p1, Lpc;->mKeyboardFocusedVirtualViewId:I

    :goto_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {p0, p1}, Lpc$c;->a(I)Lub;

    move-result-object p1

    return-object p1
.end method

.method public e(IILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Lpc$c;->b:Lpc;

    invoke-virtual {v0, p1, p2, p3}, Lpc;->performAction(IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
