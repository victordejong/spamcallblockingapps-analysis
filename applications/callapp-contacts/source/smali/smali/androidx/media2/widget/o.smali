.class final Landroidx/media2/widget/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/widget/o$b;,
        Landroidx/media2/widget/o$a;,
        Landroidx/media2/widget/o$d;,
        Landroidx/media2/widget/o$c;
    }
.end annotation


# instance fields
.field a:Landroidx/media2/widget/h;

.field b:Landroidx/media2/widget/p;

.field c:Landroid/view/accessibility/CaptioningManager;

.field d:Landroid/os/Handler;

.field final e:Landroid/os/Handler$Callback;

.field f:Z

.field g:Z

.field h:Landroidx/media2/widget/o$a;

.field i:Landroidx/media2/widget/o$b;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/widget/o$d;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/widget/p;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/lang/Object;

.field private final m:Ljava/lang/Object;

.field private n:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, v0, v0}, Landroidx/media2/widget/o;-><init>(Landroid/content/Context;Landroidx/media2/widget/h;Landroidx/media2/widget/o$b;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/media2/widget/h;Landroidx/media2/widget/o$b;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/widget/o;->l:Ljava/lang/Object;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/widget/o;->m:Ljava/lang/Object;

    .line 62
    new-instance v0, Landroidx/media2/widget/o$1;

    invoke-direct {v0, p0}, Landroidx/media2/widget/o$1;-><init>(Landroidx/media2/widget/o;)V

    iput-object v0, p0, Landroidx/media2/widget/o;->e:Landroid/os/Handler$Callback;

    const/4 v0, 0x0

    .line 287
    iput-boolean v0, p0, Landroidx/media2/widget/o;->f:Z

    .line 288
    iput-boolean v0, p0, Landroidx/media2/widget/o;->g:Z

    .line 98
    iput-object p2, p0, Landroidx/media2/widget/o;->a:Landroidx/media2/widget/h;

    .line 99
    iput-object p3, p0, Landroidx/media2/widget/o;->i:Landroidx/media2/widget/o$b;

    .line 101
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/media2/widget/o;->j:Ljava/util/ArrayList;

    .line 102
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/media2/widget/o;->k:Ljava/util/ArrayList;

    .line 103
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x13

    if-lt p2, p3, :cond_0

    const-string p2, "captioning"

    .line 105
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    iput-object p1, p0, Landroidx/media2/widget/o;->c:Landroid/view/accessibility/CaptioningManager;

    .line 106
    new-instance p1, Landroidx/media2/widget/o$2;

    invoke-direct {p1, p0}, Landroidx/media2/widget/o$2;-><init>(Landroidx/media2/widget/o;)V

    iput-object p1, p0, Landroidx/media2/widget/o;->n:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    :cond_0
    return-void
.end method


# virtual methods
.method final a()Landroidx/media2/widget/p$c;
    .locals 1

    .line 151
    iget-object v0, p0, Landroidx/media2/widget/o;->b:Landroidx/media2/widget/p;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 154
    :cond_0
    invoke-virtual {v0}, Landroidx/media2/widget/p;->a()Landroidx/media2/widget/p$c;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/media/MediaFormat;)Landroidx/media2/widget/p;
    .locals 4

    .line 352
    iget-object v0, p0, Landroidx/media2/widget/o;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    :try_start_0
    iget-object v1, p0, Landroidx/media2/widget/o;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/widget/o$d;

    .line 354
    invoke-virtual {v2, p1}, Landroidx/media2/widget/o$d;->a(Landroid/media/MediaFormat;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 355
    invoke-virtual {v2, p1}, Landroidx/media2/widget/o$d;->b(Landroid/media/MediaFormat;)Landroidx/media2/widget/p;

    move-result-object p1

    .line 357
    iget-object v1, p0, Landroidx/media2/widget/o;->m:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 358
    :try_start_1
    iget-object v2, p0, Landroidx/media2/widget/o;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 359
    iget-object v2, p0, Landroidx/media2/widget/o;->c:Landroid/view/accessibility/CaptioningManager;

    iget-object v3, p0, Landroidx/media2/widget/o;->n:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 362
    :cond_1
    iget-object v2, p0, Landroidx/media2/widget/o;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p1

    :catchall_0
    move-exception p1

    .line 363
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 368
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

.method final a(Landroid/os/Message;)V
    .locals 2

    .line 514
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/widget/o;->d:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 515
    iget-object v0, p0, Landroidx/media2/widget/o;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void

    .line 517
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/o;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Landroidx/media2/widget/o$d;)V
    .locals 2

    .line 445
    iget-object v0, p0, Landroidx/media2/widget/o;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 447
    :try_start_0
    iget-object v1, p0, Landroidx/media2/widget/o;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 449
    iget-object v1, p0, Landroidx/media2/widget/o;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
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

.method public final a(Landroidx/media2/widget/p;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 169
    iget-object v0, p0, Landroidx/media2/widget/o;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 173
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/o;->d:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media2/widget/o;->a(Landroid/os/Message;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final b()Landroidx/media2/widget/p;
    .locals 16

    move-object/from16 v1, p0

    .line 231
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    iget-object v0, v1, Landroidx/media2/widget/o;->c:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-nez v0, :cond_1

    .line 234
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v0

    .line 236
    :goto_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lt v5, v2, :cond_2

    iget-object v2, v1, Landroidx/media2/widget/o;->c:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    .line 238
    :goto_2
    iget-object v5, v1, Landroidx/media2/widget/o;->m:Ljava/lang/Object;

    monitor-enter v5

    .line 239
    :try_start_0
    iget-object v8, v1, Landroidx/media2/widget/o;->k:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, -0x1

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media2/widget/p;

    .line 1073
    iget-object v11, v10, Landroidx/media2/widget/p;->e:Landroid/media/MediaFormat;

    const-string v12, "language"

    .line 241
    invoke-virtual {v11, v12}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "is-forced-subtitle"

    .line 243
    invoke-static {v11, v13, v7}, Landroidx/media2/widget/o$c;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    goto :goto_4

    :cond_3
    const/4 v13, 0x0

    :goto_4
    const-string v14, "is-autoselect"

    .line 245
    invoke-static {v11, v14, v6}, Landroidx/media2/widget/o$c;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_4

    const/4 v14, 0x1

    goto :goto_5

    :cond_4
    const/4 v14, 0x0

    :goto_5
    const-string v15, "is-default"

    .line 247
    invoke-static {v11, v15, v7}, Landroidx/media2/widget/o$c;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    goto :goto_6

    :cond_5
    const/4 v11, 0x0

    :goto_6
    if-eqz v4, :cond_7

    .line 250
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    const-string v6, ""

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 251
    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 252
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_7

    :cond_6
    const/4 v6, 0x0

    goto :goto_8

    :cond_7
    :goto_7
    const/4 v6, 0x1

    :goto_8
    if-eqz v13, :cond_8

    const/4 v12, 0x0

    goto :goto_9

    :cond_8
    const/16 v12, 0x8

    :goto_9
    if-nez v0, :cond_9

    if-eqz v11, :cond_9

    const/4 v15, 0x4

    goto :goto_a

    :cond_9
    const/4 v15, 0x0

    :goto_a
    add-int/2addr v12, v15

    if-eqz v14, :cond_a

    const/4 v15, 0x0

    goto :goto_b

    :cond_a
    const/4 v15, 0x2

    :goto_b
    add-int/2addr v12, v15

    add-int/2addr v12, v6

    if-eqz v2, :cond_c

    if-eqz v13, :cond_b

    goto :goto_d

    :cond_b
    :goto_c
    const/4 v6, 0x1

    goto :goto_3

    :cond_c
    :goto_d
    if-nez v0, :cond_d

    if-nez v11, :cond_e

    :cond_d
    if-eqz v6, :cond_b

    if-nez v14, :cond_e

    if-nez v13, :cond_e

    if-eqz v0, :cond_b

    :cond_e
    if-le v12, v9, :cond_b

    move-object v3, v10

    move v9, v12

    goto :goto_c

    .line 271
    :cond_f
    monitor-exit v5

    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()V
    .locals 2

    .line 292
    iget-object v0, p0, Landroidx/media2/widget/o;->d:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media2/widget/o;->a(Landroid/os/Message;)V

    return-void
.end method

.method public final d()V
    .locals 2

    .line 378
    iget-object v0, p0, Landroidx/media2/widget/o;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media2/widget/o;->a(Landroid/os/Message;)V

    return-void
.end method

.method protected final finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Landroidx/media2/widget/o;->c:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Landroidx/media2/widget/o;->n:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 127
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
