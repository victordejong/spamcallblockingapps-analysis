.class public final Landroidx/media2/session/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/media/MediaBrowserServiceCompat$a;

.field public static final b:Ljava/util/concurrent/Executor;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 96
    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$a;

    const-string v1, "androidx.media2.session.MediaLibraryService"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media/MediaBrowserServiceCompat$a;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    sput-object v0, Landroidx/media2/session/s;->a:Landroidx/media/MediaBrowserServiceCompat$a;

    .line 99
    new-instance v0, Landroidx/media2/session/s$1;

    invoke-direct {v0}, Landroidx/media2/session/s$1;-><init>()V

    sput-object v0, Landroidx/media2/session/s;->b:Ljava/util/concurrent/Executor;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/media2/session/s;->c:Ljava/util/Map;

    .line 116
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroidx/media2/session/s;->d:Ljava/util/Map;

    const-string v1, "android.media.metadata.ADVERTISEMENT"

    const-string v2, "androidx.media2.metadata.ADVERTISEMENT"

    .line 118
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.media.metadata.BT_FOLDER_TYPE"

    const-string v2, "androidx.media2.metadata.BROWSABLE"

    .line 120
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.media.metadata.DOWNLOAD_STATUS"

    const-string v2, "androidx.media2.metadata.DOWNLOAD_STATUS"

    .line 122
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 127
    sget-object v2, Landroidx/media2/session/s;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 130
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Shouldn\'t map to the same value"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(II)I
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v0, :cond_2

    if-eq p0, v1, :cond_0

    const/4 p0, 0x7

    return p0

    :cond_0
    if-eq p1, v1, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    const/4 p0, 0x6

    return p0

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/support/v4/media/session/PlaybackStateCompat;)I
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 733
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x3

    return p0

    :pswitch_1
    const/4 p0, 0x2

    return p0

    :pswitch_2
    const/4 p0, 0x1

    return p0

    :pswitch_3
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static a(I)J
    .locals 2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    int-to-long v0, p0

    return-wide v0
.end method

.method public static a(Landroidx/media2/session/MediaLibraryService$LibraryParams;)Landroid/os/Bundle;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 18595
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->a:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 869
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    .line 19595
    iget-object v1, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->a:Landroid/os/Bundle;

    .line 869
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 20557
    :goto_0
    iget v1, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->b:I

    invoke-static {v1}, Landroidx/media2/session/MediaLibraryService$LibraryParams;->a(I)Z

    move-result v1

    const-string v2, "android.service.media.extra.RECENT"

    .line 870
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20571
    iget v1, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->c:I

    invoke-static {v1}, Landroidx/media2/session/MediaLibraryService$LibraryParams;->a(I)Z

    move-result v1

    const-string v2, "android.service.media.extra.OFFLINE"

    .line 871
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20585
    iget p0, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->d:I

    invoke-static {p0}, Landroidx/media2/session/MediaLibraryService$LibraryParams;->a(I)Z

    move-result p0

    const-string v1, "android.service.media.extra.SUGGESTED"

    .line 872
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static a(Landroidx/media2/common/MediaMetadata;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 574
    :cond_0
    new-instance v1, Landroid/support/v4/media/MediaMetadataCompat$a;

    invoke-direct {v1}, Landroid/support/v4/media/MediaMetadataCompat$a;-><init>()V

    .line 10926
    iget-object v2, p0, Landroidx/media2/common/MediaMetadata;->b:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 575
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 576
    sget-object v4, Landroidx/media2/session/s;->d:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 577
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v4, v3

    :goto_1
    const-string v5, "key shouldn\'t be null"

    .line 10942
    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10944
    iget-object v5, p0, Landroidx/media2/common/MediaMetadata;->b:Landroid/os/Bundle;

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 579
    instance-of v6, v5, Ljava/lang/CharSequence;

    const/4 v7, 0x1

    const-string v8, "The "

    if-eqz v6, :cond_5

    .line 580
    check-cast v5, Ljava/lang/CharSequence;

    .line 11723
    sget-object v3, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidx/b/a;

    invoke-virtual {v3, v4}, Landroidx/b/a;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 11724
    sget-object v3, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidx/b/a;

    invoke-virtual {v3, v4}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v7, :cond_3

    goto :goto_2

    .line 11725
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " key cannot be used to put a CharSequence"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11729
    :cond_4
    :goto_2
    iget-object v3, v1, Landroid/support/v4/media/MediaMetadataCompat$a;->a:Landroid/os/Bundle;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 581
    :cond_5
    instance-of v6, v5, Landroid/graphics/Bitmap;

    if-eqz v6, :cond_6

    .line 582
    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/media/MediaMetadataCompat$a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$a;

    goto :goto_0

    .line 583
    :cond_6
    instance-of v6, v5, Ljava/lang/Long;

    if-eqz v6, :cond_9

    .line 584
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 11790
    sget-object v3, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidx/b/a;

    invoke-virtual {v3, v4}, Landroidx/b/a;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 11791
    sget-object v3, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidx/b/a;

    invoke-virtual {v3, v4}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_7

    goto :goto_3

    .line 11792
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " key cannot be used to put a long"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11796
    :cond_8
    :goto_3
    iget-object v3, v1, Landroid/support/v4/media/MediaMetadataCompat$a;->a:Landroid/os/Bundle;

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 585
    :cond_9
    instance-of v5, v5, Landroid/os/Bundle;

    if-eqz v5, :cond_1

    const-string v5, "androidx.media2.metadata.EXTRAS"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 589
    :try_start_0
    invoke-virtual {p0, v3}, Landroidx/media2/common/MediaMetadata;->e(Ljava/lang/String;)Landroidx/media2/common/Rating;

    move-result-object v3

    const/4 v5, 0x3

    if-eqz v3, :cond_12

    .line 12813
    instance-of v6, v3, Landroidx/media2/session/HeartRating;

    const/4 v9, 0x5

    const/4 v10, 0x4

    if-eqz v6, :cond_a

    goto :goto_5

    .line 12815
    :cond_a
    instance-of v6, v3, Landroidx/media2/session/ThumbRating;

    if-eqz v6, :cond_b

    const/4 v7, 0x2

    goto :goto_5

    .line 12817
    :cond_b
    instance-of v6, v3, Landroidx/media2/session/StarRating;

    if-eqz v6, :cond_f

    .line 12818
    move-object v6, v3

    check-cast v6, Landroidx/media2/session/StarRating;

    .line 13111
    iget v6, v6, Landroidx/media2/session/StarRating;->a:I

    if-eq v6, v5, :cond_e

    if-eq v6, v10, :cond_d

    if-eq v6, v9, :cond_c

    goto :goto_4

    :cond_c
    const/4 v7, 0x5

    goto :goto_5

    :cond_d
    const/4 v7, 0x4

    goto :goto_5

    :cond_e
    const/4 v7, 0x3

    goto :goto_5

    .line 12826
    :cond_f
    instance-of v6, v3, Landroidx/media2/session/PercentageRating;

    if-eqz v6, :cond_10

    const/4 v7, 0x6

    goto :goto_5

    :cond_10
    :goto_4
    const/4 v7, 0x0

    .line 12646
    :goto_5
    invoke-interface {v3}, Landroidx/media2/common/Rating;->a()Z

    move-result v6

    if-nez v6, :cond_11

    .line 12647
    invoke-static {v7}, Landroid/support/v4/media/RatingCompat;->newUnratedRating(I)Landroid/support/v4/media/RatingCompat;

    move-result-object v3

    goto :goto_7

    :cond_11
    packed-switch v7, :pswitch_data_0

    goto :goto_6

    .line 12661
    :pswitch_0
    check-cast v3, Landroidx/media2/session/PercentageRating;

    .line 15086
    iget v3, v3, Landroidx/media2/session/PercentageRating;->a:F

    .line 12661
    invoke-static {v3}, Landroid/support/v4/media/RatingCompat;->newPercentageRating(F)Landroid/support/v4/media/RatingCompat;

    move-result-object v3

    goto :goto_7

    .line 12654
    :pswitch_1
    check-cast v3, Landroidx/media2/session/StarRating;

    .line 13120
    iget v3, v3, Landroidx/media2/session/StarRating;->b:F

    .line 12654
    invoke-static {v7, v3}, Landroid/support/v4/media/RatingCompat;->newStarRating(IF)Landroid/support/v4/media/RatingCompat;

    move-result-object v3

    goto :goto_7

    .line 12659
    :pswitch_2
    check-cast v3, Landroidx/media2/session/ThumbRating;

    .line 15085
    iget-boolean v3, v3, Landroidx/media2/session/ThumbRating;->b:Z

    .line 12659
    invoke-static {v3}, Landroid/support/v4/media/RatingCompat;->newThumbRating(Z)Landroid/support/v4/media/RatingCompat;

    move-result-object v3

    goto :goto_7

    .line 12657
    :pswitch_3
    check-cast v3, Landroidx/media2/session/HeartRating;

    .line 14086
    iget-boolean v3, v3, Landroidx/media2/session/HeartRating;->b:Z

    .line 12657
    invoke-static {v3}, Landroid/support/v4/media/RatingCompat;->newHeartRating(Z)Landroid/support/v4/media/RatingCompat;

    move-result-object v3

    goto :goto_7

    :cond_12
    :goto_6
    move-object v3, v0

    .line 15814
    :goto_7
    sget-object v6, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidx/b/a;

    invoke-virtual {v6, v4}, Landroidx/b/a;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 15815
    sget-object v6, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroidx/b/a;

    invoke-virtual {v6, v4}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_13

    goto :goto_8

    .line 15816
    :cond_13
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " key cannot be used to put a Rating"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 15820
    :cond_14
    :goto_8
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_15

    .line 15823
    iget-object v5, v1, Landroid/support/v4/media/MediaMetadataCompat$a;->a:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/support/v4/media/RatingCompat;->getRating()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v5, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 15825
    :cond_15
    iget-object v5, v1, Landroid/support/v4/media/MediaMetadataCompat$a;->a:Landroid/os/Bundle;

    invoke-virtual {v5, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    nop

    goto/16 :goto_0

    .line 596
    :cond_16
    invoke-virtual {v1}, Landroid/support/v4/media/MediaMetadataCompat$a;->a()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/support/v4/media/MediaMetadataCompat;)Landroidx/media2/common/MediaItem;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 319
    :cond_0
    new-instance v0, Landroidx/media2/common/MediaMetadata$a;

    invoke-direct {v0}, Landroidx/media2/common/MediaMetadata$a;-><init>()V

    const-wide/16 v1, 0x1

    const-string v3, "androidx.media2.metadata.PLAYABLE"

    .line 320
    invoke-virtual {v0, v3, v1, v2}, Landroidx/media2/common/MediaMetadata$a;->a(Ljava/lang/String;J)Landroidx/media2/common/MediaMetadata$a;

    move-result-object v0

    .line 321
    invoke-virtual {p0}, Landroid/support/v4/media/MediaMetadataCompat;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 322
    invoke-virtual {p0}, Landroid/support/v4/media/MediaMetadataCompat;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 323
    sget-object v4, Landroidx/media2/session/s;->c:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 324
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v4, v2

    .line 325
    :goto_1
    instance-of v5, v3, Ljava/lang/CharSequence;

    if-eqz v5, :cond_3

    .line 326
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4, v3}, Landroidx/media2/common/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Landroidx/media2/common/MediaMetadata$a;

    goto :goto_0

    .line 327
    :cond_3
    instance-of v5, v3, Landroid/graphics/Bitmap;

    if-eqz v5, :cond_4

    .line 328
    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4, v3}, Landroidx/media2/common/MediaMetadata$a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroidx/media2/common/MediaMetadata$a;

    goto :goto_0

    .line 329
    :cond_4
    instance-of v5, v3, Ljava/lang/Long;

    if-eqz v5, :cond_5

    .line 330
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v4, v2, v3}, Landroidx/media2/common/MediaMetadata$a;->a(Ljava/lang/String;J)Landroidx/media2/common/MediaMetadata$a;

    goto :goto_0

    .line 331
    :cond_5
    instance-of v5, v3, Landroid/support/v4/media/RatingCompat;

    if-nez v5, :cond_6

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_1

    instance-of v3, v3, Landroid/media/Rating;

    if-eqz v3, :cond_1

    .line 336
    :cond_6
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->getRating(Ljava/lang/String;)Landroid/support/v4/media/RatingCompat;

    move-result-object v2

    .line 337
    invoke-static {v2}, Landroidx/media2/session/s;->a(Landroid/support/v4/media/RatingCompat;)Landroidx/media2/common/Rating;

    move-result-object v2

    if-eqz v4, :cond_9

    .line 8165
    sget-object v3, Landroidx/media2/common/MediaMetadata;->a:Landroidx/b/a;

    invoke-virtual {v3, v4}, Landroidx/b/a;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 8166
    sget-object v3, Landroidx/media2/common/MediaMetadata;->a:Landroidx/b/a;

    invoke-virtual {v3, v4}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_7

    goto :goto_2

    .line 8167
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "The "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " key cannot be used to put a Rating"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8171
    :cond_8
    :goto_2
    iget-object v3, v0, Landroidx/media2/common/MediaMetadata$a;->a:Landroid/os/Bundle;

    invoke-static {v3, v4, v2}, Landroidx/versionedparcelable/a;->a(Landroid/os/Bundle;Ljava/lang/String;Landroidx/versionedparcelable/c;)V

    goto/16 :goto_0

    .line 8163
    :cond_9
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "key shouldn\'t be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    nop

    goto/16 :goto_0

    .line 343
    :cond_a
    new-instance p0, Landroidx/media2/common/MediaItem$a;

    invoke-direct {p0}, Landroidx/media2/common/MediaItem$a;-><init>()V

    invoke-virtual {v0}, Landroidx/media2/common/MediaMetadata$a;->a()Landroidx/media2/common/MediaMetadata;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media2/common/MediaItem$a;->a(Landroidx/media2/common/MediaMetadata;)Landroidx/media2/common/MediaItem$a;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media2/common/MediaItem$a;->a()Landroidx/media2/common/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroidx/media2/common/MediaItem;)Landroidx/media2/common/MediaItem;
    .locals 3

    if-eqz p0, :cond_1

    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/media2/common/MediaItem;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    new-instance v0, Landroidx/media2/common/MediaItem$a;

    invoke-direct {v0}, Landroidx/media2/common/MediaItem$a;-><init>()V

    .line 2198
    iget-wide v1, p0, Landroidx/media2/common/MediaItem;->e:J

    .line 150
    invoke-virtual {v0, v1, v2}, Landroidx/media2/common/MediaItem$a;->b(J)Landroidx/media2/common/MediaItem$a;

    move-result-object v0

    .line 2207
    iget-wide v1, p0, Landroidx/media2/common/MediaItem;->f:J

    .line 151
    invoke-virtual {v0, v1, v2}, Landroidx/media2/common/MediaItem$a;->a(J)Landroidx/media2/common/MediaItem$a;

    move-result-object v0

    .line 152
    invoke-virtual {p0}, Landroidx/media2/common/MediaItem;->d()Landroidx/media2/common/MediaMetadata;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/media2/common/MediaItem$a;->a(Landroidx/media2/common/MediaMetadata;)Landroidx/media2/common/MediaItem$a;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media2/common/MediaItem$a;->a()Landroidx/media2/common/MediaItem;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static a(Ljava/lang/CharSequence;)Landroidx/media2/common/MediaMetadata;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 557
    :cond_0
    new-instance v0, Landroidx/media2/common/MediaMetadata$a;

    invoke-direct {v0}, Landroidx/media2/common/MediaMetadata$a;-><init>()V

    .line 558
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "android.media.metadata.TITLE"

    invoke-virtual {v0, v1, p0}, Landroidx/media2/common/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;)Landroidx/media2/common/MediaMetadata$a;

    move-result-object p0

    const-wide/16 v0, 0x0

    const-string v2, "androidx.media2.metadata.BROWSABLE"

    .line 559
    invoke-virtual {p0, v2, v0, v1}, Landroidx/media2/common/MediaMetadata$a;->a(Ljava/lang/String;J)Landroidx/media2/common/MediaMetadata$a;

    move-result-object p0

    const-wide/16 v0, 0x1

    const-string v2, "androidx.media2.metadata.PLAYABLE"

    .line 560
    invoke-virtual {p0, v2, v0, v1}, Landroidx/media2/common/MediaMetadata$a;->a(Ljava/lang/String;J)Landroidx/media2/common/MediaMetadata$a;

    move-result-object p0

    .line 561
    invoke-virtual {p0}, Landroidx/media2/common/MediaMetadata$a;->a()Landroidx/media2/common/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/support/v4/media/RatingCompat;)Landroidx/media2/common/Rating;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 609
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getRatingStyle()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    return-object v0

    .line 626
    :pswitch_0
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    new-instance v0, Landroidx/media2/session/PercentageRating;

    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getPercentRating()F

    move-result p0

    invoke-direct {v0, p0}, Landroidx/media2/session/PercentageRating;-><init>(F)V

    return-object v0

    .line 628
    :cond_1
    new-instance p0, Landroidx/media2/session/PercentageRating;

    invoke-direct {p0}, Landroidx/media2/session/PercentageRating;-><init>()V

    return-object p0

    .line 617
    :pswitch_1
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_2

    .line 618
    new-instance v0, Landroidx/media2/session/StarRating;

    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getStarRating()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/media2/session/StarRating;-><init>(IF)V

    return-object v0

    :cond_2
    new-instance p0, Landroidx/media2/session/StarRating;

    invoke-direct {p0, v1}, Landroidx/media2/session/StarRating;-><init>(I)V

    return-object p0

    .line 614
    :pswitch_2
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_3

    .line 615
    new-instance v0, Landroidx/media2/session/StarRating;

    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getStarRating()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/media2/session/StarRating;-><init>(IF)V

    return-object v0

    :cond_3
    new-instance p0, Landroidx/media2/session/StarRating;

    invoke-direct {p0, v1}, Landroidx/media2/session/StarRating;-><init>(I)V

    return-object p0

    .line 611
    :pswitch_3
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_4

    .line 612
    new-instance v0, Landroidx/media2/session/StarRating;

    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getStarRating()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/media2/session/StarRating;-><init>(IF)V

    return-object v0

    :cond_4
    new-instance p0, Landroidx/media2/session/StarRating;

    invoke-direct {p0, v1}, Landroidx/media2/session/StarRating;-><init>(I)V

    return-object p0

    .line 623
    :pswitch_4
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 624
    new-instance v0, Landroidx/media2/session/ThumbRating;

    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isThumbUp()Z

    move-result p0

    invoke-direct {v0, p0}, Landroidx/media2/session/ThumbRating;-><init>(Z)V

    return-object v0

    :cond_5
    new-instance p0, Landroidx/media2/session/ThumbRating;

    invoke-direct {p0}, Landroidx/media2/session/ThumbRating;-><init>()V

    return-object p0

    .line 620
    :pswitch_5
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 621
    new-instance v0, Landroidx/media2/session/HeartRating;

    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->hasHeart()Z

    move-result p0

    invoke-direct {v0, p0}, Landroidx/media2/session/HeartRating;-><init>(Z)V

    return-object v0

    :cond_6
    new-instance p0, Landroidx/media2/session/HeartRating;

    invoke-direct {p0}, Landroidx/media2/session/HeartRating;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroidx/media2/common/SessionPlayer$TrackInfo;)Landroidx/media2/common/SessionPlayer$TrackInfo;
    .locals 4

    if-eqz p0, :cond_1

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    new-instance v0, Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 3162
    iget v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    .line 4126
    iget v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->b:I

    .line 184
    invoke-virtual {p0}, Landroidx/media2/common/SessionPlayer$TrackInfo;->a()Landroid/media/MediaFormat;

    move-result-object v3

    .line 4171
    iget-boolean p0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->d:Z

    .line 185
    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/media2/common/SessionPlayer$TrackInfo;-><init>(IILandroid/media/MediaFormat;Z)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static a(Landroidx/media2/common/VideoSize;)Landroidx/media2/common/VideoSize;
    .locals 2

    if-eqz p0, :cond_1

    .line 165
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/media2/common/VideoSize;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    new-instance v0, Landroidx/media2/common/VideoSize;

    .line 3066
    iget v1, p0, Landroidx/media2/common/VideoSize;->a:I

    .line 3074
    iget p0, p0, Landroidx/media2/common/VideoSize;->b:I

    .line 168
    invoke-direct {v0, v1, p0}, Landroidx/media2/common/VideoSize;-><init>(II)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static a(Landroid/support/v4/media/session/MediaControllerCompat$d;)Landroidx/media2/session/MediaController$PlaybackInfo;
    .locals 4

    .line 16407
    iget v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$d;->a:I

    .line 775
    new-instance v1, Landroidx/media/AudioAttributesCompat$a;

    invoke-direct {v1}, Landroidx/media/AudioAttributesCompat$a;-><init>()V

    .line 16434
    iget-object v2, p0, Landroid/support/v4/media/session/MediaControllerCompat$d;->b:Landroidx/media/AudioAttributesCompat;

    .line 777
    invoke-virtual {v2}, Landroidx/media/AudioAttributesCompat;->b()I

    move-result v2

    .line 776
    invoke-virtual {v1, v2}, Landroidx/media/AudioAttributesCompat$a;->c(I)Landroidx/media/AudioAttributesCompat$a;

    move-result-object v1

    .line 777
    invoke-virtual {v1}, Landroidx/media/AudioAttributesCompat$a;->a()Landroidx/media/AudioAttributesCompat;

    move-result-object v1

    .line 16449
    iget v2, p0, Landroid/support/v4/media/session/MediaControllerCompat$d;->c:I

    .line 16458
    iget v3, p0, Landroid/support/v4/media/session/MediaControllerCompat$d;->d:I

    .line 16467
    iget p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$d;->e:I

    .line 775
    invoke-static {v0, v1, v2, v3, p0}, Landroidx/media2/session/MediaController$PlaybackInfo;->a(ILandroidx/media/AudioAttributesCompat;III)Landroidx/media2/session/MediaController$PlaybackInfo;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/media2/session/MediaLibraryService$LibraryParams;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 845
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 846
    new-instance p0, Landroidx/media2/session/MediaLibraryService$LibraryParams$a;

    invoke-direct {p0}, Landroidx/media2/session/MediaLibraryService$LibraryParams$a;-><init>()V

    .line 16665
    iput-object p1, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams$a;->d:Landroid/os/Bundle;

    const-string v0, "android.service.media.extra.RECENT"

    .line 847
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 17620
    iput-boolean v0, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams$a;->a:Z

    const-string v0, "android.service.media.extra.OFFLINE"

    .line 848
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 17636
    iput-boolean v0, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams$a;->b:Z

    const-string v0, "android.service.media.extra.SUGGESTED"

    .line 849
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 17653
    iput-boolean v0, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams$a;->c:Z

    .line 850
    invoke-virtual {p0}, Landroidx/media2/session/MediaLibraryService$LibraryParams$a;->a()Landroidx/media2/session/MediaLibraryService$LibraryParams;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 853
    :catch_0
    new-instance p0, Landroidx/media2/session/MediaLibraryService$LibraryParams$a;

    invoke-direct {p0}, Landroidx/media2/session/MediaLibraryService$LibraryParams$a;-><init>()V

    .line 17665
    iput-object p1, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams$a;->d:Landroid/os/Bundle;

    .line 853
    invoke-virtual {p0}, Landroidx/media2/session/MediaLibraryService$LibraryParams$a;->a()Landroidx/media2/session/MediaLibraryService$LibraryParams;

    move-result-object p0

    return-object p0
.end method

.method public static a(JLandroid/support/v4/media/session/PlaybackStateCompat;)Landroidx/media2/session/SessionCommandGroup;
    .locals 5

    .line 911
    new-instance v0, Landroidx/media2/session/SessionCommandGroup$a;

    invoke-direct {v0}, Landroidx/media2/session/SessionCommandGroup$a;-><init>()V

    const/4 v1, 0x1

    .line 914
    invoke-virtual {v0, v1}, Landroidx/media2/session/SessionCommandGroup$a;->c(I)Landroidx/media2/session/SessionCommandGroup$a;

    const-wide/16 v2, 0x4

    and-long/2addr p0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 917
    invoke-virtual {v0, v1}, Landroidx/media2/session/SessionCommandGroup$a;->d(I)Landroidx/media2/session/SessionCommandGroup$a;

    .line 919
    :cond_1
    invoke-virtual {v0, v1}, Landroidx/media2/session/SessionCommandGroup$a;->e(I)Landroidx/media2/session/SessionCommandGroup$a;

    .line 920
    invoke-virtual {v0, v1}, Landroidx/media2/session/SessionCommandGroup$a;->f(I)Landroidx/media2/session/SessionCommandGroup$a;

    .line 922
    new-instance p0, Landroidx/media2/session/SessionCommand;

    const/16 p1, 0x2714

    invoke-direct {p0, p1}, Landroidx/media2/session/SessionCommand;-><init>(I)V

    invoke-virtual {v0, p0}, Landroidx/media2/session/SessionCommandGroup$a;->b(Landroidx/media2/session/SessionCommand;)Landroidx/media2/session/SessionCommandGroup$a;

    .line 923
    new-instance p0, Landroidx/media2/session/SessionCommand;

    const/16 p1, 0x2af8

    invoke-direct {p0, p1}, Landroidx/media2/session/SessionCommand;-><init>(I)V

    invoke-virtual {v0, p0}, Landroidx/media2/session/SessionCommandGroup$a;->b(Landroidx/media2/session/SessionCommand;)Landroidx/media2/session/SessionCommandGroup$a;

    .line 924
    new-instance p0, Landroidx/media2/session/SessionCommand;

    const/16 p1, 0x2af9

    invoke-direct {p0, p1}, Landroidx/media2/session/SessionCommand;-><init>(I)V

    invoke-virtual {v0, p0}, Landroidx/media2/session/SessionCommandGroup$a;->b(Landroidx/media2/session/SessionCommand;)Landroidx/media2/session/SessionCommandGroup$a;

    .line 925
    new-instance p0, Landroidx/media2/session/SessionCommand;

    const/16 p1, 0x2afa

    invoke-direct {p0, p1}, Landroidx/media2/session/SessionCommand;-><init>(I)V

    invoke-virtual {v0, p0}, Landroidx/media2/session/SessionCommandGroup$a;->b(Landroidx/media2/session/SessionCommand;)Landroidx/media2/session/SessionCommandGroup$a;

    if-eqz p2, :cond_2

    .line 927
    invoke-virtual {p2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getCustomActions()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 928
    invoke-virtual {p2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getCustomActions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 929
    new-instance p2, Landroidx/media2/session/SessionCommand;

    .line 930
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Landroidx/media2/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 929
    invoke-virtual {v0, p2}, Landroidx/media2/session/SessionCommandGroup$a;->a(Landroidx/media2/session/SessionCommand;)Landroidx/media2/session/SessionCommandGroup$a;

    goto :goto_1

    .line 933
    :cond_2
    invoke-virtual {v0}, Landroidx/media2/session/SessionCommandGroup$a;->a()Landroidx/media2/session/SessionCommandGroup;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroidx/media2/common/ParcelImplListSlice;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/ParcelImplListSlice;",
            ")",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 442
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/common/ParcelImplListSlice;->getList()Ljava/util/List;

    move-result-object p0

    .line 443
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 444
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 445
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/versionedparcelable/ParcelImpl;

    if-eqz v2, :cond_1

    .line 10078
    invoke-static {v2}, Landroidx/versionedparcelable/a;->a(Landroid/os/Parcelable;)Landroidx/versionedparcelable/c;

    move-result-object v2

    .line 447
    check-cast v2, Landroidx/media2/common/MediaItem;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    return-object p0

    .line 201
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 202
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 203
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-static {v2}, Landroidx/media2/session/s;->a(Landroidx/media2/common/SessionPlayer$TrackInfo;)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static a(Landroid/os/Bundle;)Z
    .locals 2

    .line 963
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 965
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    const/4 p0, 0x0

    .line 966
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    const/4 v1, 0x0

    .line 967
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 971
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 979
    throw p0

    .line 978
    :catch_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/4 p0, 0x1

    return p0
.end method

.method public static b(I)I
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    return v0
.end method

.method public static b(Landroidx/media2/common/MediaItem;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 221
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/common/MediaItem;->d()Landroidx/media2/common/MediaMetadata;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 223
    new-instance v0, Landroid/support/v4/media/MediaDescriptionCompat$a;

    invoke-direct {v0}, Landroid/support/v4/media/MediaDescriptionCompat$a;-><init>()V

    .line 224
    invoke-virtual {p0}, Landroidx/media2/common/MediaItem;->f()Ljava/lang/String;

    move-result-object p0

    .line 4469
    iput-object p0, v0, Landroid/support/v4/media/MediaDescriptionCompat$a;->a:Ljava/lang/String;

    .line 225
    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat$a;->a()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p0

    goto/16 :goto_3

    .line 227
    :cond_1
    new-instance v2, Landroid/support/v4/media/MediaDescriptionCompat$a;

    invoke-direct {v2}, Landroid/support/v4/media/MediaDescriptionCompat$a;-><init>()V

    .line 228
    invoke-virtual {p0}, Landroidx/media2/common/MediaItem;->f()Ljava/lang/String;

    move-result-object p0

    .line 5469
    iput-object p0, v2, Landroid/support/v4/media/MediaDescriptionCompat$a;->a:Ljava/lang/String;

    const-string p0, "android.media.metadata.DISPLAY_SUBTITLE"

    .line 229
    invoke-virtual {v0, p0}, Landroidx/media2/common/MediaMetadata;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 5491
    iput-object p0, v2, Landroid/support/v4/media/MediaDescriptionCompat$a;->c:Ljava/lang/CharSequence;

    const-string p0, "android.media.metadata.DISPLAY_DESCRIPTION"

    .line 230
    invoke-virtual {v0, p0}, Landroidx/media2/common/MediaMetadata;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 5503
    iput-object p0, v2, Landroid/support/v4/media/MediaDescriptionCompat$a;->d:Ljava/lang/CharSequence;

    const-string p0, "android.media.metadata.DISPLAY_ICON"

    .line 231
    invoke-virtual {v0, p0}, Landroidx/media2/common/MediaMetadata;->f(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 5515
    iput-object p0, v2, Landroid/support/v4/media/MediaDescriptionCompat$a;->e:Landroid/graphics/Bitmap;

    .line 232
    invoke-virtual {v0}, Landroidx/media2/common/MediaMetadata;->a()Landroid/os/Bundle;

    move-result-object p0

    .line 5538
    iput-object p0, v2, Landroid/support/v4/media/MediaDescriptionCompat$a;->g:Landroid/os/Bundle;

    const-string p0, "android.media.metadata.TITLE"

    .line 234
    invoke-virtual {v0, p0}, Landroidx/media2/common/MediaMetadata;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 6480
    iput-object p0, v2, Landroid/support/v4/media/MediaDescriptionCompat$a;->b:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_2
    const-string p0, "android.media.metadata.DISPLAY_TITLE"

    .line 238
    invoke-virtual {v0, p0}, Landroidx/media2/common/MediaMetadata;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 7480
    iput-object p0, v2, Landroid/support/v4/media/MediaDescriptionCompat$a;->b:Ljava/lang/CharSequence;

    :goto_0
    const-string p0, "android.media.metadata.DISPLAY_ICON_URI"

    .line 241
    invoke-virtual {v0, p0}, Landroidx/media2/common/MediaMetadata;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 243
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 7527
    iput-object p0, v2, Landroid/support/v4/media/MediaDescriptionCompat$a;->f:Landroid/net/Uri;

    :cond_3
    const-string p0, "android.media.metadata.MEDIA_URI"

    .line 246
    invoke-virtual {v0, p0}, Landroidx/media2/common/MediaMetadata;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 248
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 7549
    iput-object p0, v2, Landroid/support/v4/media/MediaDescriptionCompat$a;->h:Landroid/net/Uri;

    .line 251
    :cond_4
    invoke-virtual {v2}, Landroid/support/v4/media/MediaDescriptionCompat$a;->a()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p0

    const-string v2, "androidx.media2.metadata.BROWSABLE"

    .line 253
    invoke-virtual {v0, v2}, Landroidx/media2/common/MediaMetadata;->a(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    .line 254
    invoke-virtual {v0, v2}, Landroidx/media2/common/MediaMetadata;->d(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v5, -0x1

    cmp-long v7, v2, v5

    if-eqz v7, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    const-string v3, "androidx.media2.metadata.PLAYABLE"

    .line 255
    invoke-virtual {v0, v3}, Landroidx/media2/common/MediaMetadata;->d(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_7

    const/4 v1, 0x2

    :cond_7
    or-int/2addr v1, v2

    .line 259
    :goto_3
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    return-object v0
.end method

.method public static b(Landroid/support/v4/media/session/PlaybackStateCompat;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/media/session/PlaybackStateCompat;",
            ")",
            "Ljava/util/List<",
            "Landroidx/media2/session/MediaSession$CommandButton;",
            ">;"
        }
    .end annotation

    .line 945
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 949
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getCustomActions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 950
    new-instance v2, Landroidx/media2/session/MediaSession$CommandButton$a;

    invoke-direct {v2}, Landroidx/media2/session/MediaSession$CommandButton$a;-><init>()V

    new-instance v3, Landroidx/media2/session/SessionCommand;

    .line 951
    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroidx/media2/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 21114
    iput-object v3, v2, Landroidx/media2/session/MediaSession$CommandButton$a;->a:Landroidx/media2/session/SessionCommand;

    .line 952
    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    .line 21140
    iput-object v3, v2, Landroidx/media2/session/MediaSession$CommandButton$a;->c:Ljava/lang/CharSequence;

    const/4 v3, 0x1

    .line 21153
    iput-boolean v3, v2, Landroidx/media2/session/MediaSession$CommandButton$a;->e:Z

    .line 954
    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getIcon()I

    move-result v1

    .line 22129
    iput v1, v2, Landroidx/media2/session/MediaSession$CommandButton$a;->b:I

    .line 22175
    new-instance v1, Landroidx/media2/session/MediaSession$CommandButton;

    iget-object v4, v2, Landroidx/media2/session/MediaSession$CommandButton$a;->a:Landroidx/media2/session/SessionCommand;

    iget v5, v2, Landroidx/media2/session/MediaSession$CommandButton$a;->b:I

    iget-object v6, v2, Landroidx/media2/session/MediaSession$CommandButton$a;->c:Ljava/lang/CharSequence;

    iget-object v7, v2, Landroidx/media2/session/MediaSession$CommandButton$a;->d:Landroid/os/Bundle;

    iget-boolean v8, v2, Landroidx/media2/session/MediaSession$CommandButton$a;->e:Z

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroidx/media2/session/MediaSession$CommandButton;-><init>(Landroidx/media2/session/SessionCommand;ILjava/lang/CharSequence;Landroid/os/Bundle;Z)V

    .line 955
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static b(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 271
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 272
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 273
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/common/MediaItem;

    invoke-static {v2}, Landroidx/media2/session/s;->b(Landroidx/media2/common/MediaItem;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static c(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 379
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 380
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 381
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    if-nez v3, :cond_1

    move-object v3, v0

    goto/16 :goto_3

    .line 8303
    :cond_1
    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v3

    if-nez v3, :cond_2

    move-object v3, v0

    goto/16 :goto_2

    .line 8498
    :cond_2
    new-instance v4, Landroidx/media2/common/MediaMetadata$a;

    invoke-direct {v4}, Landroidx/media2/common/MediaMetadata$a;-><init>()V

    .line 8499
    invoke-virtual {v3}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.media.metadata.MEDIA_ID"

    invoke-virtual {v4, v6, v5}, Landroidx/media2/common/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/String;)Landroidx/media2/common/MediaMetadata$a;

    .line 8501
    invoke-virtual {v3}, Landroid/support/v4/media/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v6, "android.media.metadata.DISPLAY_TITLE"

    .line 8503
    invoke-virtual {v4, v6, v5}, Landroidx/media2/common/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Landroidx/media2/common/MediaMetadata$a;

    .line 8506
    :cond_3
    invoke-virtual {v3}, Landroid/support/v4/media/MediaDescriptionCompat;->getDescription()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 8508
    invoke-virtual {v3}, Landroid/support/v4/media/MediaDescriptionCompat;->getDescription()Ljava/lang/CharSequence;

    move-result-object v5

    const-string v6, "android.media.metadata.DISPLAY_DESCRIPTION"

    invoke-virtual {v4, v6, v5}, Landroidx/media2/common/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Landroidx/media2/common/MediaMetadata$a;

    .line 8511
    :cond_4
    invoke-virtual {v3}, Landroid/support/v4/media/MediaDescriptionCompat;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_5

    const-string v6, "android.media.metadata.DISPLAY_SUBTITLE"

    .line 8513
    invoke-virtual {v4, v6, v5}, Landroidx/media2/common/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Landroidx/media2/common/MediaMetadata$a;

    .line 8516
    :cond_5
    invoke-virtual {v3}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_6

    const-string v6, "android.media.metadata.DISPLAY_ICON"

    .line 8518
    invoke-virtual {v4, v6, v5}, Landroidx/media2/common/MediaMetadata$a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroidx/media2/common/MediaMetadata$a;

    .line 8521
    :cond_6
    invoke-virtual {v3}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 8523
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.media.metadata.DISPLAY_ICON_URI"

    invoke-virtual {v4, v6, v5}, Landroidx/media2/common/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Landroidx/media2/common/MediaMetadata$a;

    .line 8526
    :cond_7
    invoke-virtual {v3}, Landroid/support/v4/media/MediaDescriptionCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 9235
    iget-object v6, v4, Landroidx/media2/common/MediaMetadata$a;->a:Landroid/os/Bundle;

    const-string v7, "androidx.media2.metadata.EXTRAS"

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 8531
    :cond_8
    invoke-virtual {v3}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 8533
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "android.media.metadata.MEDIA_URI"

    invoke-virtual {v4, v6, v3}, Landroidx/media2/common/MediaMetadata$a;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Landroidx/media2/common/MediaMetadata$a;

    :cond_9
    const-string v3, "androidx.media2.metadata.BROWSABLE"

    if-eqz v5, :cond_a

    const-string v6, "android.media.extra.BT_FOLDER_TYPE"

    .line 8536
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 8538
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 8537
    invoke-virtual {v4, v3, v5, v6}, Landroidx/media2/common/MediaMetadata$a;->a(Ljava/lang/String;J)Landroidx/media2/common/MediaMetadata$a;

    goto :goto_1

    :cond_a
    const-wide/16 v5, -0x1

    .line 8542
    invoke-virtual {v4, v3, v5, v6}, Landroidx/media2/common/MediaMetadata$a;->a(Ljava/lang/String;J)Landroidx/media2/common/MediaMetadata$a;

    :goto_1
    const-wide/16 v5, 0x1

    const-string v3, "androidx.media2.metadata.PLAYABLE"

    .line 8545
    invoke-virtual {v4, v3, v5, v6}, Landroidx/media2/common/MediaMetadata$a;->a(Ljava/lang/String;J)Landroidx/media2/common/MediaMetadata$a;

    .line 8547
    invoke-virtual {v4}, Landroidx/media2/common/MediaMetadata$a;->a()Landroidx/media2/common/MediaMetadata;

    move-result-object v3

    .line 8305
    :goto_2
    new-instance v4, Landroidx/media2/common/MediaItem$a;

    invoke-direct {v4}, Landroidx/media2/common/MediaItem$a;-><init>()V

    .line 8306
    invoke-virtual {v4, v3}, Landroidx/media2/common/MediaItem$a;->a(Landroidx/media2/common/MediaMetadata;)Landroidx/media2/common/MediaItem$a;

    move-result-object v3

    .line 8307
    invoke-virtual {v3}, Landroidx/media2/common/MediaItem$a;->a()Landroidx/media2/common/MediaItem;

    move-result-object v3

    :goto_3
    if-eqz v3, :cond_b

    .line 383
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_c
    return-object v1
.end method

.method public static d(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 407
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 408
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 409
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/common/MediaItem;

    .line 410
    invoke-virtual {v2}, Landroidx/media2/common/MediaItem;->d()Landroidx/media2/common/MediaMetadata;

    move-result-object v3

    if-nez v3, :cond_1

    .line 411
    new-instance v3, Landroid/support/v4/media/MediaDescriptionCompat$a;

    invoke-direct {v3}, Landroid/support/v4/media/MediaDescriptionCompat$a;-><init>()V

    invoke-virtual {v2}, Landroidx/media2/common/MediaItem;->f()Ljava/lang/String;

    move-result-object v2

    .line 9469
    iput-object v2, v3, Landroid/support/v4/media/MediaDescriptionCompat$a;->a:Ljava/lang/String;

    .line 411
    invoke-virtual {v3}, Landroid/support/v4/media/MediaDescriptionCompat$a;->a()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v2

    goto :goto_1

    .line 412
    :cond_1
    invoke-virtual {v2}, Landroidx/media2/common/MediaItem;->d()Landroidx/media2/common/MediaMetadata;

    move-result-object v2

    invoke-static {v2}, Landroidx/media2/session/s;->a(Landroidx/media2/common/MediaMetadata;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v2

    .line 413
    :goto_1
    invoke-static {v1}, Landroidx/media2/session/s;->a(I)J

    move-result-wide v3

    .line 414
    new-instance v5, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    invoke-direct {v5, v2, v3, v4}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;J)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static e(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 463
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 464
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 466
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 468
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    .line 469
    invoke-virtual {v1, v4, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 470
    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v5

    const/high16 v6, 0x40000

    if-ge v5, v6, :cond_1

    .line 471
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 478
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 479
    throw p0
.end method

.method public static f(Ljava/util/List;)Landroidx/media2/common/ParcelImplListSlice;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;)",
            "Landroidx/media2/common/ParcelImplListSlice;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 692
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 693
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 694
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/common/MediaItem;

    if-eqz v2, :cond_1

    .line 696
    invoke-static {v2}, Landroidx/media2/common/MediaParcelUtils;->a(Landroidx/versionedparcelable/c;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v2

    .line 697
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 700
    :cond_2
    new-instance p0, Landroidx/media2/common/ParcelImplListSlice;

    invoke-direct {p0, v0}, Landroidx/media2/common/ParcelImplListSlice;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static g(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 887
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 888
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 890
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method
