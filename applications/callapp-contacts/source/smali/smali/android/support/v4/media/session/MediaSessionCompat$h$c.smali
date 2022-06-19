.class final Landroid/support/v4/media/session/MediaSessionCompat$h$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/session/MediaSessionCompat$h;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$h;Landroid/os/Looper;)V
    .locals 0

    .line 3433
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    .line 3434
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 3439
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$h;->j:Landroid/support/v4/media/session/MediaSessionCompat$a;

    if-nez v0, :cond_0

    return-void

    .line 3444
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 3445
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 3446
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    new-instance v3, Landroidx/media/b$b;

    const-string v4, "data_calling_pkg"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "data_calling_pid"

    .line 3447
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "data_calling_uid"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Landroidx/media/b$b;-><init>(Ljava/lang/String;II)V

    .line 3446
    invoke-virtual {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat$h;->a(Landroidx/media/b$b;)V

    const-string v2, "data_extras"

    .line 3449
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 3450
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    const/4 v2, 0x0

    .line 3453
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 3523
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->a(F)V

    goto/16 :goto_2

    .line 3520
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/media/RatingCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->b(Landroid/support/v4/media/RatingCompat;)V

    goto/16 :goto_2

    .line 3559
    :pswitch_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->b(I)V

    goto/16 :goto_2

    .line 3553
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    goto/16 :goto_2

    .line 3538
    :pswitch_5
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$h;->o:Ljava/util/List;

    if-eqz v1, :cond_7

    .line 3539
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ltz v1, :cond_1

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget-object v3, v3, Landroid/support/v4/media/session/MediaSessionCompat$h;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 3540
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$h;->o:Ljava/util/List;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_7

    .line 3542
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->b(Landroid/support/v4/media/MediaDescriptionCompat;)V

    goto/16 :goto_2

    .line 3535
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->b(Landroid/support/v4/media/MediaDescriptionCompat;)V

    goto/16 :goto_2

    .line 3532
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/media/MediaDescriptionCompat;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->a(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    goto/16 :goto_2

    .line 3529
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->a(Landroid/support/v4/media/MediaDescriptionCompat;)V

    goto/16 :goto_2

    .line 3556
    :pswitch_9
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->a(I)V

    goto/16 :goto_2

    .line 3550
    :pswitch_a
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1, v4}, Landroid/support/v4/media/session/MediaSessionCompat$h;->b(II)V

    goto/16 :goto_2

    .line 3459
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/KeyEvent;

    .line 3460
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.extra.KEY_EVENT"

    .line 3461
    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3464
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->a(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz p1, :cond_7

    .line 4568
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_2

    .line 4571
    :cond_2
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$h;->m:Landroid/support/v4/media/session/PlaybackStateCompat;

    const-wide/16 v3, 0x0

    if-nez v1, :cond_3

    move-wide v5, v3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$h;->m:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v5

    .line 4572
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v1, 0x4f

    if-eq p1, v1, :cond_6

    const/16 v1, 0x7e

    if-eq p1, v1, :cond_5

    const/16 v1, 0x7f

    if-eq p1, v1, :cond_4

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_2

    :pswitch_c
    const-wide/16 v7, 0x40

    and-long/2addr v5, v7

    cmp-long p1, v5, v3

    if-eqz p1, :cond_7

    .line 4602
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a;->f()V

    goto/16 :goto_2

    :pswitch_d
    const-wide/16 v7, 0x8

    and-long/2addr v5, v7

    cmp-long p1, v5, v3

    if-eqz p1, :cond_7

    .line 4607
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a;->g()V

    goto/16 :goto_2

    :pswitch_e
    const-wide/16 v7, 0x10

    and-long/2addr v5, v7

    cmp-long p1, v5, v3

    if-eqz p1, :cond_7

    .line 4592
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a;->e()V

    goto/16 :goto_2

    :pswitch_f
    const-wide/16 v7, 0x20

    and-long/2addr v5, v7

    cmp-long p1, v5, v3

    if-eqz p1, :cond_7

    .line 4587
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a;->d()V

    goto/16 :goto_2

    :pswitch_10
    const-wide/16 v7, 0x1

    and-long/2addr v5, v7

    cmp-long p1, v5, v3

    if-eqz p1, :cond_7

    .line 4597
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a;->h()V

    goto/16 :goto_2

    :cond_4
    const-wide/16 v7, 0x2

    and-long/2addr v5, v7

    cmp-long p1, v5, v3

    if-eqz p1, :cond_7

    .line 4582
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a;->c()V

    goto/16 :goto_2

    :cond_5
    const-wide/16 v7, 0x4

    and-long/2addr v5, v7

    cmp-long p1, v5, v3

    if-eqz p1, :cond_7

    .line 4576
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a;->b()V

    goto/16 :goto_2

    :cond_6
    :pswitch_11
    const-string p1, "MediaSessionCompat"

    const-string v0, "KEYCODE_MEDIA_PLAY_PAUSE and KEYCODE_HEADSETHOOK are handled already"

    .line 4612
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3526
    :pswitch_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_2

    .line 3517
    :pswitch_13
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/media/RatingCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->a(Landroid/support/v4/media/RatingCompat;)V

    goto/16 :goto_2

    .line 3514
    :pswitch_14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/media/session/MediaSessionCompat$a;->b(J)V

    goto/16 :goto_2

    .line 3511
    :pswitch_15
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a;->g()V

    goto/16 :goto_2

    .line 3508
    :pswitch_16
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a;->f()V

    goto/16 :goto_2

    .line 3505
    :pswitch_17
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a;->e()V

    goto/16 :goto_2

    .line 3502
    :pswitch_18
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a;->d()V

    goto :goto_2

    .line 3499
    :pswitch_19
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a;->h()V

    goto :goto_2

    .line 3496
    :pswitch_1a
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a;->c()V

    goto :goto_2

    .line 3493
    :pswitch_1b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/media/session/MediaSessionCompat$a;->a(J)V

    goto :goto_2

    .line 3490
    :pswitch_1c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->b(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_2

    .line 3487
    :pswitch_1d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->d(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 3484
    :pswitch_1e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->c(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 3481
    :pswitch_1f
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a;->b()V

    goto :goto_2

    .line 3478
    :pswitch_20
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->a(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_2

    .line 3475
    :pswitch_21
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 3472
    :pswitch_22
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 3469
    :pswitch_23
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$a;->a()V

    goto :goto_2

    .line 3547
    :pswitch_24
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1, v4}, Landroid/support/v4/media/session/MediaSessionCompat$h;->a(II)V

    goto :goto_2

    .line 3455
    :pswitch_25
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/media/session/MediaSessionCompat$h$a;

    .line 3456
    iget-object v1, p1, Landroid/support/v4/media/session/MediaSessionCompat$h$a;->a:Ljava/lang/String;

    iget-object v3, p1, Landroid/support/v4/media/session/MediaSessionCompat$h$a;->b:Landroid/os/Bundle;

    iget-object p1, p1, Landroid/support/v4/media/session/MediaSessionCompat$h$a;->c:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v1, v3, p1}, Landroid/support/v4/media/session/MediaSessionCompat$a;->a(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3563
    :cond_7
    :goto_2
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    invoke-virtual {p1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$h;->a(Landroidx/media/b$b;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$c;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat$h;->a(Landroidx/media/b$b;)V

    .line 3564
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x55
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method
