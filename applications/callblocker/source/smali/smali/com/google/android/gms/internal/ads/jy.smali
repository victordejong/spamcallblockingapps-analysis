.class public final Lcom/google/android/gms/internal/ads/jy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/a;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/lv;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private final c:Lcom/google/android/gms/internal/ads/nr;

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/nr;)V
    .locals 1

    .prologue
    .line 13
    const/high16 v0, 0x500000

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/jy;-><init>(Lcom/google/android/gms/internal/ads/nr;I)V

    .line 14
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/nr;I)V
    .locals 4

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->a:Ljava/util/Map;

    .line 9
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/jy;->b:J

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jy;->c:Lcom/google/android/gms/internal/ads/nr;

    .line 11
    const/high16 v0, 0x500000

    iput v0, p0, Lcom/google/android/gms/internal/ads/jy;->d:I

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 4

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->a:Ljava/util/Map;

    .line 3
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/jy;->b:J

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/ms;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/ms;-><init>(Lcom/google/android/gms/internal/ads/jy;Ljava/io/File;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->c:Lcom/google/android/gms/internal/ads/nr;

    .line 5
    const/high16 v0, 0x1400000

    iput v0, p0, Lcom/google/android/gms/internal/ads/jy;->d:I

    .line 6
    return-void
.end method

.method static a(Ljava/io/InputStream;)I
    .locals 2

    .prologue
    .line 163
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jy;->c(Ljava/io/InputStream;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 164
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jy;->c(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 165
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jy;->c(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 166
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jy;->c(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 167
    return v0
.end method

.method private static a(Ljava/io/File;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 153
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method static a(Lcom/google/android/gms/internal/ads/os;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 190
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jy;->b(Ljava/io/InputStream;)J

    move-result-wide v0

    .line 191
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/jy;->a(Lcom/google/android/gms/internal/ads/os;J)[B

    move-result-object v0

    .line 192
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method static a(Ljava/io/OutputStream;I)V
    .locals 1

    .prologue
    .line 158
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 159
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 160
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 161
    ushr-int/lit8 v0, p1, 0x18

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 162
    return-void
.end method

.method static a(Ljava/io/OutputStream;J)V
    .locals 3

    .prologue
    .line 168
    long-to-int v0, p1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 169
    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 170
    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 171
    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 172
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 173
    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 174
    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 175
    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 176
    return-void
.end method

.method static a(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 186
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 187
    array-length v1, v0

    int-to-long v2, v1

    invoke-static {p0, v2, v3}, Lcom/google/android/gms/internal/ads/jy;->a(Ljava/io/OutputStream;J)V

    .line 188
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 189
    return-void
.end method

.method private final a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/lv;)V
    .locals 6

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/jy;->b:J

    iget-wide v2, p2, Lcom/google/android/gms/internal/ads/lv;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/jy;->b:J

    .line 141
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/lv;

    .line 140
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/jy;->b:J

    iget-wide v4, p2, Lcom/google/android/gms/internal/ads/lv;->a:J

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/lv;->a:J

    sub-long v0, v4, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/jy;->b:J

    goto :goto_0
.end method

.method private static a(Lcom/google/android/gms/internal/ads/os;J)[B
    .locals 5

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/os;->a()J

    move-result-wide v0

    .line 148
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    long-to-int v2, p1

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-eqz v2, :cond_1

    .line 149
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const/16 v3, 0x49

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "streamToBytes length="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", maxLength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 150
    :cond_1
    long-to-int v0, p1

    new-array v0, v0, [B

    .line 151
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 152
    return-object v0
.end method

.method static b(Ljava/io/InputStream;)J
    .locals 8

    .prologue
    const-wide/16 v6, 0xff

    .line 177
    const-wide/16 v0, 0x0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jy;->c(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    .line 178
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jy;->c(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 179
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jy;->c(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 180
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jy;->c(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 181
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jy;->c(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 182
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jy;->c(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 183
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jy;->c(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 184
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jy;->c(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 185
    return-wide v0
.end method

.method static b(Lcom/google/android/gms/internal/ads/os;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/os;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/dnv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jy;->a(Ljava/io/InputStream;)I

    move-result v2

    .line 194
    if-gez v2, :cond_0

    .line 195
    new-instance v0, Ljava/io/IOException;

    const/16 v1, 0x1f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "readHeaderList size="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    if-nez v2, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 197
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 198
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jy;->a(Lcom/google/android/gms/internal/ads/os;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 199
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jy;->a(Lcom/google/android/gms/internal/ads/os;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 200
    new-instance v5, Lcom/google/android/gms/internal/ads/dnv;

    invoke-direct {v5, v3, v4}, Lcom/google/android/gms/internal/ads/dnv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 196
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 202
    :cond_2
    return-object v0
.end method

.method private final declared-synchronized b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/jy;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 126
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/jy;->e(Ljava/lang/String;)V

    .line 127
    if-nez v0, :cond_0

    .line 128
    const-string/jumbo v0, "Could not delete cache entry for key=%s, filename=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    .line 129
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jy;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 130
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ez;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :cond_0
    monitor-exit p0

    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static c(Ljava/io/InputStream;)I
    .locals 2

    .prologue
    .line 154
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 155
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 156
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 157
    :cond_0
    return v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 132
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 133
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final d(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    .line 136
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jy;->c:Lcom/google/android/gms/internal/ads/nr;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/nr;->a()Ljava/io/File;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jy;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private final e(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/lv;

    .line 144
    if-eqz v0, :cond_0

    .line 145
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/jy;->b:J

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/lv;->a:J

    sub-long v0, v2, v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/jy;->b:J

    .line 146
    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/bzv;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 15
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/lv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    if-nez v0, :cond_0

    move-object v0, v2

    .line 55
    :goto_0
    monitor-exit p0

    return-object v0

    .line 18
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/jy;->d(Ljava/lang/String;)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 19
    :try_start_2
    new-instance v5, Lcom/google/android/gms/internal/ads/os;

    new-instance v1, Ljava/io/BufferedInputStream;

    .line 20
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/jy;->a(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-direct {v5, v1, v6, v7}, Lcom/google/android/gms/internal/ads/os;-><init>(Ljava/io/InputStream;J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 21
    :try_start_3
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/lv;->a(Lcom/google/android/gms/internal/ads/os;)Lcom/google/android/gms/internal/ads/lv;

    move-result-object v1

    .line 22
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/lv;->b:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 23
    const-string/jumbo v0, "%s: key=%s, found=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 24
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x1

    aput-object p1, v3, v6

    const/4 v6, 0x2

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/lv;->b:Ljava/lang/String;

    aput-object v1, v3, v6

    .line 25
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/ez;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/jy;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 27
    :try_start_4
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/os;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v0, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    :try_start_5
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/os;->a()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/google/android/gms/internal/ads/jy;->a(Lcom/google/android/gms/internal/ads/os;J)[B

    move-result-object v1

    .line 31
    new-instance v3, Lcom/google/android/gms/internal/ads/bzv;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/bzv;-><init>()V

    .line 32
    iput-object v1, v3, Lcom/google/android/gms/internal/ads/bzv;->a:[B

    .line 33
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/lv;->c:Ljava/lang/String;

    iput-object v1, v3, Lcom/google/android/gms/internal/ads/bzv;->b:Ljava/lang/String;

    .line 34
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/lv;->d:J

    iput-wide v6, v3, Lcom/google/android/gms/internal/ads/bzv;->c:J

    .line 35
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/lv;->e:J

    iput-wide v6, v3, Lcom/google/android/gms/internal/ads/bzv;->d:J

    .line 36
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/lv;->f:J

    iput-wide v6, v3, Lcom/google/android/gms/internal/ads/bzv;->e:J

    .line 37
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/lv;->g:J

    iput-wide v6, v3, Lcom/google/android/gms/internal/ads/bzv;->f:J

    .line 38
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/lv;->h:Ljava/util/List;

    .line 39
    new-instance v6, Ljava/util/TreeMap;

    sget-object v7, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v6, v7}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 40
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/dnv;

    .line 41
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dnv;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dnv;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 50
    :catchall_0
    move-exception v0

    :try_start_6
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/os;->close()V

    .line 51
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    :try_start_7
    const-string/jumbo v1, "%s: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/ez;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/jy;->b(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v0, v2

    .line 55
    goto/16 :goto_0

    .line 44
    :cond_2
    :try_start_8
    iput-object v6, v3, Lcom/google/android/gms/internal/ads/bzv;->g:Ljava/util/Map;

    .line 45
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/lv;->h:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/ads/bzv;->h:Ljava/util/List;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 48
    :try_start_9
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/os;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object v0, v3

    .line 49
    goto/16 :goto_0

    .line 15
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jy;->c:Lcom/google/android/gms/internal/ads/nr;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/nr;->a()Ljava/io/File;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 58
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    const-string/jumbo v0, "Unable to create cache dir %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/ez;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 78
    :cond_0
    monitor-exit p0

    return-void

    .line 61
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 62
    if-eqz v2, :cond_0

    .line 64
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 66
    new-instance v5, Lcom/google/android/gms/internal/ads/os;

    new-instance v0, Ljava/io/BufferedInputStream;

    .line 67
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/jy;->a(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v0, v6, v7}, Lcom/google/android/gms/internal/ads/os;-><init>(Ljava/io/InputStream;J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    :try_start_3
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/lv;->a(Lcom/google/android/gms/internal/ads/os;)Lcom/google/android/gms/internal/ads/lv;

    move-result-object v0

    .line 69
    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/lv;->a:J

    .line 70
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/lv;->b:Ljava/lang/String;

    invoke-direct {p0, v6, v0}, Lcom/google/android/gms/internal/ads/jy;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/lv;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 71
    :try_start_4
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/os;->close()V

    .line 77
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/os;->close()V

    .line 74
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 76
    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 56
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/bzv;)V
    .locals 13

    .prologue
    const v12, 0x3f666666    # 0.9f

    const/4 v1, 0x0

    .line 79
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/jy;->b:J

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/bzv;->a:[B

    array-length v0, v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    iget v0, p0, Lcom/google/android/gms/internal/ads/jy;->d:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/bzv;->a:[B

    array-length v0, v0

    int-to-float v0, v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/jy;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float v2, v2

    mul-float/2addr v2, v12

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 124
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 81
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/jy;->d(Ljava/lang/String;)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 82
    :try_start_2
    new-instance v0, Ljava/io/BufferedOutputStream;

    .line 83
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 84
    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 85
    new-instance v3, Lcom/google/android/gms/internal/ads/lv;

    invoke-direct {v3, p1, p2}, Lcom/google/android/gms/internal/ads/lv;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/bzv;)V

    .line 86
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/lv;->a(Ljava/io/OutputStream;)Z

    move-result v4

    .line 87
    if-nez v4, :cond_2

    .line 88
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 89
    const-string/jumbo v0, "Failed to write header for %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ez;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 122
    if-nez v0, :cond_0

    .line 123
    const-string/jumbo v0, "Could not clean up file %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ez;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 91
    :cond_2
    :try_start_4
    iget-object v4, p2, Lcom/google/android/gms/internal/ads/bzv;->a:[B

    invoke-virtual {v0, v4}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 92
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 93
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/gms/internal/ads/lv;->a:J

    .line 94
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/jy;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/lv;)V

    .line 96
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/jy;->b:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/jy;->d:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_0

    .line 97
    sget-boolean v0, Lcom/google/android/gms/internal/ads/ez;->a:Z

    if-eqz v0, :cond_3

    .line 98
    const-string/jumbo v0, "Pruning old cache entries."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/ez;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    :cond_3
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/jy;->b:J

    .line 101
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 102
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 103
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 104
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 105
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/lv;

    .line 106
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/lv;->b:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/jy;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    .line 107
    if-eqz v8, :cond_4

    .line 108
    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/jy;->b:J

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/lv;->a:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/google/android/gms/internal/ads/jy;->b:J

    .line 112
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 113
    add-int/lit8 v0, v1, 0x1

    .line 114
    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/jy;->b:J

    long-to-float v1, v8

    iget v8, p0, Lcom/google/android/gms/internal/ads/jy;->d:I

    int-to-float v8, v8

    mul-float/2addr v8, v12

    cmpg-float v1, v1, v8

    if-gez v1, :cond_5

    .line 115
    :goto_3
    sget-boolean v1, Lcom/google/android/gms/internal/ads/ez;->a:Z

    if-eqz v1, :cond_0

    .line 116
    const-string/jumbo v1, "pruned %d files, %d bytes, %d ms"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 117
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v8

    const/4 v0, 0x1

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/jy;->b:J

    sub-long v4, v8, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    .line 118
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/ez;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 109
    :cond_4
    const-string/jumbo v8, "Could not delete cache entry for key=%s, filename=%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/lv;->b:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/lv;->b:Ljava/lang/String;

    .line 110
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jy;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    .line 111
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/ez;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :cond_5
    move v1, v0

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_3
.end method
