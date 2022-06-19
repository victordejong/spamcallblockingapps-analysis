.class final Lcom/linkedin/android/litr/d/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linkedin/android/litr/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Ljava/nio/ByteBuffer;

.field c:Landroid/media/MediaCodec$BufferInfo;

.field final synthetic d:Lcom/linkedin/android/litr/d/b;


# direct methods
.method private constructor <init>(Lcom/linkedin/android/litr/d/b;ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 6

    .line 174
    iput-object p1, p0, Lcom/linkedin/android/litr/d/b$a;->d:Lcom/linkedin/android/litr/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput p2, p0, Lcom/linkedin/android/litr/d/b$a;->a:I

    .line 177
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/linkedin/android/litr/d/b$a;->c:Landroid/media/MediaCodec$BufferInfo;

    .line 178
    iget v2, p4, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v3, p4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v5, p4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 181
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/linkedin/android/litr/d/b$a;->b:Ljava/nio/ByteBuffer;

    .line 182
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 183
    iget-object p1, p0, Lcom/linkedin/android/litr/d/b$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/linkedin/android/litr/d/b;ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Lcom/linkedin/android/litr/d/b$1;)V
    .locals 0

    .line 169
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/linkedin/android/litr/d/b$a;-><init>(Lcom/linkedin/android/litr/d/b;ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method
