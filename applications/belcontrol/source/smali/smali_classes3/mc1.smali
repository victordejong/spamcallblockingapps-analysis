.class public Lmc1;
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
    .locals 0

    invoke-virtual {p1}, Lhd1;->e()F

    move-result p1

    invoke-static {p1}, Lnc1;->a(F)F

    move-result p1

    return p1
.end method
