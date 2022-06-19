.class public Lic1;
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

    invoke-virtual {p1}, Lhd1;->f()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwc1;

    invoke-virtual {p1}, Lhd1;->f()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Lhd1;->f()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwc1;

    iget v1, p1, Lwc1;->a:F

    iget v2, v0, Lwc1;->a:F

    sub-float/2addr v1, v2

    iget p1, p1, Lwc1;->b:F

    iget v0, v0, Lwc1;->b:F

    sub-float/2addr p1, v0

    invoke-static {v1, p1}, Ljc1;->a(FF)F

    move-result p1

    return p1
.end method
