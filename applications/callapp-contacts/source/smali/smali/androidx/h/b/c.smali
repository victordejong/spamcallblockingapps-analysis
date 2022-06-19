.class public Landroidx/h/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/h/b/c$b;,
        Landroidx/h/b/c$a;
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
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Z

.field private d:Z

.field public g:I

.field public h:Landroidx/h/b/c$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/h/b/c$b<",
            "TD;>;"
        }
    .end annotation
.end field

.field public i:Z

.field j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Landroidx/h/b/c;->b:Z

    .line 44
    iput-boolean v0, p0, Landroidx/h/b/c;->i:Z

    const/4 v1, 0x1

    .line 45
    iput-boolean v1, p0, Landroidx/h/b/c;->c:Z

    .line 46
    iput-boolean v0, p0, Landroidx/h/b/c;->d:Z

    .line 47
    iput-boolean v0, p0, Landroidx/h/b/c;->j:Z

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/h/b/c;->a:Landroid/content/Context;

    return-void
.end method

.method public static c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    if-nez p0, :cond_0

    const-string p0, "null"

    .line 528
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 530
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 531
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    .line 532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 534
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public final a(Landroidx/h/b/c$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/h/b/c$b<",
            "TD;>;)V"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Landroidx/h/b/c;->h:Landroidx/h/b/c$b;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 192
    iput-object p1, p0, Landroidx/h/b/c;->h:Landroidx/h/b/c$b;

    return-void

    .line 190
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempting to unregister the wrong listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 187
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No listener register"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 566
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mId="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroidx/h/b/c;->g:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mListener="

    .line 567
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/h/b/c;->h:Landroidx/h/b/c$b;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 568
    iget-boolean p2, p0, Landroidx/h/b/c;->b:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Landroidx/h/b/c;->d:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Landroidx/h/b/c;->j:Z

    if-eqz p2, :cond_1

    .line 569
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mStarted="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/h/b/c;->b:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mContentChanged="

    .line 570
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/h/b/c;->d:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mProcessingChange="

    .line 571
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/h/b/c;->j:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 573
    :cond_1
    iget-boolean p2, p0, Landroidx/h/b/c;->i:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Landroidx/h/b/c;->c:Z

    if-eqz p2, :cond_3

    .line 574
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mAbandoned="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroidx/h/b/c;->i:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Z)V

    const-string p1, " mReset="

    .line 575
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroidx/h/b/c;->c:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

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

    .line 130
    iget-object v0, p0, Landroidx/h/b/c;->h:Landroidx/h/b/c$b;

    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v0, p1}, Landroidx/h/b/c$b;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected g()V
    .locals 0

    return-void
.end method

.method protected h()V
    .locals 0

    return-void
.end method

.method protected i()V
    .locals 0

    return-void
.end method

.method public final j()Landroid/content/Context;
    .locals 1

    .line 153
    iget-object v0, p0, Landroidx/h/b/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    .line 237
    iget-boolean v0, p0, Landroidx/h/b/c;->b:Z

    return v0
.end method

.method public final l()Z
    .locals 1

    .line 255
    iget-boolean v0, p0, Landroidx/h/b/c;->c:Z

    return v0
.end method

.method public final m()V
    .locals 1

    const/4 v0, 0x1

    .line 281
    iput-boolean v0, p0, Landroidx/h/b/c;->b:Z

    const/4 v0, 0x0

    .line 282
    iput-boolean v0, p0, Landroidx/h/b/c;->c:Z

    .line 283
    iput-boolean v0, p0, Landroidx/h/b/c;->i:Z

    .line 284
    invoke-virtual {p0}, Landroidx/h/b/c;->g()V

    return-void
.end method

.method public final n()Z
    .locals 1

    .line 317
    invoke-virtual {p0}, Landroidx/h/b/c;->b()Z

    move-result v0

    return v0
.end method

.method public final o()V
    .locals 0

    .line 346
    invoke-virtual {p0}, Landroidx/h/b/c;->a()V

    return-void
.end method

.method public final p()V
    .locals 1

    const/4 v0, 0x0

    .line 379
    iput-boolean v0, p0, Landroidx/h/b/c;->b:Z

    .line 380
    invoke-virtual {p0}, Landroidx/h/b/c;->h()V

    return-void
.end method

.method public final q()V
    .locals 1

    .line 446
    invoke-virtual {p0}, Landroidx/h/b/c;->i()V

    const/4 v0, 0x1

    .line 447
    iput-boolean v0, p0, Landroidx/h/b/c;->c:Z

    const/4 v0, 0x0

    .line 448
    iput-boolean v0, p0, Landroidx/h/b/c;->b:Z

    .line 449
    iput-boolean v0, p0, Landroidx/h/b/c;->i:Z

    .line 450
    iput-boolean v0, p0, Landroidx/h/b/c;->d:Z

    .line 451
    iput-boolean v0, p0, Landroidx/h/b/c;->j:Z

    return-void
.end method

.method public final r()Z
    .locals 2

    .line 470
    iget-boolean v0, p0, Landroidx/h/b/c;->d:Z

    const/4 v1, 0x0

    .line 471
    iput-boolean v1, p0, Landroidx/h/b/c;->d:Z

    .line 472
    iget-boolean v1, p0, Landroidx/h/b/c;->j:Z

    or-int/2addr v1, v0

    iput-boolean v1, p0, Landroidx/h/b/c;->j:Z

    return v0
.end method

.method public final s()V
    .locals 1

    .line 495
    iget-boolean v0, p0, Landroidx/h/b/c;->j:Z

    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {p0}, Landroidx/h/b/c;->t()V

    :cond_0
    return-void
.end method

.method public final t()V
    .locals 1

    .line 510
    iget-boolean v0, p0, Landroidx/h/b/c;->b:Z

    if-eqz v0, :cond_0

    .line 1346
    invoke-virtual {p0}, Landroidx/h/b/c;->a()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 516
    iput-boolean v0, p0, Landroidx/h/b/c;->d:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 543
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 544
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "{"

    .line 545
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " id="

    .line 547
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    iget v1, p0, Landroidx/h/b/c;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 549
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
