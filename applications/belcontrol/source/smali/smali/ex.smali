.class public Lex;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lex$d;,
        Lex$c;,
        Lex$f;,
        Lex$e;
    }
.end annotation


# instance fields
.field public a:Lrw;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lex$f;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lfx;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public f:Lfx;

.field public g:Landroid/view/accessibility/CaptioningManager;

.field public h:Landroid/os/Handler;

.field public final i:Landroid/os/Handler$Callback;

.field public j:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

.field public k:Z

.field public l:Z

.field public m:Lex$c;

.field public n:Lex$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lrw;Lex$d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lex;->d:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lex;->e:Ljava/lang/Object;

    new-instance v0, Lex$a;

    invoke-direct {v0, p0}, Lex$a;-><init>(Lex;)V

    iput-object v0, p0, Lex;->i:Landroid/os/Handler$Callback;

    new-instance v0, Lex$b;

    invoke-direct {v0, p0}, Lex$b;-><init>(Lex;)V

    iput-object v0, p0, Lex;->j:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lex;->k:Z

    iput-boolean v0, p0, Lex;->l:Z

    iput-object p2, p0, Lex;->a:Lrw;

    iput-object p3, p0, Lex;->n:Lex$d;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lex;->b:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lex;->c:Ljava/util/ArrayList;

    const-string p2, "captioning"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    iput-object p1, p0, Lex;->g:Landroid/view/accessibility/CaptioningManager;

    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaFormat;)Lfx;
    .locals 4

    iget-object v0, p0, Lex;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lex;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lex$f;

    invoke-virtual {v2, p1}, Lex$f;->b(Landroid/media/MediaFormat;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1}, Lex$f;->a(Landroid/media/MediaFormat;)Lfx;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lex;->e:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lex;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lex;->g:Landroid/view/accessibility/CaptioningManager;

    iget-object v3, p0, Lex;->j:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v1, v3}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    :cond_1
    iget-object v1, p0, Lex;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v2

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :cond_2
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lex;->l:Z

    iget-object v0, p0, Lex;->f:Lfx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lfx;->e()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 3

    iget-boolean v0, p0, Lex;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lex;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lex;->g:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lex;->f:Lfx;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lfx;->b()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v2, "is-forced-subtitle"

    invoke-static {v0, v2, v1}, Lex$e;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lex;->f:Lfx;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lfx;->d()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lex;->i()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lex;->o()V

    :cond_3
    :goto_1
    iput-boolean v1, p0, Lex;->l:Z

    :cond_4
    invoke-virtual {p0}, Lex;->g()Lfx;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0}, Lex;->m(Lfx;)Z

    iput-boolean v1, p0, Lex;->k:Z

    iget-boolean v0, p0, Lex;->l:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lex;->o()V

    iput-boolean v1, p0, Lex;->l:Z

    :cond_5
    return-void
.end method

.method public e(Lfx;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lex;->k:Z

    iget-object v0, p0, Lex;->f:Lfx;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lfx;->e()V

    iget-object v0, p0, Lex;->f:Lfx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfx;->j(Lrw;)V

    :cond_1
    iput-object p1, p0, Lex;->f:Lfx;

    iget-object v0, p0, Lex;->m:Lex$c;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lex;->h()Lfx$c;

    move-result-object v1

    invoke-interface {v0, v1}, Lex$c;->a(Lfx$c;)V

    :cond_2
    iget-object v0, p0, Lex;->f:Lfx;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lex;->a:Lrw;

    invoke-virtual {v0, v1}, Lfx;->j(Lrw;)V

    iget-object v0, p0, Lex;->f:Lfx;

    invoke-virtual {v0}, Lfx;->k()V

    :cond_3
    iget-object v0, p0, Lex;->n:Lex$d;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lex$d;->a(Lfx;)V

    :cond_4
    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lex;->l:Z

    iget-object v0, p0, Lex;->f:Lfx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lfx;->k()V

    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 2

    iget-object v0, p0, Lex;->g:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Lex;->j:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public g()Lfx;
    .locals 16

    move-object/from16 v1, p0

    iget-object v0, v1, Lex;->g:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    iget-object v3, v1, Lex;->g:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    iget-object v5, v1, Lex;->e:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v6, v1, Lex;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, -0x1

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lfx;

    invoke-virtual {v9}, Lfx;->b()Landroid/media/MediaFormat;

    move-result-object v10

    const-string v11, "language"

    invoke-virtual {v10, v11}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "is-forced-subtitle"

    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Lex$e;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    goto :goto_2

    :cond_1
    const/4 v12, 0x0

    :goto_2
    const-string v14, "is-autoselect"

    invoke-static {v10, v14, v4}, Lex$e;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_2

    const/4 v14, 0x1

    goto :goto_3

    :cond_2
    const/4 v14, 0x0

    :goto_3
    const-string v15, "is-default"

    invoke-static {v10, v15, v13}, Lex$e;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    goto :goto_4

    :cond_3
    const/4 v10, 0x0

    :goto_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    const-string v4, ""

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_5

    :cond_4
    const/4 v4, 0x0

    goto :goto_6

    :cond_5
    :goto_5
    const/4 v4, 0x1

    :goto_6
    if-eqz v12, :cond_6

    const/4 v11, 0x0

    goto :goto_7

    :cond_6
    const/16 v11, 0x8

    :goto_7
    if-nez v0, :cond_7

    if-eqz v10, :cond_7

    const/4 v15, 0x4

    goto :goto_8

    :cond_7
    const/4 v15, 0x0

    :goto_8
    add-int/2addr v11, v15

    if-eqz v14, :cond_8

    goto :goto_9

    :cond_8
    const/4 v13, 0x2

    :goto_9
    add-int/2addr v11, v13

    add-int/2addr v11, v4

    if-eqz v3, :cond_a

    if-nez v12, :cond_a

    :cond_9
    :goto_a
    const/4 v4, 0x1

    goto :goto_1

    :cond_a
    if-nez v0, :cond_b

    if-nez v10, :cond_c

    :cond_b
    if-eqz v4, :cond_9

    if-nez v14, :cond_c

    if-nez v12, :cond_c

    if-eqz v0, :cond_9

    :cond_c
    if-le v11, v8, :cond_9

    move-object v7, v9

    move v8, v11

    goto :goto_a

    :cond_d
    monitor-exit v5

    return-object v7

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final h()Lfx$c;
    .locals 1

    iget-object v0, p0, Lex;->f:Lfx;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lfx;->c()Lfx$c;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lex;->h:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lex;->j(Landroid/os/Message;)V

    return-void
.end method

.method public final j(Landroid/os/Message;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lex;->h:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lex;->h:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lex;->h:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public k(Lex$f;)V
    .locals 2

    iget-object v0, p0, Lex;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lex;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lex;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lex;->h:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lex;->j(Landroid/os/Message;)V

    return-void
.end method

.method public m(Lfx;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lex;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lex;->h:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lex;->j(Landroid/os/Message;)V

    const/4 p1, 0x1

    return p1
.end method

.method public n(Lex$c;)V
    .locals 2

    iget-object v0, p0, Lex;->m:Lex$c;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lex;->b()V

    iget-object v0, p0, Lex;->m:Lex$c;

    invoke-interface {v0, v1}, Lex$c;->a(Lfx$c;)V

    :cond_1
    iput-object p1, p0, Lex;->m:Lex$c;

    iput-object v1, p0, Lex;->h:Landroid/os/Handler;

    if-eqz p1, :cond_2

    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lex;->m:Lex$c;

    invoke-interface {v0}, Lex$c;->b()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lex;->i:Landroid/os/Handler$Callback;

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lex;->h:Landroid/os/Handler;

    invoke-virtual {p0}, Lex;->b()V

    iget-object p1, p0, Lex;->m:Lex$c;

    invoke-virtual {p0}, Lex;->h()Lfx$c;

    move-result-object v0

    invoke-interface {p1, v0}, Lex$c;->a(Lfx$c;)V

    :cond_2
    return-void
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lex;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lex;->j(Landroid/os/Message;)V

    return-void
.end method
