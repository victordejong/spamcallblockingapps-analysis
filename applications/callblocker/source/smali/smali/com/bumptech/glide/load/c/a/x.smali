.class public Lcom/bumptech/glide/load/c/a/x;
.super Ljava/lang/Object;
.source "VideoDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/c/a/x$d;,
        Lcom/bumptech/glide/load/c/a/x$a;,
        Lcom/bumptech/glide/load/c/a/x$c;,
        Lcom/bumptech/glide/load/c/a/x$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/i",
        "<TT;",
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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/bumptech/glide/load/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/g",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/bumptech/glide/load/c/a/x$b;


# instance fields
.field private final d:Lcom/bumptech/glide/load/c/a/x$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/c/a/x$c",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/bumptech/glide/load/engine/a/e;

.field private final f:Lcom/bumptech/glide/load/c/a/x$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 54
    const-string/jumbo v0, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame"

    const-wide/16 v2, -0x1

    .line 55
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/c/a/x$1;

    invoke-direct {v2}, Lcom/bumptech/glide/load/c/a/x$1;-><init>()V

    .line 54
    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/g;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/g$a;)Lcom/bumptech/glide/load/g;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/c/a/x;->a:Lcom/bumptech/glide/load/g;

    .line 80
    const-string/jumbo v0, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption"

    const/4 v1, 0x2

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/c/a/x$2;

    invoke-direct {v2}, Lcom/bumptech/glide/load/c/a/x$2;-><init>()V

    .line 80
    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/g;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/g$a;)Lcom/bumptech/glide/load/g;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/c/a/x;->b:Lcom/bumptech/glide/load/g;

    .line 102
    new-instance v0, Lcom/bumptech/glide/load/c/a/x$b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/c/a/x$b;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/c/a/x;->c:Lcom/bumptech/glide/load/c/a/x$b;

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/c/a/x$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/a/e;",
            "Lcom/bumptech/glide/load/c/a/x$c",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 119
    sget-object v0, Lcom/bumptech/glide/load/c/a/x;->c:Lcom/bumptech/glide/load/c/a/x$b;

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/c/a/x;-><init>(Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/c/a/x$c;Lcom/bumptech/glide/load/c/a/x$b;)V

    .line 120
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/c/a/x$c;Lcom/bumptech/glide/load/c/a/x$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/a/e;",
            "Lcom/bumptech/glide/load/c/a/x$c",
            "<TT;>;",
            "Lcom/bumptech/glide/load/c/a/x$b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/bumptech/glide/load/c/a/x;->e:Lcom/bumptech/glide/load/engine/a/e;

    .line 128
    iput-object p2, p0, Lcom/bumptech/glide/load/c/a/x;->d:Lcom/bumptech/glide/load/c/a/x$c;

    .line 129
    iput-object p3, p0, Lcom/bumptech/glide/load/c/a/x;->f:Lcom/bumptech/glide/load/c/a/x$b;

    .line 130
    return-void
.end method

.method private static a(Landroid/media/MediaMetadataRetriever;JI)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 266
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/media/MediaMetadataRetriever;JIIILcom/bumptech/glide/load/c/a/k;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/high16 v3, -0x80000000

    .line 189
    const/4 v0, 0x0

    .line 196
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_0

    if-eq p4, v3, :cond_0

    if-eq p5, v3, :cond_0

    sget-object v1, Lcom/bumptech/glide/load/c/a/k;->f:Lcom/bumptech/glide/load/c/a/k;

    if-eq p6, v1, :cond_0

    .line 201
    invoke-static/range {p0 .. p6}, Lcom/bumptech/glide/load/c/a/x;->b(Landroid/media/MediaMetadataRetriever;JIIILcom/bumptech/glide/load/c/a/k;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 205
    :cond_0
    if-nez v0, :cond_1

    .line 206
    invoke-static {p0, p1, p2, p3}, Lcom/bumptech/glide/load/c/a/x;->a(Landroid/media/MediaMetadataRetriever;JI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 209
    :cond_1
    return-object v0
.end method

.method public static a(Lcom/bumptech/glide/load/engine/a/e;)Lcom/bumptech/glide/load/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/a/e;",
            ")",
            "Lcom/bumptech/glide/load/i",
            "<",
            "Landroid/content/res/AssetFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Lcom/bumptech/glide/load/c/a/x;

    new-instance v1, Lcom/bumptech/glide/load/c/a/x$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/c/a/x$a;-><init>(Lcom/bumptech/glide/load/c/a/x$1;)V

    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/load/c/a/x;-><init>(Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/c/a/x$c;)V

    return-object v0
.end method

.method private static b(Landroid/media/MediaMetadataRetriever;JIIILcom/bumptech/glide/load/c/a/k;)Landroid/graphics/Bitmap;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1b
    .end annotation

    .prologue
    .line 221
    const/16 v0, 0x12

    .line 223
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 225
    const/16 v0, 0x13

    .line 227
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 229
    const/16 v0, 0x18

    .line 231
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 234
    const/16 v3, 0x5a

    if-eq v0, v3, :cond_0

    const/16 v3, 0x10e

    if-ne v0, v3, :cond_2

    :cond_0
    move v0, v2

    move v3, v1

    .line 242
    :goto_0
    invoke-virtual {p6, v3, v0, p4, p5}, Lcom/bumptech/glide/load/c/a/k;->a(IIII)F

    move-result v1

    .line 244
    int-to-float v2, v3

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 245
    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    .line 247
    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 258
    :goto_1
    return-object v0

    .line 249
    :catch_0
    move-exception v0

    .line 254
    const-string/jumbo v1, "VideoDecoder"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    const-string/jumbo v1, "VideoDecoder"

    const-string/jumbo v2, "Exception trying to decode frame on oreo+"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move v0, v1

    move v3, v2

    goto :goto_0
.end method

.method public static b(Lcom/bumptech/glide/load/engine/a/e;)Lcom/bumptech/glide/load/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/a/e;",
            ")",
            "Lcom/bumptech/glide/load/i",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Lcom/bumptech/glide/load/c/a/x;

    new-instance v1, Lcom/bumptech/glide/load/c/a/x$d;

    invoke-direct {v1}, Lcom/bumptech/glide/load/c/a/x$d;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/load/c/a/x;-><init>(Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/c/a/x$c;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILcom/bumptech/glide/load/h;)Lcom/bumptech/glide/load/engine/t;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II",
            "Lcom/bumptech/glide/load/h;",
            ")",
            "Lcom/bumptech/glide/load/engine/t",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    sget-object v0, Lcom/bumptech/glide/load/c/a/x;->a:Lcom/bumptech/glide/load/g;

    invoke-virtual {p4, v0}, Lcom/bumptech/glide/load/h;->a(Lcom/bumptech/glide/load/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 145
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Requested frame must be non-negative, or DEFAULT_FRAME, given: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    sget-object v0, Lcom/bumptech/glide/load/c/a/x;->b:Lcom/bumptech/glide/load/g;

    invoke-virtual {p4, v0}, Lcom/bumptech/glide/load/h;->a(Lcom/bumptech/glide/load/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 150
    if-nez v0, :cond_2

    .line 151
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v4, v0

    .line 153
    :goto_0
    sget-object v0, Lcom/bumptech/glide/load/c/a/k;->h:Lcom/bumptech/glide/load/g;

    invoke-virtual {p4, v0}, Lcom/bumptech/glide/load/h;->a(Lcom/bumptech/glide/load/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/c/a/k;

    .line 154
    if-nez v0, :cond_1

    .line 155
    sget-object v7, Lcom/bumptech/glide/load/c/a/k;->g:Lcom/bumptech/glide/load/c/a/k;

    .line 159
    :goto_1
    iget-object v0, p0, Lcom/bumptech/glide/load/c/a/x;->f:Lcom/bumptech/glide/load/c/a/x$b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/c/a/x$b;->a()Landroid/media/MediaMetadataRetriever;

    move-result-object v1

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/c/a/x;->d:Lcom/bumptech/glide/load/c/a/x$c;

    invoke-interface {v0, v1, p1}, Lcom/bumptech/glide/load/c/a/x$c;->a(Landroid/media/MediaMetadataRetriever;Ljava/lang/Object;)V

    .line 166
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v5, p2

    move v6, p3

    .line 163
    invoke-static/range {v1 .. v7}, Lcom/bumptech/glide/load/c/a/x;->a(Landroid/media/MediaMetadataRetriever;JIIILcom/bumptech/glide/load/c/a/k;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 175
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 178
    iget-object v1, p0, Lcom/bumptech/glide/load/c/a/x;->e:Lcom/bumptech/glide/load/engine/a/e;

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/c/a/d;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/a/e;)Lcom/bumptech/glide/load/c/a/d;

    move-result-object v0

    return-object v0

    .line 171
    :catch_0
    move-exception v0

    .line 173
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v0

    :cond_1
    move-object v7, v0

    goto :goto_1

    :cond_2
    move-object v4, v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Lcom/bumptech/glide/load/h;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/bumptech/glide/load/h;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x1

    return v0
.end method
