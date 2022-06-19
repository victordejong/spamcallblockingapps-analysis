.class public final Lmg$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ldh;

.field public final b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lag$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lbs;

.field public final d:Z

.field public final f:I

.field public final g:I

.field public final h:Z

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:Z

.field public final n:Z


# direct methods
.method public constructor <init>(Ldh;Ldh;Ljava/util/concurrent/CopyOnWriteArrayList;Lbs;ZIIZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldh;",
            "Ldh;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lag$a;",
            ">;",
            "Lbs;",
            "ZIIZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmg$b;->a:Ldh;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lmg$b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p4, p0, Lmg$b;->c:Lbs;

    iput-boolean p5, p0, Lmg$b;->d:Z

    iput p6, p0, Lmg$b;->f:I

    iput p7, p0, Lmg$b;->g:I

    iput-boolean p8, p0, Lmg$b;->h:Z

    iput-boolean p9, p0, Lmg$b;->n:Z

    iget p3, p2, Ldh;->f:I

    iget p4, p1, Ldh;->f:I

    const/4 p5, 0x1

    const/4 p6, 0x0

    if-eq p3, p4, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lmg$b;->j:Z

    iget-object p3, p2, Ldh;->a:Lph;

    iget-object p4, p1, Ldh;->a:Lph;

    if-ne p3, p4, :cond_2

    iget-object p3, p2, Ldh;->b:Ljava/lang/Object;

    iget-object p4, p1, Ldh;->b:Ljava/lang/Object;

    if-eq p3, p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p3, 0x1

    :goto_2
    iput-boolean p3, p0, Lmg$b;->k:Z

    iget-boolean p3, p2, Ldh;->g:Z

    iget-boolean p4, p1, Ldh;->g:Z

    if-eq p3, p4, :cond_3

    const/4 p3, 0x1

    goto :goto_3

    :cond_3
    const/4 p3, 0x0

    :goto_3
    iput-boolean p3, p0, Lmg$b;->l:Z

    iget-object p2, p2, Ldh;->i:Lcs;

    iget-object p1, p1, Ldh;->i:Lcs;

    if-eq p2, p1, :cond_4

    goto :goto_4

    :cond_4
    const/4 p5, 0x0

    :goto_4
    iput-boolean p5, p0, Lmg$b;->m:Z

    return-void
.end method


# virtual methods
.method public final synthetic a(Lfh$b;)V
    .locals 3

    iget-object v0, p0, Lmg$b;->a:Ldh;

    iget-object v1, v0, Ldh;->a:Lph;

    iget-object v0, v0, Ldh;->b:Ljava/lang/Object;

    iget v2, p0, Lmg$b;->g:I

    invoke-interface {p1, v1, v0, v2}, Lfh$b;->d(Lph;Ljava/lang/Object;I)V

    return-void
.end method

.method public final synthetic b(Lfh$b;)V
    .locals 1

    iget v0, p0, Lmg$b;->f:I

    invoke-interface {p1, v0}, Lfh$b;->onPositionDiscontinuity(I)V

    return-void
.end method

.method public final synthetic c(Lfh$b;)V
    .locals 2

    iget-object v0, p0, Lmg$b;->a:Ldh;

    iget-object v1, v0, Ldh;->h:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iget-object v0, v0, Ldh;->i:Lcs;

    iget-object v0, v0, Lcs;->c:Lzr;

    invoke-interface {p1, v1, v0}, Lfh$b;->s(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Lzr;)V

    return-void
.end method

.method public final synthetic d(Lfh$b;)V
    .locals 1

    iget-object v0, p0, Lmg$b;->a:Ldh;

    iget-boolean v0, v0, Ldh;->g:Z

    invoke-interface {p1, v0}, Lfh$b;->onLoadingChanged(Z)V

    return-void
.end method

.method public final synthetic e(Lfh$b;)V
    .locals 2

    iget-boolean v0, p0, Lmg$b;->n:Z

    iget-object v1, p0, Lmg$b;->a:Ldh;

    iget v1, v1, Ldh;->f:I

    invoke-interface {p1, v0, v1}, Lfh$b;->onPlayerStateChanged(ZI)V

    return-void
.end method

.method public run()V
    .locals 2

    iget-boolean v0, p0, Lmg$b;->k:Z

    if-nez v0, :cond_0

    iget v0, p0, Lmg$b;->g:I

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lmg$b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lng;

    invoke-direct {v1, p0}, Lng;-><init>(Lmg$b;)V

    invoke-static {v0, v1}, Lmg;->e(Ljava/util/concurrent/CopyOnWriteArrayList;Lag$b;)V

    :cond_1
    iget-boolean v0, p0, Lmg$b;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmg$b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Log;

    invoke-direct {v1, p0}, Log;-><init>(Lmg$b;)V

    invoke-static {v0, v1}, Lmg;->e(Ljava/util/concurrent/CopyOnWriteArrayList;Lag$b;)V

    :cond_2
    iget-boolean v0, p0, Lmg$b;->m:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmg$b;->c:Lbs;

    iget-object v1, p0, Lmg$b;->a:Ldh;

    iget-object v1, v1, Ldh;->i:Lcs;

    iget-object v1, v1, Lcs;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lbs;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lmg$b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lpg;

    invoke-direct {v1, p0}, Lpg;-><init>(Lmg$b;)V

    invoke-static {v0, v1}, Lmg;->e(Ljava/util/concurrent/CopyOnWriteArrayList;Lag$b;)V

    :cond_3
    iget-boolean v0, p0, Lmg$b;->l:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmg$b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lqg;

    invoke-direct {v1, p0}, Lqg;-><init>(Lmg$b;)V

    invoke-static {v0, v1}, Lmg;->e(Ljava/util/concurrent/CopyOnWriteArrayList;Lag$b;)V

    :cond_4
    iget-boolean v0, p0, Lmg$b;->j:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmg$b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lrg;

    invoke-direct {v1, p0}, Lrg;-><init>(Lmg$b;)V

    invoke-static {v0, v1}, Lmg;->e(Ljava/util/concurrent/CopyOnWriteArrayList;Lag$b;)V

    :cond_5
    iget-boolean v0, p0, Lmg$b;->h:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lmg$b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v1, Lsg;->a:Lag$b;

    invoke-static {v0, v1}, Lmg;->e(Ljava/util/concurrent/CopyOnWriteArrayList;Lag$b;)V

    :cond_6
    return-void
.end method
