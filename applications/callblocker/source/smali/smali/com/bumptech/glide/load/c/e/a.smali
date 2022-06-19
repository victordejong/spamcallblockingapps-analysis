.class public Lcom/bumptech/glide/load/c/e/a;
.super Ljava/lang/Object;
.source "ByteBufferGifDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/c/e/a$b;,
        Lcom/bumptech/glide/load/c/e/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/i",
        "<",
        "Ljava/nio/ByteBuffer;",
        "Lcom/bumptech/glide/load/c/e/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/load/c/e/a$a;

.field private static final b:Lcom/bumptech/glide/load/c/e/a$b;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/bumptech/glide/load/c/e/a$b;

.field private final f:Lcom/bumptech/glide/load/c/e/a$a;

.field private final g:Lcom/bumptech/glide/load/c/e/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/bumptech/glide/load/c/e/a$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/c/e/a$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/c/e/a;->a:Lcom/bumptech/glide/load/c/e/a$a;

    .line 38
    new-instance v0, Lcom/bumptech/glide/load/c/e/a$b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/c/e/a$b;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/c/e/a;->b:Lcom/bumptech/glide/load/c/e/a$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/engine/a/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/bumptech/glide/load/engine/a/e;",
            "Lcom/bumptech/glide/load/engine/a/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    sget-object v5, Lcom/bumptech/glide/load/c/e/a;->b:Lcom/bumptech/glide/load/c/e/a$b;

    sget-object v6, Lcom/bumptech/glide/load/c/e/a;->a:Lcom/bumptech/glide/load/c/e/a$a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/load/c/e/a;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/engine/a/b;Lcom/bumptech/glide/load/c/e/a$b;Lcom/bumptech/glide/load/c/e/a$a;)V

    .line 57
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/engine/a/b;Lcom/bumptech/glide/load/c/e/a$b;Lcom/bumptech/glide/load/c/e/a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/bumptech/glide/load/engine/a/e;",
            "Lcom/bumptech/glide/load/engine/a/b;",
            "Lcom/bumptech/glide/load/c/e/a$b;",
            "Lcom/bumptech/glide/load/c/e/a$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/c/e/a;->c:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/bumptech/glide/load/c/e/a;->d:Ljava/util/List;

    .line 69
    iput-object p6, p0, Lcom/bumptech/glide/load/c/e/a;->f:Lcom/bumptech/glide/load/c/e/a$a;

    .line 70
    new-instance v0, Lcom/bumptech/glide/load/c/e/b;

    invoke-direct {v0, p3, p4}, Lcom/bumptech/glide/load/c/e/b;-><init>(Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/engine/a/b;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/c/e/a;->g:Lcom/bumptech/glide/load/c/e/b;

    .line 71
    iput-object p5, p0, Lcom/bumptech/glide/load/c/e/a;->e:Lcom/bumptech/glide/load/c/e/a$b;

    .line 72
    return-void
.end method

.method private static a(Lcom/bumptech/glide/b/c;II)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 128
    invoke-virtual {p0}, Lcom/bumptech/glide/b/c;->a()I

    move-result v0

    div-int/2addr v0, p2

    .line 129
    invoke-virtual {p0}, Lcom/bumptech/glide/b/c;->b()I

    move-result v1

    div-int/2addr v1, p1

    .line 128
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 130
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 133
    :goto_0
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 134
    const-string/jumbo v1, "BufferGifDecoder"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-le v0, v3, :cond_0

    .line 135
    const-string/jumbo v1, "BufferGifDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Downsampling GIF, sampleSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", target dimens: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "], actual dimens: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 138
    invoke-virtual {p0}, Lcom/bumptech/glide/b/c;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bumptech/glide/b/c;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    return v0

    .line 130
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    goto :goto_0
.end method

.method private a(Ljava/nio/ByteBuffer;IILcom/bumptech/glide/b/d;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/load/c/e/e;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x2

    .line 94
    invoke-static {}, Lcom/bumptech/glide/h/e;->a()J

    move-result-wide v8

    .line 96
    :try_start_0
    invoke-virtual {p4}, Lcom/bumptech/glide/b/d;->b()Lcom/bumptech/glide/b/c;

    move-result-object v2

    .line 97
    invoke-virtual {v2}, Lcom/bumptech/glide/b/c;->c()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v2}, Lcom/bumptech/glide/b/c;->d()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    :cond_0
    const-string/jumbo v1, "BufferGifDecoder"

    invoke-static {v1, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    const-string/jumbo v1, "BufferGifDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Decoded GIF from stream in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8, v9}, Lcom/bumptech/glide/h/e;->a(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_1
    :goto_0
    return-object v0

    .line 102
    :cond_2
    :try_start_1
    sget-object v1, Lcom/bumptech/glide/load/c/e/i;->a:Lcom/bumptech/glide/load/g;

    invoke-virtual {p5, v1}, Lcom/bumptech/glide/load/h;->a(Lcom/bumptech/glide/load/g;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/bumptech/glide/load/b;->b:Lcom/bumptech/glide/load/b;

    if-ne v1, v3, :cond_3

    .line 103
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 105
    :goto_1
    invoke-static {v2, p2, p3}, Lcom/bumptech/glide/load/c/e/a;->a(Lcom/bumptech/glide/b/c;II)I

    move-result v3

    .line 106
    iget-object v4, p0, Lcom/bumptech/glide/load/c/e/a;->f:Lcom/bumptech/glide/load/c/e/a$a;

    iget-object v5, p0, Lcom/bumptech/glide/load/c/e/a;->g:Lcom/bumptech/glide/load/c/e/b;

    invoke-virtual {v4, v5, v2, p1, v3}, Lcom/bumptech/glide/load/c/e/a$a;->a(Lcom/bumptech/glide/b/a$a;Lcom/bumptech/glide/b/c;Ljava/nio/ByteBuffer;I)Lcom/bumptech/glide/b/a;

    move-result-object v2

    .line 107
    invoke-interface {v2, v1}, Lcom/bumptech/glide/b/a;->a(Landroid/graphics/Bitmap$Config;)V

    .line 108
    invoke-interface {v2}, Lcom/bumptech/glide/b/a;->b()V

    .line 109
    invoke-interface {v2}, Lcom/bumptech/glide/b/a;->h()Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 110
    if-nez v6, :cond_4

    .line 121
    const-string/jumbo v1, "BufferGifDecoder"

    invoke-static {v1, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    const-string/jumbo v1, "BufferGifDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Decoded GIF from stream in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8, v9}, Lcom/bumptech/glide/h/e;->a(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    :cond_3
    :try_start_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    .line 114
    :cond_4
    invoke-static {}, Lcom/bumptech/glide/load/c/b;->a()Lcom/bumptech/glide/load/c/b;

    move-result-object v3

    .line 116
    new-instance v0, Lcom/bumptech/glide/load/c/e/c;

    iget-object v1, p0, Lcom/bumptech/glide/load/c/e/a;->c:Landroid/content/Context;

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/load/c/e/c;-><init>(Landroid/content/Context;Lcom/bumptech/glide/b/a;Lcom/bumptech/glide/load/k;IILandroid/graphics/Bitmap;)V

    .line 119
    new-instance v1, Lcom/bumptech/glide/load/c/e/e;

    invoke-direct {v1, v0}, Lcom/bumptech/glide/load/c/e/e;-><init>(Lcom/bumptech/glide/load/c/e/c;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    const-string/jumbo v0, "BufferGifDecoder"

    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 122
    const-string/jumbo v0, "BufferGifDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Decoded GIF from stream in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8, v9}, Lcom/bumptech/glide/h/e;->a(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v0, v1

    .line 119
    goto/16 :goto_0

    .line 121
    :catchall_0
    move-exception v0

    const-string/jumbo v1, "BufferGifDecoder"

    invoke-static {v1, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 122
    const-string/jumbo v1, "BufferGifDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Decoded GIF from stream in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8, v9}, Lcom/bumptech/glide/h/e;->a(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    throw v0
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;IILcom/bumptech/glide/load/h;)Lcom/bumptech/glide/load/c/e/e;
    .locals 6

    .prologue
    .line 83
    iget-object v0, p0, Lcom/bumptech/glide/load/c/e/a;->e:Lcom/bumptech/glide/load/c/e/a$b;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/c/e/a$b;->a(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/b/d;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 85
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/c/e/a;->a(Ljava/nio/ByteBuffer;IILcom/bumptech/glide/b/d;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/load/c/e/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/bumptech/glide/load/c/e/a;->e:Lcom/bumptech/glide/load/c/e/a$b;

    invoke-virtual {v1, v4}, Lcom/bumptech/glide/load/c/e/a$b;->a(Lcom/bumptech/glide/b/d;)V

    .line 85
    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/bumptech/glide/load/c/e/a;->e:Lcom/bumptech/glide/load/c/e/a$b;

    invoke-virtual {v1, v4}, Lcom/bumptech/glide/load/c/e/a$b;->a(Lcom/bumptech/glide/b/d;)V

    throw v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILcom/bumptech/glide/load/h;)Lcom/bumptech/glide/load/engine/t;
    .locals 1

    .prologue
    .line 35
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/c/e/a;->a(Ljava/nio/ByteBuffer;IILcom/bumptech/glide/load/h;)Lcom/bumptech/glide/load/c/e/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/load/h;)Z
    .locals 1

    .prologue
    .line 35
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/c/e/a;->a(Ljava/nio/ByteBuffer;Lcom/bumptech/glide/load/h;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/nio/ByteBuffer;Lcom/bumptech/glide/load/h;)Z
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/bumptech/glide/load/c/e/i;->b:Lcom/bumptech/glide/load/g;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/h;->a(Lcom/bumptech/glide/load/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/c/e/a;->d:Ljava/util/List;

    .line 77
    invoke-static {v0, p1}, Lcom/bumptech/glide/load/e;->a(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
