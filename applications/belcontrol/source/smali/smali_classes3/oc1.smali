.class public Loc1;
.super Lid1;
.source ""


# direct methods
.method public constructor <init>(Lhc1;)V
    .locals 0

    invoke-direct {p0}, Lid1;-><init>()V

    iput-object p1, p0, Lgc1;->a:Lhc1;

    return-void
.end method


# virtual methods
.method public c(Lhd1;)F
    .locals 2

    invoke-virtual {p1}, Lhd1;->g()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lhd1;->e()F

    move-result v0

    invoke-virtual {p1}, Lhd1;->g()F

    move-result p1

    div-float p1, v0, p1

    :goto_0
    invoke-static {p1}, Lpc1;->a(F)F

    move-result p1

    return p1
.end method
