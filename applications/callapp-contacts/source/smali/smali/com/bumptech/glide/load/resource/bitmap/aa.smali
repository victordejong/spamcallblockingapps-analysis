.class public final Lcom/bumptech/glide/load/resource/bitmap/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/aa$f;,
        Lcom/bumptech/glide/load/resource/bitmap/aa$b;,
        Lcom/bumptech/glide/load/resource/bitmap/aa$e;,
        Lcom/bumptech/glide/load/resource/bitmap/aa$a;,
        Lcom/bumptech/glide/load/resource/bitmap/aa$d;,
        Lcom/bumptech/glide/load/resource/bitmap/aa$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/j<",
        "TT;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/bumptech/glide/load/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/g<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/bumptech/glide/load/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/g<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/bumptech/glide/load/resource/bitmap/aa$c;


# instance fields
.field private final d:Lcom/bumptech/glide/load/resource/bitmap/aa$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/bitmap/aa$d<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/bumptech/glide/load/engine/a/e;

.field private final f:Lcom/bumptech/glide/load/resource/bitmap/aa$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/16 v0, -0x1

    .line 59
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/aa$1;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/aa$1;-><init>()V

    const-string v2, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame"

    .line 57
    invoke-static {v2, v0, v1}, Lcom/bumptech/glide/load/g;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/g$a;)Lcom/bumptech/glide/load/g;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/aa;->a:Lcom/bumptech/glide/load/g;

    const/4 v0, 0x2

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/aa$2;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/aa$2;-><init>()V

    const-string v2, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption"

    .line 87
    invoke-static {v2, v0, v1}, Lcom/bumptech/glide/load/g;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/g$a;)Lcom/bumptech/glide/load/g;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/aa;->b:Lcom/bumptech/glide/load/g;

    .line 110
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/aa$c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/aa$c;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/aa;->c:Lcom/bumptech/glide/load/resource/bitmap/aa$c;

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/resource/bitmap/aa$d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/a/e;",
            "Lcom/bumptech/glide/load/resource/bitmap/aa$d<",
            "TT;>;)V"
        }
    .end annotation

    .line 131
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/aa;->c:Lcom/bumptech/glide/load/resource/bitmap/aa$c;

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/resource/bitmap/aa;-><init>(Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/resource/bitmap/aa$d;Lcom/bumptech/glide/load/resource/bitmap/aa$c;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/resource/bitmap/aa$d;Lcom/bumptech/glide/load/resource/bitmap/aa$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/a/e;",
            "Lcom/bumptech/glide/load/resource/bitmap/aa$d<",
            "TT;>;",
            "Lcom/bumptech/glide/load/resource/bitmap/aa$c;",
            ")V"
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/aa;->e:Lcom/bumptech/glide/load/engine/a/e;

    .line 140
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/aa;->d:Lcom/bumptech/glide/load/resource/bitmap/aa$d;

    .line 141
    iput-object p3, p0, Lcom/bumptech/glide/load/resource/bitmap/aa;->f:Lcom/bumptech/glide/load/resource/bitmap/aa$c;

    return-void
.end method

.method private static a(Landroid/media/MediaMetadataRetriever;JIIILcom/bumptech/glide/load/resource/bitmap/k;)Landroid/graphics/Bitmap;
    .locals 9

    const/16 v0, 0x12

    .line 240
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x13

    .line 244
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x18

    .line 248
    invoke-virtual {p0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_0

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_1

    :cond_0
    move v8, v1

    move v1, v0

    move v0, v8

    .line 259
    :cond_1
    invoke-virtual {p6, v0, v1, p4, p5}, Lcom/bumptech/glide/load/resource/bitmap/k;->a(IIII)F

    move-result p4

    int-to-float p5, v0

    mul-float p5, p5, p4

    .line 261
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float p5, v1

    mul-float p4, p4, p5

    .line 262
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    .line 264
    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x3

    const-string p1, "VideoDecoder"

    .line 271
    invoke-static {p1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/bumptech/glide/load/engine/a/e;)Lcom/bumptech/glide/load/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/a/e;",
            ")",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/content/res/AssetFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/aa;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/aa$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/aa$a;-><init>(Lcom/bumptech/glide/load/resource/bitmap/aa$1;)V

    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/load/resource/bitmap/aa;-><init>(Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/resource/bitmap/aa$d;)V

    return-object v0
.end method

.method public static b(Lcom/bumptech/glide/load/engine/a/e;)Lcom/bumptech/glide/load/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/a/e;",
            ")",
            "Lcom/bumptech/glide/load/j<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 122
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/aa;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/aa$e;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/aa$e;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/load/resource/bitmap/aa;-><init>(Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/resource/bitmap/aa$d;)V

    return-object v0
.end method

.method public static c(Lcom/bumptech/glide/load/engine/a/e;)Lcom/bumptech/glide/load/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/a/e;",
            ")",
            "Lcom/bumptech/glide/load/j<",
            "Ljava/nio/ByteBuffer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 127
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/aa;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/aa$b;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/aa$b;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/load/resource/bitmap/aa;-><init>(Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/resource/bitmap/aa$d;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILcom/bumptech/glide/load/h;)Lcom/bumptech/glide/load/engine/u;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II",
            "Lcom/bumptech/glide/load/h;",
            ")",
            "Lcom/bumptech/glide/load/engine/u<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/aa;->a:Lcom/bumptech/glide/load/g;

    invoke-virtual {p4, v0}, Lcom/bumptech/glide/load/h;->a(Lcom/bumptech/glide/load/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v0, 0x0

    cmp-long v2, v8, v0

    if-gez v2, :cond_1

    const-wide/16 v0, -0x1

    cmp-long v2, v8, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Requested frame must be non-negative, or DEFAULT_FRAME, given: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 161
    :cond_1
    :goto_0
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/aa;->b:Lcom/bumptech/glide/load/g;

    invoke-virtual {p4, v0}, Lcom/bumptech/glide/load/h;->a(Lcom/bumptech/glide/load/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    const/4 v0, 0x2

    .line 163
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 165
    :cond_2
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/k;->h:Lcom/bumptech/glide/load/g;

    invoke-virtual {p4, v1}, Lcom/bumptech/glide/load/h;->a(Lcom/bumptech/glide/load/g;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/bumptech/glide/load/resource/bitmap/k;

    if-nez p4, :cond_3

    .line 167
    sget-object p4, Lcom/bumptech/glide/load/resource/bitmap/k;->g:Lcom/bumptech/glide/load/resource/bitmap/k;

    :cond_3
    move-object v7, p4

    .line 1290
    new-instance p4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/aa;->d:Lcom/bumptech/glide/load/resource/bitmap/aa$d;

    invoke-interface {v1, p4, p1}, Lcom/bumptech/glide/load/resource/bitmap/aa$d;->a(Landroid/media/MediaMetadataRetriever;Ljava/lang/Object;)V

    .line 178
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    .line 2204
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_4

    const/high16 v1, -0x80000000

    if-eq p2, v1, :cond_4

    if-eq p3, v1, :cond_4

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/k;->f:Lcom/bumptech/glide/load/resource/bitmap/k;

    if-eq v7, v1, :cond_4

    move-object v1, p4

    move-wide v2, v8

    move v4, p1

    move v5, p2

    move v6, p3

    .line 2209
    invoke-static/range {v1 .. v7}, Lcom/bumptech/glide/load/resource/bitmap/aa;->a(Landroid/media/MediaMetadataRetriever;JIIILcom/bumptech/glide/load/resource/bitmap/k;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    .line 2284
    invoke-virtual {p4, v8, v9, p1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    if-eqz v0, :cond_6

    .line 183
    invoke-virtual {p4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 186
    iget-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/aa;->e:Lcom/bumptech/glide/load/engine/a/e;

    invoke-static {v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/e;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/a/e;)Lcom/bumptech/glide/load/resource/bitmap/e;

    move-result-object p1

    return-object p1

    .line 2222
    :cond_6
    :try_start_1
    new-instance p1, Lcom/bumptech/glide/load/resource/bitmap/aa$f;

    invoke-direct {p1}, Lcom/bumptech/glide/load/resource/bitmap/aa$f;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 183
    invoke-virtual {p4}, Landroid/media/MediaMetadataRetriever;->release()V

    throw p1
.end method

.method public final a(Ljava/lang/Object;Lcom/bumptech/glide/load/h;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/bumptech/glide/load/h;",
            ")Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
