.class final Landroidx/media2/exoplayer/external/h$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/exoplayer/external/h;-><init>([Landroidx/media2/exoplayer/external/ag;Landroidx/media2/exoplayer/external/trackselection/g;Landroidx/media2/exoplayer/external/y;Landroidx/media2/exoplayer/external/upstream/c;Landroidx/media2/exoplayer/external/util/b;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/exoplayer/external/h;


# direct methods
.method constructor <init>(Landroidx/media2/exoplayer/external/h;Landroid/os/Looper;)V
    .locals 0

    .line 129
    iput-object p1, p0, Landroidx/media2/exoplayer/external/h$1;->a:Landroidx/media2/exoplayer/external/h;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 132
    iget-object v0, p0, Landroidx/media2/exoplayer/external/h$1;->a:Landroidx/media2/exoplayer/external/h;

    .line 1571
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    if-ne v1, v2, :cond_3

    .line 1580
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroidx/media2/exoplayer/external/ad;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_1

    .line 2590
    iget p1, v0, Landroidx/media2/exoplayer/external/h;->j:I

    sub-int/2addr p1, v2

    iput p1, v0, Landroidx/media2/exoplayer/external/h;->j:I

    .line 2592
    :cond_1
    iget p1, v0, Landroidx/media2/exoplayer/external/h;->j:I

    if-nez p1, :cond_2

    .line 2593
    iget-object p1, v0, Landroidx/media2/exoplayer/external/h;->k:Landroidx/media2/exoplayer/external/ad;

    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/ad;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 2594
    iput-object v1, v0, Landroidx/media2/exoplayer/external/h;->k:Landroidx/media2/exoplayer/external/ad;

    .line 2595
    new-instance p1, Landroidx/media2/exoplayer/external/l;

    invoke-direct {p1, v1}, Landroidx/media2/exoplayer/external/l;-><init>(Landroidx/media2/exoplayer/external/ad;)V

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/h;->a(Landroidx/media2/exoplayer/external/a$b;)V

    :cond_2
    return-void

    .line 1583
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1573
    :cond_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Landroidx/media2/exoplayer/external/ac;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 1605
    iget v5, v0, Landroidx/media2/exoplayer/external/h;->g:I

    sub-int/2addr v5, v1

    iput v5, v0, Landroidx/media2/exoplayer/external/h;->g:I

    .line 1606
    iget v1, v0, Landroidx/media2/exoplayer/external/h;->g:I

    if-nez v1, :cond_9

    .line 1607
    iget-wide v5, v4, Landroidx/media2/exoplayer/external/ac;->c:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v5, v7

    if-nez v1, :cond_6

    .line 1609
    iget-object v5, v4, Landroidx/media2/exoplayer/external/ac;->b:Landroidx/media2/exoplayer/external/source/t$a;

    const-wide/16 v6, 0x0

    iget-wide v8, v4, Landroidx/media2/exoplayer/external/ac;->d:J

    iget-wide v10, v4, Landroidx/media2/exoplayer/external/ac;->l:J

    .line 1610
    invoke-virtual/range {v4 .. v11}, Landroidx/media2/exoplayer/external/ac;->a(Landroidx/media2/exoplayer/external/source/t$a;JJJ)Landroidx/media2/exoplayer/external/ac;

    move-result-object v1

    goto :goto_1

    :cond_6
    move-object v1, v4

    .line 1616
    :goto_1
    iget-object v4, v0, Landroidx/media2/exoplayer/external/h;->m:Landroidx/media2/exoplayer/external/ac;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/al;->a()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, v1, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/al;->a()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1618
    iput v3, v0, Landroidx/media2/exoplayer/external/h;->o:I

    .line 1619
    iput v3, v0, Landroidx/media2/exoplayer/external/h;->n:I

    const-wide/16 v4, 0x0

    .line 1620
    iput-wide v4, v0, Landroidx/media2/exoplayer/external/h;->p:J

    .line 1624
    :cond_7
    iget-boolean v4, v0, Landroidx/media2/exoplayer/external/h;->h:Z

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    goto :goto_2

    :cond_8
    const/4 v4, 0x2

    .line 1627
    :goto_2
    iget-boolean v5, v0, Landroidx/media2/exoplayer/external/h;->i:Z

    .line 1628
    iput-boolean v3, v0, Landroidx/media2/exoplayer/external/h;->h:Z

    .line 1629
    iput-boolean v3, v0, Landroidx/media2/exoplayer/external/h;->i:Z

    move v3, p1

    .line 1630
    invoke-virtual/range {v0 .. v5}, Landroidx/media2/exoplayer/external/h;->a(Landroidx/media2/exoplayer/external/ac;ZIIZ)V

    :cond_9
    return-void
.end method
