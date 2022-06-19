.class public final Lio/objectbox/model/FlatStoreOptions;
.super Lcom/google/flatbuffers/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/objectbox/model/FlatStoreOptions$Vector;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/google/flatbuffers/h;-><init>()V

    return-void
.end method

.method public static ValidateVersion()V
    .locals 0

    return-void
.end method

.method static synthetic access$000(ILjava/nio/ByteBuffer;)I
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lio/objectbox/model/FlatStoreOptions;->__indirect(ILjava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public static addDebugFlags(Lcom/google/flatbuffers/d;J)V
    .locals 0

    long-to-int p2, p1

    const/16 p1, 0xc

    .line 174
    invoke-virtual {p0, p1, p2}, Lcom/google/flatbuffers/d;->b(II)V

    return-void
.end method

.method public static addDirectoryPath(Lcom/google/flatbuffers/d;I)V
    .locals 1

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0, v0, p1}, Lcom/google/flatbuffers/d;->c(II)V

    return-void
.end method

.method public static addFileMode(Lcom/google/flatbuffers/d;J)V
    .locals 0

    long-to-int p2, p1

    const/4 p1, 0x3

    .line 165
    invoke-virtual {p0, p1, p2}, Lcom/google/flatbuffers/d;->b(II)V

    return-void
.end method

.method public static addMaxDbSizeInKByte(Lcom/google/flatbuffers/d;J)V
    .locals 1

    const/4 v0, 0x2

    .line 164
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/flatbuffers/d;->a(IJ)V

    return-void
.end method

.method public static addMaxReaders(Lcom/google/flatbuffers/d;J)V
    .locals 0

    long-to-int p2, p1

    const/4 p1, 0x4

    .line 166
    invoke-virtual {p0, p1, p2}, Lcom/google/flatbuffers/d;->b(II)V

    return-void
.end method

.method public static addModelBytes(Lcom/google/flatbuffers/d;I)V
    .locals 1

    const/4 v0, 0x1

    .line 160
    invoke-virtual {p0, v0, p1}, Lcom/google/flatbuffers/d;->c(II)V

    return-void
.end method

.method public static addPutPaddingMode(Lcom/google/flatbuffers/d;I)V
    .locals 1

    int-to-short p1, p1

    const/4 v0, 0x7

    .line 169
    invoke-virtual {p0, v0, p1}, Lcom/google/flatbuffers/d;->a(IS)V

    return-void
.end method

.method public static addReadOnly(Lcom/google/flatbuffers/d;Z)V
    .locals 1

    const/16 v0, 0xb

    .line 173
    invoke-virtual {p0, v0, p1}, Lcom/google/flatbuffers/d;->a(IZ)V

    return-void
.end method

.method public static addSkipReadSchema(Lcom/google/flatbuffers/d;Z)V
    .locals 1

    const/16 v0, 0x8

    .line 170
    invoke-virtual {p0, v0, p1}, Lcom/google/flatbuffers/d;->a(IZ)V

    return-void
.end method

.method public static addUsePreviousCommit(Lcom/google/flatbuffers/d;Z)V
    .locals 1

    const/16 v0, 0x9

    .line 171
    invoke-virtual {p0, v0, p1}, Lcom/google/flatbuffers/d;->a(IZ)V

    return-void
.end method

.method public static addUsePreviousCommitOnValidationFailure(Lcom/google/flatbuffers/d;Z)V
    .locals 1

    const/16 v0, 0xa

    .line 172
    invoke-virtual {p0, v0, p1}, Lcom/google/flatbuffers/d;->a(IZ)V

    return-void
.end method

.method public static addValidateOnOpen(Lcom/google/flatbuffers/d;I)V
    .locals 1

    int-to-short p1, p1

    const/4 v0, 0x5

    .line 167
    invoke-virtual {p0, v0, p1}, Lcom/google/flatbuffers/d;->a(IS)V

    return-void
.end method

.method public static addValidateOnOpenPageLimit(Lcom/google/flatbuffers/d;J)V
    .locals 1

    const/4 v0, 0x6

    .line 168
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/flatbuffers/d;->a(IJ)V

    return-void
.end method

.method public static createFlatStoreOptions(Lcom/google/flatbuffers/d;IIJJJIJIZZZZJ)I
    .locals 3

    move-object v0, p0

    const/16 v1, 0xd

    .line 141
    invoke-virtual {p0, v1}, Lcom/google/flatbuffers/d;->d(I)V

    move-wide v1, p10

    .line 142
    invoke-static {p0, p10, p11}, Lio/objectbox/model/FlatStoreOptions;->addValidateOnOpenPageLimit(Lcom/google/flatbuffers/d;J)V

    move-wide v1, p3

    .line 143
    invoke-static {p0, p3, p4}, Lio/objectbox/model/FlatStoreOptions;->addMaxDbSizeInKByte(Lcom/google/flatbuffers/d;J)V

    move-wide/from16 v1, p17

    .line 144
    invoke-static {p0, v1, v2}, Lio/objectbox/model/FlatStoreOptions;->addDebugFlags(Lcom/google/flatbuffers/d;J)V

    move-wide v1, p7

    .line 145
    invoke-static {p0, p7, p8}, Lio/objectbox/model/FlatStoreOptions;->addMaxReaders(Lcom/google/flatbuffers/d;J)V

    move-wide v1, p5

    .line 146
    invoke-static {p0, p5, p6}, Lio/objectbox/model/FlatStoreOptions;->addFileMode(Lcom/google/flatbuffers/d;J)V

    move v1, p2

    .line 147
    invoke-static {p0, p2}, Lio/objectbox/model/FlatStoreOptions;->addModelBytes(Lcom/google/flatbuffers/d;I)V

    .line 148
    invoke-static {p0, p1}, Lio/objectbox/model/FlatStoreOptions;->addDirectoryPath(Lcom/google/flatbuffers/d;I)V

    move v1, p12

    .line 149
    invoke-static {p0, p12}, Lio/objectbox/model/FlatStoreOptions;->addPutPaddingMode(Lcom/google/flatbuffers/d;I)V

    move v1, p9

    .line 150
    invoke-static {p0, p9}, Lio/objectbox/model/FlatStoreOptions;->addValidateOnOpen(Lcom/google/flatbuffers/d;I)V

    move/from16 v1, p16

    .line 151
    invoke-static {p0, v1}, Lio/objectbox/model/FlatStoreOptions;->addReadOnly(Lcom/google/flatbuffers/d;Z)V

    move/from16 v1, p15

    .line 152
    invoke-static {p0, v1}, Lio/objectbox/model/FlatStoreOptions;->addUsePreviousCommitOnValidationFailure(Lcom/google/flatbuffers/d;Z)V

    move/from16 v1, p14

    .line 153
    invoke-static {p0, v1}, Lio/objectbox/model/FlatStoreOptions;->addUsePreviousCommit(Lcom/google/flatbuffers/d;Z)V

    move/from16 v1, p13

    .line 154
    invoke-static {p0, v1}, Lio/objectbox/model/FlatStoreOptions;->addSkipReadSchema(Lcom/google/flatbuffers/d;Z)V

    .line 155
    invoke-static {p0}, Lio/objectbox/model/FlatStoreOptions;->endFlatStoreOptions(Lcom/google/flatbuffers/d;)I

    move-result v0

    return v0
.end method

.method public static createModelBytesVector(Lcom/google/flatbuffers/d;Ljava/nio/ByteBuffer;)I
    .locals 0

    .line 162
    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/d;->a(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public static createModelBytesVector(Lcom/google/flatbuffers/d;[B)I
    .locals 0

    .line 161
    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/d;->a([B)I

    move-result p0

    return p0
.end method

.method public static endFlatStoreOptions(Lcom/google/flatbuffers/d;)I
    .locals 0

    .line 176
    invoke-virtual {p0}, Lcom/google/flatbuffers/d;->c()I

    move-result p0

    return p0
.end method

.method public static finishFlatStoreOptionsBuffer(Lcom/google/flatbuffers/d;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1902
    invoke-virtual {p0, p1, v0}, Lcom/google/flatbuffers/d;->b(IZ)V

    return-void
.end method

.method public static finishSizePrefixedFlatStoreOptionsBuffer(Lcom/google/flatbuffers/d;I)V
    .locals 1

    const/4 v0, 0x1

    .line 1911
    invoke-virtual {p0, p1, v0}, Lcom/google/flatbuffers/d;->b(IZ)V

    return-void
.end method

.method public static getRootAsFlatStoreOptions(Ljava/nio/ByteBuffer;)Lio/objectbox/model/FlatStoreOptions;
    .locals 1

    .line 35
    new-instance v0, Lio/objectbox/model/FlatStoreOptions;

    invoke-direct {v0}, Lio/objectbox/model/FlatStoreOptions;-><init>()V

    invoke-static {p0, v0}, Lio/objectbox/model/FlatStoreOptions;->getRootAsFlatStoreOptions(Ljava/nio/ByteBuffer;Lio/objectbox/model/FlatStoreOptions;)Lio/objectbox/model/FlatStoreOptions;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsFlatStoreOptions(Ljava/nio/ByteBuffer;Lio/objectbox/model/FlatStoreOptions;)Lio/objectbox/model/FlatStoreOptions;
    .locals 2

    .line 36
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0, p0}, Lio/objectbox/model/FlatStoreOptions;->__assign(ILjava/nio/ByteBuffer;)Lio/objectbox/model/FlatStoreOptions;

    move-result-object p0

    return-object p0
.end method

.method public static startFlatStoreOptions(Lcom/google/flatbuffers/d;)V
    .locals 1

    const/16 v0, 0xd

    .line 158
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/d;->d(I)V

    return-void
.end method

.method public static startModelBytesVector(Lcom/google/flatbuffers/d;I)V
    .locals 1

    const/4 v0, 0x1

    .line 163
    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/d;->a(III)V

    return-void
.end method


# virtual methods
.method public final __assign(ILjava/nio/ByteBuffer;)Lio/objectbox/model/FlatStoreOptions;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lio/objectbox/model/FlatStoreOptions;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public final __init(ILjava/nio/ByteBuffer;)V
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2}, Lio/objectbox/model/FlatStoreOptions;->__reset(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public final debugFlags()J
    .locals 4

    const/16 v0, 0x1c

    .line 125
    invoke-virtual {p0, v0}, Lio/objectbox/model/FlatStoreOptions;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/objectbox/model/FlatStoreOptions;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lio/objectbox/model/FlatStoreOptions;->bb_pos:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final directoryPath()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x4

    .line 43
    invoke-virtual {p0, v0}, Lio/objectbox/model/FlatStoreOptions;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lio/objectbox/model/FlatStoreOptions;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lio/objectbox/model/FlatStoreOptions;->__string(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final directoryPathAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x1

    .line 44
    invoke-virtual {p0, v0, v1}, Lio/objectbox/model/FlatStoreOptions;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final directoryPathInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x1

    .line 45
    invoke-virtual {p0, p1, v0, v1}, Lio/objectbox/model/FlatStoreOptions;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final fileMode()J
    .locals 4

    const/16 v0, 0xa

    .line 65
    invoke-virtual {p0, v0}, Lio/objectbox/model/FlatStoreOptions;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/objectbox/model/FlatStoreOptions;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lio/objectbox/model/FlatStoreOptions;->bb_pos:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final maxDbSizeInKByte()J
    .locals 3

    const/16 v0, 0x8

    .line 60
    invoke-virtual {p0, v0}, Lio/objectbox/model/FlatStoreOptions;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/objectbox/model/FlatStoreOptions;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lio/objectbox/model/FlatStoreOptions;->bb_pos:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final maxReaders()J
    .locals 4

    const/16 v0, 0xc

    .line 77
    invoke-virtual {p0, v0}, Lio/objectbox/model/FlatStoreOptions;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/objectbox/model/FlatStoreOptions;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lio/objectbox/model/FlatStoreOptions;->bb_pos:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final modelBytes(I)I
    .locals 2

    const/4 v0, 0x6

    .line 49
    invoke-virtual {p0, v0}, Lio/objectbox/model/FlatStoreOptions;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/objectbox/model/FlatStoreOptions;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lio/objectbox/model/FlatStoreOptions;->__vector(I)I

    move-result v0

    mul-int/lit8 p1, p1, 0x1

    add-int/2addr v0, p1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final modelBytesAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x1

    .line 53
    invoke-virtual {p0, v0, v1}, Lio/objectbox/model/FlatStoreOptions;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final modelBytesInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x1

    .line 54
    invoke-virtual {p0, p1, v0, v1}, Lio/objectbox/model/FlatStoreOptions;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final modelBytesLength()I
    .locals 1

    const/4 v0, 0x6

    .line 50
    invoke-virtual {p0, v0}, Lio/objectbox/model/FlatStoreOptions;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lio/objectbox/model/FlatStoreOptions;->__vector_len(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final modelBytesVector()Lcom/google/flatbuffers/c;
    .locals 1

    .line 51
    new-instance v0, Lcom/google/flatbuffers/c;

    invoke-direct {v0}, Lcom/google/flatbuffers/c;-><init>()V

    invoke-virtual {p0, v0}, Lio/objectbox/model/FlatStoreOptions;->modelBytesVector(Lcom/google/flatbuffers/c;)Lcom/google/flatbuffers/c;

    move-result-object v0

    return-object v0
.end method

.method public final modelBytesVector(Lcom/google/flatbuffers/c;)Lcom/google/flatbuffers/c;
    .locals 2

    const/4 v0, 0x6

    .line 52
    invoke-virtual {p0, v0}, Lio/objectbox/model/FlatStoreOptions;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lio/objectbox/model/FlatStoreOptions;->__vector(I)I

    move-result v0

    iget-object v1, p0, Lio/objectbox/model/FlatStoreOptions;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, v1}, Lcom/google/flatbuffers/c;->a(ILjava/nio/ByteBuffer;)Lcom/google/flatbuffers/c;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final putPaddingMode()I
    .locals 3

    const/16 v0, 0x12

    .line 96
    invoke-virtual {p0, v0}, Lio/objectbox/model/FlatStoreOptions;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/objectbox/model/FlatStoreOptions;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lio/objectbox/model/FlatStoreOptions;->bb_pos:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final readOnly()Z
    .locals 4

    const/16 v0, 0x1a

    .line 121
    invoke-virtual {p0, v0}, Lio/objectbox/model/FlatStoreOptions;->__offset(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lio/objectbox/model/FlatStoreOptions;->bb:Ljava/nio/ByteBuffer;

    iget v3, p0, Lio/objectbox/model/FlatStoreOptions;->bb_pos:I

    add-int/2addr v0, v3

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public final skipReadSchema()Z
    .locals 4

    const/16 v0, 0x14

    .line 101
    invoke-virtual {p0, v0}, Lio/objectbox/model/FlatStoreOptions;->__offset(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lio/objectbox/model/FlatStoreOptions;->bb:Ljava/nio/ByteBuffer;

    iget v3, p0, Lio/objectbox/model/FlatStoreOptions;->bb_pos:I

    add-int/2addr v0, v3

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public final usePreviousCommit()Z
    .locals 4

    const/16 v0, 0x16

    .line 108
    invoke-virtual {p0, v0}, Lio/objectbox/model/FlatStoreOptions;->__offset(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lio/objectbox/model/FlatStoreOptions;->bb:Ljava/nio/ByteBuffer;

    iget v3, p0, Lio/objectbox/model/FlatStoreOptions;->bb_pos:I

    add-int/2addr v0, v3

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public final usePreviousCommitOnValidationFailure()Z
    .locals 4

    const/16 v0, 0x18

    .line 117
    invoke-virtual {p0, v0}, Lio/objectbox/model/FlatStoreOptions;->__offset(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lio/objectbox/model/FlatStoreOptions;->bb:Ljava/nio/ByteBuffer;

    iget v3, p0, Lio/objectbox/model/FlatStoreOptions;->bb_pos:I

    add-int/2addr v0, v3

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public final validateOnOpen()I
    .locals 3

    const/16 v0, 0xe

    .line 84
    invoke-virtual {p0, v0}, Lio/objectbox/model/FlatStoreOptions;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/objectbox/model/FlatStoreOptions;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lio/objectbox/model/FlatStoreOptions;->bb_pos:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final validateOnOpenPageLimit()J
    .locals 3

    const/16 v0, 0x10

    .line 91
    invoke-virtual {p0, v0}, Lio/objectbox/model/FlatStoreOptions;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/objectbox/model/FlatStoreOptions;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lio/objectbox/model/FlatStoreOptions;->bb_pos:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
