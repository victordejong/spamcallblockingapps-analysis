.class public Luc0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/View;)I
    .locals 2

    instance-of v0, p1, Lud0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lud0;

    invoke-interface {p1}, Lud0;->getElevation()F

    move-result v0

    invoke-interface {p1}, Lud0;->getTranslationZ()F

    move-result p1

    add-float/2addr v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    instance-of p1, p2, Lud0;

    if-eqz p1, :cond_1

    check-cast p2, Lud0;

    invoke-interface {p2}, Lud0;->getElevation()F

    move-result p1

    invoke-interface {p2}, Lud0;->getTranslationZ()F

    move-result p2

    add-float v1, p1, p2

    :cond_1
    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Luc0;->a(Landroid/view/View;Landroid/view/View;)I

    move-result p1

    return p1
.end method
