.class public final Lwb1$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwb1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lwb1$d;->a:F

    iput p2, p0, Lwb1$d;->b:F

    iput p3, p0, Lwb1$d;->c:F

    return-void
.end method

.method public synthetic constructor <init>(FFFLwb1$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lwb1$d;-><init>(FFF)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    iget v0, p0, Lwb1$d;->a:F

    mul-float p1, p1, v0

    iget v0, p0, Lwb1$d;->b:F

    mul-float p1, p1, v0

    iget v0, p0, Lwb1$d;->c:F

    div-float/2addr p1, v0

    return p1
.end method
