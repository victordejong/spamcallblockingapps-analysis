.class public final Landroidx/work/impl/b/p;
.super Ljava/lang/Object;
.source "WorkSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/b/p$a;
    }
.end annotation


# static fields
.field public static final r:Landroidx/a/a/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/a/a/c/a",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroidx/work/s;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final s:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroidx/work/s$a;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Landroidx/work/e;

.field public f:Landroidx/work/e;

.field public g:J

.field public h:J

.field public i:J

.field public j:Landroidx/work/c;

.field public k:I

.field public l:Landroidx/work/a;

.field public m:J

.field public n:J

.field public o:J

.field public p:J

.field public q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "WorkSpec"

    invoke-static {v0}, Landroidx/work/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/b/p;->s:Ljava/lang/String;

    .line 469
    new-instance v0, Landroidx/work/impl/b/p$1;

    invoke-direct {v0}, Landroidx/work/impl/b/p$1;-><init>()V

    sput-object v0, Landroidx/work/impl/b/p;->r:Landroidx/a/a/c/a;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/b/p;)V
    .locals 2

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Landroidx/work/s$a;->a:Landroidx/work/s$a;

    iput-object v0, p0, Landroidx/work/impl/b/p;->b:Landroidx/work/s$a;

    .line 78
    sget-object v0, Landroidx/work/e;->a:Landroidx/work/e;

    iput-object v0, p0, Landroidx/work/impl/b/p;->e:Landroidx/work/e;

    .line 82
    sget-object v0, Landroidx/work/e;->a:Landroidx/work/e;

    iput-object v0, p0, Landroidx/work/impl/b/p;->f:Landroidx/work/e;

    .line 95
    sget-object v0, Landroidx/work/c;->a:Landroidx/work/c;

    iput-object v0, p0, Landroidx/work/impl/b/p;->j:Landroidx/work/c;

    .line 103
    sget-object v0, Landroidx/work/a;->a:Landroidx/work/a;

    iput-object v0, p0, Landroidx/work/impl/b/p;->l:Landroidx/work/a;

    .line 107
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Landroidx/work/impl/b/p;->m:J

    .line 128
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/work/impl/b/p;->p:J

    .line 143
    iget-object v0, p1, Landroidx/work/impl/b/p;->a:Ljava/lang/String;

    iput-object v0, p0, Landroidx/work/impl/b/p;->a:Ljava/lang/String;

    .line 144
    iget-object v0, p1, Landroidx/work/impl/b/p;->c:Ljava/lang/String;

    iput-object v0, p0, Landroidx/work/impl/b/p;->c:Ljava/lang/String;

    .line 145
    iget-object v0, p1, Landroidx/work/impl/b/p;->b:Landroidx/work/s$a;

    iput-object v0, p0, Landroidx/work/impl/b/p;->b:Landroidx/work/s$a;

    .line 146
    iget-object v0, p1, Landroidx/work/impl/b/p;->d:Ljava/lang/String;

    iput-object v0, p0, Landroidx/work/impl/b/p;->d:Ljava/lang/String;

    .line 147
    new-instance v0, Landroidx/work/e;

    iget-object v1, p1, Landroidx/work/impl/b/p;->e:Landroidx/work/e;

    invoke-direct {v0, v1}, Landroidx/work/e;-><init>(Landroidx/work/e;)V

    iput-object v0, p0, Landroidx/work/impl/b/p;->e:Landroidx/work/e;

    .line 148
    new-instance v0, Landroidx/work/e;

    iget-object v1, p1, Landroidx/work/impl/b/p;->f:Landroidx/work/e;

    invoke-direct {v0, v1}, Landroidx/work/e;-><init>(Landroidx/work/e;)V

    iput-object v0, p0, Landroidx/work/impl/b/p;->f:Landroidx/work/e;

    .line 149
    iget-wide v0, p1, Landroidx/work/impl/b/p;->g:J

    iput-wide v0, p0, Landroidx/work/impl/b/p;->g:J

    .line 150
    iget-wide v0, p1, Landroidx/work/impl/b/p;->h:J

    iput-wide v0, p0, Landroidx/work/impl/b/p;->h:J

    .line 151
    iget-wide v0, p1, Landroidx/work/impl/b/p;->i:J

    iput-wide v0, p0, Landroidx/work/impl/b/p;->i:J

    .line 152
    new-instance v0, Landroidx/work/c;

    iget-object v1, p1, Landroidx/work/impl/b/p;->j:Landroidx/work/c;

    invoke-direct {v0, v1}, Landroidx/work/c;-><init>(Landroidx/work/c;)V

    iput-object v0, p0, Landroidx/work/impl/b/p;->j:Landroidx/work/c;

    .line 153
    iget v0, p1, Landroidx/work/impl/b/p;->k:I

    iput v0, p0, Landroidx/work/impl/b/p;->k:I

    .line 154
    iget-object v0, p1, Landroidx/work/impl/b/p;->l:Landroidx/work/a;

    iput-object v0, p0, Landroidx/work/impl/b/p;->l:Landroidx/work/a;

    .line 155
    iget-wide v0, p1, Landroidx/work/impl/b/p;->m:J

    iput-wide v0, p0, Landroidx/work/impl/b/p;->m:J

    .line 156
    iget-wide v0, p1, Landroidx/work/impl/b/p;->n:J

    iput-wide v0, p0, Landroidx/work/impl/b/p;->n:J

    .line 157
    iget-wide v0, p1, Landroidx/work/impl/b/p;->o:J

    iput-wide v0, p0, Landroidx/work/impl/b/p;->o:J

    .line 158
    iget-wide v0, p1, Landroidx/work/impl/b/p;->p:J

    iput-wide v0, p0, Landroidx/work/impl/b/p;->p:J

    .line 159
    iget-boolean v0, p1, Landroidx/work/impl/b/p;->q:Z

    iput-boolean v0, p0, Landroidx/work/impl/b/p;->q:Z

    .line 160
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Landroidx/work/s$a;->a:Landroidx/work/s$a;

    iput-object v0, p0, Landroidx/work/impl/b/p;->b:Landroidx/work/s$a;

    .line 78
    sget-object v0, Landroidx/work/e;->a:Landroidx/work/e;

    iput-object v0, p0, Landroidx/work/impl/b/p;->e:Landroidx/work/e;

    .line 82
    sget-object v0, Landroidx/work/e;->a:Landroidx/work/e;

    iput-object v0, p0, Landroidx/work/impl/b/p;->f:Landroidx/work/e;

    .line 95
    sget-object v0, Landroidx/work/c;->a:Landroidx/work/c;

    iput-object v0, p0, Landroidx/work/impl/b/p;->j:Landroidx/work/c;

    .line 103
    sget-object v0, Landroidx/work/a;->a:Landroidx/work/a;

    iput-object v0, p0, Landroidx/work/impl/b/p;->l:Landroidx/work/a;

    .line 107
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Landroidx/work/impl/b/p;->m:J

    .line 128
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/work/impl/b/p;->p:J

    .line 138
    iput-object p1, p0, Landroidx/work/impl/b/p;->a:Ljava/lang/String;

    .line 139
    iput-object p2, p0, Landroidx/work/impl/b/p;->c:Ljava/lang/String;

    .line 140
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const-wide/32 v0, 0xdbba0

    .line 192
    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 193
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/b/p;->s:Ljava/lang/String;

    const-string/jumbo v4, "Interval duration lesser than minimum allowed value; Changed to %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 195
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v7

    .line 193
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4, v5}, Landroidx/work/l;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-wide p1, v0

    .line 198
    :cond_0
    invoke-virtual {p0, p1, p2, p1, p2}, Landroidx/work/impl/b/p;->a(JJ)V

    .line 199
    return-void
.end method

.method public a(JJ)V
    .locals 11

    .prologue
    const-wide/32 v2, 0xdbba0

    const-wide/32 v0, 0x493e0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 208
    cmp-long v4, p1, v2

    if-gez v4, :cond_2

    .line 209
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v4

    sget-object v5, Landroidx/work/impl/b/p;->s:Ljava/lang/String;

    const-string/jumbo v6, "Interval duration lesser than minimum allowed value; Changed to %s"

    new-array v7, v10, [Ljava/lang/Object;

    .line 211
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v9

    .line 209
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v6, v7}, Landroidx/work/l;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 214
    :goto_0
    cmp-long v4, p3, v0

    if-gez v4, :cond_1

    .line 215
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v4

    sget-object v5, Landroidx/work/impl/b/p;->s:Ljava/lang/String;

    const-string/jumbo v6, "Flex duration lesser than minimum allowed value; Changed to %s"

    new-array v7, v10, [Ljava/lang/Object;

    .line 217
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v9

    .line 216
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Throwable;

    .line 215
    invoke-virtual {v4, v5, v6, v7}, Landroidx/work/l;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 220
    :goto_1
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 221
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/b/p;->s:Ljava/lang/String;

    const-string/jumbo v4, "Flex duration greater than interval duration; Changed to %s"

    new-array v5, v10, [Ljava/lang/Object;

    .line 223
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v9

    .line 222
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Throwable;

    .line 221
    invoke-virtual {v0, v1, v4, v5}, Landroidx/work/l;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-wide v0, v2

    .line 226
    :cond_0
    iput-wide v2, p0, Landroidx/work/impl/b/p;->h:J

    .line 227
    iput-wide v0, p0, Landroidx/work/impl/b/p;->i:J

    .line 228
    return-void

    :cond_1
    move-wide v0, p3

    goto :goto_1

    :cond_2
    move-wide v2, p1

    goto :goto_0
.end method

.method public a()Z
    .locals 4

    .prologue
    .line 179
    iget-wide v0, p0, Landroidx/work/impl/b/p;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Landroidx/work/impl/b/p;->b:Landroidx/work/s$a;

    sget-object v1, Landroidx/work/s$a;->a:Landroidx/work/s$a;

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/work/impl/b/p;->k:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()J
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    .line 256
    invoke-virtual {p0}, Landroidx/work/impl/b/p;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    iget-object v0, p0, Landroidx/work/impl/b/p;->l:Landroidx/work/a;

    sget-object v1, Landroidx/work/a;->b:Landroidx/work/a;

    if-ne v0, v1, :cond_0

    .line 258
    :goto_0
    if-eqz v4, :cond_1

    iget-wide v0, p0, Landroidx/work/impl/b/p;->m:J

    iget v2, p0, Landroidx/work/impl/b/p;->k:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    .line 260
    :goto_1
    iget-wide v2, p0, Landroidx/work/impl/b/p;->n:J

    const-wide/32 v4, 0x112a880

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    add-long/2addr v0, v2

    .line 290
    :goto_2
    return-wide v0

    :cond_0
    move v4, v5

    .line 257
    goto :goto_0

    .line 258
    :cond_1
    iget-wide v0, p0, Landroidx/work/impl/b/p;->m:J

    long-to-float v0, v0

    iget v1, p0, Landroidx/work/impl/b/p;->k:I

    add-int/lit8 v1, v1, -0x1

    .line 259
    invoke-static {v0, v1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    float-to-long v0, v0

    goto :goto_1

    .line 261
    :cond_2
    invoke-virtual {p0}, Landroidx/work/impl/b/p;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 263
    iget-wide v6, p0, Landroidx/work/impl/b/p;->n:J

    cmp-long v6, v6, v2

    if-nez v6, :cond_4

    iget-wide v6, p0, Landroidx/work/impl/b/p;->g:J

    add-long/2addr v0, v6

    .line 264
    :goto_3
    iget-wide v6, p0, Landroidx/work/impl/b/p;->i:J

    iget-wide v8, p0, Landroidx/work/impl/b/p;->h:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    .line 265
    :goto_4
    if-eqz v4, :cond_6

    .line 275
    iget-wide v4, p0, Landroidx/work/impl/b/p;->n:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_3

    const-wide/16 v2, -0x1

    iget-wide v4, p0, Landroidx/work/impl/b/p;->i:J

    mul-long/2addr v2, v4

    .line 276
    :cond_3
    iget-wide v4, p0, Landroidx/work/impl/b/p;->h:J

    add-long/2addr v0, v4

    add-long/2addr v0, v2

    goto :goto_2

    .line 263
    :cond_4
    iget-wide v0, p0, Landroidx/work/impl/b/p;->n:J

    goto :goto_3

    :cond_5
    move v4, v5

    .line 264
    goto :goto_4

    .line 283
    :cond_6
    iget-wide v4, p0, Landroidx/work/impl/b/p;->n:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_7

    .line 284
    :goto_5
    add-long/2addr v0, v2

    goto :goto_2

    .line 283
    :cond_7
    iget-wide v2, p0, Landroidx/work/impl/b/p;->h:J

    goto :goto_5

    .line 289
    :cond_8
    iget-wide v0, p0, Landroidx/work/impl/b/p;->n:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 290
    :goto_6
    iget-wide v2, p0, Landroidx/work/impl/b/p;->g:J

    add-long/2addr v0, v2

    goto :goto_2

    .line 289
    :cond_9
    iget-wide v0, p0, Landroidx/work/impl/b/p;->n:J

    goto :goto_6
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 298
    sget-object v0, Landroidx/work/c;->a:Landroidx/work/c;

    iget-object v1, p0, Landroidx/work/impl/b/p;->j:Landroidx/work/c;

    invoke-virtual {v0, v1}, Landroidx/work/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 303
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 328
    :cond_0
    :goto_0
    return v1

    .line 304
    :cond_1
    instance-of v2, p1, Landroidx/work/impl/b/p;

    if-eqz v2, :cond_0

    .line 306
    check-cast p1, Landroidx/work/impl/b/p;

    .line 308
    iget-wide v2, p0, Landroidx/work/impl/b/p;->g:J

    iget-wide v4, p1, Landroidx/work/impl/b/p;->g:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 309
    iget-wide v2, p0, Landroidx/work/impl/b/p;->h:J

    iget-wide v4, p1, Landroidx/work/impl/b/p;->h:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 310
    iget-wide v2, p0, Landroidx/work/impl/b/p;->i:J

    iget-wide v4, p1, Landroidx/work/impl/b/p;->i:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 311
    iget v2, p0, Landroidx/work/impl/b/p;->k:I

    iget v3, p1, Landroidx/work/impl/b/p;->k:I

    if-ne v2, v3, :cond_0

    .line 312
    iget-wide v2, p0, Landroidx/work/impl/b/p;->m:J

    iget-wide v4, p1, Landroidx/work/impl/b/p;->m:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 313
    iget-wide v2, p0, Landroidx/work/impl/b/p;->n:J

    iget-wide v4, p1, Landroidx/work/impl/b/p;->n:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 314
    iget-wide v2, p0, Landroidx/work/impl/b/p;->o:J

    iget-wide v4, p1, Landroidx/work/impl/b/p;->o:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 315
    iget-wide v2, p0, Landroidx/work/impl/b/p;->p:J

    iget-wide v4, p1, Landroidx/work/impl/b/p;->p:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 316
    iget-boolean v2, p0, Landroidx/work/impl/b/p;->q:Z

    iget-boolean v3, p1, Landroidx/work/impl/b/p;->q:Z

    if-ne v2, v3, :cond_0

    .line 317
    iget-object v2, p0, Landroidx/work/impl/b/p;->a:Ljava/lang/String;

    iget-object v3, p1, Landroidx/work/impl/b/p;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    iget-object v2, p0, Landroidx/work/impl/b/p;->b:Landroidx/work/s$a;

    iget-object v3, p1, Landroidx/work/impl/b/p;->b:Landroidx/work/s$a;

    if-ne v2, v3, :cond_0

    .line 319
    iget-object v2, p0, Landroidx/work/impl/b/p;->c:Ljava/lang/String;

    iget-object v3, p1, Landroidx/work/impl/b/p;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    iget-object v2, p0, Landroidx/work/impl/b/p;->d:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/work/impl/b/p;->d:Ljava/lang/String;

    iget-object v3, p1, Landroidx/work/impl/b/p;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    :cond_2
    iget-object v2, p0, Landroidx/work/impl/b/p;->e:Landroidx/work/e;

    iget-object v3, p1, Landroidx/work/impl/b/p;->e:Landroidx/work/e;

    invoke-virtual {v2, v3}, Landroidx/work/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    iget-object v2, p0, Landroidx/work/impl/b/p;->f:Landroidx/work/e;

    iget-object v3, p1, Landroidx/work/impl/b/p;->f:Landroidx/work/e;

    invoke-virtual {v2, v3}, Landroidx/work/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 327
    iget-object v2, p0, Landroidx/work/impl/b/p;->j:Landroidx/work/c;

    iget-object v3, p1, Landroidx/work/impl/b/p;->j:Landroidx/work/c;

    invoke-virtual {v2, v3}, Landroidx/work/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    iget-object v2, p0, Landroidx/work/impl/b/p;->l:Landroidx/work/a;

    iget-object v3, p1, Landroidx/work/impl/b/p;->l:Landroidx/work/a;

    if-ne v2, v3, :cond_4

    :goto_1
    move v1, v0

    goto/16 :goto_0

    .line 320
    :cond_3
    iget-object v2, p1, Landroidx/work/impl/b/p;->d:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 328
    goto :goto_1
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/16 v6, 0x20

    .line 333
    iget-object v0, p0, Landroidx/work/impl/b/p;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 334
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/work/impl/b/p;->b:Landroidx/work/s$a;

    invoke-virtual {v2}, Landroidx/work/s$a;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 335
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/work/impl/b/p;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 336
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Landroidx/work/impl/b/p;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/work/impl/b/p;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 337
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/work/impl/b/p;->e:Landroidx/work/e;

    invoke-virtual {v2}, Landroidx/work/e;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 338
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/work/impl/b/p;->f:Landroidx/work/e;

    invoke-virtual {v2}, Landroidx/work/e;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 339
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Landroidx/work/impl/b/p;->g:J

    iget-wide v4, p0, Landroidx/work/impl/b/p;->g:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 340
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Landroidx/work/impl/b/p;->h:J

    iget-wide v4, p0, Landroidx/work/impl/b/p;->h:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 341
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Landroidx/work/impl/b/p;->i:J

    iget-wide v4, p0, Landroidx/work/impl/b/p;->i:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 342
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/work/impl/b/p;->j:Landroidx/work/c;

    invoke-virtual {v2}, Landroidx/work/c;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 343
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Landroidx/work/impl/b/p;->k:I

    add-int/2addr v0, v2

    .line 344
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/work/impl/b/p;->l:Landroidx/work/a;

    invoke-virtual {v2}, Landroidx/work/a;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 345
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Landroidx/work/impl/b/p;->m:J

    iget-wide v4, p0, Landroidx/work/impl/b/p;->m:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 346
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Landroidx/work/impl/b/p;->n:J

    iget-wide v4, p0, Landroidx/work/impl/b/p;->n:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 347
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Landroidx/work/impl/b/p;->o:J

    iget-wide v4, p0, Landroidx/work/impl/b/p;->o:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 348
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Landroidx/work/impl/b/p;->p:J

    iget-wide v4, p0, Landroidx/work/impl/b/p;->p:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 349
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Landroidx/work/impl/b/p;->q:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    .line 350
    return v0

    :cond_1
    move v0, v1

    .line 336
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{WorkSpec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/b/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
