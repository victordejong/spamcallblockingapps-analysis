.class final Landroidx/media2/session/j;
.super Landroidx/media2/session/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/j$a;,
        Landroidx/media2/session/j$b;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/media2/session/h;",
            ">;"
        }
    .end annotation
.end field

.field final b:Landroidx/media2/session/v;


# direct methods
.method constructor <init>(Landroidx/media2/session/h;Landroidx/media2/session/v;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroidx/media2/session/b$a;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media2/session/j;->a:Ljava/lang/ref/WeakReference;

    .line 49
    iput-object p2, p0, Landroidx/media2/session/j;->b:Landroidx/media2/session/v;

    return-void
.end method

.method private a(Landroidx/media2/session/j$a;)V
    .locals 4

    .line 526
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 528
    :try_start_0
    iget-object v2, p0, Landroidx/media2/session/j;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/session/h;

    .line 529
    instance-of v3, v2, Landroidx/media2/session/f;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroidx/media2/session/h;->a()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 532
    :cond_0
    check-cast v2, Landroidx/media2/session/f;

    invoke-interface {p1, v2}, Landroidx/media2/session/j$a;->a(Landroidx/media2/session/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 535
    throw p1
.end method

.method private a(Landroidx/media2/session/j$b;)V
    .locals 4

    .line 513
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 515
    :try_start_0
    iget-object v2, p0, Landroidx/media2/session/j;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/session/h;

    if-eqz v2, :cond_1

    .line 516
    invoke-virtual {v2}, Landroidx/media2/session/h;->a()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 519
    :cond_0
    invoke-interface {p1, v2}, Landroidx/media2/session/j$b;->a(Landroidx/media2/session/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 522
    throw p1
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 202
    new-instance p1, Landroidx/media2/session/j$3;

    invoke-direct {p1, p0}, Landroidx/media2/session/j$3;-><init>(Landroidx/media2/session/j;)V

    invoke-direct {p0, p1}, Landroidx/media2/session/j;->a(Landroidx/media2/session/j$b;)V

    return-void
.end method

.method public final a(IIIII)V
    .locals 6

    .line 181
    new-instance p1, Landroidx/media2/session/j$23;

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/media2/session/j$23;-><init>(Landroidx/media2/session/j;IIII)V

    invoke-direct {p0, p1}, Landroidx/media2/session/j;->a(Landroidx/media2/session/j$b;)V

    return-void
.end method

.method public final a(IJJF)V
    .locals 7

    .line 116
    new-instance p1, Landroidx/media2/session/j$19;

    move-object v0, p1

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/media2/session/j$19;-><init>(Landroidx/media2/session/j;JJF)V

    invoke-direct {p0, p1}, Landroidx/media2/session/j;->a(Landroidx/media2/session/j$b;)V

    return-void
.end method

.method public final a(IJJI)V
    .locals 7

    .line 105
    new-instance p1, Landroidx/media2/session/j$18;

    move-object v0, p1

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/media2/session/j$18;-><init>(Landroidx/media2/session/j;JJI)V

    invoke-direct {p0, p1}, Landroidx/media2/session/j;->a(Landroidx/media2/session/j$b;)V

    return-void
.end method

.method public final a(IJJJ)V
    .locals 8

    .line 235
    new-instance p1, Landroidx/media2/session/j$5;

    move-object v0, p1

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Landroidx/media2/session/j$5;-><init>(Landroidx/media2/session/j;JJJ)V

    invoke-direct {p0, p1}, Landroidx/media2/session/j;->a(Landroidx/media2/session/j$b;)V

    return-void
.end method

.method public final a(ILandroidx/media2/common/ParcelImplListSlice;Landroidx/versionedparcelable/ParcelImpl;III)V
    .locals 7

    if-nez p3, :cond_0

    return-void

    .line 151
    :cond_0
    new-instance p1, Landroidx/media2/session/j$21;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/media2/session/j$21;-><init>(Landroidx/media2/session/j;Landroidx/media2/common/ParcelImplListSlice;Landroidx/versionedparcelable/ParcelImpl;III)V

    invoke-direct {p0, p1}, Landroidx/media2/session/j;->a(Landroidx/media2/session/j$b;)V

    return-void
.end method

.method public final a(ILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 169
    :cond_0
    new-instance p1, Landroidx/media2/session/j$22;

    invoke-direct {p1, p0, p2}, Landroidx/media2/session/j$22;-><init>(Landroidx/media2/session/j;Landroidx/versionedparcelable/ParcelImpl;)V

    invoke-direct {p0, p1}, Landroidx/media2/session/j;->a(Landroidx/media2/session/j$b;)V

    return-void
.end method

.method public final a(ILandroidx/versionedparcelable/ParcelImpl;III)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    .line 92
    :cond_0
    new-instance p1, Landroidx/media2/session/j$17;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/media2/session/j$17;-><init>(Landroidx/media2/session/j;Landroidx/versionedparcelable/ParcelImpl;III)V

    invoke-direct {p0, p1}, Landroidx/media2/session/j;->a(Landroidx/media2/session/j$b;)V

    return-void
.end method

.method public final a(ILandroidx/versionedparcelable/ParcelImpl;IJJJ)V
    .locals 11

    if-nez p2, :cond_0

    return-void

    .line 130
    :cond_0
    new-instance v10, Landroidx/media2/session/j$20;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Landroidx/media2/session/j$20;-><init>(Landroidx/media2/session/j;Landroidx/versionedparcelable/ParcelImpl;IJJJ)V

    move-object v0, p0

    invoke-direct {p0, v10}, Landroidx/media2/session/j;->a(Landroidx/media2/session/j$b;)V

    return-void
.end method

.method public final a(ILandroidx/versionedparcelable/ParcelImpl;Landroid/os/Bundle;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 387
    :cond_0
    new-instance v0, Landroidx/media2/session/j$10;

    invoke-direct {v0, p0, p2, p1, p3}, Landroidx/media2/session/j$10;-><init>(Landroidx/media2/session/j;Landroidx/versionedparcelable/ParcelImpl;ILandroid/os/Bundle;)V

    invoke-direct {p0, v0}, Landroidx/media2/session/j;->a(Landroidx/media2/session/j$b;)V

    return-void
.end method

.method public final a(ILandroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    .line 248
    :cond_0
    new-instance p1, Landroidx/media2/session/j$6;

    invoke-direct {p1, p0, p3}, Landroidx/media2/session/j$6;-><init>(Landroidx/media2/session/j;Landroidx/versionedparcelable/ParcelImpl;)V

    invoke-direct {p0, p1}, Landroidx/media2/session/j;->a(Landroidx/media2/session/j$b;)V

    return-void
.end method

.method public final a(ILandroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;)V
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    new-instance p1, Landroidx/media2/session/j$7;

    invoke-direct {p1, p0, p2, p3, p4}, Landroidx/media2/session/j$7;-><init>(Landroidx/media2/session/j;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;)V

    invoke-direct {p0, p1}, Landroidx/media2/session/j;->a(Landroidx/media2/session/j$b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(ILjava/lang/String;ILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 1

    if-nez p4, :cond_0

    return-void

    .line 491
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "MediaControllerStub"

    if-eqz p1, :cond_1

    const-string p1, "onChildrenChanged(): Ignoring empty parentId"

    .line 492
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-gez p3, :cond_2

    .line 496
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onChildrenChanged(): Ignoring negative itemCount: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 499
    :cond_2
    new-instance p1, Landroidx/media2/session/j$16;

    invoke-direct {p1, p0, p2, p3, p4}, Landroidx/media2/session/j$16;-><init>(Landroidx/media2/session/j;Ljava/lang/String;ILandroidx/versionedparcelable/ParcelImpl;)V

    invoke-direct {p0, p1}, Landroidx/media2/session/j;->a(Landroidx/media2/session/j$a;)V

    return-void
.end method

.method public final a(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/versionedparcelable/ParcelImpl;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    const-string p1, "MediaControllerStub"

    const-string p2, "setCustomLayout(): Ignoring null commandButtonList"

    .line 345
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 348
    :cond_0
    new-instance v0, Landroidx/media2/session/j$8;

    invoke-direct {v0, p0, p2, p1}, Landroidx/media2/session/j$8;-><init>(Landroidx/media2/session/j;Ljava/util/List;I)V

    invoke-direct {p0, v0}, Landroidx/media2/session/j;->a(Landroidx/media2/session/j$b;)V

    return-void
.end method

.method public final a(ILjava/util/List;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/versionedparcelable/ParcelImpl;",
            ">;",
            "Landroidx/versionedparcelable/ParcelImpl;",
            "Landroidx/versionedparcelable/ParcelImpl;",
            "Landroidx/versionedparcelable/ParcelImpl;",
            "Landroidx/versionedparcelable/ParcelImpl;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 407
    :cond_0
    new-instance v8, Landroidx/media2/session/j$11;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroidx/media2/session/j$11;-><init>(Landroidx/media2/session/j;Ljava/util/List;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;I)V

    invoke-direct {p0, v8}, Landroidx/media2/session/j;->a(Landroidx/media2/session/j$b;)V

    return-void
.end method

.method public final b(I)V
    .locals 2

    .line 327
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 329
    :try_start_0
    iget-object p1, p0, Landroidx/media2/session/j;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/session/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 338
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 336
    :cond_0
    :try_start_1
    iget-object p1, p1, Landroidx/media2/session/h;->b:Landroidx/media2/session/MediaController;

    invoke-virtual {p1}, Landroidx/media2/session/MediaController;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 339
    throw p1
.end method

.method public final b(IIIII)V
    .locals 6

    .line 192
    new-instance p1, Landroidx/media2/session/j$2;

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/media2/session/j$2;-><init>(Landroidx/media2/session/j;IIII)V

    invoke-direct {p0, p1}, Landroidx/media2/session/j;->a(Landroidx/media2/session/j$b;)V

    return-void
.end method

.method public final b(ILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 219
    :cond_0
    new-instance p1, Landroidx/media2/session/j$4;

    invoke-direct {p1, p0, p2}, Landroidx/media2/session/j$4;-><init>(Landroidx/media2/session/j;Landroidx/versionedparcelable/ParcelImpl;)V

    invoke-direct {p0, p1}, Landroidx/media2/session/j;->a(Landroidx/media2/session/j$b;)V

    return-void
.end method

.method public final b(ILjava/lang/String;ILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-nez p4, :cond_0

    return-void

    .line 468
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "MediaControllerStub"

    if-eqz p1, :cond_1

    const-string p1, "onSearchResultChanged(): Ignoring empty query"

    .line 469
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-gez p3, :cond_2

    .line 473
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onSearchResultChanged(): Ignoring negative itemCount: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 476
    :cond_2
    new-instance p1, Landroidx/media2/session/j$15;

    invoke-direct {p1, p0, p2, p3, p4}, Landroidx/media2/session/j$15;-><init>(Landroidx/media2/session/j;Ljava/lang/String;ILandroidx/versionedparcelable/ParcelImpl;)V

    invoke-direct {p0, p1}, Landroidx/media2/session/j;->a(Landroidx/media2/session/j$a;)V

    return-void
.end method

.method public final c(ILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 31

    if-nez p2, :cond_0

    .line 293
    invoke-virtual/range {p0 .. p1}, Landroidx/media2/session/j;->b(I)V

    return-void

    .line 296
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    move-object/from16 v3, p0

    .line 298
    :try_start_0
    iget-object v0, v3, Landroidx/media2/session/j;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/media2/session/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    if-nez v4, :cond_1

    .line 321
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2078
    :cond_1
    :try_start_1
    invoke-static/range {p2 .. p2}, Landroidx/versionedparcelable/a;->a(Landroid/os/Parcelable;)Landroidx/versionedparcelable/c;

    move-result-object v0

    .line 305
    check-cast v0, Landroidx/media2/session/ConnectionResult;

    .line 2203
    iget-object v5, v0, Landroidx/media2/session/ConnectionResult;->o:Landroidx/media2/common/ParcelImplListSlice;

    .line 307
    invoke-static {v5}, Landroidx/media2/session/s;->a(Landroidx/media2/common/ParcelImplListSlice;)Ljava/util/List;

    move-result-object v5

    .line 3159
    iget-object v10, v0, Landroidx/media2/session/ConnectionResult;->b:Landroidx/media2/session/c;

    .line 3207
    iget-object v12, v0, Landroidx/media2/session/ConnectionResult;->p:Landroidx/media2/session/SessionCommandGroup;

    .line 4167
    iget v6, v0, Landroidx/media2/session/ConnectionResult;->e:I

    .line 4171
    iget-object v7, v0, Landroidx/media2/session/ConnectionResult;->f:Landroidx/media2/common/MediaItem;

    .line 4175
    iget-wide v8, v0, Landroidx/media2/session/ConnectionResult;->h:J

    .line 4179
    iget-wide v13, v0, Landroidx/media2/session/ConnectionResult;->i:J

    .line 4183
    iget v11, v0, Landroidx/media2/session/ConnectionResult;->j:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    move-wide v15, v1

    .line 4187
    :try_start_2
    iget-wide v1, v0, Landroidx/media2/session/ConnectionResult;->k:J

    .line 4191
    iget-object v3, v0, Landroidx/media2/session/ConnectionResult;->l:Landroidx/media2/session/MediaController$PlaybackInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    move-wide/from16 p1, v15

    .line 4195
    :try_start_3
    iget v15, v0, Landroidx/media2/session/ConnectionResult;->m:I

    move-object/from16 v16, v5

    .line 4199
    iget v5, v0, Landroidx/media2/session/ConnectionResult;->n:I

    move/from16 v17, v5

    .line 5163
    iget-object v5, v0, Landroidx/media2/session/ConnectionResult;->d:Landroid/app/PendingIntent;

    move-object/from16 v18, v5

    .line 5215
    iget v5, v0, Landroidx/media2/session/ConnectionResult;->q:I

    move/from16 v19, v5

    .line 5219
    iget v5, v0, Landroidx/media2/session/ConnectionResult;->r:I

    move/from16 v20, v5

    .line 5223
    iget v5, v0, Landroidx/media2/session/ConnectionResult;->s:I

    move/from16 v21, v5

    .line 5227
    iget-object v5, v0, Landroidx/media2/session/ConnectionResult;->t:Landroid/os/Bundle;

    move-object/from16 v22, v5

    .line 5231
    iget-object v5, v0, Landroidx/media2/session/ConnectionResult;->u:Landroidx/media2/common/VideoSize;

    move-object/from16 v23, v5

    .line 5236
    iget-object v5, v0, Landroidx/media2/session/ConnectionResult;->v:Ljava/util/List;

    if-nez v5, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_0

    :cond_2
    iget-object v5, v0, Landroidx/media2/session/ConnectionResult;->v:Ljava/util/List;

    :goto_0
    move-object/from16 v24, v5

    .line 5240
    iget-object v5, v0, Landroidx/media2/session/ConnectionResult;->w:Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-object/from16 v25, v5

    .line 5244
    iget-object v5, v0, Landroidx/media2/session/ConnectionResult;->x:Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-object/from16 v26, v5

    .line 5248
    iget-object v5, v0, Landroidx/media2/session/ConnectionResult;->y:Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-object/from16 v27, v5

    .line 5252
    iget-object v5, v0, Landroidx/media2/session/ConnectionResult;->z:Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-object/from16 v28, v5

    .line 5257
    iget-object v5, v0, Landroidx/media2/session/ConnectionResult;->A:Landroidx/media2/common/MediaMetadata;

    .line 5261
    iget v0, v0, Landroidx/media2/session/ConnectionResult;->B:I

    .line 6201
    sget-boolean v29, Landroidx/media2/session/h;->a:Z

    if-eqz v29, :cond_3

    move/from16 v29, v0

    .line 6202
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v30, v5

    const-string v5, "onConnectedNotLocked sessionBinder="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", allowedCommands="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    goto :goto_1

    :cond_3
    move/from16 v29, v0

    move-object/from16 v30, v5

    :goto_1
    if-eqz v10, :cond_8

    if-nez v12, :cond_4

    goto/16 :goto_6

    .line 6213
    :cond_4
    :try_start_4
    iget-object v5, v4, Landroidx/media2/session/h;->d:Ljava/lang/Object;

    monitor-enter v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    move-object v0, v10

    .line 6214
    :try_start_5
    iget-boolean v10, v4, Landroidx/media2/session/h;->j:Z

    if-eqz v10, :cond_5

    .line 6215
    monitor-exit v5

    goto/16 :goto_7

    .line 6217
    :cond_5
    iget-object v10, v4, Landroidx/media2/session/h;->E:Landroidx/media2/session/c;

    if-eqz v10, :cond_6

    const-string v0, "MC2ImplBase"

    const-string v1, "Cannot be notified about the connection result many times. Probably a bug or malicious app."

    .line 6218
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 6221
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 6272
    :try_start_7
    iget-object v0, v4, Landroidx/media2/session/h;->b:Landroidx/media2/session/MediaController;

    :goto_2
    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    const/4 v13, 0x1

    goto/16 :goto_3

    .line 6223
    :cond_6
    :try_start_8
    iput-object v12, v4, Landroidx/media2/session/h;->A:Landroidx/media2/session/SessionCommandGroup;

    .line 6224
    iput v6, v4, Landroidx/media2/session/h;->o:I

    .line 6225
    iput-object v7, v4, Landroidx/media2/session/h;->s:Landroidx/media2/common/MediaItem;

    .line 6226
    iput-wide v8, v4, Landroidx/media2/session/h;->p:J

    .line 6227
    iput-wide v13, v4, Landroidx/media2/session/h;->q:J

    .line 6228
    iput v11, v4, Landroidx/media2/session/h;->r:F

    .line 6229
    iput-wide v1, v4, Landroidx/media2/session/h;->x:J

    .line 6230
    iput-object v3, v4, Landroidx/media2/session/h;->y:Landroidx/media2/session/MediaController$PlaybackInfo;

    .line 6231
    iput v15, v4, Landroidx/media2/session/h;->m:I

    move/from16 v1, v17

    .line 6232
    iput v1, v4, Landroidx/media2/session/h;->n:I

    move-object/from16 v1, v16

    .line 6233
    iput-object v1, v4, Landroidx/media2/session/h;->k:Ljava/util/List;

    move-object/from16 v1, v18

    .line 6234
    iput-object v1, v4, Landroidx/media2/session/h;->z:Landroid/app/PendingIntent;

    .line 6235
    iput-object v0, v4, Landroidx/media2/session/h;->E:Landroidx/media2/session/c;

    move/from16 v1, v19

    .line 6236
    iput v1, v4, Landroidx/media2/session/h;->t:I

    move/from16 v1, v20

    .line 6237
    iput v1, v4, Landroidx/media2/session/h;->u:I

    move/from16 v1, v21

    .line 6238
    iput v1, v4, Landroidx/media2/session/h;->v:I

    move-object/from16 v1, v23

    .line 6239
    iput-object v1, v4, Landroidx/media2/session/h;->B:Landroidx/media2/common/VideoSize;

    move-object/from16 v1, v24

    .line 6240
    iput-object v1, v4, Landroidx/media2/session/h;->C:Ljava/util/List;

    .line 6241
    iget-object v1, v4, Landroidx/media2/session/h;->D:Landroid/util/SparseArray;

    move-object/from16 v2, v25

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6242
    iget-object v1, v4, Landroidx/media2/session/h;->D:Landroid/util/SparseArray;

    const/4 v2, 0x2

    move-object/from16 v6, v26

    invoke-virtual {v1, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6243
    iget-object v1, v4, Landroidx/media2/session/h;->D:Landroid/util/SparseArray;

    const/4 v2, 0x4

    move-object/from16 v6, v27

    invoke-virtual {v1, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6244
    iget-object v1, v4, Landroidx/media2/session/h;->D:Landroid/util/SparseArray;

    const/4 v2, 0x5

    move-object/from16 v6, v28

    invoke-virtual {v1, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v1, v30

    .line 6245
    iput-object v1, v4, Landroidx/media2/session/h;->l:Landroidx/media2/common/MediaMetadata;

    move/from16 v1, v29

    .line 6246
    iput v1, v4, Landroidx/media2/session/h;->w:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 6250
    :try_start_9
    iget-object v1, v4, Landroidx/media2/session/h;->E:Landroidx/media2/session/c;

    invoke-interface {v1}, Landroidx/media2/session/c;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, v4, Landroidx/media2/session/h;->f:Landroid/os/IBinder$DeathRecipient;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    const/4 v13, 0x0

    :try_start_a
    invoke-interface {v1, v2, v13}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 6258
    :try_start_b
    new-instance v1, Landroidx/media2/session/SessionToken;

    new-instance v2, Landroidx/media2/session/SessionTokenImplBase;

    iget-object v3, v4, Landroidx/media2/session/h;->e:Landroidx/media2/session/SessionToken;

    .line 7185
    iget-object v3, v3, Landroidx/media2/session/SessionToken;->a:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    invoke-interface {v3}, Landroidx/media2/session/SessionToken$SessionTokenImpl;->b()I

    move-result v7

    const/4 v8, 0x0

    .line 6259
    iget-object v3, v4, Landroidx/media2/session/h;->e:Landroidx/media2/session/SessionToken;

    invoke-virtual {v3}, Landroidx/media2/session/SessionToken;->a()Ljava/lang/String;

    move-result-object v9

    move-object v6, v2

    move-object v10, v0

    move-object/from16 v11, v22

    invoke-direct/range {v6 .. v11}, Landroidx/media2/session/SessionTokenImplBase;-><init>(IILjava/lang/String;Landroidx/media2/session/c;Landroid/os/Bundle;)V

    invoke-direct {v1, v2}, Landroidx/media2/session/SessionToken;-><init>(Landroidx/media2/session/SessionToken$SessionTokenImpl;)V

    iput-object v1, v4, Landroidx/media2/session/h;->i:Landroidx/media2/session/SessionToken;

    .line 6261
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 6262
    :try_start_c
    iget-object v0, v4, Landroidx/media2/session/h;->b:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/h$28;

    invoke-direct {v1, v4, v12}, Landroidx/media2/session/h$28;-><init>(Landroidx/media2/session/h;Landroidx/media2/session/SessionCommandGroup;)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->b(Landroidx/media2/session/MediaController$b;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 6256
    :catch_0
    :try_start_d
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 6272
    :try_start_e
    iget-object v0, v4, Landroidx/media2/session/h;->b:Landroidx/media2/session/MediaController;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    const/4 v13, 0x0

    .line 6261
    :goto_3
    :try_start_f
    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :catchall_3
    move-exception v0

    move v5, v13

    goto :goto_5

    :catchall_4
    move-exception v0

    goto :goto_3

    :catchall_5
    move-exception v0

    const/4 v13, 0x0

    :goto_4
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_7

    .line 6272
    :try_start_11
    iget-object v1, v4, Landroidx/media2/session/h;->b:Landroidx/media2/session/MediaController;

    invoke-virtual {v1}, Landroidx/media2/session/MediaController;->close()V

    .line 6274
    :cond_7
    throw v0

    .line 6272
    :cond_8
    :goto_6
    iget-object v0, v4, Landroidx/media2/session/h;->b:Landroidx/media2/session/MediaController;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    goto/16 :goto_2

    .line 321
    :goto_7
    invoke-static/range {p1 .. p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_6
    move-exception v0

    goto :goto_8

    :catchall_7
    move-exception v0

    move-wide/from16 p1, v15

    goto :goto_8

    :catchall_8
    move-exception v0

    move-wide/from16 p1, v1

    :goto_8
    invoke-static/range {p1 .. p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 322
    throw v0
.end method

.method public final d(ILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 369
    :cond_0
    new-instance p1, Landroidx/media2/session/j$9;

    invoke-direct {p1, p0, p2}, Landroidx/media2/session/j$9;-><init>(Landroidx/media2/session/j;Landroidx/versionedparcelable/ParcelImpl;)V

    invoke-direct {p0, p1}, Landroidx/media2/session/j;->a(Landroidx/media2/session/j$b;)V

    return-void
.end method

.method public final e(ILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 57
    :cond_0
    new-instance v0, Landroidx/media2/session/j$1;

    invoke-direct {v0, p0, p2, p1}, Landroidx/media2/session/j$1;-><init>(Landroidx/media2/session/j;Landroidx/versionedparcelable/ParcelImpl;I)V

    invoke-direct {p0, v0}, Landroidx/media2/session/j;->a(Landroidx/media2/session/j$b;)V

    return-void
.end method

.method public final f(ILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 74
    :cond_0
    new-instance v0, Landroidx/media2/session/j$12;

    invoke-direct {v0, p0, p2, p1}, Landroidx/media2/session/j$12;-><init>(Landroidx/media2/session/j;Landroidx/versionedparcelable/ParcelImpl;I)V

    invoke-direct {p0, v0}, Landroidx/media2/session/j;->a(Landroidx/media2/session/j$a;)V

    return-void
.end method

.method public final g(ILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 428
    :cond_0
    new-instance v0, Landroidx/media2/session/j$13;

    invoke-direct {v0, p0, p2, p1}, Landroidx/media2/session/j$13;-><init>(Landroidx/media2/session/j;Landroidx/versionedparcelable/ParcelImpl;I)V

    invoke-direct {p0, v0}, Landroidx/media2/session/j;->a(Landroidx/media2/session/j$b;)V

    return-void
.end method

.method public final h(ILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 446
    :cond_0
    new-instance v0, Landroidx/media2/session/j$14;

    invoke-direct {v0, p0, p2, p1}, Landroidx/media2/session/j$14;-><init>(Landroidx/media2/session/j;Landroidx/versionedparcelable/ParcelImpl;I)V

    invoke-direct {p0, v0}, Landroidx/media2/session/j;->a(Landroidx/media2/session/j$b;)V

    return-void
.end method
