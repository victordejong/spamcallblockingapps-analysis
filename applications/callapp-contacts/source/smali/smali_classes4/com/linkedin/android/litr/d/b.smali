.class public Lcom/linkedin/android/litr/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkedin/android/litr/d/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linkedin/android/litr/d/b$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "b"


# instance fields
.field a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/linkedin/android/litr/d/b$a;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field c:Landroid/media/MediaMuxer;

.field private e:[Landroid/media/MediaFormat;

.field private f:Landroid/os/ParcelFileDescriptor;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/linkedin/android/litr/exception/MediaTargetException;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "rwt"

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/linkedin/android/litr/d/b;->f:Landroid/os/ParcelFileDescriptor;

    if-eqz p1, :cond_0

    .line 64
    new-instance p1, Landroid/media/MediaMuxer;

    iget-object v0, p0, Lcom/linkedin/android/litr/d/b;->f:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p1, v0, p5}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    goto :goto_0

    .line 66
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p3, "Inaccessible URI "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p1, "file"

    .line 68
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 69
    new-instance p1, Landroid/media/MediaMuxer;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p5}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    .line 73
    :goto_0
    invoke-direct {p0, p1, p3, p4}, Lcom/linkedin/android/litr/d/b;->a(Landroid/media/MediaMuxer;II)V

    return-void

    .line 71
    :cond_2
    new-instance p1, Lcom/linkedin/android/litr/exception/MediaTargetException;

    sget-object p3, Lcom/linkedin/android/litr/exception/MediaTargetException$a;->UNSUPPORTED_URI_TYPE:Lcom/linkedin/android/litr/exception/MediaTargetException$a;

    new-instance p4, Ljava/lang/Throwable;

    invoke-direct {p4}, Ljava/lang/Throwable;-><init>()V

    invoke-direct {p1, p3, p2, p5, p4}, Lcom/linkedin/android/litr/exception/MediaTargetException;-><init>(Lcom/linkedin/android/litr/exception/MediaTargetException$a;Landroid/net/Uri;ILjava/lang/Throwable;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 77
    invoke-direct {p0}, Lcom/linkedin/android/litr/d/b;->c()V

    .line 78
    new-instance p3, Lcom/linkedin/android/litr/exception/MediaTargetException;

    sget-object p4, Lcom/linkedin/android/litr/exception/MediaTargetException$a;->IO_FAILUE:Lcom/linkedin/android/litr/exception/MediaTargetException$a;

    invoke-direct {p3, p4, p2, p5, p1}, Lcom/linkedin/android/litr/exception/MediaTargetException;-><init>(Lcom/linkedin/android/litr/exception/MediaTargetException$a;Landroid/net/Uri;ILjava/lang/Throwable;)V

    throw p3

    :catch_1
    move-exception p1

    .line 75
    new-instance p3, Lcom/linkedin/android/litr/exception/MediaTargetException;

    sget-object p4, Lcom/linkedin/android/litr/exception/MediaTargetException$a;->INVALID_PARAMS:Lcom/linkedin/android/litr/exception/MediaTargetException$a;

    invoke-direct {p3, p4, p2, p5, p1}, Lcom/linkedin/android/litr/exception/MediaTargetException;-><init>(Lcom/linkedin/android/litr/exception/MediaTargetException$a;Landroid/net/Uri;ILjava/lang/Throwable;)V

    throw p3
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/linkedin/android/litr/exception/MediaTargetException;
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/linkedin/android/litr/d/b;->g:Ljava/lang/String;

    .line 86
    :try_start_0
    new-instance v0, Landroid/media/MediaMuxer;

    invoke-direct {v0, p1, p4}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    .line 87
    invoke-direct {p0, v0, p2, p3}, Lcom/linkedin/android/litr/d/b;->a(Landroid/media/MediaMuxer;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 91
    new-instance p3, Lcom/linkedin/android/litr/exception/MediaTargetException;

    sget-object v0, Lcom/linkedin/android/litr/exception/MediaTargetException$a;->IO_FAILUE:Lcom/linkedin/android/litr/exception/MediaTargetException$a;

    invoke-direct {p3, v0, p1, p4, p2}, Lcom/linkedin/android/litr/exception/MediaTargetException;-><init>(Lcom/linkedin/android/litr/exception/MediaTargetException$a;Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p3

    :catch_1
    move-exception p2

    .line 89
    new-instance p3, Lcom/linkedin/android/litr/exception/MediaTargetException;

    sget-object v0, Lcom/linkedin/android/litr/exception/MediaTargetException$a;->INVALID_PARAMS:Lcom/linkedin/android/litr/exception/MediaTargetException$a;

    invoke-direct {p3, v0, p1, p4, p2}, Lcom/linkedin/android/litr/exception/MediaTargetException;-><init>(Lcom/linkedin/android/litr/exception/MediaTargetException$a;Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p3
.end method

.method private a(Landroid/media/MediaMuxer;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 96
    iput p2, p0, Lcom/linkedin/android/litr/d/b;->i:I

    .line 98
    iput-object p1, p0, Lcom/linkedin/android/litr/d/b;->c:Landroid/media/MediaMuxer;

    .line 99
    invoke-virtual {p1, p3}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    const/4 p1, 0x0

    .line 101
    iput p1, p0, Lcom/linkedin/android/litr/d/b;->h:I

    .line 102
    iput-boolean p1, p0, Lcom/linkedin/android/litr/d/b;->b:Z

    .line 103
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/linkedin/android/litr/d/b;->a:Ljava/util/LinkedList;

    .line 104
    new-array p1, p2, [Landroid/media/MediaFormat;

    iput-object p1, p0, Lcom/linkedin/android/litr/d/b;->e:[Landroid/media/MediaFormat;

    return-void
.end method

.method private c()V
    .locals 1

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/linkedin/android/litr/d/b;->f:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lcom/linkedin/android/litr/d/b;->f:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/media/MediaFormat;I)I
    .locals 5

    .line 109
    iget-object v0, p0, Lcom/linkedin/android/litr/d/b;->e:[Landroid/media/MediaFormat;

    aput-object p1, v0, p2

    .line 110
    iget p1, p0, Lcom/linkedin/android/litr/d/b;->h:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/linkedin/android/litr/d/b;->h:I

    .line 112
    iget v1, p0, Lcom/linkedin/android/litr/d/b;->i:I

    if-ne p1, v1, :cond_1

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "All tracks added, starting MediaMuxer, writing out "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/linkedin/android/litr/d/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " queued samples"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object p1, p0, Lcom/linkedin/android/litr/d/b;->e:[Landroid/media/MediaFormat;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 116
    iget-object v4, p0, Lcom/linkedin/android/litr/d/b;->c:Landroid/media/MediaMuxer;

    invoke-virtual {v4, v3}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/linkedin/android/litr/d/b;->c:Landroid/media/MediaMuxer;

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->start()V

    .line 120
    iput-boolean v0, p0, Lcom/linkedin/android/litr/d/b;->b:Z

    .line 123
    :goto_1
    iget-object p1, p0, Lcom/linkedin/android/litr/d/b;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 124
    iget-object p1, p0, Lcom/linkedin/android/litr/d/b;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/linkedin/android/litr/d/b$a;

    .line 125
    iget-object v0, p0, Lcom/linkedin/android/litr/d/b;->c:Landroid/media/MediaMuxer;

    .line 1169
    iget v1, p1, Lcom/linkedin/android/litr/d/b$a;->a:I

    .line 2169
    iget-object v2, p1, Lcom/linkedin/android/litr/d/b$a;->b:Ljava/nio/ByteBuffer;

    .line 3169
    iget-object p1, p1, Lcom/linkedin/android/litr/d/b$a;->c:Landroid/media/MediaCodec$BufferInfo;

    .line 125
    invoke-virtual {v0, v1, v2, p1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_1

    :cond_1
    return p2
.end method

.method public final a()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/linkedin/android/litr/d/b;->c:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 150
    invoke-direct {p0}, Lcom/linkedin/android/litr/d/b;->c()V

    return-void
.end method

.method public final a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 7

    .line 134
    iget-boolean v0, p0, Lcom/linkedin/android/litr/d/b;->b:Z

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    .line 136
    sget-object p1, Lcom/linkedin/android/litr/d/b;->d:Ljava/lang/String;

    const-string p2, "Trying to write a null buffer, skipping"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/linkedin/android/litr/d/b;->c:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void

    .line 142
    :cond_1
    new-instance v0, Lcom/linkedin/android/litr/d/b$a;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/linkedin/android/litr/d/b$a;-><init>(Lcom/linkedin/android/litr/d/b;ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Lcom/linkedin/android/litr/d/b$1;)V

    .line 143
    iget-object p1, p0, Lcom/linkedin/android/litr/d/b;->a:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/linkedin/android/litr/d/b;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method
