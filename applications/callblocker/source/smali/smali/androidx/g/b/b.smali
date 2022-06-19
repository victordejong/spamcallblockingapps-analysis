.class public Landroidx/g/b/b;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/g/b/b$a;,
        Landroidx/g/b/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field f:I

.field g:Landroidx/g/b/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/g/b/b$b",
            "<TD;>;"
        }
    .end annotation
.end field

.field h:Landroidx/g/b/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/g/b/b$a",
            "<TD;>;"
        }
    .end annotation
.end field

.field i:Landroid/content/Context;

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v1, p0, Landroidx/g/b/b;->j:Z

    .line 45
    iput-boolean v1, p0, Landroidx/g/b/b;->k:Z

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/g/b/b;->l:Z

    .line 47
    iput-boolean v1, p0, Landroidx/g/b/b;->m:Z

    .line 48
    iput-boolean v1, p0, Landroidx/g/b/b;->n:Z

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/g/b/b;->i:Landroid/content/Context;

    .line 120
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 356
    return-void
.end method

.method public a(ILandroidx/g/b/b$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/g/b/b$b",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Landroidx/g/b/b;->g:Landroidx/g/b/b$b;

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    iput-object p2, p0, Landroidx/g/b/b;->g:Landroidx/g/b/b$b;

    .line 177
    iput p1, p0, Landroidx/g/b/b;->f:I

    .line 178
    return-void
.end method

.method public a(Landroidx/g/b/b$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/g/b/b$b",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Landroidx/g/b/b;->g:Landroidx/g/b/b$b;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    iget-object v0, p0, Landroidx/g/b/b;->g:Landroidx/g/b/b$b;

    if-eq v0, p1, :cond_1

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/g/b/b;->g:Landroidx/g/b/b$b;

    .line 194
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 555
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/g/b/b;->f:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 556
    const-string/jumbo v0, " mListener="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/g/b/b;->g:Landroidx/g/b/b$b;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 557
    iget-boolean v0, p0, Landroidx/g/b/b;->j:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/g/b/b;->m:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/g/b/b;->n:Z

    if-eqz v0, :cond_1

    .line 558
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/g/b/b;->j:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 559
    const-string/jumbo v0, " mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/g/b/b;->m:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 560
    const-string/jumbo v0, " mProcessingChange="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/g/b/b;->n:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 562
    :cond_1
    iget-boolean v0, p0, Landroidx/g/b/b;->k:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/g/b/b;->l:Z

    if-eqz v0, :cond_3

    .line 563
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAbandoned="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/g/b/b;->k:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 564
    const-string/jumbo v0, " mReset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/g/b/b;->l:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 566
    :cond_3
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Landroidx/g/b/b;->g:Landroidx/g/b/b$b;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Landroidx/g/b/b;->g:Landroidx/g/b/b$b;

    invoke-interface {v0, p0, p1}, Landroidx/g/b/b$b;->a(Landroidx/g/b/b;Ljava/lang/Object;)V

    .line 134
    :cond_0
    return-void
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 528
    invoke-static {p1, v0}, Landroidx/core/g/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 529
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Landroidx/g/b/b;->h:Landroidx/g/b/b$a;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Landroidx/g/b/b;->h:Landroidx/g/b/b$a;

    invoke-interface {v0, p0}, Landroidx/g/b/b$a;->a(Landroidx/g/b/b;)V

    .line 147
    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Landroidx/g/b/b;->k:Z

    return v0
.end method

.method public final i()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/g/b/b;->j:Z

    .line 283
    iput-boolean v1, p0, Landroidx/g/b/b;->l:Z

    .line 284
    iput-boolean v1, p0, Landroidx/g/b/b;->k:Z

    .line 285
    invoke-virtual {p0}, Landroidx/g/b/b;->j()V

    .line 286
    return-void
.end method

.method protected j()V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 318
    invoke-virtual {p0}, Landroidx/g/b/b;->b()Z

    move-result v0

    return v0
.end method

.method public l()V
    .locals 0

    .prologue
    .line 347
    invoke-virtual {p0}, Landroidx/g/b/b;->a()V

    .line 348
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/g/b/b;->j:Z

    .line 381
    invoke-virtual {p0}, Landroidx/g/b/b;->n()V

    .line 382
    return-void
.end method

.method protected n()V
    .locals 0

    .prologue
    .line 392
    return-void
.end method

.method public o()V
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/g/b/b;->k:Z

    .line 410
    invoke-virtual {p0}, Landroidx/g/b/b;->p()V

    .line 411
    return-void
.end method

.method protected p()V
    .locals 0

    .prologue
    .line 425
    return-void
.end method

.method public q()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 447
    invoke-virtual {p0}, Landroidx/g/b/b;->r()V

    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/g/b/b;->l:Z

    .line 449
    iput-boolean v1, p0, Landroidx/g/b/b;->j:Z

    .line 450
    iput-boolean v1, p0, Landroidx/g/b/b;->k:Z

    .line 451
    iput-boolean v1, p0, Landroidx/g/b/b;->m:Z

    .line 452
    iput-boolean v1, p0, Landroidx/g/b/b;->n:Z

    .line 453
    return-void
.end method

.method protected r()V
    .locals 0

    .prologue
    .line 463
    return-void
.end method

.method public s()V
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/g/b/b;->n:Z

    .line 486
    return-void
.end method

.method public t()V
    .locals 1

    .prologue
    .line 496
    iget-boolean v0, p0, Landroidx/g/b/b;->n:Z

    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {p0}, Landroidx/g/b/b;->u()V

    .line 499
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 536
    invoke-static {p0, v0}, Landroidx/core/g/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 537
    const-string/jumbo v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    iget v1, p0, Landroidx/g/b/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 539
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .locals 1

    .prologue
    .line 511
    iget-boolean v0, p0, Landroidx/g/b/b;->j:Z

    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {p0}, Landroidx/g/b/b;->l()V

    .line 519
    :goto_0
    return-void

    .line 517
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/g/b/b;->m:Z

    goto :goto_0
.end method
