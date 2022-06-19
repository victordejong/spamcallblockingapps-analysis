.class public Ldd1;
.super Lid1;
.source ""


# direct methods
.method public constructor <init>(Lhc1;)V
    .locals 0

    invoke-direct {p0}, Lid1;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lhd1;)F
    .locals 3

    invoke-virtual {p1}, Lhd1;->d()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    invoke-static {v1}, Led1;->a(F)F

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Lhd1;->g()F

    move-result p1

    div-float/2addr p1, v0

    invoke-static {p1}, Led1;->a(F)F

    move-result p1

    return p1
.end method
