.class final Landroidx/media2/exoplayer/external/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Landroidx/media2/exoplayer/external/ac;

.field final b:I

.field final c:I

.field final d:Z

.field private final e:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/media2/exoplayer/external/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroidx/media2/exoplayer/external/trackselection/g;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:Z

.field private final l:Z

.field private final m:Z


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/ac;Landroidx/media2/exoplayer/external/ac;Ljava/util/concurrent/CopyOnWriteArrayList;Landroidx/media2/exoplayer/external/trackselection/g;ZIIZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/ac;",
            "Landroidx/media2/exoplayer/external/ac;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/media2/exoplayer/external/a$a;",
            ">;",
            "Landroidx/media2/exoplayer/external/trackselection/g;",
            "ZIIZZ)V"
        }
    .end annotation

    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 753
    iput-object p1, p0, Landroidx/media2/exoplayer/external/h$a;->a:Landroidx/media2/exoplayer/external/ac;

    .line 754
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/h$a;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 755
    iput-object p4, p0, Landroidx/media2/exoplayer/external/h$a;->f:Landroidx/media2/exoplayer/external/trackselection/g;

    .line 756
    iput-boolean p5, p0, Landroidx/media2/exoplayer/external/h$a;->g:Z

    .line 757
    iput p6, p0, Landroidx/media2/exoplayer/external/h$a;->b:I

    .line 758
    iput p7, p0, Landroidx/media2/exoplayer/external/h$a;->c:I

    .line 759
    iput-boolean p8, p0, Landroidx/media2/exoplayer/external/h$a;->h:Z

    .line 760
    iput-boolean p9, p0, Landroidx/media2/exoplayer/external/h$a;->d:Z

    .line 761
    iget p3, p2, Landroidx/media2/exoplayer/external/ac;->e:I

    iget p4, p1, Landroidx/media2/exoplayer/external/ac;->e:I

    const/4 p5, 0x1

    const/4 p6, 0x0

    if-eq p3, p4, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/h$a;->i:Z

    .line 762
    iget-object p3, p2, Landroidx/media2/exoplayer/external/ac;->f:Landroidx/media2/exoplayer/external/ExoPlaybackException;

    iget-object p4, p1, Landroidx/media2/exoplayer/external/ac;->f:Landroidx/media2/exoplayer/external/ExoPlaybackException;

    if-eq p3, p4, :cond_1

    iget-object p3, p1, Landroidx/media2/exoplayer/external/ac;->f:Landroidx/media2/exoplayer/external/ExoPlaybackException;

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/h$a;->j:Z

    .line 765
    iget-object p3, p2, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    iget-object p4, p1, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    if-eq p3, p4, :cond_2

    const/4 p3, 0x1

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :goto_2
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/h$a;->k:Z

    .line 766
    iget-boolean p3, p2, Landroidx/media2/exoplayer/external/ac;->g:Z

    iget-boolean p4, p1, Landroidx/media2/exoplayer/external/ac;->g:Z

    if-eq p3, p4, :cond_3

    const/4 p3, 0x1

    goto :goto_3

    :cond_3
    const/4 p3, 0x0

    :goto_3
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/h$a;->l:Z

    .line 767
    iget-object p2, p2, Landroidx/media2/exoplayer/external/ac;->i:Landroidx/media2/exoplayer/external/trackselection/h;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/ac;->i:Landroidx/media2/exoplayer/external/trackselection/h;

    if-eq p2, p1, :cond_4

    goto :goto_4

    :cond_4
    const/4 p5, 0x0

    :goto_4
    iput-boolean p5, p0, Landroidx/media2/exoplayer/external/h$a;->m:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 773
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/h$a;->k:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/media2/exoplayer/external/h$a;->c:I

    if-nez v0, :cond_1

    .line 774
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/h$a;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidx/media2/exoplayer/external/n;

    invoke-direct {v1, p0}, Landroidx/media2/exoplayer/external/n;-><init>(Landroidx/media2/exoplayer/external/h$a;)V

    .line 1049
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/h;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Landroidx/media2/exoplayer/external/a$b;)V

    .line 778
    :cond_1
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/h$a;->g:Z

    if-eqz v0, :cond_2

    .line 779
    iget-object v0, p0, Landroidx/media2/exoplayer/external/h$a;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidx/media2/exoplayer/external/o;

    invoke-direct {v1, p0}, Landroidx/media2/exoplayer/external/o;-><init>(Landroidx/media2/exoplayer/external/h$a;)V

    .line 2049
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/h;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Landroidx/media2/exoplayer/external/a$b;)V

    .line 783
    :cond_2
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/h$a;->j:Z

    if-eqz v0, :cond_3

    .line 784
    iget-object v0, p0, Landroidx/media2/exoplayer/external/h$a;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidx/media2/exoplayer/external/p;

    invoke-direct {v1, p0}, Landroidx/media2/exoplayer/external/p;-><init>(Landroidx/media2/exoplayer/external/h$a;)V

    .line 3049
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/h;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Landroidx/media2/exoplayer/external/a$b;)V

    .line 786
    :cond_3
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/h$a;->m:Z

    if-eqz v0, :cond_4

    .line 787
    iget-object v0, p0, Landroidx/media2/exoplayer/external/h$a;->f:Landroidx/media2/exoplayer/external/trackselection/g;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/h$a;->a:Landroidx/media2/exoplayer/external/ac;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/ac;->i:Landroidx/media2/exoplayer/external/trackselection/h;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/trackselection/h;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/g;->a(Ljava/lang/Object;)V

    .line 788
    iget-object v0, p0, Landroidx/media2/exoplayer/external/h$a;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidx/media2/exoplayer/external/q;

    invoke-direct {v1, p0}, Landroidx/media2/exoplayer/external/q;-><init>(Landroidx/media2/exoplayer/external/h$a;)V

    .line 4049
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/h;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Landroidx/media2/exoplayer/external/a$b;)V

    .line 794
    :cond_4
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/h$a;->l:Z

    if-eqz v0, :cond_5

    .line 795
    iget-object v0, p0, Landroidx/media2/exoplayer/external/h$a;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidx/media2/exoplayer/external/r;

    invoke-direct {v1, p0}, Landroidx/media2/exoplayer/external/r;-><init>(Landroidx/media2/exoplayer/external/h$a;)V

    .line 5049
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/h;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Landroidx/media2/exoplayer/external/a$b;)V

    .line 797
    :cond_5
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/h$a;->i:Z

    if-eqz v0, :cond_6

    .line 798
    iget-object v0, p0, Landroidx/media2/exoplayer/external/h$a;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidx/media2/exoplayer/external/s;

    invoke-direct {v1, p0}, Landroidx/media2/exoplayer/external/s;-><init>(Landroidx/media2/exoplayer/external/h$a;)V

    .line 6049
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/h;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Landroidx/media2/exoplayer/external/a$b;)V

    .line 802
    :cond_6
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/h$a;->h:Z

    if-eqz v0, :cond_7

    .line 803
    iget-object v0, p0, Landroidx/media2/exoplayer/external/h$a;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v1, Landroidx/media2/exoplayer/external/t;->a:Landroidx/media2/exoplayer/external/a$b;

    .line 7049
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/h;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Landroidx/media2/exoplayer/external/a$b;)V

    :cond_7
    return-void
.end method
