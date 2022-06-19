.class final Lcom/google/i18n/phonenumbers/b/b;
.super Lcom/google/i18n/phonenumbers/b/e;
.source "SourceFile"


# instance fields
.field private c:I

.field private d:I

.field private e:Ljava/nio/ByteBuffer;

.field private f:Ljava/nio/ByteBuffer;

.field private g:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/b/e;-><init>()V

    return-void
.end method

.method private static a(Ljava/nio/ByteBuffer;II)I
    .locals 1

    mul-int p2, p2, p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 241
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    return p0
.end method

.method private static a(Ljava/io/ObjectInput;ILjava/nio/ByteBuffer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    mul-int p3, p3, p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 203
    invoke-interface {p0}, Ljava/io/ObjectInput;->readShort()S

    move-result p0

    invoke-virtual {p2, p3, p0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-void

    .line 205
    :cond_0
    invoke-interface {p0}, Ljava/io/ObjectInput;->readInt()I

    move-result p0

    invoke-virtual {p2, p3, p0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private static a(Ljava/io/ObjectOutput;ILjava/nio/ByteBuffer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    mul-int p3, p3, p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 223
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    invoke-interface {p0, p1}, Ljava/io/ObjectOutput;->writeShort(I)V

    return-void

    .line 225
    :cond_0
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    invoke-interface {p0, p1}, Ljava/io/ObjectOutput;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b/b;->e:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/i18n/phonenumbers/b/b;->c:I

    invoke-static {v0, v1, p1}, Lcom/google/i18n/phonenumbers/b/b;->a(Ljava/nio/ByteBuffer;II)I

    move-result p1

    return p1
.end method

.method public final a(Ljava/io/ObjectInput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/i18n/phonenumbers/b/b;->c:I

    .line 114
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/i18n/phonenumbers/b/b;->d:I

    .line 117
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 118
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/b/b;->b:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 120
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/b/b;->b:Ljava/util/TreeSet;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 126
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/b/b;->g:[Ljava/lang/String;

    if-eqz v2, :cond_1

    array-length v2, v2

    if-ge v2, v0, :cond_2

    .line 127
    :cond_1
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lcom/google/i18n/phonenumbers/b/b;->g:[Ljava/lang/String;

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 130
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 131
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/b/b;->g:[Ljava/lang/String;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1141
    :cond_3
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/i18n/phonenumbers/b/b;->a:I

    .line 1142
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b/b;->e:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v2, p0, Lcom/google/i18n/phonenumbers/b/b;->a:I

    if-ge v0, v2, :cond_5

    .line 1143
    :cond_4
    iget v0, p0, Lcom/google/i18n/phonenumbers/b/b;->a:I

    iget v2, p0, Lcom/google/i18n/phonenumbers/b/b;->c:I

    mul-int v0, v0, v2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/b/b;->e:Ljava/nio/ByteBuffer;

    .line 1145
    :cond_5
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b/b;->f:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v2, p0, Lcom/google/i18n/phonenumbers/b/b;->a:I

    if-ge v0, v2, :cond_7

    .line 1146
    :cond_6
    iget v0, p0, Lcom/google/i18n/phonenumbers/b/b;->a:I

    iget v2, p0, Lcom/google/i18n/phonenumbers/b/b;->d:I

    mul-int v0, v0, v2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/b/b;->f:Ljava/nio/ByteBuffer;

    .line 1148
    :cond_7
    :goto_2
    iget v0, p0, Lcom/google/i18n/phonenumbers/b/b;->a:I

    if-ge v1, v0, :cond_8

    .line 1149
    iget v0, p0, Lcom/google/i18n/phonenumbers/b/b;->c:I

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/b/b;->e:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0, v2, v1}, Lcom/google/i18n/phonenumbers/b/b;->a(Ljava/io/ObjectInput;ILjava/nio/ByteBuffer;I)V

    .line 1150
    iget v0, p0, Lcom/google/i18n/phonenumbers/b/b;->d:I

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/b/b;->f:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0, v2, v1}, Lcom/google/i18n/phonenumbers/b/b;->a(Ljava/io/ObjectInput;ILjava/nio/ByteBuffer;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    return-void
.end method

.method public final a(Ljava/io/ObjectOutput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    iget v0, p0, Lcom/google/i18n/phonenumbers/b/b;->c:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 158
    iget v0, p0, Lcom/google/i18n/phonenumbers/b/b;->d:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 161
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b/b;->b:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    .line 162
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 163
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b/b;->b:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 164
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b/b;->g:[Ljava/lang/String;

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 170
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b/b;->g:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 171
    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 175
    :cond_1
    iget v0, p0, Lcom/google/i18n/phonenumbers/b/b;->a:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 176
    :goto_2
    iget v0, p0, Lcom/google/i18n/phonenumbers/b/b;->a:I

    if-ge v2, v0, :cond_2

    .line 177
    iget v0, p0, Lcom/google/i18n/phonenumbers/b/b;->c:I

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/b/b;->e:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0, v1, v2}, Lcom/google/i18n/phonenumbers/b/b;->a(Ljava/io/ObjectOutput;ILjava/nio/ByteBuffer;I)V

    .line 178
    iget v0, p0, Lcom/google/i18n/phonenumbers/b/b;->d:I

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/b/b;->f:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0, v1, v2}, Lcom/google/i18n/phonenumbers/b/b;->a(Ljava/io/ObjectOutput;ILjava/nio/ByteBuffer;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final b(I)Ljava/lang/String;
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b/b;->f:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/i18n/phonenumbers/b/b;->d:I

    .line 65
    invoke-static {v0, v1, p1}, Lcom/google/i18n/phonenumbers/b/b;->a(Ljava/nio/ByteBuffer;II)I

    move-result p1

    .line 66
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b/b;->g:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method
