.class public Lcom/callapp/contacts/recorder/encoder/WaveEncoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/recorder/encoder/AudioEncoder;


# instance fields
.field private a:Ljava/io/RandomAccessFile;

.field private b:Ljava/nio/channels/FileChannel;

.field private c:Ljava/nio/ByteBuffer;

.field private d:I

.field private e:S

.field private f:I

.field private g:S

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 67
    iget-object v0, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->a:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->d:I

    add-int/lit8 v1, v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 69
    iget-object v0, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x28

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 70
    iget-object v0, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->a:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 72
    iget-object v0, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->a:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public final a(II)V
    .locals 1

    const/16 v0, 0x10

    .line 24
    iput-short v0, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->e:S

    const/4 v0, 0x1

    .line 25
    iput-short v0, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->g:S

    .line 26
    iput p1, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->f:I

    .line 27
    iput p2, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->h:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->a:Ljava/io/RandomAccessFile;

    .line 33
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->b:Ljava/nio/channels/FileChannel;

    .line 35
    iget-object p1, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 36
    iget-object p1, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->a:Ljava/io/RandomAccessFile;

    const-string v0, "RIFF"

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->a:Ljava/io/RandomAccessFile;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 38
    iget-object p1, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->a:Ljava/io/RandomAccessFile;

    const-string v1, "WAVE"

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->a:Ljava/io/RandomAccessFile;

    const-string v1, "fmt "

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->a:Ljava/io/RandomAccessFile;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 41
    iget-object p1, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->a:Ljava/io/RandomAccessFile;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 42
    iget-object p1, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->a:Ljava/io/RandomAccessFile;

    iget-short v1, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->g:S

    invoke-static {v1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 43
    iget-object p1, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->a:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 44
    iget-object p1, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->a:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->f:I

    iget-short v2, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->e:S

    mul-int v1, v1, v2

    iget-short v2, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->g:S

    mul-int v1, v1, v2

    div-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 45
    iget-object p1, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->a:Ljava/io/RandomAccessFile;

    iget-short v1, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->g:S

    iget-short v2, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->e:S

    mul-int v1, v1, v2

    div-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    invoke-static {v1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 46
    iget-object p1, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->a:Ljava/io/RandomAccessFile;

    iget-short v1, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->e:S

    invoke-static {v1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 47
    iget-object p1, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->a:Ljava/io/RandomAccessFile;

    const-string v1, "data"

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 48
    iget-object p1, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 50
    iget p1, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->h:I

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->c:Ljava/nio/ByteBuffer;

    .line 51
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 52
    iget-object p1, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-void
.end method

.method public final a([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 58
    iget-object v0, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->c:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 59
    iget-object p1, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 60
    iget-object p1, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->b:Ljava/nio/channels/FileChannel;

    iget-object p2, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 61
    iget p1, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->d:I

    iget-object p2, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;->d:I

    return-void
.end method
