.class public final Lcom/linkedin/android/litr/e/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkedin/android/litr/e/d;


# static fields
.field static final a:J


# instance fields
.field public final b:Lcom/linkedin/android/litr/b/b;

.field private final c:J

.field private d:Lcom/linkedin/android/litr/f/a;

.field private e:Landroid/media/MediaFormat;

.field private f:Landroid/media/MediaFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    sput-wide v0, Lcom/linkedin/android/litr/e/c;->a:J

    return-void
.end method

.method public constructor <init>(Lcom/linkedin/android/litr/b/b;)V
    .locals 2

    .line 44
    sget-wide v0, Lcom/linkedin/android/litr/e/c;->a:J

    invoke-direct {p0, p1, v0, v1}, Lcom/linkedin/android/litr/e/c;-><init>(Lcom/linkedin/android/litr/b/b;J)V

    return-void
.end method

.method public constructor <init>(Lcom/linkedin/android/litr/b/b;J)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/linkedin/android/litr/f/c;

    invoke-direct {v0}, Lcom/linkedin/android/litr/f/c;-><init>()V

    iput-object v0, p0, Lcom/linkedin/android/litr/e/c;->d:Lcom/linkedin/android/litr/f/a;

    .line 48
    iput-object p1, p0, Lcom/linkedin/android/litr/e/c;->b:Lcom/linkedin/android/litr/b/b;

    .line 49
    iput-wide p2, p0, Lcom/linkedin/android/litr/e/c;->c:J

    return-void
.end method

.method private b()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/linkedin/android/litr/e/c;->e:Landroid/media/MediaFormat;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/linkedin/android/litr/e/c;->f:Landroid/media/MediaFormat;

    if-nez v1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/linkedin/android/litr/e/c;->d:Lcom/linkedin/android/litr/f/a;

    invoke-interface {v1, v0}, Lcom/linkedin/android/litr/f/a;->a(Landroid/media/MediaFormat;)I

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/linkedin/android/litr/e/c;->d:Lcom/linkedin/android/litr/f/a;

    iget-object v2, p0, Lcom/linkedin/android/litr/e/c;->f:Landroid/media/MediaFormat;

    invoke-interface {v1, v2}, Lcom/linkedin/android/litr/f/a;->a(Landroid/media/MediaFormat;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 72
    new-instance v0, Lcom/linkedin/android/litr/f/b;

    invoke-direct {v0}, Lcom/linkedin/android/litr/f/b;-><init>()V

    iput-object v0, p0, Lcom/linkedin/android/litr/e/c;->d:Lcom/linkedin/android/litr/f/a;

    return-void

    .line 74
    :cond_1
    new-instance v0, Lcom/linkedin/android/litr/f/c;

    invoke-direct {v0}, Lcom/linkedin/android/litr/f/c;-><init>()V

    iput-object v0, p0, Lcom/linkedin/android/litr/e/c;->d:Lcom/linkedin/android/litr/f/a;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/media/MediaFormat;Landroid/media/MediaFormat;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/linkedin/android/litr/e/c;->e:Landroid/media/MediaFormat;

    .line 61
    iput-object p2, p0, Lcom/linkedin/android/litr/e/c;->f:Landroid/media/MediaFormat;

    .line 62
    invoke-direct {p0}, Lcom/linkedin/android/litr/e/c;->b()V

    return-void
.end method

.method public final a(Landroid/view/Surface;Landroid/media/MediaFormat;Landroid/media/MediaFormat;)V
    .locals 0

    .line 55
    invoke-virtual {p0, p2, p3}, Lcom/linkedin/android/litr/e/c;->a(Landroid/media/MediaFormat;Landroid/media/MediaFormat;)V

    return-void
.end method

.method public final a(Lcom/linkedin/android/litr/b/c;J)V
    .locals 10

    const-string v0, "PassthroughSwRenderer"

    if-eqz p1, :cond_7

    .line 86
    iget-object v1, p1, Lcom/linkedin/android/litr/b/c;->b:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 96
    :cond_1
    iget-object v3, p0, Lcom/linkedin/android/litr/e/c;->b:Lcom/linkedin/android/litr/b/b;

    iget-wide v4, p0, Lcom/linkedin/android/litr/e/c;->c:J

    invoke-interface {v3, v4, v5}, Lcom/linkedin/android/litr/b/b;->a(J)I

    move-result v3

    const/4 v4, 0x0

    if-ltz v3, :cond_5

    .line 98
    iget-object v5, p0, Lcom/linkedin/android/litr/e/c;->b:Lcom/linkedin/android/litr/b/b;

    invoke-interface {v5, v3}, Lcom/linkedin/android/litr/b/b;->a(I)Lcom/linkedin/android/litr/b/c;

    move-result-object v3

    if-nez v3, :cond_2

    const-string p1, "No input frame returned by an encoder, dropping a frame"

    .line 100
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 103
    :cond_2
    iget-object v5, v3, Lcom/linkedin/android/litr/b/c;->b:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_3

    .line 107
    iget-object v1, p1, Lcom/linkedin/android/litr/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v2, 0x0

    .line 111
    :cond_3
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    .line 112
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    .line 115
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    if-ge v6, v7, :cond_4

    .line 117
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 121
    :cond_4
    iget-object v6, p0, Lcom/linkedin/android/litr/e/c;->d:Lcom/linkedin/android/litr/f/a;

    iget-object v7, p0, Lcom/linkedin/android/litr/e/c;->e:Landroid/media/MediaFormat;

    iget-object v9, p0, Lcom/linkedin/android/litr/e/c;->f:Landroid/media/MediaFormat;

    invoke-interface {v6, v1, v5, v7, v9}, Lcom/linkedin/android/litr/f/a;->a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Landroid/media/MediaFormat;Landroid/media/MediaFormat;)V

    .line 123
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 124
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    .line 126
    iget-object v7, v3, Lcom/linkedin/android/litr/b/c;->c:Landroid/media/MediaCodec$BufferInfo;

    .line 127
    iput v4, v7, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 128
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    iput v4, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 129
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v4

    iput-wide v4, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 130
    iget-object v4, p1, Lcom/linkedin/android/litr/b/c;->c:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput v4, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 131
    iget-object v4, p0, Lcom/linkedin/android/litr/e/c;->b:Lcom/linkedin/android/litr/b/b;

    invoke-interface {v4, v3}, Lcom/linkedin/android/litr/b/b;->a(Lcom/linkedin/android/litr/b/c;)V

    move v4, v6

    goto :goto_0

    :cond_5
    const/4 v5, -0x1

    if-eq v3, v5, :cond_6

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unhandled value "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " when receiving decoded input frame"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const-string v3, "Encoder input frame timeout, dropping a frame"

    .line 135
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez v4, :cond_1

    return-void

    :cond_7
    :goto_1
    const-string p1, "Null or empty input frame provided"

    .line 87
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
