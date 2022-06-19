.class public final Landroidx/media2/common/MediaMetadata;
.super Landroidx/versionedparcelable/CustomVersionedParcelable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/common/MediaMetadata$BitmapEntry;,
        Landroidx/media2/common/MediaMetadata$a;
    }
.end annotation


# static fields
.field public static final a:Landroidx/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Landroid/os/Bundle;

.field c:Landroid/os/Bundle;

.field d:Landroidx/media2/common/ParcelImplListSlice;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 698
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    .line 699
    sput-object v0, Landroidx/media2/common/MediaMetadata;->a:Landroidx/b/a;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.media.metadata.TITLE"

    invoke-virtual {v0, v2, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "android.media.metadata.ARTIST"

    .line 700
    invoke-virtual {v0, v2, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 701
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.media.metadata.DURATION"

    invoke-virtual {v0, v3, v2}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "android.media.metadata.ALBUM"

    .line 702
    invoke-virtual {v0, v3, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "android.media.metadata.AUTHOR"

    .line 703
    invoke-virtual {v0, v3, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "android.media.metadata.WRITER"

    .line 704
    invoke-virtual {v0, v3, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "android.media.metadata.COMPOSER"

    .line 705
    invoke-virtual {v0, v3, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "android.media.metadata.COMPILATION"

    .line 706
    invoke-virtual {v0, v3, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "android.media.metadata.DATE"

    .line 707
    invoke-virtual {v0, v3, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "android.media.metadata.YEAR"

    .line 708
    invoke-virtual {v0, v3, v2}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "android.media.metadata.GENRE"

    .line 709
    invoke-virtual {v0, v3, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "android.media.metadata.TRACK_NUMBER"

    .line 710
    invoke-virtual {v0, v3, v2}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "android.media.metadata.NUM_TRACKS"

    .line 711
    invoke-virtual {v0, v3, v2}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "android.media.metadata.DISC_NUMBER"

    .line 712
    invoke-virtual {v0, v3, v2}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "android.media.metadata.ALBUM_ARTIST"

    .line 713
    invoke-virtual {v0, v3, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    .line 714
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "android.media.metadata.ART"

    invoke-virtual {v0, v4, v3}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "android.media.metadata.ART_URI"

    .line 715
    invoke-virtual {v0, v4, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "android.media.metadata.ALBUM_ART"

    .line 716
    invoke-virtual {v0, v4, v3}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "android.media.metadata.ALBUM_ART_URI"

    .line 717
    invoke-virtual {v0, v4, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x3

    .line 718
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "android.media.metadata.USER_RATING"

    invoke-virtual {v0, v5, v4}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "android.media.metadata.RATING"

    .line 719
    invoke-virtual {v0, v5, v4}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "android.media.metadata.DISPLAY_TITLE"

    .line 720
    invoke-virtual {v0, v4, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "android.media.metadata.DISPLAY_SUBTITLE"

    .line 721
    invoke-virtual {v0, v4, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "android.media.metadata.DISPLAY_DESCRIPTION"

    .line 722
    invoke-virtual {v0, v4, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "android.media.metadata.DISPLAY_ICON"

    .line 723
    invoke-virtual {v0, v4, v3}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "android.media.metadata.DISPLAY_ICON_URI"

    .line 724
    invoke-virtual {v0, v3, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "android.media.metadata.MEDIA_ID"

    .line 725
    invoke-virtual {v0, v3, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "android.media.metadata.MEDIA_URI"

    .line 726
    invoke-virtual {v0, v3, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x4

    .line 727
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "androidx.media2.metadata.RADIO_FREQUENCY"

    invoke-virtual {v0, v4, v3}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "androidx.media2.metadata.RADIO_PROGRAM_NAME"

    .line 728
    invoke-virtual {v0, v3, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "androidx.media2.metadata.BROWSABLE"

    .line 729
    invoke-virtual {v0, v1, v2}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "androidx.media2.metadata.PLAYABLE"

    .line 730
    invoke-virtual {v0, v1, v2}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "androidx.media2.metadata.ADVERTISEMENT"

    .line 731
    invoke-virtual {v0, v1, v2}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "androidx.media2.metadata.DOWNLOAD_STATUS"

    .line 732
    invoke-virtual {v0, v1, v2}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 733
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "androidx.media2.metadata.EXTRAS"

    invoke-virtual {v0, v2, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 755
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 758
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    .line 759
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/media2/common/MediaMetadata;->b:Landroid/os/Bundle;

    .line 760
    const-class p1, Landroidx/media2/common/MediaMetadata;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 2

    .line 903
    :try_start_0
    iget-object v0, p0, Landroidx/media2/common/MediaMetadata;->b:Landroid/os/Bundle;

    const-string v1, "androidx.media2.metadata.EXTRAS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "MediaMetadata"

    const-string v1, "Failed to retrieve an extra"

    .line 906
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Z)V
    .locals 5

    .line 954
    iget-object p1, p0, Landroidx/media2/common/MediaMetadata;->b:Landroid/os/Bundle;

    monitor-enter p1

    .line 955
    :try_start_0
    iget-object v0, p0, Landroidx/media2/common/MediaMetadata;->c:Landroid/os/Bundle;

    if-nez v0, :cond_2

    .line 956
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroidx/media2/common/MediaMetadata;->b:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/media2/common/MediaMetadata;->c:Landroid/os/Bundle;

    .line 957
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 958
    iget-object v1, p0, Landroidx/media2/common/MediaMetadata;->b:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 959
    iget-object v3, p0, Landroidx/media2/common/MediaMetadata;->b:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 960
    instance-of v4, v3, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 964
    check-cast v3, Landroid/graphics/Bitmap;

    .line 965
    new-instance v4, Landroidx/media2/common/MediaMetadata$BitmapEntry;

    invoke-direct {v4, v2, v3}, Landroidx/media2/common/MediaMetadata$BitmapEntry;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {v4}, Landroidx/media2/common/MediaParcelUtils;->a(Landroidx/versionedparcelable/c;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 966
    iget-object v3, p0, Landroidx/media2/common/MediaMetadata;->c:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 968
    :cond_1
    new-instance v1, Landroidx/media2/common/ParcelImplListSlice;

    invoke-direct {v1, v0}, Landroidx/media2/common/ParcelImplListSlice;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Landroidx/media2/common/MediaMetadata;->d:Landroidx/media2/common/ParcelImplListSlice;

    .line 970
    :cond_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .line 773
    iget-object v0, p0, Landroidx/media2/common/MediaMetadata;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    .line 788
    iget-object v0, p0, Landroidx/media2/common/MediaMetadata;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "key shouldn\'t be null"

    .line 814
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 816
    iget-object v0, p0, Landroidx/media2/common/MediaMetadata;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 818
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final d(Ljava/lang/String;)J
    .locals 3

    .line 834
    iget-object v0, p0, Landroidx/media2/common/MediaMetadata;->b:Landroid/os/Bundle;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final e(Ljava/lang/String;)Landroidx/media2/common/Rating;
    .locals 3

    const-string v0, "key shouldn\'t be null"

    .line 849
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 853
    :try_start_0
    iget-object v1, p0, Landroidx/media2/common/MediaMetadata;->b:Landroid/os/Bundle;

    invoke-static {v1, p1}, Landroidx/versionedparcelable/a;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/versionedparcelable/c;

    move-result-object p1

    check-cast p1, Landroidx/media2/common/Rating;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "MediaMetadata"

    const-string v2, "Failed to retrieve a key as Rating."

    .line 856
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public final e()V
    .locals 4

    .line 979
    iget-object v0, p0, Landroidx/media2/common/MediaMetadata;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 980
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object v0, p0, Landroidx/media2/common/MediaMetadata;->b:Landroid/os/Bundle;

    .line 981
    iget-object v0, p0, Landroidx/media2/common/MediaMetadata;->d:Landroidx/media2/common/ParcelImplListSlice;

    if-eqz v0, :cond_1

    .line 982
    invoke-virtual {v0}, Landroidx/media2/common/ParcelImplListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 983
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/versionedparcelable/ParcelImpl;

    .line 2078
    invoke-static {v1}, Landroidx/versionedparcelable/a;->a(Landroid/os/Parcelable;)Landroidx/versionedparcelable/c;

    move-result-object v1

    .line 984
    check-cast v1, Landroidx/media2/common/MediaMetadata$BitmapEntry;

    .line 985
    iget-object v2, p0, Landroidx/media2/common/MediaMetadata;->b:Landroid/os/Bundle;

    .line 2290
    iget-object v3, v1, Landroidx/media2/common/MediaMetadata$BitmapEntry;->a:Ljava/lang/String;

    .line 2294
    iget-object v1, v1, Landroidx/media2/common/MediaMetadata$BitmapEntry;->b:Landroid/graphics/Bitmap;

    .line 985
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final f(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 888
    :try_start_0
    iget-object v0, p0, Landroidx/media2/common/MediaMetadata;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MediaMetadata"

    const-string v1, "Failed to retrieve a key as Bitmap."

    .line 891
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 931
    iget-object v0, p0, Landroidx/media2/common/MediaMetadata;->b:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
