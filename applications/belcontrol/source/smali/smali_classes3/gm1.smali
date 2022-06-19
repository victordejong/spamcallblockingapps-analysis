.class public final Lgm1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Lgm1;

.field public g:Lgm1;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lgm1;->a:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgm1;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgm1;->d:Z

    return-void
.end method

.method public constructor <init>([BIIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgm1;->a:[B

    iput p2, p0, Lgm1;->b:I

    iput p3, p0, Lgm1;->c:I

    iput-boolean p4, p0, Lgm1;->d:Z

    iput-boolean p5, p0, Lgm1;->e:Z

    return-void
.end method


# virtual methods
.method public final a()Lgm1;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lgm1;->f:Lgm1;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iget-object v3, p0, Lgm1;->g:Lgm1;

    iput-object v0, v3, Lgm1;->f:Lgm1;

    iget-object v0, p0, Lgm1;->f:Lgm1;

    iput-object v3, v0, Lgm1;->g:Lgm1;

    iput-object v1, p0, Lgm1;->f:Lgm1;

    iput-object v1, p0, Lgm1;->g:Lgm1;

    return-object v2
.end method

.method public final b(Lgm1;)Lgm1;
    .locals 1

    iput-object p0, p1, Lgm1;->g:Lgm1;

    iget-object v0, p0, Lgm1;->f:Lgm1;

    iput-object v0, p1, Lgm1;->f:Lgm1;

    iget-object v0, p0, Lgm1;->f:Lgm1;

    iput-object p1, v0, Lgm1;->g:Lgm1;

    iput-object p1, p0, Lgm1;->f:Lgm1;

    return-object p1
.end method

.method public final c()Lgm1;
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgm1;->d:Z

    new-instance v0, Lgm1;

    iget-object v2, p0, Lgm1;->a:[B

    iget v3, p0, Lgm1;->b:I

    iget v4, p0, Lgm1;->c:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lgm1;-><init>([BIIZZ)V

    return-object v0
.end method
