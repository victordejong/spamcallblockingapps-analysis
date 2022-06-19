.class public Lcom/callerid/block/a/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:J

.field private b:J

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/callerid/block/a/a;->c:Z

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/callerid/block/a/a;->a:J

    return-wide v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/callerid/block/a/a;->b:J

    return-wide v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/callerid/block/a/a;->d:I

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/callerid/block/a/a;->c:Z

    return v0
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/callerid/block/a/a;->c:Z

    return-void
.end method

.method public f(J)V
    .locals 0

    iput-wide p1, p0, Lcom/callerid/block/a/a;->a:J

    return-void
.end method

.method public g(J)V
    .locals 0

    iput-wide p1, p0, Lcom/callerid/block/a/a;->b:J

    return-void
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Lcom/callerid/block/a/a;->d:I

    return-void
.end method
