.class public final Lcom/bumptech/glide/load/resource/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/d/a$b;,
        Lcom/bumptech/glide/load/resource/d/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/j<",
        "Ljava/nio/ByteBuffer;",
        "Lcom/bumptech/glide/load/resource/d/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/load/resource/d/a$a;

.field private static final b:Lcom/bumptech/glide/load/resource/d/a$b;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/bumptech/glide/load/resource/d/a$b;

.field private final f:Lcom/bumptech/glide/load/resource/d/a$a;

.field private final g:Lcom/bumptech/glide/load/resource/d/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/bumptech/glide/load/resource/d/a$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/d/a$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/d/a;->a:Lcom/bumptech/glide/load/resource/d/a$a;

    .line 38
    new-instance v0, Lcom/bumptech/glide/load/resource/d/a$b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/d/a$b;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/d/a;->b:Lcom/bumptech/glide/load/resource/d/a$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 51
    invoke-static {p1}, Lcom/bumptech/glide/c;->a(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v0

    .line 1890
    iget-object v0, v0, Lcom/bumptech/glide/c;->c:Lcom/bumptech/glide/Registry;

    .line 51
    invoke-virtual {v0}, Lcom/bumptech/glide/Registry;->a()Ljava/util/List;

    move-result-object v0

    .line 52
    invoke-static {p1}, Lcom/bumptech/glide/c;->a(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v1

    .line 2631
    iget-object v1, v1, Lcom/bumptech/glide/c;->a:Lcom/bumptech/glide/load/engine/a/e;

    .line 53
    invoke-static {p1}, Lcom/bumptech/glide/c;->a(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v2

    .line 2636
    iget-object v2, v2, Lcom/bumptech/glide/c;->d:Lcom/bumptech/glide/load/engine/a/b;

    .line 49
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/bumptech/glide/load/resource/d/a;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/engine/a/b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/engine/a/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/bumptech/glide/load/engine/a/e;",
            "Lcom/bumptech/glide/load/engine/a/b;",
            ")V"
        }
    .end annotation

    .line 61
    sget-object v5, Lcom/bumptech/glide/load/resource/d/a;->b:Lcom/bumptech/glide/load/resource/d/a$b;

    sget-object v6, Lcom/bumptech/glide/load/resource/d/a;->a:Lcom/bumptech/glide/load/resource/d/a$a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/load/resource/d/a;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/engine/a/b;Lcom/bumptech/glide/load/resource/d/a$b;Lcom/bumptech/glide/load/resource/d/a$a;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/engine/a/b;Lcom/bumptech/glide/load/resource/d/a$b;Lcom/bumptech/glide/load/resource/d/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/bumptech/glide/load/engine/a/e;",
            "Lcom/bumptech/glide/load/engine/a/b;",
            "Lcom/bumptech/glide/load/resource/d/a$b;",
            "Lcom/bumptech/glide/load/resource/d/a$a;",
            ")V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/a;->c:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/d/a;->d:Ljava/util/List;

    .line 74
    iput-object p6, p0, Lcom/bumptech/glide/load/resource/d/a;->f:Lcom/bumptech/glide/load/resource/d/a$a;

    .line 75
    new-instance p1, Lcom/bumptech/glide/load/resource/d/b;

    invoke-direct {p1, p3, p4}, Lcom/bumptech/glide/load/resource/d/b;-><init>(Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/engine/a/b;)V

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/a;->g:Lcom/bumptech/glide/load/resource/d/b;

    .line 76
    iput-object p5, p0, Lcom/bumptech/glide/load/resource/d/a;->e:Lcom/bumptech/glide/load/resource/d/a$b;

    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;IILcom/bumptech/glide/b/d;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/load/resource/d/e;
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p2

    move/from16 v7, p3

    const-string v2, "x"

    const-string v9, "Decoded GIF from stream in "

    const-string v10, "BufferGifDecoder"

    .line 99
    invoke-static {}, Lcom/bumptech/glide/g/f;->a()J

    move-result-wide v11

    const/4 v13, 0x2

    .line 101
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Lcom/bumptech/glide/b/d;->a()Lcom/bumptech/glide/b/c;

    move-result-object v3

    .line 3062
    iget v4, v3, Lcom/bumptech/glide/b/c;->c:I

    const/4 v5, 0x0

    if-lez v4, :cond_7

    .line 3070
    iget v4, v3, Lcom/bumptech/glide/b/c;->b:I

    if-eqz v4, :cond_0

    goto/16 :goto_2

    .line 108
    :cond_0
    sget-object v4, Lcom/bumptech/glide/load/resource/d/i;->a:Lcom/bumptech/glide/load/g;

    move-object/from16 v6, p5

    invoke-virtual {v6, v4}, Lcom/bumptech/glide/load/h;->a(Lcom/bumptech/glide/load/g;)Ljava/lang/Object;

    move-result-object v4

    sget-object v6, Lcom/bumptech/glide/load/b;->PREFER_RGB_565:Lcom/bumptech/glide/load/b;

    if-ne v4, v6, :cond_1

    .line 109
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 110
    :cond_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 4054
    :goto_0
    iget v6, v3, Lcom/bumptech/glide/b/c;->g:I

    .line 3136
    div-int/2addr v6, v7

    .line 4058
    iget v8, v3, Lcom/bumptech/glide/b/c;->f:I

    .line 3136
    div-int/2addr v8, v0

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x0

    goto :goto_1

    .line 3137
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v6

    :goto_1
    const/4 v8, 0x1

    .line 3140
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 3141
    invoke-static {v10, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_3

    if-le v6, v8, :cond_3

    .line 3142
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v14, "Downsampling GIF, sampleSize: "

    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", target dimens: ["

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "], actual dimens: ["

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5058
    iget v14, v3, Lcom/bumptech/glide/b/c;->f:I

    .line 3153
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6054
    iget v2, v3, Lcom/bumptech/glide/b/c;->g:I

    .line 3155
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_3
    iget-object v2, v1, Lcom/bumptech/glide/load/resource/d/a;->g:Lcom/bumptech/glide/load/resource/d/b;

    .line 6165
    new-instance v8, Lcom/bumptech/glide/b/e;

    move-object/from16 v14, p1

    invoke-direct {v8, v2, v3, v14, v6}, Lcom/bumptech/glide/b/e;-><init>(Lcom/bumptech/glide/b/a$a;Lcom/bumptech/glide/b/c;Ljava/nio/ByteBuffer;I)V

    .line 114
    invoke-interface {v8, v4}, Lcom/bumptech/glide/b/a;->a(Landroid/graphics/Bitmap$Config;)V

    .line 115
    invoke-interface {v8}, Lcom/bumptech/glide/b/a;->b()V

    .line 116
    invoke-interface {v8}, Lcom/bumptech/glide/b/a;->i()Landroid/graphics/Bitmap;

    move-result-object v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v14, :cond_5

    .line 128
    invoke-static {v10, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v12}, Lcom/bumptech/glide/g/f;->a(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :cond_4
    return-object v5

    .line 121
    :cond_5
    :try_start_1
    invoke-static {}, Lcom/bumptech/glide/load/resource/c;->a()Lcom/bumptech/glide/load/resource/c;

    move-result-object v5

    .line 123
    new-instance v15, Lcom/bumptech/glide/load/resource/d/c;

    iget-object v3, v1, Lcom/bumptech/glide/load/resource/d/a;->c:Landroid/content/Context;

    move-object v2, v15

    move-object v4, v8

    move/from16 v6, p2

    move/from16 v7, p3

    move-object v8, v14

    invoke-direct/range {v2 .. v8}, Lcom/bumptech/glide/load/resource/d/c;-><init>(Landroid/content/Context;Lcom/bumptech/glide/b/a;Lcom/bumptech/glide/load/l;IILandroid/graphics/Bitmap;)V

    .line 126
    new-instance v0, Lcom/bumptech/glide/load/resource/d/e;

    invoke-direct {v0, v15}, Lcom/bumptech/glide/load/resource/d/e;-><init>(Lcom/bumptech/glide/load/resource/d/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    invoke-static {v10, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v12}, Lcom/bumptech/glide/g/f;->a(J)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :cond_6
    return-object v0

    .line 128
    :cond_7
    :goto_2
    invoke-static {v10, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v12}, Lcom/bumptech/glide/g/f;->a(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :cond_8
    return-object v5

    :catchall_0
    move-exception v0

    .line 128
    invoke-static {v10, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v12}, Lcom/bumptech/glide/g/f;->a(J)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :cond_9
    throw v0
.end method

.method private a(Ljava/nio/ByteBuffer;IILcom/bumptech/glide/load/h;)Lcom/bumptech/glide/load/resource/d/e;
    .locals 7

    .line 88
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/a;->e:Lcom/bumptech/glide/load/resource/d/a$b;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/d/a$b;->a(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/b/d;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, v0

    move-object v6, p4

    .line 90
    :try_start_0
    invoke-direct/range {v1 .. v6}, Lcom/bumptech/glide/load/resource/d/a;->a(Ljava/nio/ByteBuffer;IILcom/bumptech/glide/b/d;Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/load/resource/d/e;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object p2, p0, Lcom/bumptech/glide/load/resource/d/a;->e:Lcom/bumptech/glide/load/resource/d/a$b;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/resource/d/a$b;->a(Lcom/bumptech/glide/b/d;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/bumptech/glide/load/resource/d/a;->e:Lcom/bumptech/glide/load/resource/d/a$b;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/resource/d/a$b;->a(Lcom/bumptech/glide/b/d;)V

    throw p1
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;IILcom/bumptech/glide/load/h;)Lcom/bumptech/glide/load/engine/u;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/d/a;->a(Ljava/nio/ByteBuffer;IILcom/bumptech/glide/load/h;)Lcom/bumptech/glide/load/resource/d/e;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/load/h;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 7081
    sget-object v0, Lcom/bumptech/glide/load/resource/d/i;->b:Lcom/bumptech/glide/load/g;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/h;->a(Lcom/bumptech/glide/load/g;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/bumptech/glide/load/resource/d/a;->d:Ljava/util/List;

    if-nez p1, :cond_0

    .line 8062
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    goto :goto_0

    .line 8065
    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/e$2;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/e$2;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {p2, v0}, Lcom/bumptech/glide/load/e;->a(Ljava/util/List;Lcom/bumptech/glide/load/e$b;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    .line 7082
    :goto_0
    sget-object p2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
