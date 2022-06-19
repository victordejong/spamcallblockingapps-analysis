.class public Lhd1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lwc1;",
            ">;"
        }
    .end annotation
.end field

.field public b:J

.field public c:J

.field public d:F

.field public final e:F


# direct methods
.method public constructor <init>(JF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhd1;->a:Ljava/util/ArrayList;

    iput p3, p0, Lhd1;->e:F

    iput-wide p1, p0, Lhd1;->c:J

    iput-wide p1, p0, Lhd1;->b:J

    return-void
.end method


# virtual methods
.method public a(FFJ)V
    .locals 3

    iput-wide p3, p0, Lhd1;->c:J

    new-instance v0, Lwc1;

    iget v1, p0, Lhd1;->e:F

    div-float/2addr p1, v1

    div-float/2addr p2, v1

    iget-wide v1, p0, Lhd1;->b:J

    sub-long/2addr p3, v1

    invoke-direct {v0, p1, p2, p3, p4}, Lwc1;-><init>(FFJ)V

    iget-object p1, p0, Lhd1;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lhd1;->d:F

    iget-object p2, p0, Lhd1;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lwc1;

    invoke-virtual {p2, v0}, Lwc1;->b(Lwc1;)F

    move-result p2

    add-float/2addr p1, p2

    iput p1, p0, Lhd1;->d:F

    :cond_0
    iget-object p1, p0, Lhd1;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lhd1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public c()J
    .locals 4

    iget-wide v0, p0, Lhd1;->c:J

    iget-wide v2, p0, Lhd1;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public d()F
    .locals 2

    invoke-virtual {p0}, Lhd1;->c()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    return v0
.end method

.method public e()F
    .locals 3

    iget-object v0, p0, Lhd1;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwc1;

    iget-object v1, p0, Lhd1;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwc1;

    invoke-virtual {v0, v1}, Lwc1;->b(Lwc1;)F

    move-result v0

    return v0
.end method

.method public f()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lwc1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lhd1;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public g()F
    .locals 1

    iget v0, p0, Lhd1;->d:F

    return v0
.end method
