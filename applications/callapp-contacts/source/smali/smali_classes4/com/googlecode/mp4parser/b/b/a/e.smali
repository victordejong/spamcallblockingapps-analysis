.class public Lcom/googlecode/mp4parser/b/b/a/e;
.super Lcom/googlecode/mp4parser/b/b/a/b;
.source "SourceFile"


# annotations
.annotation runtime Lcom/googlecode/mp4parser/b/b/a/g;
    a = {
        0x4
    }
.end annotation


# static fields
.field private static k:Ljava/util/logging/Logger;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:J

.field public f:J

.field public g:Lcom/googlecode/mp4parser/b/b/a/f;

.field public h:Lcom/googlecode/mp4parser/b/b/a/a;

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/b/b/a/m;",
            ">;"
        }
    .end annotation
.end field

.field j:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/googlecode/mp4parser/b/b/a/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/b/b/a/e;->k:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/googlecode/mp4parser/b/b/a/b;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/b/b/a/e;->i:Ljava/util/List;

    const/4 v0, 0x4

    .line 59
    iput v0, p0, Lcom/googlecode/mp4parser/b/b/a/e;->Y:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/googlecode/mp4parser/b/b/a/e;->h:Lcom/googlecode/mp4parser/b/b/a/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/b/b/a/a;->b()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0xd

    .line 104
    iget-object v2, p0, Lcom/googlecode/mp4parser/b/b/a/e;->g:Lcom/googlecode/mp4parser/b/b/a/f;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/b/b/a/f;->b()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    .line 105
    iget-object v1, p0, Lcom/googlecode/mp4parser/b/b/a/e;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/b/b/a/m;

    .line 106
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/b/b/a/m;->b()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_2
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1068
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/b/a/e;->a(B)I

    move-result v0

    .line 64
    iput v0, p0, Lcom/googlecode/mp4parser/b/b/a/e;->a:I

    .line 2068
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/b/a/e;->a(B)I

    move-result v0

    ushr-int/lit8 v1, v0, 0x2

    .line 67
    iput v1, p0, Lcom/googlecode/mp4parser/b/b/a/e;->b:I

    shr-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    .line 68
    iput v0, p0, Lcom/googlecode/mp4parser/b/b/a/e;->c:I

    .line 70
    invoke-static {p1}, Lcom/b/a/e;->b(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/b/b/a/e;->d:I

    .line 71
    invoke-static {p1}, Lcom/b/a/e;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googlecode/mp4parser/b/b/a/e;->e:J

    .line 72
    invoke-static {p1}, Lcom/b/a/e;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googlecode/mp4parser/b/b/a/e;->f:J

    .line 76
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    return-void

    .line 77
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 78
    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/e;->a:I

    invoke-static {v1, p1}, Lcom/googlecode/mp4parser/b/b/a/l;->a(ILjava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/b/b/a/b;

    move-result-object v1

    .line 79
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v2, v0

    .line 80
    sget-object v0, Lcom/googlecode/mp4parser/b/b/a/e;->k:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " - DecoderConfigDescr1 read: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/b/b/a/b;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    if-eqz v1, :cond_3

    .line 82
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/b/b/a/b;->b()I

    move-result v0

    if-ge v2, v0, :cond_3

    sub-int/2addr v0, v2

    .line 85
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/googlecode/mp4parser/b/b/a/e;->j:[B

    .line 86
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 89
    :cond_3
    instance-of v0, v1, Lcom/googlecode/mp4parser/b/b/a/f;

    if-eqz v0, :cond_4

    .line 90
    check-cast v1, Lcom/googlecode/mp4parser/b/b/a/f;

    iput-object v1, p0, Lcom/googlecode/mp4parser/b/b/a/e;->g:Lcom/googlecode/mp4parser/b/b/a/f;

    goto :goto_0

    .line 91
    :cond_4
    instance-of v0, v1, Lcom/googlecode/mp4parser/b/b/a/a;

    if-eqz v0, :cond_5

    .line 92
    check-cast v1, Lcom/googlecode/mp4parser/b/b/a/a;

    iput-object v1, p0, Lcom/googlecode/mp4parser/b/b/a/e;->h:Lcom/googlecode/mp4parser/b/b/a/a;

    goto :goto_0

    .line 93
    :cond_5
    instance-of v0, v1, Lcom/googlecode/mp4parser/b/b/a/m;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/googlecode/mp4parser/b/b/a/e;->i:Ljava/util/List;

    check-cast v1, Lcom/googlecode/mp4parser/b/b/a/m;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DecoderConfigDescriptor"

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{objectTypeIndication="

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/e;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", streamType="

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/e;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", upStream="

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/e;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bufferSizeDB="

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/a/e;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxBitRate="

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/googlecode/mp4parser/b/b/a/e;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", avgBitRate="

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/googlecode/mp4parser/b/b/a/e;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", decoderSpecificInfo="

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/mp4parser/b/b/a/e;->g:Lcom/googlecode/mp4parser/b/b/a/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", audioSpecificInfo="

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/mp4parser/b/b/a/e;->h:Lcom/googlecode/mp4parser/b/b/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", configDescriptorDeadBytes="

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/mp4parser/b/b/a/e;->j:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v1, v2, [B

    :goto_0
    invoke-static {v1}, Lcom/b/a/c;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", profileLevelIndicationDescriptors="

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/mp4parser/b/b/a/e;->i:Ljava/util/List;

    if-nez v1, :cond_1

    const-string v1, "null"

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/util/List;

    aput-object v1, v3, v2

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
