.class public final Lgn$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lum;

.field public final b:Lju;

.field public final c:Lxt;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:I

.field public h:J


# direct methods
.method public constructor <init>(Lum;Lju;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgn$a;->a:Lum;

    iput-object p2, p0, Lgn$a;->b:Lju;

    new-instance p1, Lxt;

    const/16 p2, 0x40

    new-array p2, p2, [B

    invoke-direct {p1, p2}, Lxt;-><init>([B)V

    iput-object p1, p0, Lgn$a;->c:Lxt;

    return-void
.end method


# virtual methods
.method public a(Lyt;)V
    .locals 4

    iget-object v0, p0, Lgn$a;->c:Lxt;

    iget-object v0, v0, Lxt;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lyt;->f([BII)V

    iget-object v0, p0, Lgn$a;->c:Lxt;

    invoke-virtual {v0, v1}, Lxt;->l(I)V

    invoke-virtual {p0}, Lgn$a;->b()V

    iget-object v0, p0, Lgn$a;->c:Lxt;

    iget-object v0, v0, Lxt;->a:[B

    iget v2, p0, Lgn$a;->g:I

    invoke-virtual {p1, v0, v1, v2}, Lyt;->f([BII)V

    iget-object v0, p0, Lgn$a;->c:Lxt;

    invoke-virtual {v0, v1}, Lxt;->l(I)V

    invoke-virtual {p0}, Lgn$a;->c()V

    iget-object v0, p0, Lgn$a;->a:Lum;

    iget-wide v1, p0, Lgn$a;->h:J

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Lum;->c(JI)V

    iget-object v0, p0, Lgn$a;->a:Lum;

    invoke-interface {v0, p1}, Lum;->a(Lyt;)V

    iget-object p1, p0, Lgn$a;->a:Lum;

    invoke-interface {p1}, Lum;->packetFinished()V

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lgn$a;->c:Lxt;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lxt;->n(I)V

    iget-object v0, p0, Lgn$a;->c:Lxt;

    invoke-virtual {v0}, Lxt;->f()Z

    move-result v0

    iput-boolean v0, p0, Lgn$a;->d:Z

    iget-object v0, p0, Lgn$a;->c:Lxt;

    invoke-virtual {v0}, Lxt;->f()Z

    move-result v0

    iput-boolean v0, p0, Lgn$a;->e:Z

    iget-object v0, p0, Lgn$a;->c:Lxt;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lxt;->n(I)V

    iget-object v0, p0, Lgn$a;->c:Lxt;

    invoke-virtual {v0, v1}, Lxt;->g(I)I

    move-result v0

    iput v0, p0, Lgn$a;->g:I

    return-void
.end method

.method public final c()V
    .locals 10

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lgn$a;->h:J

    iget-boolean v0, p0, Lgn$a;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgn$a;->c:Lxt;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lxt;->n(I)V

    iget-object v0, p0, Lgn$a;->c:Lxt;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lxt;->g(I)I

    move-result v0

    int-to-long v3, v0

    const/16 v0, 0x1e

    shl-long/2addr v3, v0

    iget-object v5, p0, Lgn$a;->c:Lxt;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lxt;->n(I)V

    iget-object v5, p0, Lgn$a;->c:Lxt;

    const/16 v7, 0xf

    invoke-virtual {v5, v7}, Lxt;->g(I)I

    move-result v5

    shl-int/2addr v5, v7

    int-to-long v8, v5

    or-long/2addr v3, v8

    iget-object v5, p0, Lgn$a;->c:Lxt;

    invoke-virtual {v5, v6}, Lxt;->n(I)V

    iget-object v5, p0, Lgn$a;->c:Lxt;

    invoke-virtual {v5, v7}, Lxt;->g(I)I

    move-result v5

    int-to-long v8, v5

    or-long/2addr v3, v8

    iget-object v5, p0, Lgn$a;->c:Lxt;

    invoke-virtual {v5, v6}, Lxt;->n(I)V

    iget-boolean v5, p0, Lgn$a;->f:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lgn$a;->e:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lgn$a;->c:Lxt;

    invoke-virtual {v5, v1}, Lxt;->n(I)V

    iget-object v1, p0, Lgn$a;->c:Lxt;

    invoke-virtual {v1, v2}, Lxt;->g(I)I

    move-result v1

    int-to-long v1, v1

    shl-long v0, v1, v0

    iget-object v2, p0, Lgn$a;->c:Lxt;

    invoke-virtual {v2, v6}, Lxt;->n(I)V

    iget-object v2, p0, Lgn$a;->c:Lxt;

    invoke-virtual {v2, v7}, Lxt;->g(I)I

    move-result v2

    shl-int/2addr v2, v7

    int-to-long v8, v2

    or-long/2addr v0, v8

    iget-object v2, p0, Lgn$a;->c:Lxt;

    invoke-virtual {v2, v6}, Lxt;->n(I)V

    iget-object v2, p0, Lgn$a;->c:Lxt;

    invoke-virtual {v2, v7}, Lxt;->g(I)I

    move-result v2

    int-to-long v7, v2

    or-long/2addr v0, v7

    iget-object v2, p0, Lgn$a;->c:Lxt;

    invoke-virtual {v2, v6}, Lxt;->n(I)V

    iget-object v2, p0, Lgn$a;->b:Lju;

    invoke-virtual {v2, v0, v1}, Lju;->b(J)J

    iput-boolean v6, p0, Lgn$a;->f:Z

    :cond_0
    iget-object v0, p0, Lgn$a;->b:Lju;

    invoke-virtual {v0, v3, v4}, Lju;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lgn$a;->h:J

    :cond_1
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgn$a;->f:Z

    iget-object v0, p0, Lgn$a;->a:Lum;

    invoke-interface {v0}, Lum;->seek()V

    return-void
.end method
