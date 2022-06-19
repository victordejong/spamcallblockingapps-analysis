.class public final Lcom/facebook/ads/redexgen/X/Ax;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/To;


# static fields
.field public static A0G:[B

.field public static A0H:[Ljava/lang/String;

.field public static final A0I:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final A0J:Ljava/util/regex/Pattern;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/HM;

.field public A05:Ljava/io/InputStream;

.field public A06:Ljava/net/HttpURLConnection;

.field public A07:Z

.field public final A08:I

.field public final A09:I

.field public final A0A:Lcom/facebook/ads/redexgen/X/HS;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A0B:Lcom/facebook/ads/redexgen/X/HS;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Hd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Hd<",
            "-",
            "Lcom/facebook/ads/redexgen/X/Ax;",
            ">;"
        }
    .end annotation
.end field

.field public final A0D:Lcom/facebook/ads/redexgen/X/IO;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/IO<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A0E:Ljava/lang/String;

.field public final A0F:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 22132
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ax;->A0A()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ax;->A09()V

    const/16 v2, 0x12c

    const/16 v1, 0x19

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ax;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ax;->A0J:Ljava/util/regex/Pattern;

    .line 22133
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ax;->A0I:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/IO;Lcom/facebook/ads/redexgen/X/Hd;IIZLcom/facebook/ads/redexgen/X/HS;)V
    .locals 1
    .param p2    # Lcom/facebook/ads/redexgen/X/IO;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/redexgen/X/Hd;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/facebook/ads/redexgen/X/HS;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/IO<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Hd<",
            "-",
            "Lcom/facebook/ads/redexgen/X/Ax;",
            ">;IIZ",
            "Lcom/facebook/ads/redexgen/X/HS;",
            ")V"
        }
    .end annotation

    .line 22134
    .local p3, "contentTypePredicate":Lcom/facebook/ads/redexgen/X/IO;, "Lcom/facebook/ads/internal/exoplayer2/util/Predicate<Ljava/lang/String;>;"
    .local p4, "listener":Lcom/facebook/ads/redexgen/X/Hd;, "Lcom/facebook/ads/internal/exoplayer2/upstream/TransferListener<-Lcom/facebook/ads/internal/exoplayer2/upstream/DefaultHttpDataSource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22135
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Hx;->A02(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A0E:Ljava/lang/String;

    .line 22136
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ax;->A0D:Lcom/facebook/ads/redexgen/X/IO;

    .line 22137
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Ax;->A0C:Lcom/facebook/ads/redexgen/X/Hd;

    .line 22138
    new-instance v0, Lcom/facebook/ads/redexgen/X/HS;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/HS;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A0B:Lcom/facebook/ads/redexgen/X/HS;

    .line 22139
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Ax;->A08:I

    .line 22140
    iput p5, p0, Lcom/facebook/ads/redexgen/X/Ax;->A09:I

    .line 22141
    iput-boolean p6, p0, Lcom/facebook/ads/redexgen/X/Ax;->A0F:Z

    .line 22142
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/Ax;->A0A:Lcom/facebook/ads/redexgen/X/HS;

    .line 22143
    return-void
.end method

.method private A00([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22144
    if-nez p3, :cond_0

    .line 22145
    const/4 v0, 0x0

    return v0

    .line 22146
    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A02:J

    const-wide/16 v6, -0x1

    const/4 v5, -0x1

    cmp-long v2, v0, v6

    if-eqz v2, :cond_2

    .line 22147
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Ax;->A00:J

    sub-long/2addr v0, v2

    .line 22148
    .local p0, "bytesRemaining":J
    const-wide/16 v3, 0x0

    cmp-long v2, v0, v3

    if-nez v2, :cond_1

    .line 22149
    return v5

    .line 22150
    :cond_1
    int-to-long v2, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 22151
    .end local p0    # "bytesRemaining":J
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A05:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 22152
    .local p0, "read":I
    if-ne v4, v5, :cond_4

    .line 22153
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Ax;->A02:J

    cmp-long v0, v1, v6

    if-nez v0, :cond_3

    .line 22154
    return v5

    .line 22155
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 22156
    :cond_4
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Ax;->A00:J

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Ax;->A00:J

    .line 22157
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A0C:Lcom/facebook/ads/redexgen/X/Hd;

    if-eqz v0, :cond_5

    .line 22158
    invoke-interface {v0, p0, v4}, Lcom/facebook/ads/redexgen/X/Hd;->A9e(Ljava/lang/Object;I)V

    .line 22159
    :cond_5
    return v4
.end method

.method private final A01()J
    .locals 5

    .line 22160
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Ax;->A02:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    :goto_0
    return-wide v3

    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A00:J

    sub-long/2addr v3, v0

    goto :goto_0
.end method

.method public static A02(Ljava/net/HttpURLConnection;)J
    .locals 12

    .line 22161
    const-wide/16 v1, -0x1

    .line 22162
    .local p0, "contentLength":J
    const/16 v4, 0x10

    const/16 v3, 0xe

    const/16 v0, 0x41

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Ax;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 22163
    .local v2, "contentLengthHeader":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/16 v4, 0x128

    const/4 v3, 0x1

    const/16 v0, 0x57

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Ax;->A03(III)Ljava/lang/String;

    move-result-object v7

    const/16 v4, 0x2b

    const/16 v3, 0x15

    const/16 v0, 0x58

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Ax;->A03(III)Ljava/lang/String;

    move-result-object v6

    if-nez v5, :cond_0

    .line 22164
    :try_start_0
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 22165
    goto :goto_0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22166
    .local v4, "e":Ljava/lang/NumberFormatException;
    :catch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xa6

    const/16 v3, 0x1b

    const/16 v0, 0xf

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Ax;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22167
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    const/16 v4, 0x1e

    const/16 v3, 0xd

    const/16 v0, 0x60

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Ax;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 22168
    .local v4, "contentRangeHeader":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 22169
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ax;->A0J:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 22170
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22171
    const/4 v0, 0x2

    .line 22172
    :try_start_1
    invoke-virtual {v5, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    sub-long/2addr v3, v9

    const-wide/16 v9, 0x1

    add-long/2addr v3, v9

    .line 22173
    .local v11, "contentLengthFromRange":J
    const-wide/16 v9, 0x0

    cmp-long v0, v1, v9

    if-gez v0, :cond_1

    goto :goto_1

    .line 22174
    :cond_1
    cmp-long v0, v1, v3

    if-eqz v0, :cond_2

    .line 22175
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x40

    const/16 v5, 0x16

    const/16 v0, 0x12

    invoke-static {v9, v5, v0}, Lcom/facebook/ads/redexgen/X/Ax;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x129

    const/4 v5, 0x3

    const/16 v0, 0xa

    invoke-static {v9, v5, v0}, Lcom/facebook/ads/redexgen/X/Ax;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22176
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 22177
    .local v11, "e":Ljava/lang/NumberFormatException;
    :catch_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xc1

    const/16 v3, 0x1a

    const/16 v0, 0x67

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Ax;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 22178
    :goto_1
    move-wide v1, v3

    .line 22179
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :goto_2
    return-wide v1
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ax;->A0G:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x29

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/HM;)Ljava/net/HttpURLConnection;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22180
    move-object/from16 v1, p1

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/HM;->A04:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 22181
    .local v1, "url":Ljava/net/URL;
    iget-object v6, v1, Lcom/facebook/ads/redexgen/X/HM;->A06:[B

    .line 22182
    .local v10, "postBody":[B
    iget-wide v7, v1, Lcom/facebook/ads/redexgen/X/HM;->A03:J

    .line 22183
    .local v0, "position":J
    iget-wide v9, v1, Lcom/facebook/ads/redexgen/X/HM;->A02:J

    .line 22184
    .local v11, "length":J
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/HM;->A03(I)Z

    move-result v11

    .line 22185
    .local v9, "allowGzip":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Ax;->A0F:Z

    if-nez v0, :cond_0

    .line 22186
    const/4 v12, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v12}, Lcom/facebook/ads/redexgen/X/Ax;->A05(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0

    .line 22187
    :cond_0
    const/4 v3, 0x0

    .line 22188
    .local v1, "redirectCount":I
    :goto_0
    add-int/lit8 v4, v3, 0x1

    .end local v1    # "redirectCount":I
    .local v0, "redirectCount":I
    const/16 v0, 0x14

    if-gt v3, v0, :cond_4

    .line 22189
    const/16 v20, 0x0

    .line 22190
    move-object/from16 v12, p0

    .end local v11    # "length":J
    .local v0, "length":J
    .end local v0    # "length":J
    .local v6, "position":J
    move-object v13, v5

    move-object v14, v6

    move-wide v15, v7

    move-wide/from16 v17, v9

    move/from16 v19, v11

    invoke-direct/range {v12 .. v20}, Lcom/facebook/ads/redexgen/X/Ax;->A05(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 22191
    .local v1, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 22192
    .local v8, "responseCode":I
    const/16 v0, 0x12c

    if-eq v1, v0, :cond_1

    const/16 v0, 0x12d

    if-eq v1, v0, :cond_1

    const/16 v0, 0x12e

    if-eq v1, v0, :cond_1

    const/16 v0, 0x12f

    if-eq v1, v0, :cond_1

    if-nez v6, :cond_3

    const/16 v0, 0x133

    if-eq v1, v0, :cond_1

    const/16 v0, 0x134

    if-ne v1, v0, :cond_3

    .line 22193
    :cond_1
    const/4 v6, 0x0

    .line 22194
    const/16 v2, 0x56

    const/16 v1, 0x8

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ax;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22195
    .local v9, "location":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 22196
    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/Ax;->A06(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    .line 22197
    .end local v9    # "location":Ljava/lang/String;
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v8    # "responseCode":I
    move v3, v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ax;->A0H:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ax;->A0H:[Ljava/lang/String;

    const-string v1, "CKM5pWqDtJ5PMSdf2TkrZ5bAe2vwj1LO"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    goto :goto_0

    .line 22198
    :cond_3
    return-object v3

    .line 22199
    .end local v0
    .end local v6    # "position":J
    .restart local v11    # "length":J
    .restart local v0    # "length":J
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x7d

    const/16 v1, 0x14

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ax;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/net/NoRouteToHostException;

    invoke-direct {v0, v1}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A05(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22200
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 22201
    .local p0, "connection":Ljava/net/HttpURLConnection;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A08:I

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 22202
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A09:I

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 22203
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A0A:Lcom/facebook/ads/redexgen/X/HS;

    if-eqz v0, :cond_0

    .line 22204
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HS;->A00()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 22205
    .local p2, "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 22206
    .end local p2    # "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 22207
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A0B:Lcom/facebook/ads/redexgen/X/HS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HS;->A00()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ax;->A0H:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ax;->A0H:[Ljava/lang/String;

    const-string v1, "1tGba3Mmo4PdW8QJsrse2YxAdX"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 22208
    .restart local p2    # "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 22209
    .end local p2    # "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 22210
    :cond_2
    const-wide/16 v1, 0x0

    const-wide/16 v5, -0x1

    cmp-long v0, p3, v1

    if-nez v0, :cond_3

    cmp-long v0, p5, v5

    if-eqz v0, :cond_5

    .line 22211
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x145

    const/4 v1, 0x6

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ax;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ax;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 22212
    .local p1, "rangeRequest":Ljava/lang/String;
    cmp-long v0, p5, v5

    if-eqz v0, :cond_4

    .line 22213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long/2addr p3, p5

    const-wide/16 v0, 0x1

    sub-long/2addr p3, v0

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 22214
    :cond_4
    const/16 v2, 0x78

    const/4 v1, 0x5

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ax;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 22215
    .end local p1    # "rangeRequest":Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ax;->A0E:Ljava/lang/String;

    const/16 v2, 0x11e

    const/16 v1, 0xa

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ax;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 22216
    if-nez p7, :cond_6

    .line 22217
    const/4 v2, 0x1

    const/16 v1, 0xf

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ax;->A03(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x1da

    const/16 v1, 0x8

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ax;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 22218
    :cond_6
    invoke-virtual {v3, p8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ax;->A0H:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 22219
    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ax;->A0H:[Ljava/lang/String;

    const-string v1, "uVL751RxVWEDUd4FStcpdVjluqxGL"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz p2, :cond_a

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 22220
    if-eqz p2, :cond_9

    .line 22221
    const/16 v2, 0x74

    const/4 v1, 0x4

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ax;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 22222
    array-length v0, p2

    if-nez v0, :cond_8

    .line 22223
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 22224
    :goto_3
    return-object v3

    .line 22225
    :cond_8
    array-length v0, p2

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 22226
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 22227
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 22228
    .local p1, "os":Ljava/io/OutputStream;
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 22229
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 22230
    .end local p1    # "os":Ljava/io/OutputStream;
    goto :goto_3

    .line 22231
    :cond_9
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    goto :goto_3

    .line 22232
    :cond_a
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static A06(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22233
    if-eqz p1, :cond_2

    .line 22234
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 22235
    .local p0, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p0

    .line 22236
    .local p1, "protocol":Ljava/lang/String;
    const/16 v2, 0x1d5

    const/4 v1, 0x5

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ax;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v2, 0x1d1

    const/4 v1, 0x4

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ax;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22237
    :cond_0
    return-object v3

    .line 22238
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xff

    const/16 v1, 0x1f

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ax;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22239
    .end local p0    # "url":Ljava/net/URL;
    .end local p1    # "protocol":Ljava/lang/String;
    :cond_2
    const/16 v2, 0x5e

    const/16 v1, 0x16

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ax;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A07()V
    .locals 5

    .line 22240
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A06:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 22241
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22242
    :catch_0
    move-exception v4

    .line 22243
    .local p0, "e":Ljava/lang/Exception;
    const/16 v2, 0x2b

    const/16 v1, 0x15

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ax;->A03(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xdb

    const/16 v1, 0x24

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ax;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22244
    .end local p0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A06:Ljava/net/HttpURLConnection;

    .line 22245
    :cond_0
    return-void
.end method

.method private A08()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22246
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Ax;->A01:J

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Ax;->A03:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 22247
    return-void

    .line 22248
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/Ax;->A0I:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 22249
    .local p0, "skipBuffer":[B
    if-nez v5, :cond_1

    .line 22250
    const/16 v0, 0x1000

    new-array v5, v0, [B

    .line 22251
    :cond_1
    :goto_0
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/Ax;->A01:J

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Ax;->A03:J

    cmp-long v0, v6, v2

    if-eqz v0, :cond_4

    .line 22252
    sub-long/2addr v2, v6

    array-length v0, v5

    int-to-long v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v2, v0

    .line 22253
    .local v2, "readLength":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ax;->A05:Ljava/io/InputStream;

    const/4 v0, 0x0

    invoke-virtual {v1, v5, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 22254
    .local v3, "read":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 22255
    const/4 v0, -0x1

    if-eq v4, v0, :cond_2

    .line 22256
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Ax;->A01:J

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Ax;->A01:J

    .line 22257
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A0C:Lcom/facebook/ads/redexgen/X/Hd;

    if-eqz v0, :cond_1

    .line 22258
    invoke-interface {v0, p0, v4}, Lcom/facebook/ads/redexgen/X/Hd;->A9e(Ljava/lang/Object;I)V

    goto :goto_0

    .line 22259
    .restart local v3    # "read":I
    .restart local v2    # "readLength":I
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 22260
    :cond_3
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 22261
    .end local v3    # "read":I
    .end local v2    # "readLength":I
    :cond_4
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ax;->A0I:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 22262
    return-void
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0x1f6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ax;->A0G:[B

    return-void

    :array_0
    .array-data 1
        0x7et
        -0x40t
        -0x1et
        -0x1et
        -0x1ct
        -0x11t
        -0xdt
        -0x54t
        -0x3ct
        -0x13t
        -0x1et
        -0x12t
        -0x1dt
        -0x18t
        -0x13t
        -0x1at
        -0x53t
        -0x27t
        -0x28t
        -0x22t
        -0x31t
        -0x28t
        -0x22t
        -0x69t
        -0x4at
        -0x31t
        -0x28t
        -0x2ft
        -0x22t
        -0x2et
        -0x34t
        -0x8t
        -0x9t
        -0x3t
        -0x12t
        -0x9t
        -0x3t
        -0x4at
        -0x25t
        -0x16t
        -0x9t
        -0x10t
        -0x12t
        -0x3bt
        -0x1at
        -0x19t
        -0x1et
        -0xat
        -0x13t
        -0xbt
        -0x37t
        -0xbt
        -0xbt
        -0xft
        -0x3bt
        -0x1et
        -0xbt
        -0x1et
        -0x2ct
        -0x10t
        -0xat
        -0xdt
        -0x1ct
        -0x1at
        -0x7ct
        -0x57t
        -0x62t
        -0x56t
        -0x57t
        -0x52t
        -0x5ct
        -0x52t
        -0x51t
        -0x60t
        -0x57t
        -0x51t
        0x5bt
        -0x5dt
        -0x60t
        -0x64t
        -0x61t
        -0x60t
        -0x53t
        -0x52t
        0x5bt
        -0x6at
        -0x3bt
        -0x18t
        -0x24t
        -0x26t
        -0x13t
        -0x1et
        -0x18t
        -0x19t
        -0xet
        0x19t
        0x10t
        0x10t
        -0x3ct
        0x10t
        0x13t
        0x7t
        0x5t
        0x18t
        0xdt
        0x13t
        0x12t
        -0x3ct
        0x16t
        0x9t
        0x8t
        0xdt
        0x16t
        0x9t
        0x7t
        0x18t
        -0x15t
        -0x16t
        -0x12t
        -0x11t
        -0x44t
        -0x35t
        -0x28t
        -0x2ft
        -0x31t
        -0x3dt
        -0x22t
        -0x22t
        -0x71t
        -0x24t
        -0x30t
        -0x23t
        -0x18t
        -0x71t
        -0x1ft
        -0x2ct
        -0x2dt
        -0x28t
        -0x1ft
        -0x2ct
        -0x2et
        -0x1dt
        -0x1et
        -0x57t
        -0x71t
        -0x5et
        -0x45t
        -0x52t
        -0x51t
        -0x47t
        -0x4et
        0x6dt
        -0x3ft
        -0x44t
        0x6dt
        -0x50t
        -0x44t
        -0x45t
        -0x45t
        -0x4et
        -0x50t
        -0x3ft
        0x6dt
        -0x3ft
        -0x44t
        0x6dt
        -0x73t
        -0x5at
        -0x63t
        -0x50t
        -0x58t
        -0x63t
        -0x65t
        -0x54t
        -0x63t
        -0x64t
        0x58t
        0x7bt
        -0x59t
        -0x5at
        -0x54t
        -0x63t
        -0x5at
        -0x54t
        0x65t
        -0x7ct
        -0x63t
        -0x5at
        -0x61t
        -0x54t
        -0x60t
        0x58t
        -0x6dt
        -0x1bt
        -0x2t
        -0xbt
        0x8t
        0x0t
        -0xbt
        -0xdt
        0x4t
        -0xbt
        -0xct
        -0x50t
        -0x2dt
        -0x1t
        -0x2t
        0x4t
        -0xbt
        -0x2t
        0x4t
        -0x43t
        -0x1et
        -0xft
        -0x2t
        -0x9t
        -0xbt
        -0x50t
        -0x15t
        -0x63t
        -0x4at
        -0x53t
        -0x40t
        -0x48t
        -0x53t
        -0x55t
        -0x44t
        -0x53t
        -0x54t
        0x68t
        -0x53t
        -0x46t
        -0x46t
        -0x49t
        -0x46t
        0x68t
        -0x41t
        -0x50t
        -0x4ft
        -0x4ct
        -0x53t
        0x68t
        -0x54t
        -0x4ft
        -0x45t
        -0x55t
        -0x49t
        -0x4at
        -0x4at
        -0x53t
        -0x55t
        -0x44t
        -0x4ft
        -0x4at
        -0x51t
        -0x4et
        -0x35t
        -0x30t
        -0x2et
        -0x33t
        -0x33t
        -0x34t
        -0x31t
        -0x2ft
        -0x3et
        -0x3ft
        0x7dt
        -0x33t
        -0x31t
        -0x34t
        -0x2ft
        -0x34t
        -0x40t
        -0x34t
        -0x37t
        0x7dt
        -0x31t
        -0x3et
        -0x3ft
        -0x3at
        -0x31t
        -0x3et
        -0x40t
        -0x2ft
        -0x69t
        0x7dt
        -0x44t
        -0x26t
        -0x34t
        -0x27t
        -0x6ct
        -0x58t
        -0x32t
        -0x34t
        -0x2bt
        -0x25t
        -0x23t
        -0x70t
        0x53t
        -0x72t
        -0x56t
        -0x52t
        -0x3bt
        -0x40t
        -0x4ft
        -0x41t
        0x6ct
        0x74t
        -0x58t
        -0x50t
        0x77t
        0x75t
        0x79t
        0x74t
        -0x58t
        -0x50t
        0x77t
        0x75t
        0x7bt
        0x74t
        -0x58t
        -0x50t
        0x77t
        0x75t
        0x70t
        -0x44t
        -0x2dt
        -0x32t
        -0x41t
        -0x33t
        -0x69t
        -0x67t
        -0x5bt
        -0x5dt
        0x64t
        -0x69t
        -0x5ct
        -0x66t
        -0x58t
        -0x5bt
        -0x61t
        -0x66t
        0x64t
        -0x5bt
        -0x5ft
        -0x62t
        -0x56t
        -0x56t
        -0x5at
        0x64t
        -0x61t
        -0x5ct
        -0x56t
        -0x65t
        -0x58t
        -0x5ct
        -0x69t
        -0x5et
        0x64t
        -0x62t
        -0x56t
        -0x56t
        -0x5at
        0x64t
        0x7et
        -0x56t
        -0x56t
        -0x5at
        -0x76t
        -0x58t
        -0x69t
        -0x5ct
        -0x57t
        -0x5at
        -0x5bt
        -0x58t
        -0x56t
        0x5at
        0x79t
        -0x62t
        -0x55t
        -0x5ct
        -0x5ft
        -0x65t
        -0x66t
        0x7ft
        -0x5ct
        -0x5at
        -0x55t
        -0x56t
        -0x77t
        -0x56t
        -0x58t
        -0x65t
        -0x69t
        -0x5dt
        0xbt
        0x17t
        0x15t
        -0x2at
        0x9t
        0x16t
        0xct
        0x1at
        0x17t
        0x11t
        0xct
        -0x2at
        0x17t
        0x13t
        0x10t
        0x1ct
        0x1ct
        0x18t
        -0x2at
        0x11t
        0x16t
        0x1ct
        0xdt
        0x1at
        0x16t
        0x9t
        0x14t
        -0x2at
        0x10t
        0x1ct
        0x1ct
        0x18t
        -0x2at
        -0x10t
        0x1ct
        0x1ct
        0x18t
        -0x4t
        0x1at
        0x9t
        0x16t
        0x1bt
        0x18t
        0x17t
        0x1at
        0x1ct
        -0x34t
        -0x12t
        0x11t
        0x20t
        0xdt
        0xct
        -0xct
        0xdt
        0x16t
        0xft
        0x1ct
        0x10t
        -0xft
        0x16t
        0x18t
        0x1dt
        0x1ct
        -0x5t
        0x1ct
        0x1at
        0xdt
        0x9t
        0x15t
        -0xct
        0x0t
        0x0t
        -0x4t
        -0x50t
        -0x44t
        -0x44t
        -0x48t
        -0x45t
        -0x50t
        -0x55t
        -0x54t
        -0x4bt
        -0x45t
        -0x50t
        -0x45t
        -0x40t
        -0x6t
        -0xdt
        -0x16t
        -0x3t
        -0xbt
        -0x16t
        -0x18t
        -0x7t
        -0x16t
        -0x17t
        -0x36t
        -0xdt
        -0x17t
        -0x2ct
        -0x15t
        -0x32t
        -0xdt
        -0xbt
        -0x6t
        -0x7t
    .end array-data
.end method

.method public static A0A()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "sS6eibDYY5ymrysJwxw03rHZ2lBM4"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "VUAU25HqaxdDw76rucKUKG5kfU"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "joqaAYTEoSicp"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Mdv2MZqGPLAZJ5W0JdldfdzDNhg14XR"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ndNP5HEwlywBfqOm8UyLMiPA6et4321q"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "66p0Cjh9RQsC8zWnMgUrusrm6MRmDtHj"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "p6ECIbY7EwQBZYgEKiRR3vy8XsJArUPw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "MdIhIVDNbLWip61GeTyxWqTLIj2zeXyv"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ax;->A0H:[Ljava/lang/String;

    return-void
.end method

.method public static A0B(Ljava/net/HttpURLConnection;J)V
    .locals 4

    .line 22263
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x13

    if-eq v1, v0, :cond_0

    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x14

    if-eq v1, v0, :cond_0

    .line 22264
    return-void

    .line 22265
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 22266
    .local p0, "inputStream":Ljava/io/InputStream;
    const-wide/16 v1, -0x1

    cmp-long v0, p1, v1

    if-nez v0, :cond_1

    .line 22267
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_2

    .line 22268
    return-void

    .line 22269
    :cond_1
    const-wide/16 v1, 0x800

    cmp-long v0, p1, v1

    if-gtz v0, :cond_2

    .line 22270
    return-void

    .line 22271
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 22272
    .local p1, "className":Ljava/lang/String;
    const/16 v2, 0x14b

    const/16 v1, 0x41

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ax;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v2, 0x18c

    const/16 v1, 0x45

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ax;->A03(III)Ljava/lang/String;

    move-result-object v0

    .line 22273
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 22274
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 22275
    .local v2, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v2, 0x1e2

    const/16 v1, 0x14

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ax;->A03(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 22276
    .local v1, "unexpectedEndOfInput":Ljava/lang/reflect/Method;
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 22277
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22278
    :catch_0
    :cond_4
    return-void
.end method


# virtual methods
.method public final A7T()Landroid/net/Uri;
    .locals 1

    .line 22279
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A06:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public final ACC(Lcom/facebook/ads/redexgen/X/HM;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/HR;
        }
    .end annotation

    .line 22280
    const/16 v2, 0x91

    const/16 v1, 0x15

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ax;->A03(III)Ljava/lang/String;

    move-result-object v6

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ax;->A04:Lcom/facebook/ads/redexgen/X/HM;

    .line 22281
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/Ax;->A00:J

    .line 22282
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/Ax;->A01:J

    .line 22283
    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ax;->A04(Lcom/facebook/ads/redexgen/X/HM;)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A06:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 22284
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A06:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 22285
    .local p0, "responseCode":I
    const/16 v2, 0xc8

    if-lt v6, v2, :cond_0

    const/16 v0, 0x12b

    if-le v6, v0, :cond_2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 22286
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/HM;
    .end local v6
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A06:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 22287
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ax;->A07()V

    .line 22288
    new-instance v2, Lcom/facebook/ads/redexgen/X/Tp;

    invoke-direct {v2, v6, v0, p1}, Lcom/facebook/ads/redexgen/X/Tp;-><init>(ILjava/util/Map;Lcom/facebook/ads/redexgen/X/HM;)V

    .line 22289
    .local v2, "exception":Lcom/facebook/ads/redexgen/X/Tp;
    const/16 v0, 0x1a0

    if-ne v6, v0, :cond_1

    .line 22290
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/HJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/HJ;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Tp;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 22291
    :cond_1
    throw v2

    .line 22292
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A06:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 22293
    .local v6, "contentType":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A0D:Lcom/facebook/ads/redexgen/X/IO;

    if-eqz v0, :cond_3

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/IO;->A5B(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 22294
    :cond_3
    if-ne v6, v2, :cond_4

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/HM;->A03:J

    cmp-long v0, v1, v4

    if-eqz v0, :cond_4

    iget-wide v4, p1, Lcom/facebook/ads/redexgen/X/HM;->A03:J

    :cond_4
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/Ax;->A03:J

    .line 22295
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/HM;->A03(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 22296
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/HM;->A02:J

    const-wide/16 v4, -0x1

    cmp-long v0, v1, v4

    if-eqz v0, :cond_5

    .line 22297
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A02:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A02:J

    goto :goto_0

    .line 22298
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A06:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ax;->A02(Ljava/net/HttpURLConnection;)J

    move-result-wide v6

    .line 22299
    .local p1, "contentLength":J
    cmp-long v0, v6, v4

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A03:J

    sub-long v4, v6, v0

    :cond_6
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/Ax;->A02:J

    .line 22300
    .end local p1    # "contentLength":J
    goto :goto_0

    .line 22301
    :cond_7
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A02:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A02:J

    .line 22302
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A06:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A05:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 22303
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Ax;->A07:Z

    .line 22304
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A0C:Lcom/facebook/ads/redexgen/X/Hd;

    if-eqz v0, :cond_8

    .line 22305
    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Hd;->ABs(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/HM;)V

    .line 22306
    :cond_8
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A02:J

    return-wide v0

    .line 22307
    :catch_0
    move-exception v1

    .line 22308
    .local p1, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ax;->A07()V

    .line 22309
    new-instance v0, Lcom/facebook/ads/redexgen/X/HR;

    invoke-direct {v0, v1, p1, v3}, Lcom/facebook/ads/redexgen/X/HR;-><init>(Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/HM;I)V

    throw v0

    .line 22310
    :cond_9
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ax;->A07()V

    .line 22311
    new-instance v0, Lcom/facebook/ads/redexgen/X/Tq;

    invoke-direct {v0, v1, p1}, Lcom/facebook/ads/redexgen/X/Tq;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/HM;)V

    throw v0

    .line 22312
    .end local p0    # "responseCode":I
    .end local p1    # "e":Ljava/io/IOException;
    .end local v2    # "exception":Lcom/facebook/ads/redexgen/X/Tp;
    :catch_1
    move-exception v2

    .line 22313
    .local p1, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ax;->A07()V

    .line 22314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A04:Landroid/net/Uri;

    .line 22315
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/HR;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/facebook/ads/redexgen/X/HR;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/HM;I)V

    throw v0

    .line 22316
    .end local p1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 22317
    .restart local p1    # "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A04:Landroid/net/Uri;

    .line 22318
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/HR;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/facebook/ads/redexgen/X/HR;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/HM;I)V

    throw v0
.end method

.method public final close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/HR;
        }
    .end annotation

    .line 22319
    const/4 v6, 0x0

    const/4 v5, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A05:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 22320
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ax;->A06:Ljava/net/HttpURLConnection;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ax;->A01()J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Ax;->A0B(Ljava/net/HttpURLConnection;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22321
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A05:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22322
    :catch_0
    move-exception v3

    .line 22323
    :try_start_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ax;->A04:Lcom/facebook/ads/redexgen/X/HM;

    const/4 v1, 0x3

    new-instance v0, Lcom/facebook/ads/redexgen/X/HR;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/HR;-><init>(Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/HM;I)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22324
    .end local v5
    :cond_0
    :goto_0
    iput-object v5, p0, Lcom/facebook/ads/redexgen/X/Ax;->A05:Ljava/io/InputStream;

    .line 22325
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ax;->A07()V

    .line 22326
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A07:Z

    if-eqz v0, :cond_1

    .line 22327
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/Ax;->A07:Z

    .line 22328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A0C:Lcom/facebook/ads/redexgen/X/Hd;

    if-eqz v0, :cond_1

    .line 22329
    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Hd;->ABr(Ljava/lang/Object;)V

    .line 22330
    :cond_1
    return-void

    .line 22331
    :catchall_0
    move-exception v4

    iput-object v5, p0, Lcom/facebook/ads/redexgen/X/Ax;->A05:Ljava/io/InputStream;

    .line 22332
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ax;->A07()V

    .line 22333
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ax;->A07:Z

    if-eqz v0, :cond_2

    .line 22334
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/Ax;->A07:Z

    .line 22335
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ax;->A0C:Lcom/facebook/ads/redexgen/X/Hd;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ax;->A0H:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x56

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ax;->A0H:[Ljava/lang/String;

    const-string v1, "W0m6kZNeLp0ZK"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "bgs8KbDO2EEZ8i7J8c26NNASa6V87SR"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 22336
    invoke-interface {v3, p0}, Lcom/facebook/ads/redexgen/X/Hd;->ABr(Ljava/lang/Object;)V

    .line 22337
    :cond_2
    throw v4

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/HR;
        }
    .end annotation

    .line 22338
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ax;->A08()V

    .line 22339
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ax;->A00([BII)I

    move-result v0

    return v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22340
    :catch_0
    move-exception v3

    .line 22341
    .local p0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ax;->A04:Lcom/facebook/ads/redexgen/X/HM;

    const/4 v1, 0x2

    new-instance v0, Lcom/facebook/ads/redexgen/X/HR;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/HR;-><init>(Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/HM;I)V

    throw v0
.end method
