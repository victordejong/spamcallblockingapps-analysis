.class public Luc1;
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
    .locals 2

    invoke-virtual {p1}, Lhd1;->g()F

    move-result v0

    invoke-virtual {p1}, Lhd1;->b()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr v0, p1

    invoke-static {v0}, Lvc1;->a(F)F

    move-result p1

    return p1
.end method
