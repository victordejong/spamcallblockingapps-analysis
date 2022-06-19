.class public Lpw$a$e$b;
.super Landroid/view/ViewGroup$LayoutParams;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpw$a$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F


# direct methods
.method public constructor <init>(Lpw$a$e;FFFF)V
    .locals 0

    const/4 p1, -0x1

    invoke-direct {p0, p1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput p2, p0, Lpw$a$e$b;->a:F

    iput p3, p0, Lpw$a$e$b;->b:F

    iput p4, p0, Lpw$a$e$b;->c:F

    iput p5, p0, Lpw$a$e$b;->d:F

    return-void
.end method

.method public constructor <init>(Lpw$a$e;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    const/4 p1, -0x1

    invoke-direct {p0, p1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-void
.end method
