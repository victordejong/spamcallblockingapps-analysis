.class Lcom/bytedance/sdk/openadsdk/j/a;
.super Lcom/bytedance/sdk/adnet/b/a;
.source "SourceFile"


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field private c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/bytedance/sdk/openadsdk/b/a;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/b/a;-><init>()V

    .line 28
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a;->c:Ljava/util/WeakHashMap;

    .line 36
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/b/d;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a;->d:Lcom/bytedance/sdk/openadsdk/b/a;

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/j/a;
    .locals 1

    .line 32
    new-instance v0, Lcom/bytedance/sdk/openadsdk/j/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/j/a;-><init>()V

    return-object v0
.end method

.method private static b()Ljava/lang/String;
    .locals 3

    .line 134
    sget-object v0, Lcom/bytedance/sdk/openadsdk/j/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/adnet/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "diskImage"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 138
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/j/a;->b:Ljava/lang/String;

    .line 141
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/j/a;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;
    .locals 0

    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 124
    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/j/a;->c:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 125
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    return-object p2

    .line 128
    :cond_1
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 129
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/j/a;->c:Ljava/util/WeakHashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;[B)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/adnet/b/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;[B)V

    .line 80
    new-instance p3, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-lez p1, :cond_1

    return-void

    .line 85
    :cond_1
    new-instance p1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    const/4 v2, 0x0

    .line 90
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 92
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 94
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p2, v2, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 95
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 97
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long p2, v4, v0

    if-lez p2, :cond_2

    .line 98
    invoke-virtual {p1, p3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 101
    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/j/a;->d:Lcom/bytedance/sdk/openadsdk/b/a;

    invoke-interface {p2, p3}, Lcom/bytedance/sdk/openadsdk/b/a;->a(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p2

    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception p2

    :goto_0
    :try_start_3
    const-string v0, "DiskImageCache"

    const-string v1, "diskImageCache putBitmap error "

    .line 103
    invoke-static {v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 105
    invoke-virtual {p3}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_3

    .line 109
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    nop

    :catch_1
    :cond_3
    return-void

    :catchall_2
    move-exception p1

    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 113
    :catch_2
    :cond_4
    throw p1
.end method

.method public b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .line 42
    invoke-super {p0, p1}, Lcom/bytedance/sdk/adnet/b/a;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    .line 44
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 49
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 51
    invoke-static {v1, v2, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 54
    invoke-super {p0, p1, v0, v1}, Lcom/bytedance/sdk/adnet/b/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    :try_start_3
    const-string v1, "DiskImageCache"

    const-string v3, "diskImageCache getBitmap error "

    .line 57
    invoke-static {v1, v3, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_2

    .line 61
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catchall_2
    move-exception p1

    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 65
    :catch_0
    :cond_1
    throw p1

    :catch_1
    :cond_2
    :goto_1
    return-object v0
.end method
