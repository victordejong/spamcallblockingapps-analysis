.class public Lcom/callapp/contacts/util/glide/GlideUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/glide/GlideUtils$CustomViewListener;,
        Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;,
        Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;,
        Lcom/callapp/contacts/util/glide/GlideUtils$AnimationEndsListener;
    }
.end annotation


# static fields
.field public static a:I = 0x438

.field public static b:I = 0x2d0

.field private static c:Z = false

.field private static final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/callapp/contacts/util/glide/GlideUtils;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bumptech/glide/c;
    .locals 2

    .line 66
    sget-boolean v0, Lcom/callapp/contacts/util/glide/GlideUtils;->c:Z

    if-nez v0, :cond_1

    .line 67
    sget-object v0, Lcom/callapp/contacts/util/glide/GlideUtils;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-boolean v1, Lcom/callapp/contacts/util/glide/GlideUtils;->c:Z

    if-nez v1, :cond_0

    .line 69
    invoke-static {p0}, Lcom/callapp/contacts/util/glide/GlideApp;->a(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object p0

    const/4 v1, 0x1

    .line 70
    sput-boolean v1, Lcom/callapp/contacts/util/glide/GlideUtils;->c:Z

    .line 71
    monitor-exit v0

    return-object p0

    .line 73
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 76
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/callapp/contacts/util/glide/GlideApp;->a(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object p0

    return-object p0
.end method

.method public static a(ILcom/callapp/contacts/model/contact/ContactData;)Lcom/bumptech/glide/e/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            ")",
            "Lcom/bumptech/glide/e/c<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 766
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(I)V

    const/4 p0, 0x1

    .line 4371
    iput-boolean p0, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 767
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, -0x1

    .line 768
    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(ILandroid/graphics/PorterDuff$Mode;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object p0

    const v0, 0x7f06008a

    if-eqz p1, :cond_0

    .line 769
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isSpammer()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f06001c

    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 5354
    iput-object p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->g:Ljava/lang/Integer;

    .line 770
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    .line 5432
    iput-object p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->e:Landroid/content/Context;

    .line 771
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getNotificationLargeIconHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->getResizedBitmap(I)Lcom/bumptech/glide/e/c;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lcom/bumptech/glide/e/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/e/c<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 759
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 3371
    iput-boolean p0, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 3376
    iput-boolean p0, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 762
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p0

    .line 3432
    iput-object p0, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->e:Landroid/content/Context;

    .line 763
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->getTargetBitmap()Lcom/bumptech/glide/e/c;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/callapp/contacts/model/contact/ContactData;)Lcom/bumptech/glide/e/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            ")",
            "Lcom/bumptech/glide/e/c<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 749
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 750
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v0

    const/4 v2, 0x1

    .line 1371
    iput-boolean v2, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    if-eqz p1, :cond_1

    .line 752
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoBGColor()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoBGColor()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_1
    const v2, 0x7f060244

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2354
    iput-object v2, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->g:Ljava/lang/Integer;

    .line 753
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    .line 2432
    iput-object v2, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->e:Landroid/content/Context;

    if-eqz p1, :cond_2

    .line 753
    new-instance v1, Lcom/callapp/contacts/util/glide/CallAppRequestListener;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/util/glide/CallAppRequestListener;-><init>(Ljava/lang/String;Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 2496
    :cond_2
    iput-object v1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->n:Lcom/bumptech/glide/e/g;

    .line 755
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->getTargetBitmap()Lcom/bumptech/glide/e/c;

    move-result-object p0

    return-object p0
.end method

.method public static a()V
    .locals 11

    .line 98
    const-class v0, Lcom/callapp/contacts/util/glide/GlideUtils;

    const-string v1, "Start task deleting glide cache"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/util/glide/GlideUtils;->b(Landroid/content/Context;)Lcom/callapp/contacts/util/glide/GlideRequests;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/util/glide/GlideRequests;->j()Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object v1

    const v2, 0x7f080525

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/util/glide/GlideRequest;->b(Ljava/lang/Integer;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/util/glide/GlideRequest;->b()Lcom/bumptech/glide/e/c;

    move-result-object v1

    .line 104
    :try_start_0
    invoke-interface {v1}, Lcom/bumptech/glide/e/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 108
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 109
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 110
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 111
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Glide cache directory: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 114
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    const-string v5, ")"

    const-string v6, "/"

    if-ge v3, v2, :cond_1

    aget-object v7, v1, v3

    .line 116
    new-instance v8, Ljava/util/Date;

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    const v9, 0x7f0b0050

    .line 117
    invoke-static {v8, v9}, Lcom/callapp/contacts/util/date/DateUtils;->b(Ljava/util/Date;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 119
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    add-int/lit8 v4, v4, 0x1

    .line 121
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " Deleted ("

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v1

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 124
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Finished deleting from cache ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v1, "Cache dir is empty"

    .line 126
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/bumptech/glide/f/d;
    .locals 5

    .line 781
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz v0, :cond_0

    .line 782
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 784
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    .line 785
    new-instance p0, Lcom/bumptech/glide/f/d;

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/bumptech/glide/f/d;-><init>(Ljava/lang/String;JI)V

    return-object p0

    .line 788
    :cond_0
    new-instance p0, Lcom/bumptech/glide/f/d;

    const-wide/16 v3, 0x0

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/bumptech/glide/f/d;-><init>(Ljava/lang/String;JI)V

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Lcom/callapp/contacts/util/glide/GlideRequests;
    .locals 2

    .line 80
    sget-boolean v0, Lcom/callapp/contacts/util/glide/GlideUtils;->c:Z

    if-nez v0, :cond_1

    .line 81
    sget-object v0, Lcom/callapp/contacts/util/glide/GlideUtils;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    sget-boolean v1, Lcom/callapp/contacts/util/glide/GlideUtils;->c:Z

    if-nez v1, :cond_0

    .line 83
    invoke-static {p0}, Lcom/callapp/contacts/util/glide/GlideApp;->b(Landroid/content/Context;)Lcom/callapp/contacts/util/glide/GlideRequests;

    move-result-object p0

    const/4 v1, 0x1

    .line 84
    sput-boolean v1, Lcom/callapp/contacts/util/glide/GlideUtils;->c:Z

    .line 85
    monitor-exit v0

    return-object p0

    .line 87
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 90
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/callapp/contacts/util/glide/GlideApp;->b(Landroid/content/Context;)Lcom/callapp/contacts/util/glide/GlideRequests;

    move-result-object p0

    return-object p0
.end method

.method public static getFutureTargetForResourceTarget(I)Lcom/bumptech/glide/e/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/e/c<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 775
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(I)V

    .line 776
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p0

    .line 6432
    iput-object p0, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->e:Landroid/content/Context;

    .line 777
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->getTargetBitmap()Lcom/bumptech/glide/e/c;

    move-result-object p0

    return-object p0
.end method
