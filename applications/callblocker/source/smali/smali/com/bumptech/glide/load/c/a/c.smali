.class public Lcom/bumptech/glide/load/c/a/c;
.super Ljava/lang/Object;
.source "BitmapEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/j",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/bumptech/glide/load/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/g",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/bumptech/glide/load/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/g",
            "<",
            "Landroid/graphics/Bitmap$CompressFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Lcom/bumptech/glide/load/engine/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-string/jumbo v0, "com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality"

    const/16 v1, 0x5a

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Lcom/bumptech/glide/load/g;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/g;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/c/a/c;->a:Lcom/bumptech/glide/load/g;

    .line 51
    const-string/jumbo v0, "com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat"

    invoke-static {v0}, Lcom/bumptech/glide/load/g;->a(Ljava/lang/String;)Lcom/bumptech/glide/load/g;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/c/a/c;->b:Lcom/bumptech/glide/load/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/c/a/c;->c:Lcom/bumptech/glide/load/engine/a/b;

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/a/b;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/bumptech/glide/load/c/a/c;->c:Lcom/bumptech/glide/load/engine/a/b;

    .line 60
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/h;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/bumptech/glide/load/c/a/c;->b:Lcom/bumptech/glide/load/g;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/h;->a(Lcom/bumptech/glide/load/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap$CompressFormat;

    .line 119
    if-eqz v0, :cond_0

    .line 124
    :goto_0
    return-object v0

    .line 121
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    .line 124
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/load/c;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/bumptech/glide/load/c;->b:Lcom/bumptech/glide/load/c;

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/engine/t;Ljava/io/File;Lcom/bumptech/glide/load/h;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/load/h;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 73
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/t;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 74
    invoke-direct {p0, v0, p3}, Lcom/bumptech/glide/load/c/a/c;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/h;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v5

    .line 75
    const-string/jumbo v1, "encode: [%dx%d] %s"

    .line 76
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3, v5}, Lcom/bumptech/glide/h/a/b;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    :try_start_0
    invoke-static {}, Lcom/bumptech/glide/h/e;->a()J

    move-result-wide v6

    .line 79
    sget-object v1, Lcom/bumptech/glide/load/c/a/c;->a:Lcom/bumptech/glide/load/g;

    invoke-virtual {p3, v1}, Lcom/bumptech/glide/load/h;->a(Lcom/bumptech/glide/load/g;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v8

    .line 81
    const/4 v4, 0x0

    .line 82
    const/4 v3, 0x0

    .line 84
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :try_start_2
    iget-object v1, p0, Lcom/bumptech/glide/load/c/a/c;->c:Lcom/bumptech/glide/load/engine/a/b;

    if-eqz v1, :cond_0

    .line 86
    new-instance v1, Lcom/bumptech/glide/load/a/c;

    iget-object v3, p0, Lcom/bumptech/glide/load/c/a/c;->c:Lcom/bumptech/glide/load/engine/a/b;

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/a/c;-><init>(Ljava/io/OutputStream;Lcom/bumptech/glide/load/engine/a/b;)V

    move-object v2, v1

    .line 88
    :cond_0
    invoke-virtual {v0, v5, v8, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 89
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 90
    const/4 v1, 0x1

    .line 96
    if-eqz v2, :cond_1

    .line 98
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    :cond_1
    :goto_0
    :try_start_4
    const-string/jumbo v2, "BitmapEncoder"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    const-string/jumbo v2, "BitmapEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Compressed with type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " of size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/bumptech/glide/h/j;->a(Landroid/graphics/Bitmap;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 107
    invoke-static {v6, v7}, Lcom/bumptech/glide/h/e;->a(J)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", options format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/bumptech/glide/load/c/a/c;->b:Lcom/bumptech/glide/load/g;

    .line 108
    invoke-virtual {p3, v4}, Lcom/bumptech/glide/load/h;->a(Lcom/bumptech/glide/load/g;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", hasAlpha: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 109
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 113
    :cond_2
    invoke-static {}, Lcom/bumptech/glide/h/a/b;->a()V

    .line 111
    return v1

    .line 91
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 92
    :goto_1
    :try_start_5
    const-string/jumbo v3, "BitmapEncoder"

    const/4 v8, 0x3

    invoke-static {v3, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 93
    const-string/jumbo v3, "BitmapEncoder"

    const-string/jumbo v8, "Failed to encode Bitmap"

    invoke-static {v3, v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 96
    :cond_3
    if-eqz v2, :cond_5

    .line 98
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move v1, v4

    .line 101
    goto/16 :goto_0

    .line 99
    :catch_1
    move-exception v1

    move v1, v4

    .line 101
    goto/16 :goto_0

    .line 96
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_2
    if-eqz v2, :cond_4

    .line 98
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 101
    :cond_4
    :goto_3
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 113
    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/bumptech/glide/h/a/b;->a()V

    throw v0

    .line 99
    :catch_2
    move-exception v2

    goto/16 :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 96
    :catchall_2
    move-exception v0

    goto :goto_2

    .line 91
    :catch_4
    move-exception v1

    goto :goto_1

    :cond_5
    move v1, v4

    goto/16 :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/File;Lcom/bumptech/glide/load/h;)Z
    .locals 1

    .prologue
    .line 35
    check-cast p1, Lcom/bumptech/glide/load/engine/t;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/c/a/c;->a(Lcom/bumptech/glide/load/engine/t;Ljava/io/File;Lcom/bumptech/glide/load/h;)Z

    move-result v0

    return v0
.end method
