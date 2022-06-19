.class public final Lcom/facebook/ads/redexgen/X/Ti;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/HG;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Tj;
    }
.end annotation


# static fields
.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/HM;

.field public A03:Lcom/facebook/ads/redexgen/X/IT;

.field public A04:Ljava/io/File;

.field public A05:Ljava/io/FileOutputStream;

.field public A06:Ljava/io/OutputStream;

.field public final A07:I

.field public final A08:J

.field public final A09:Lcom/facebook/ads/redexgen/X/Hh;

.field public final A0A:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ti;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hh;J)V
    .locals 6

    .line 55151
    const/16 v4, 0x5000

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Ti;-><init>(Lcom/facebook/ads/redexgen/X/Hh;JIZ)V

    .line 55152
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hh;JIZ)V
    .locals 1

    .line 55153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55154
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Hh;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A09:Lcom/facebook/ads/redexgen/X/Hh;

    .line 55155
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/Ti;->A08:J

    .line 55156
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Ti;->A07:I

    .line 55157
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/Ti;->A0A:Z

    .line 55158
    return-void
.end method

.method private A00()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55159
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A06:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 55160
    return-void

    .line 55161
    :cond_0
    const/4 v4, 0x0

    .line 55162
    .local v0, "success":Z
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 55163
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A0A:Z

    if-eqz v0, :cond_1

    .line 55164
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A05:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55165
    :cond_1
    const/4 v2, 0x1

    .line 55166
    .end local v0    # "success":Z
    .local p0, "success":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A06:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0Y(Ljava/io/Closeable;)V

    .line 55167
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Ti;->A06:Ljava/io/OutputStream;

    .line 55168
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ti;->A04:Ljava/io/File;

    .line 55169
    .local v0, "fileToCommit":Ljava/io/File;
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Ti;->A04:Ljava/io/File;

    .line 55170
    if-eqz v2, :cond_2

    .line 55171
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A09:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;->A41(Ljava/io/File;)V

    .line 55172
    .end local v0    # "fileToCommit":Ljava/io/File;
    :goto_0
    return-void

    .line 55173
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 55174
    .end local p0    # "success":Z
    .local v0, "success":Z
    :catchall_0
    move-exception v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A06:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0Y(Ljava/io/Closeable;)V

    .line 55175
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Ti;->A06:Ljava/io/OutputStream;

    .line 55176
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ti;->A04:Ljava/io/File;

    .line 55177
    .local v3, "fileToCommit":Ljava/io/File;
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Ti;->A04:Ljava/io/File;

    .line 55178
    if-eqz v4, :cond_3

    .line 55179
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A09:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;->A41(Ljava/io/File;)V

    .line 55180
    .end local v3    # "fileToCommit":Ljava/io/File;
    :goto_1
    throw v2

    .line 55181
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method private A01()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55182
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A02:Lcom/facebook/ads/redexgen/X/HM;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/HM;->A02:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 55183
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/Ti;->A08:J

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ti;->A0B:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ti;->A0B:[Ljava/lang/String;

    const-string v1, "Y09rDfF2IsD5cMKjBp8ojCep8851T5xJ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "u0Tl8zBn8ioUIqwT7RM4um4urnQoqj9c"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    goto :goto_0

    .line 55184
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A02:Lcom/facebook/ads/redexgen/X/HM;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/HM;->A02:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A00:J

    sub-long/2addr v2, v0

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A08:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 55185
    .local v0, "maxLength":J
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ti;->A09:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A02:Lcom/facebook/ads/redexgen/X/HM;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/HM;->A05:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A02:Lcom/facebook/ads/redexgen/X/HM;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/HM;->A01:J

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/Ti;->A00:J

    add-long/2addr v4, v0

    .line 55186
    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/Hh;->AE8(Ljava/lang/String;JJ)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A04:Ljava/io/File;

    .line 55187
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ti;->A04:Ljava/io/File;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A05:Ljava/io/FileOutputStream;

    .line 55188
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Ti;->A07:I

    if-lez v2, :cond_3

    .line 55189
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ti;->A03:Lcom/facebook/ads/redexgen/X/IT;

    if-nez v1, :cond_2

    .line 55190
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ti;->A05:Ljava/io/FileOutputStream;

    new-instance v0, Lcom/facebook/ads/redexgen/X/IT;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/IT;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A03:Lcom/facebook/ads/redexgen/X/IT;

    .line 55191
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A03:Lcom/facebook/ads/redexgen/X/IT;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A06:Ljava/io/OutputStream;

    .line 55192
    :goto_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A01:J

    .line 55193
    return-void

    .line 55194
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A05:Ljava/io/FileOutputStream;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IT;->A01(Ljava/io/OutputStream;)V

    goto :goto_1

    .line 55195
    :cond_3
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ti;->A05:Ljava/io/FileOutputStream;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ti;->A0B:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ti;->A0B:[Ljava/lang/String;

    const-string v1, "qCNDSqR9LdsrI9YH64E6cat9gaejzjmD"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "Iyq6sbIlCovH1mOgi4JaHK8QhNg12VcA"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Ti;->A06:Ljava/io/OutputStream;

    goto :goto_2

    :cond_4
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Ti;->A06:Ljava/io/OutputStream;

    goto :goto_2
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "jmsmJXLuKlNqF1fiz4C0u2Nq3rtgOVQi"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "lwZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "LEUJ3ZVBkTFsrHfox4ql8WkzZZ557Zud"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "n3ERaVOvlT5X9K9r8ea6xNk9oxSI932P"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "1Q2OQX6PdesXJoMJBqzDxNuJeBdaYwEw"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "NYLljtKUVMXbv9l"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "n4kgV76E74FxUWRHXBlxXRrWppfEDAmA"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "FSiDvWEBoP2Kyi0GQH7zVhVgtLFSKN0H"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ti;->A0B:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ACE(Lcom/facebook/ads/redexgen/X/HM;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Tj;
        }
    .end annotation

    .line 55196
    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/HM;->A02:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 55197
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/HM;->A03(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A02:Lcom/facebook/ads/redexgen/X/HM;

    .line 55199
    return-void

    .line 55200
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ti;->A02:Lcom/facebook/ads/redexgen/X/HM;

    .line 55201
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A00:J

    .line 55202
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ti;->A01()V

    goto :goto_0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55203
    :catch_0
    move-exception v1

    .line 55204
    .local p0, "e":Ljava/io/IOException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Tj;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Tj;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 55205
    :goto_0
    return-void
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Tj;
        }
    .end annotation

    .line 55206
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A02:Lcom/facebook/ads/redexgen/X/HM;

    if-nez v0, :cond_0

    .line 55207
    return-void

    .line 55208
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ti;->A00()V

    goto :goto_0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55209
    :catch_0
    move-exception v1

    .line 55210
    .local p0, "e":Ljava/io/IOException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Tj;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Tj;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 55211
    :goto_0
    return-void
.end method

.method public final write([BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Tj;
        }
    .end annotation

    .line 55212
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A02:Lcom/facebook/ads/redexgen/X/HM;

    if-nez v0, :cond_0

    .line 55213
    return-void

    .line 55214
    :cond_0
    const/4 v6, 0x0

    .line 55215
    .local p0, "bytesWritten":I
    :goto_0
    if-ge v6, p3, :cond_2

    .line 55216
    :try_start_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Ti;->A01:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A08:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    .line 55217
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ti;->A00()V

    .line 55218
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ti;->A01()V

    .line 55219
    :cond_1
    sub-int v0, p3, v6

    int-to-long v4, v0

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A08:J

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Ti;->A01:J

    sub-long/2addr v0, v2

    .line 55220
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v4, v0

    .line 55221
    .local p2, "bytesToWrite":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ti;->A06:Ljava/io/OutputStream;

    add-int v0, p2, v6

    invoke-virtual {v1, p1, v0, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 55222
    add-int/2addr v6, v4

    .line 55223
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Ti;->A01:J

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Ti;->A01:J

    .line 55224
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Ti;->A00:J

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Ti;->A00:J

    goto :goto_0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55225
    .end local p0    # "bytesWritten":I
    :catch_0
    move-exception v1

    .line 55226
    .local p0, "e":Ljava/io/IOException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Tj;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Tj;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 55227
    .end local p0    # "e":Ljava/io/IOException;
    :cond_2
    return-void
.end method
