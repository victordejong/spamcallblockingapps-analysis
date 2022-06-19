.class final Landroidx/media/MediaBrowserServiceCompat$n;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "n"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media/MediaBrowserServiceCompat;

.field private final b:Landroidx/media/MediaBrowserServiceCompat$k;


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat;)V
    .locals 1

    .line 664
    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$n;->a:Landroidx/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 662
    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$k;

    invoke-direct {v0, p1}, Landroidx/media/MediaBrowserServiceCompat$k;-><init>(Landroidx/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$n;->b:Landroidx/media/MediaBrowserServiceCompat$k;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 2

    .line 772
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media/MediaBrowserServiceCompat$n;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 773
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 775
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media/MediaBrowserServiceCompat$n;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 669
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 670
    iget v3, v1, Landroid/os/Message;->what:I

    const-string v4, "data_callback_token"

    const-string v5, "data_calling_uid"

    const-string v6, "data_calling_pid"

    const-string v7, "data_package_name"

    const-string v8, "data_root_hints"

    const-string v9, "data_result_receiver"

    const-string v10, "data_media_item_id"

    packed-switch v3, :pswitch_data_0

    .line 748
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unhandled message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n  Service version: 2\n  Client version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MBServiceCompat"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const-string v3, "data_custom_action_extras"

    .line 737
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    .line 738
    invoke-static {v14}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 740
    iget-object v11, v0, Landroidx/media/MediaBrowserServiceCompat$n;->b:Landroidx/media/MediaBrowserServiceCompat$k;

    const-string v3, "data_custom_action"

    .line 741
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 743
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/support/v4/os/ResultReceiver;

    new-instance v12, Landroidx/media/MediaBrowserServiceCompat$m;

    iget-object v1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v12, v1}, Landroidx/media/MediaBrowserServiceCompat$m;-><init>(Landroid/os/Messenger;)V

    .line 3169
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v15, :cond_0

    goto :goto_0

    .line 3173
    :cond_0
    iget-object v1, v11, Landroidx/media/MediaBrowserServiceCompat$k;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->f:Landroidx/media/MediaBrowserServiceCompat$n;

    new-instance v2, Landroidx/media/MediaBrowserServiceCompat$k$9;

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Landroidx/media/MediaBrowserServiceCompat$k$9;-><init>(Landroidx/media/MediaBrowserServiceCompat$k;Landroidx/media/MediaBrowserServiceCompat$l;Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;)V

    invoke-virtual {v1, v2}, Landroidx/media/MediaBrowserServiceCompat$n;->a(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_1
    const-string v3, "data_search_extras"

    .line 726
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    .line 727
    invoke-static {v14}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 729
    iget-object v11, v0, Landroidx/media/MediaBrowserServiceCompat$n;->b:Landroidx/media/MediaBrowserServiceCompat$k;

    const-string v3, "data_search_query"

    .line 730
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 732
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/support/v4/os/ResultReceiver;

    new-instance v12, Landroidx/media/MediaBrowserServiceCompat$m;

    iget-object v1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v12, v1}, Landroidx/media/MediaBrowserServiceCompat$m;-><init>(Landroid/os/Messenger;)V

    .line 3148
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v15, :cond_2

    goto :goto_1

    .line 3152
    :cond_2
    iget-object v1, v11, Landroidx/media/MediaBrowserServiceCompat$k;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->f:Landroidx/media/MediaBrowserServiceCompat$n;

    new-instance v2, Landroidx/media/MediaBrowserServiceCompat$k$8;

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Landroidx/media/MediaBrowserServiceCompat$k$8;-><init>(Landroidx/media/MediaBrowserServiceCompat$k;Landroidx/media/MediaBrowserServiceCompat$l;Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;)V

    invoke-virtual {v1, v2}, Landroidx/media/MediaBrowserServiceCompat$n;->a(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void

    .line 722
    :pswitch_2
    iget-object v2, v0, Landroidx/media/MediaBrowserServiceCompat$n;->b:Landroidx/media/MediaBrowserServiceCompat$k;

    new-instance v3, Landroidx/media/MediaBrowserServiceCompat$m;

    iget-object v1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v3, v1}, Landroidx/media/MediaBrowserServiceCompat$m;-><init>(Landroid/os/Messenger;)V

    .line 3134
    iget-object v1, v2, Landroidx/media/MediaBrowserServiceCompat$k;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->f:Landroidx/media/MediaBrowserServiceCompat$n;

    new-instance v4, Landroidx/media/MediaBrowserServiceCompat$k$7;

    invoke-direct {v4, v2, v3}, Landroidx/media/MediaBrowserServiceCompat$k$7;-><init>(Landroidx/media/MediaBrowserServiceCompat$k;Landroidx/media/MediaBrowserServiceCompat$l;)V

    invoke-virtual {v1, v4}, Landroidx/media/MediaBrowserServiceCompat$n;->a(Ljava/lang/Runnable;)V

    return-void

    .line 710
    :pswitch_3
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 711
    invoke-static {v11}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 713
    iget-object v3, v0, Landroidx/media/MediaBrowserServiceCompat$n;->b:Landroidx/media/MediaBrowserServiceCompat$k;

    new-instance v4, Landroidx/media/MediaBrowserServiceCompat$m;

    iget-object v1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v4, v1}, Landroidx/media/MediaBrowserServiceCompat$m;-><init>(Landroid/os/Messenger;)V

    .line 715
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 716
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 717
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 3093
    iget-object v1, v3, Landroidx/media/MediaBrowserServiceCompat$k;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->f:Landroidx/media/MediaBrowserServiceCompat$n;

    new-instance v2, Landroidx/media/MediaBrowserServiceCompat$k$6;

    move-object v5, v2

    move-object v6, v3

    move-object v7, v4

    invoke-direct/range {v5 .. v11}, Landroidx/media/MediaBrowserServiceCompat$k$6;-><init>(Landroidx/media/MediaBrowserServiceCompat$k;Landroidx/media/MediaBrowserServiceCompat$l;ILjava/lang/String;ILandroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroidx/media/MediaBrowserServiceCompat$n;->a(Ljava/lang/Runnable;)V

    return-void

    .line 704
    :pswitch_4
    iget-object v3, v0, Landroidx/media/MediaBrowserServiceCompat$n;->b:Landroidx/media/MediaBrowserServiceCompat$k;

    .line 705
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 706
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/support/v4/os/ResultReceiver;

    new-instance v5, Landroidx/media/MediaBrowserServiceCompat$m;

    iget-object v1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v5, v1}, Landroidx/media/MediaBrowserServiceCompat$m;-><init>(Landroid/os/Messenger;)V

    .line 3071
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    if-nez v2, :cond_4

    goto :goto_2

    .line 3075
    :cond_4
    iget-object v1, v3, Landroidx/media/MediaBrowserServiceCompat$k;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->f:Landroidx/media/MediaBrowserServiceCompat$n;

    new-instance v6, Landroidx/media/MediaBrowserServiceCompat$k$5;

    invoke-direct {v6, v3, v5, v4, v2}, Landroidx/media/MediaBrowserServiceCompat$k$5;-><init>(Landroidx/media/MediaBrowserServiceCompat$k;Landroidx/media/MediaBrowserServiceCompat$l;Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V

    invoke-virtual {v1, v6}, Landroidx/media/MediaBrowserServiceCompat$n;->a(Ljava/lang/Runnable;)V

    :cond_5
    :goto_2
    return-void

    .line 698
    :pswitch_5
    iget-object v3, v0, Landroidx/media/MediaBrowserServiceCompat$n;->b:Landroidx/media/MediaBrowserServiceCompat$k;

    .line 699
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 700
    invoke-static {v2, v4}, Landroidx/core/app/d;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    new-instance v4, Landroidx/media/MediaBrowserServiceCompat$m;

    iget-object v1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v4, v1}, Landroidx/media/MediaBrowserServiceCompat$m;-><init>(Landroid/os/Messenger;)V

    .line 3049
    iget-object v1, v3, Landroidx/media/MediaBrowserServiceCompat$k;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->f:Landroidx/media/MediaBrowserServiceCompat$n;

    new-instance v6, Landroidx/media/MediaBrowserServiceCompat$k$4;

    invoke-direct {v6, v3, v4, v5, v2}, Landroidx/media/MediaBrowserServiceCompat$k$4;-><init>(Landroidx/media/MediaBrowserServiceCompat$k;Landroidx/media/MediaBrowserServiceCompat$l;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v1, v6}, Landroidx/media/MediaBrowserServiceCompat$n;->a(Ljava/lang/Runnable;)V

    return-void

    :pswitch_6
    const-string v3, "data_options"

    .line 687
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v16

    .line 688
    invoke-static/range {v16 .. v16}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 690
    iget-object v12, v0, Landroidx/media/MediaBrowserServiceCompat$n;->b:Landroidx/media/MediaBrowserServiceCompat$k;

    .line 691
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 692
    invoke-static {v2, v4}, Landroidx/core/app/d;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    new-instance v13, Landroidx/media/MediaBrowserServiceCompat$m;

    iget-object v1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v13, v1}, Landroidx/media/MediaBrowserServiceCompat$m;-><init>(Landroid/os/Messenger;)V

    .line 3029
    iget-object v1, v12, Landroidx/media/MediaBrowserServiceCompat$k;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->f:Landroidx/media/MediaBrowserServiceCompat$n;

    new-instance v2, Landroidx/media/MediaBrowserServiceCompat$k$3;

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Landroidx/media/MediaBrowserServiceCompat$k$3;-><init>(Landroidx/media/MediaBrowserServiceCompat$k;Landroidx/media/MediaBrowserServiceCompat$l;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroidx/media/MediaBrowserServiceCompat$n;->a(Ljava/lang/Runnable;)V

    return-void

    .line 684
    :pswitch_7
    iget-object v2, v0, Landroidx/media/MediaBrowserServiceCompat$n;->b:Landroidx/media/MediaBrowserServiceCompat$k;

    new-instance v3, Landroidx/media/MediaBrowserServiceCompat$m;

    iget-object v1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v3, v1}, Landroidx/media/MediaBrowserServiceCompat$m;-><init>(Landroid/os/Messenger;)V

    .line 3012
    iget-object v1, v2, Landroidx/media/MediaBrowserServiceCompat$k;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->f:Landroidx/media/MediaBrowserServiceCompat$n;

    new-instance v4, Landroidx/media/MediaBrowserServiceCompat$k$2;

    invoke-direct {v4, v2, v3}, Landroidx/media/MediaBrowserServiceCompat$k$2;-><init>(Landroidx/media/MediaBrowserServiceCompat$k;Landroidx/media/MediaBrowserServiceCompat$l;)V

    invoke-virtual {v1, v4}, Landroidx/media/MediaBrowserServiceCompat$n;->a(Ljava/lang/Runnable;)V

    return-void

    .line 672
    :pswitch_8
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 673
    invoke-static {v11}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 675
    iget-object v3, v0, Landroidx/media/MediaBrowserServiceCompat$n;->b:Landroidx/media/MediaBrowserServiceCompat$k;

    .line 676
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 677
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 678
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    new-instance v7, Landroidx/media/MediaBrowserServiceCompat$m;

    iget-object v1, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v7, v1}, Landroidx/media/MediaBrowserServiceCompat$m;-><init>(Landroid/os/Messenger;)V

    .line 1964
    iget-object v1, v3, Landroidx/media/MediaBrowserServiceCompat$k;->a:Landroidx/media/MediaBrowserServiceCompat;

    const/4 v2, 0x0

    if-eqz v8, :cond_7

    .line 2642
    invoke-virtual {v1}, Landroidx/media/MediaBrowserServiceCompat;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2643
    invoke-virtual {v1, v10}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 2644
    array-length v4, v1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_7

    .line 2646
    aget-object v6, v1, v5

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    if-eqz v2, :cond_8

    .line 1969
    iget-object v1, v3, Landroidx/media/MediaBrowserServiceCompat$k;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->f:Landroidx/media/MediaBrowserServiceCompat$n;

    new-instance v2, Landroidx/media/MediaBrowserServiceCompat$k$1;

    move-object v5, v2

    move-object v6, v3

    invoke-direct/range {v5 .. v11}, Landroidx/media/MediaBrowserServiceCompat$k$1;-><init>(Landroidx/media/MediaBrowserServiceCompat$k;Landroidx/media/MediaBrowserServiceCompat$l;Ljava/lang/String;IILandroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroidx/media/MediaBrowserServiceCompat$n;->a(Ljava/lang/Runnable;)V

    return-void

    .line 1965
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Package/uid mismatch: uid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 3

    .line 758
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 759
    const-class v1, Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 760
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v2, "data_calling_uid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 761
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const-string v2, "data_calling_pid"

    if-lez v1, :cond_0

    .line 763
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 764
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, -0x1

    .line 766
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 768
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method
