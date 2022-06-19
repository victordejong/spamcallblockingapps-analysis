.class public Lkc1;
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
    .locals 1

    invoke-virtual {p1}, Lhd1;->d()F

    move-result v0

    invoke-virtual {p1}, Lhd1;->b()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-static {v0}, Llc1;->a(F)F

    move-result p1

    return p1
.end method
