.class public final Landroidx/work/impl/n/p;
.super Ljava/lang/Object;
.source "WorkSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/n/p$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field public static final b:Lb/b/a/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/a/c/a<",
            "Ljava/util/List<",
            "*>;",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field public c:Ljava/lang/String;

.field public d:Landroidx/work/WorkInfo$State;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Landroidx/work/d;

.field public h:Landroidx/work/d;

.field public i:J

.field public j:J

.field public k:J

.field public l:Landroidx/work/b;

.field public m:I

.field public n:Landroidx/work/BackoffPolicy;

.field public o:J

.field public p:J

.field public q:J

.field public r:J

.field public s:Z

.field public t:Landroidx/work/OutOfQuotaPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkSpec"

    .line 1
    invoke-static {v0}, Landroidx/work/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/n/p;->a:Ljava/lang/String;

    .line 2
    new-instance v0, Landroidx/work/impl/n/p$a;

    invoke-direct {v0}, Landroidx/work/impl/n/p$a;-><init>()V

    sput-object v0, Landroidx/work/impl/n/p;->b:Lb/b/a/c/a;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/n/p;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Landroidx/work/WorkInfo$State;->d:Landroidx/work/WorkInfo$State;

    iput-object v0, p0, Landroidx/work/impl/n/p;->d:Landroidx/work/WorkInfo$State;

    .line 14
    sget-object v0, Landroidx/work/d;->b:Landroidx/work/d;

    iput-object v0, p0, Landroidx/work/impl/n/p;->g:Landroidx/work/d;

    .line 15
    iput-object v0, p0, Landroidx/work/impl/n/p;->h:Landroidx/work/d;

    .line 16
    sget-object v0, Landroidx/work/b;->a:Landroidx/work/b;

    iput-object v0, p0, Landroidx/work/impl/n/p;->l:Landroidx/work/b;

    .line 17
    sget-object v0, Landroidx/work/BackoffPolicy;->d:Landroidx/work/BackoffPolicy;

    iput-object v0, p0, Landroidx/work/impl/n/p;->n:Landroidx/work/BackoffPolicy;

    const-wide/16 v0, 0x7530

    .line 18
    iput-wide v0, p0, Landroidx/work/impl/n/p;->o:J

    const-wide/16 v0, -0x1

    .line 19
    iput-wide v0, p0, Landroidx/work/impl/n/p;->r:J

    .line 20
    sget-object v0, Landroidx/work/OutOfQuotaPolicy;->d:Landroidx/work/OutOfQuotaPolicy;

    iput-object v0, p0, Landroidx/work/impl/n/p;->t:Landroidx/work/OutOfQuotaPolicy;

    .line 21
    iget-object v0, p1, Landroidx/work/impl/n/p;->c:Ljava/lang/String;

    iput-object v0, p0, Landroidx/work/impl/n/p;->c:Ljava/lang/String;

    .line 22
    iget-object v0, p1, Landroidx/work/impl/n/p;->e:Ljava/lang/String;

    iput-object v0, p0, Landroidx/work/impl/n/p;->e:Ljava/lang/String;

    .line 23
    iget-object v0, p1, Landroidx/work/impl/n/p;->d:Landroidx/work/WorkInfo$State;

    iput-object v0, p0, Landroidx/work/impl/n/p;->d:Landroidx/work/WorkInfo$State;

    .line 24
    iget-object v0, p1, Landroidx/work/impl/n/p;->f:Ljava/lang/String;

    iput-object v0, p0, Landroidx/work/impl/n/p;->f:Ljava/lang/String;

    .line 25
    new-instance v0, Landroidx/work/d;

    iget-object v1, p1, Landroidx/work/impl/n/p;->g:Landroidx/work/d;

    invoke-direct {v0, v1}, Landroidx/work/d;-><init>(Landroidx/work/d;)V

    iput-object v0, p0, Landroidx/work/impl/n/p;->g:Landroidx/work/d;

    .line 26
    new-instance v0, Landroidx/work/d;

    iget-object v1, p1, Landroidx/work/impl/n/p;->h:Landroidx/work/d;

    invoke-direct {v0, v1}, Landroidx/work/d;-><init>(Landroidx/work/d;)V

    iput-object v0, p0, Landroidx/work/impl/n/p;->h:Landroidx/work/d;

    .line 27
    iget-wide v0, p1, Landroidx/work/impl/n/p;->i:J

    iput-wide v0, p0, Landroidx/work/impl/n/p;->i:J

    .line 28
    iget-wide v0, p1, Landroidx/work/impl/n/p;->j:J

    iput-wide v0, p0, Landroidx/work/impl/n/p;->j:J

    .line 29
    iget-wide v0, p1, Landroidx/work/impl/n/p;->k:J

    iput-wide v0, p0, Landroidx/work/impl/n/p;->k:J

    .line 30
    new-instance v0, Landroidx/work/b;

    iget-object v1, p1, Landroidx/work/impl/n/p;->l:Landroidx/work/b;

    invoke-direct {v0, v1}, Landroidx/work/b;-><init>(Landroidx/work/b;)V

    iput-object v0, p0, Landroidx/work/impl/n/p;->l:Landroidx/work/b;

    .line 31
    iget v0, p1, Landroidx/work/impl/n/p;->m:I

    iput v0, p0, Landroidx/work/impl/n/p;->m:I

    .line 32
    iget-object v0, p1, Landroidx/work/impl/n/p;->n:Landroidx/work/BackoffPolicy;

    iput-object v0, p0, Landroidx/work/impl/n/p;->n:Landroidx/work/BackoffPolicy;

    .line 33
    iget-wide v0, p1, Landroidx/work/impl/n/p;->o:J

    iput-wide v0, p0, Landroidx/work/impl/n/p;->o:J

    .line 34
    iget-wide v0, p1, Landroidx/work/impl/n/p;->p:J

    iput-wide v0, p0, Landroidx/work/impl/n/p;->p:J

    .line 35
    iget-wide v0, p1, Landroidx/work/impl/n/p;->q:J

    iput-wide v0, p0, Landroidx/work/impl/n/p;->q:J

    .line 36
    iget-wide v0, p1, Landroidx/work/impl/n/p;->r:J

    iput-wide v0, p0, Landroidx/work/impl/n/p;->r:J

    .line 37
    iget-boolean v0, p1, Landroidx/work/impl/n/p;->s:Z

    iput-boolean v0, p0, Landroidx/work/impl/n/p;->s:Z

    .line 38
    iget-object p1, p1, Landroidx/work/impl/n/p;->t:Landroidx/work/OutOfQuotaPolicy;

    iput-object p1, p0, Landroidx/work/impl/n/p;->t:Landroidx/work/OutOfQuotaPolicy;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroidx/work/WorkInfo$State;->d:Landroidx/work/WorkInfo$State;

    iput-object v0, p0, Landroidx/work/impl/n/p;->d:Landroidx/work/WorkInfo$State;

    .line 3
    sget-object v0, Landroidx/work/d;->b:Landroidx/work/d;

    iput-object v0, p0, Landroidx/work/impl/n/p;->g:Landroidx/work/d;

    .line 4
    iput-object v0, p0, Landroidx/work/impl/n/p;->h:Landroidx/work/d;

    .line 5
    sget-object v0, Landroidx/work/b;->a:Landroidx/work/b;

    iput-object v0, p0, Landroidx/work/impl/n/p;->l:Landroidx/work/b;

    .line 6
    sget-object v0, Landroidx/work/BackoffPolicy;->d:Landroidx/work/BackoffPolicy;

    iput-object v0, p0, Landroidx/work/impl/n/p;->n:Landroidx/work/BackoffPolicy;

    const-wide/16 v0, 0x7530

    .line 7
    iput-wide v0, p0, Landroidx/work/impl/n/p;->o:J

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Landroidx/work/impl/n/p;->r:J

    .line 9
    sget-object v0, Landroidx/work/OutOfQuotaPolicy;->d:Landroidx/work/OutOfQuotaPolicy;

    iput-object v0, p0, Landroidx/work/impl/n/p;->t:Landroidx/work/OutOfQuotaPolicy;

    .line 10
    iput-object p1, p0, Landroidx/work/impl/n/p;->c:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Landroidx/work/impl/n/p;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroidx/work/impl/n/p;->c()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Landroidx/work/impl/n/p;->n:Landroidx/work/BackoffPolicy;

    sget-object v3, Landroidx/work/BackoffPolicy;->e:Landroidx/work/BackoffPolicy;

    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 3
    iget-wide v0, p0, Landroidx/work/impl/n/p;->o:J

    iget v2, p0, Landroidx/work/impl/n/p;->m:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    goto :goto_0

    .line 4
    :cond_1
    iget-wide v0, p0, Landroidx/work/impl/n/p;->o:J

    long-to-float v0, v0

    iget v1, p0, Landroidx/work/impl/n/p;->m:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    float-to-long v0, v0

    .line 5
    :goto_0
    iget-wide v2, p0, Landroidx/work/impl/n/p;->p:J

    const-wide/32 v4, 0x112a880

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    add-long/2addr v2, v0

    return-wide v2

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroidx/work/impl/n/p;->d()Z

    move-result v0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_8

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 8
    iget-wide v7, p0, Landroidx/work/impl/n/p;->p:J

    cmp-long v0, v7, v3

    if-nez v0, :cond_3

    iget-wide v9, p0, Landroidx/work/impl/n/p;->i:J

    add-long/2addr v5, v9

    goto :goto_1

    :cond_3
    move-wide v5, v7

    .line 9
    :goto_1
    iget-wide v9, p0, Landroidx/work/impl/n/p;->k:J

    iget-wide v11, p0, Landroidx/work/impl/n/p;->j:J

    cmp-long v0, v9, v11

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_6

    cmp-long v0, v7, v3

    if-nez v0, :cond_5

    const-wide/16 v0, -0x1

    mul-long v3, v9, v0

    :cond_5
    add-long/2addr v5, v11

    add-long/2addr v5, v3

    return-wide v5

    :cond_6
    cmp-long v0, v7, v3

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    move-wide v3, v11

    :goto_2
    add-long/2addr v5, v3

    return-wide v5

    .line 10
    :cond_8
    iget-wide v0, p0, Landroidx/work/impl/n/p;->p:J

    cmp-long v2, v0, v3

    if-nez v2, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 11
    :cond_9
    iget-wide v2, p0, Landroidx/work/impl/n/p;->i:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public b()Z
    .locals 2

    .line 1
    sget-object v0, Landroidx/work/b;->a:Landroidx/work/b;

    iget-object v1, p0, Landroidx/work/impl/n/p;->l:Landroidx/work/b;

    invoke-virtual {v0, v1}, Landroidx/work/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/n/p;->d:Landroidx/work/WorkInfo$State;

    sget-object v1, Landroidx/work/WorkInfo$State;->d:Landroidx/work/WorkInfo$State;

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/work/impl/n/p;->m:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Landroidx/work/impl/n/p;->j:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_15

    .line 1
    const-class v2, Landroidx/work/impl/n/p;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    .line 2
    :cond_1
    check-cast p1, Landroidx/work/impl/n/p;

    .line 3
    iget-wide v2, p0, Landroidx/work/impl/n/p;->i:J

    iget-wide v4, p1, Landroidx/work/impl/n/p;->i:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return v1

    .line 4
    :cond_2
    iget-wide v2, p0, Landroidx/work/impl/n/p;->j:J

    iget-wide v4, p1, Landroidx/work/impl/n/p;->j:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    return v1

    .line 5
    :cond_3
    iget-wide v2, p0, Landroidx/work/impl/n/p;->k:J

    iget-wide v4, p1, Landroidx/work/impl/n/p;->k:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    return v1

    .line 6
    :cond_4
    iget v2, p0, Landroidx/work/impl/n/p;->m:I

    iget v3, p1, Landroidx/work/impl/n/p;->m:I

    if-eq v2, v3, :cond_5

    return v1

    .line 7
    :cond_5
    iget-wide v2, p0, Landroidx/work/impl/n/p;->o:J

    iget-wide v4, p1, Landroidx/work/impl/n/p;->o:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_6

    return v1

    .line 8
    :cond_6
    iget-wide v2, p0, Landroidx/work/impl/n/p;->p:J

    iget-wide v4, p1, Landroidx/work/impl/n/p;->p:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_7

    return v1

    .line 9
    :cond_7
    iget-wide v2, p0, Landroidx/work/impl/n/p;->q:J

    iget-wide v4, p1, Landroidx/work/impl/n/p;->q:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_8

    return v1

    .line 10
    :cond_8
    iget-wide v2, p0, Landroidx/work/impl/n/p;->r:J

    iget-wide v4, p1, Landroidx/work/impl/n/p;->r:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_9

    return v1

    .line 11
    :cond_9
    iget-boolean v2, p0, Landroidx/work/impl/n/p;->s:Z

    iget-boolean v3, p1, Landroidx/work/impl/n/p;->s:Z

    if-eq v2, v3, :cond_a

    return v1

    .line 12
    :cond_a
    iget-object v2, p0, Landroidx/work/impl/n/p;->c:Ljava/lang/String;

    iget-object v3, p1, Landroidx/work/impl/n/p;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 13
    :cond_b
    iget-object v2, p0, Landroidx/work/impl/n/p;->d:Landroidx/work/WorkInfo$State;

    iget-object v3, p1, Landroidx/work/impl/n/p;->d:Landroidx/work/WorkInfo$State;

    if-eq v2, v3, :cond_c

    return v1

    .line 14
    :cond_c
    iget-object v2, p0, Landroidx/work/impl/n/p;->e:Ljava/lang/String;

    iget-object v3, p1, Landroidx/work/impl/n/p;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 15
    :cond_d
    iget-object v2, p0, Landroidx/work/impl/n/p;->f:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v3, p1, Landroidx/work/impl/n/p;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_0

    :cond_e
    iget-object v2, p1, Landroidx/work/impl/n/p;->f:Ljava/lang/String;

    if-eqz v2, :cond_f

    :goto_0
    return v1

    .line 16
    :cond_f
    iget-object v2, p0, Landroidx/work/impl/n/p;->g:Landroidx/work/d;

    iget-object v3, p1, Landroidx/work/impl/n/p;->g:Landroidx/work/d;

    invoke-virtual {v2, v3}, Landroidx/work/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 17
    :cond_10
    iget-object v2, p0, Landroidx/work/impl/n/p;->h:Landroidx/work/d;

    iget-object v3, p1, Landroidx/work/impl/n/p;->h:Landroidx/work/d;

    invoke-virtual {v2, v3}, Landroidx/work/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    return v1

    .line 18
    :cond_11
    iget-object v2, p0, Landroidx/work/impl/n/p;->l:Landroidx/work/b;

    iget-object v3, p1, Landroidx/work/impl/n/p;->l:Landroidx/work/b;

    invoke-virtual {v2, v3}, Landroidx/work/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 19
    :cond_12
    iget-object v2, p0, Landroidx/work/impl/n/p;->n:Landroidx/work/BackoffPolicy;

    iget-object v3, p1, Landroidx/work/impl/n/p;->n:Landroidx/work/BackoffPolicy;

    if-eq v2, v3, :cond_13

    return v1

    .line 20
    :cond_13
    iget-object v2, p0, Landroidx/work/impl/n/p;->t:Landroidx/work/OutOfQuotaPolicy;

    iget-object p1, p1, Landroidx/work/impl/n/p;->t:Landroidx/work/OutOfQuotaPolicy;

    if-ne v2, p1, :cond_14

    goto :goto_1

    :cond_14
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_15
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/work/impl/n/p;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Landroidx/work/impl/n/p;->d:Landroidx/work/WorkInfo$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Landroidx/work/impl/n/p;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Landroidx/work/impl/n/p;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Landroidx/work/impl/n/p;->g:Landroidx/work/d;

    invoke-virtual {v1}, Landroidx/work/d;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Landroidx/work/impl/n/p;->h:Landroidx/work/d;

    invoke-virtual {v1}, Landroidx/work/d;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-wide v1, p0, Landroidx/work/impl/n/p;->i:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-wide v1, p0, Landroidx/work/impl/n/p;->j:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-wide v1, p0, Landroidx/work/impl/n/p;->k:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-object v1, p0, Landroidx/work/impl/n/p;->l:Landroidx/work/b;

    invoke-virtual {v1}, Landroidx/work/b;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget v1, p0, Landroidx/work/impl/n/p;->m:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget-object v1, p0, Landroidx/work/impl/n/p;->n:Landroidx/work/BackoffPolicy;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget-wide v1, p0, Landroidx/work/impl/n/p;->o:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 14
    iget-wide v1, p0, Landroidx/work/impl/n/p;->p:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 15
    iget-wide v1, p0, Landroidx/work/impl/n/p;->q:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 16
    iget-wide v1, p0, Landroidx/work/impl/n/p;->r:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 17
    iget-boolean v1, p0, Landroidx/work/impl/n/p;->s:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 18
    iget-object v1, p0, Landroidx/work/impl/n/p;->t:Landroidx/work/OutOfQuotaPolicy;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{WorkSpec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/impl/n/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
