.class public final Lcom/applovin/impl/sdk/d/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:J

.field private c:Z

.field private d:J

.field private e:J

.field private f:I

.field private g:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/d/e;->c:Z

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/applovin/impl/sdk/d/e;->f:I

    return-void
.end method

.method public a(J)V
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/sdk/d/e;->a:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/applovin/impl/sdk/d/e;->a:J

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/e;->g:Ljava/lang/Exception;

    return-void
.end method

.method public b(J)V
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/sdk/d/e;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/applovin/impl/sdk/d/e;->b:J

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/d/e;->c:Z

    return v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/sdk/d/e;->a:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/sdk/d/e;->b:J

    return-wide v0
.end method

.method public e()V
    .locals 4

    iget-wide v0, p0, Lcom/applovin/impl/sdk/d/e;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/applovin/impl/sdk/d/e;->d:J

    return-void
.end method

.method public f()V
    .locals 4

    iget-wide v0, p0, Lcom/applovin/impl/sdk/d/e;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/applovin/impl/sdk/d/e;->e:J

    return-void
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/sdk/d/e;->d:J

    return-wide v0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/sdk/d/e;->e:J

    return-wide v0
.end method

.method public i()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/e;->g:Ljava/lang/Exception;

    return-object v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/applovin/impl/sdk/d/e;->f:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "CacheStatsTracker{totalDownloadedBytes="

    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/applovin/impl/sdk/d/e;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalCachedBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/applovin/impl/sdk/d/e;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isHTMLCachingCancelled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/d/e;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", htmlResourceCacheSuccessCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/applovin/impl/sdk/d/e;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", htmlResourceCacheFailureCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/applovin/impl/sdk/d/e;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
