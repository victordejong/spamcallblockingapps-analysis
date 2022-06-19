.class public Lcc1$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcc1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lwc1;

.field public b:F

.field public c:F


# direct methods
.method public constructor <init>(Lwc1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcc1$a;->b:F

    iput v0, p0, Lcc1$a;->c:F

    iput-object p1, p0, Lcc1$a;->a:Lwc1;

    return-void
.end method


# virtual methods
.method public a(Lwc1;)V
    .locals 5

    iget-object v0, p0, Lcc1$a;->a:Lwc1;

    invoke-virtual {v0, p1}, Lwc1;->b(Lwc1;)F

    move-result v0

    iget-wide v1, p1, Lwc1;->c:J

    iget-object v3, p0, Lcc1$a;->a:Lwc1;

    iget-wide v3, v3, Lwc1;->c:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v2, 0x0

    const v3, 0x4b989680    # 2.0E7f

    cmpl-float v3, v1, v3

    if-gtz v3, :cond_2

    const v3, 0x4a989680    # 5000000.0f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, Lcc1$a;->b:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcc1$a;->c:F

    div-float v1, v0, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcc1$a;->c:F

    :cond_1
    iput v0, p0, Lcc1$a;->b:F

    :goto_0
    iput-object p1, p0, Lcc1$a;->a:Lwc1;

    return-void

    :cond_2
    :goto_1
    iput v2, p0, Lcc1$a;->b:F

    goto :goto_0
.end method
