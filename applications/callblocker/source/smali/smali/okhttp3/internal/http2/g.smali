.class final Lokhttp3/internal/http2/g;
.super Ljava/lang/Object;
.source "Http2Reader.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/g$b;,
        Lokhttp3/internal/http2/g$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/logging/Logger;


# instance fields
.field final b:Lokhttp3/internal/http2/c$a;

.field private final c:La/e;

.field private final d:Lokhttp3/internal/http2/g$a;

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lokhttp3/internal/http2/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/g;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(La/e;Z)V
    .locals 3

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lokhttp3/internal/http2/g;->c:La/e;

    .line 72
    iput-boolean p2, p0, Lokhttp3/internal/http2/g;->e:Z

    .line 73
    new-instance v0, Lokhttp3/internal/http2/g$a;

    iget-object v1, p0, Lokhttp3/internal/http2/g;->c:La/e;

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/g$a;-><init>(La/e;)V

    iput-object v0, p0, Lokhttp3/internal/http2/g;->d:Lokhttp3/internal/http2/g$a;

    .line 74
    new-instance v0, Lokhttp3/internal/http2/c$a;

    const/16 v1, 0x1000

    iget-object v2, p0, Lokhttp3/internal/http2/g;->d:Lokhttp3/internal/http2/g$a;

    invoke-direct {v0, v1, v2}, Lokhttp3/internal/http2/c$a;-><init>(ILa/s;)V

    iput-object v0, p0, Lokhttp3/internal/http2/g;->b:Lokhttp3/internal/http2/c$a;

    .line 75
    return-void
.end method

.method static a(IBS)I
    .locals 4

    .prologue
    .line 406
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, -0x1

    .line 407
    :cond_0
    if-le p2, p0, :cond_1

    .line 408
    const-string/jumbo v0, "PROTOCOL_ERROR padding %s > remaining length %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lokhttp3/internal/http2/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 410
    :cond_1
    sub-int v0, p0, p2

    int-to-short v0, v0

    return v0
.end method

.method static a(La/e;)I
    .locals 2

    .prologue
    .line 399
    invoke-interface {p0}, La/e;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 400
    invoke-interface {p0}, La/e;->g()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 401
    invoke-interface {p0}, La/e;->g()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 399
    return v0
.end method

.method private a(ISBI)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lokhttp3/internal/http2/g;->d:Lokhttp3/internal/http2/g$a;

    iget-object v1, p0, Lokhttp3/internal/http2/g;->d:Lokhttp3/internal/http2/g$a;

    iput p1, v1, Lokhttp3/internal/http2/g$a;->d:I

    iput p1, v0, Lokhttp3/internal/http2/g$a;->a:I

    .line 190
    iget-object v0, p0, Lokhttp3/internal/http2/g;->d:Lokhttp3/internal/http2/g$a;

    iput-short p2, v0, Lokhttp3/internal/http2/g$a;->e:S

    .line 191
    iget-object v0, p0, Lokhttp3/internal/http2/g;->d:Lokhttp3/internal/http2/g$a;

    iput-byte p3, v0, Lokhttp3/internal/http2/g$a;->b:B

    .line 192
    iget-object v0, p0, Lokhttp3/internal/http2/g;->d:Lokhttp3/internal/http2/g$a;

    iput p4, v0, Lokhttp3/internal/http2/g$a;->c:I

    .line 196
    iget-object v0, p0, Lokhttp3/internal/http2/g;->b:Lokhttp3/internal/http2/c$a;

    invoke-virtual {v0}, Lokhttp3/internal/http2/c$a;->a()V

    .line 197
    iget-object v0, p0, Lokhttp3/internal/http2/g;->b:Lokhttp3/internal/http2/c$a;

    invoke-virtual {v0}, Lokhttp3/internal/http2/c$a;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Lokhttp3/internal/http2/g$b;I)V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lokhttp3/internal/http2/g;->c:La/e;

    invoke-interface {v0}, La/e;->i()I

    move-result v1

    .line 227
    const/high16 v0, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 228
    :goto_0
    const v2, 0x7fffffff

    and-int/2addr v1, v2

    .line 229
    iget-object v2, p0, Lokhttp3/internal/http2/g;->c:La/e;

    invoke-interface {v2}, La/e;->g()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, 0x1

    .line 230
    invoke-interface {p1, p2, v1, v2, v0}, Lokhttp3/internal/http2/g$b;->a(IIIZ)V

    .line 231
    return-void

    .line 227
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lokhttp3/internal/http2/g$b;IBI)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 169
    if-nez p4, :cond_0

    const-string/jumbo v1, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lokhttp3/internal/http2/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 171
    :cond_0
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 173
    :goto_0
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_1

    iget-object v0, p0, Lokhttp3/internal/http2/g;->c:La/e;

    invoke-interface {v0}, La/e;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 175
    :cond_1
    and-int/lit8 v2, p3, 0x20

    if-eqz v2, :cond_2

    .line 176
    invoke-direct {p0, p1, p4}, Lokhttp3/internal/http2/g;->a(Lokhttp3/internal/http2/g$b;I)V

    .line 177
    add-int/lit8 p2, p2, -0x5

    .line 180
    :cond_2
    invoke-static {p2, p3, v0}, Lokhttp3/internal/http2/g;->a(IBS)I

    move-result v2

    .line 182
    invoke-direct {p0, v2, v0, p3, p4}, Lokhttp3/internal/http2/g;->a(ISBI)Ljava/util/List;

    move-result-object v0

    .line 184
    const/4 v2, -0x1

    invoke-interface {p1, v1, p4, v2, v0}, Lokhttp3/internal/http2/g$b;->a(ZIILjava/util/List;)V

    .line 185
    return-void

    :cond_3
    move v1, v0

    .line 171
    goto :goto_0
.end method

.method private b(Lokhttp3/internal/http2/g$b;IBI)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 202
    if-nez p4, :cond_0

    const-string/jumbo v1, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lokhttp3/internal/http2/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 205
    :cond_0
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_1

    move v2, v1

    .line 206
    :goto_0
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_2

    .line 207
    :goto_1
    if-eqz v1, :cond_3

    .line 208
    const-string/jumbo v1, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lokhttp3/internal/http2/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    move v2, v0

    .line 205
    goto :goto_0

    :cond_2
    move v1, v0

    .line 206
    goto :goto_1

    .line 211
    :cond_3
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_4

    iget-object v0, p0, Lokhttp3/internal/http2/g;->c:La/e;

    invoke-interface {v0}, La/e;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 212
    :cond_4
    invoke-static {p2, p3, v0}, Lokhttp3/internal/http2/g;->a(IBS)I

    move-result v1

    .line 214
    iget-object v3, p0, Lokhttp3/internal/http2/g;->c:La/e;

    invoke-interface {p1, v2, p4, v3, v1}, Lokhttp3/internal/http2/g$b;->a(ZILa/e;I)V

    .line 215
    iget-object v1, p0, Lokhttp3/internal/http2/g;->c:La/e;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, La/e;->h(J)V

    .line 216
    return-void
.end method

.method private c(Lokhttp3/internal/http2/g$b;IBI)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 220
    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const-string/jumbo v0, "TYPE_PRIORITY length: %d != 5"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lokhttp3/internal/http2/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 221
    :cond_0
    if-nez p4, :cond_1

    const-string/jumbo v0, "TYPE_PRIORITY streamId == 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/http2/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 222
    :cond_1
    invoke-direct {p0, p1, p4}, Lokhttp3/internal/http2/g;->a(Lokhttp3/internal/http2/g$b;I)V

    .line 223
    return-void
.end method

.method private d(Lokhttp3/internal/http2/g$b;IBI)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 235
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const-string/jumbo v0, "TYPE_RST_STREAM length: %d != 4"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lokhttp3/internal/http2/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 236
    :cond_0
    if-nez p4, :cond_1

    const-string/jumbo v0, "TYPE_RST_STREAM streamId == 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/http2/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 237
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/http2/g;->c:La/e;

    invoke-interface {v0}, La/e;->i()I

    move-result v0

    .line 238
    invoke-static {v0}, Lokhttp3/internal/http2/a;->a(I)Lokhttp3/internal/http2/a;

    move-result-object v1

    .line 239
    if-nez v1, :cond_2

    .line 240
    const-string/jumbo v1, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lokhttp3/internal/http2/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 242
    :cond_2
    invoke-interface {p1, p4, v1}, Lokhttp3/internal/http2/g$b;->a(ILokhttp3/internal/http2/a;)V

    .line 243
    return-void
.end method

.method private e(Lokhttp3/internal/http2/g$b;IBI)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 247
    if-eqz p4, :cond_0

    const-string/jumbo v0, "TYPE_SETTINGS streamId != 0"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/http2/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 248
    :cond_0
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_2

    .line 249
    if-eqz p2, :cond_1

    const-string/jumbo v0, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/http2/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 250
    :cond_1
    invoke-interface {p1}, Lokhttp3/internal/http2/g$b;->a()V

    .line 290
    :goto_0
    return-void

    .line 254
    :cond_2
    rem-int/lit8 v0, p2, 0x6

    if-eqz v0, :cond_3

    const-string/jumbo v0, "TYPE_SETTINGS length %% 6 != 0: %s"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lokhttp3/internal/http2/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 255
    :cond_3
    new-instance v3, Lokhttp3/internal/http2/l;

    invoke-direct {v3}, Lokhttp3/internal/http2/l;-><init>()V

    move v1, v2

    .line 256
    :goto_1
    if-ge v1, p2, :cond_6

    .line 257
    iget-object v0, p0, Lokhttp3/internal/http2/g;->c:La/e;

    invoke-interface {v0}, La/e;->h()S

    move-result v0

    const v4, 0xffff

    and-int/2addr v0, v4

    .line 258
    iget-object v4, p0, Lokhttp3/internal/http2/g;->c:La/e;

    invoke-interface {v4}, La/e;->i()I

    move-result v4

    .line 260
    packed-switch v0, :pswitch_data_0

    .line 287
    :cond_4
    :goto_2
    :pswitch_0
    invoke-virtual {v3, v0, v4}, Lokhttp3/internal/http2/l;->a(II)Lokhttp3/internal/http2/l;

    .line 256
    add-int/lit8 v0, v1, 0x6

    move v1, v0

    goto :goto_1

    .line 264
    :pswitch_1
    if-eqz v4, :cond_4

    if-eq v4, v6, :cond_4

    .line 265
    const-string/jumbo v0, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/http2/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 269
    :pswitch_2
    const/4 v0, 0x4

    .line 270
    goto :goto_2

    .line 272
    :pswitch_3
    const/4 v0, 0x7

    .line 273
    if-gez v4, :cond_4

    .line 274
    const-string/jumbo v0, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/http2/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 278
    :pswitch_4
    const/16 v5, 0x4000

    if-lt v4, v5, :cond_5

    const v5, 0xffffff

    if-le v4, v5, :cond_4

    .line 279
    :cond_5
    const-string/jumbo v0, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lokhttp3/internal/http2/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 289
    :cond_6
    invoke-interface {p1, v2, v3}, Lokhttp3/internal/http2/g$b;->a(ZLokhttp3/internal/http2/l;)V

    goto :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private f(Lokhttp3/internal/http2/g$b;IBI)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 294
    if-nez p4, :cond_0

    .line 295
    const-string/jumbo v1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lokhttp3/internal/http2/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 297
    :cond_0
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_1

    iget-object v0, p0, Lokhttp3/internal/http2/g;->c:La/e;

    invoke-interface {v0}, La/e;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 298
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/http2/g;->c:La/e;

    invoke-interface {v1}, La/e;->i()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    .line 299
    add-int/lit8 v2, p2, -0x4

    .line 300
    invoke-static {v2, p3, v0}, Lokhttp3/internal/http2/g;->a(IBS)I

    move-result v2

    .line 301
    invoke-direct {p0, v2, v0, p3, p4}, Lokhttp3/internal/http2/g;->a(ISBI)Ljava/util/List;

    move-result-object v0

    .line 302
    invoke-interface {p1, p4, v1, v0}, Lokhttp3/internal/http2/g$b;->a(IILjava/util/List;)V

    .line 303
    return-void
.end method

.method private g(Lokhttp3/internal/http2/g$b;IBI)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 307
    const/16 v2, 0x8

    if-eq p2, v2, :cond_0

    const-string/jumbo v2, "TYPE_PING length != 8: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lokhttp3/internal/http2/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 308
    :cond_0
    if-eqz p4, :cond_1

    const-string/jumbo v0, "TYPE_PING streamId != 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/http2/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 309
    :cond_1
    iget-object v2, p0, Lokhttp3/internal/http2/g;->c:La/e;

    invoke-interface {v2}, La/e;->i()I

    move-result v2

    .line 310
    iget-object v3, p0, Lokhttp3/internal/http2/g;->c:La/e;

    invoke-interface {v3}, La/e;->i()I

    move-result v3

    .line 311
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_2

    .line 312
    :goto_0
    invoke-interface {p1, v0, v2, v3}, Lokhttp3/internal/http2/g$b;->a(ZII)V

    .line 313
    return-void

    :cond_2
    move v0, v1

    .line 311
    goto :goto_0
.end method

.method private h(Lokhttp3/internal/http2/g$b;IBI)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 317
    const/16 v0, 0x8

    if-ge p2, v0, :cond_0

    const-string/jumbo v0, "TYPE_GOAWAY length < 8: %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lokhttp3/internal/http2/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 318
    :cond_0
    if-eqz p4, :cond_1

    const-string/jumbo v0, "TYPE_GOAWAY streamId != 0"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/http2/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 319
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/http2/g;->c:La/e;

    invoke-interface {v0}, La/e;->i()I

    move-result v1

    .line 320
    iget-object v0, p0, Lokhttp3/internal/http2/g;->c:La/e;

    invoke-interface {v0}, La/e;->i()I

    move-result v0

    .line 321
    add-int/lit8 v2, p2, -0x8

    .line 322
    invoke-static {v0}, Lokhttp3/internal/http2/a;->a(I)Lokhttp3/internal/http2/a;

    move-result-object v3

    .line 323
    if-nez v3, :cond_2

    .line 324
    const-string/jumbo v1, "TYPE_GOAWAY unexpected error code: %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lokhttp3/internal/http2/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 326
    :cond_2
    sget-object v0, La/f;->b:La/f;

    .line 327
    if-lez v2, :cond_3

    .line 328
    iget-object v0, p0, Lokhttp3/internal/http2/g;->c:La/e;

    int-to-long v4, v2

    invoke-interface {v0, v4, v5}, La/e;->c(J)La/f;

    move-result-object v0

    .line 330
    :cond_3
    invoke-interface {p1, v1, v3, v0}, Lokhttp3/internal/http2/g$b;->a(ILokhttp3/internal/http2/a;La/f;)V

    .line 331
    return-void
.end method

.method private i(Lokhttp3/internal/http2/g$b;IBI)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 335
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const-string/jumbo v0, "TYPE_WINDOW_UPDATE length !=4: %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lokhttp3/internal/http2/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 336
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/g;->c:La/e;

    invoke-interface {v0}, La/e;->i()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    .line 337
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "windowSizeIncrement was 0"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lokhttp3/internal/http2/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 338
    :cond_1
    invoke-interface {p1, p4, v0, v1}, Lokhttp3/internal/http2/g$b;->a(IJ)V

    .line 339
    return-void
.end method


# virtual methods
.method public a(Lokhttp3/internal/http2/g$b;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 78
    iget-boolean v0, p0, Lokhttp3/internal/http2/g;->e:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0, v6, p1}, Lokhttp3/internal/http2/g;->a(ZLokhttp3/internal/http2/g$b;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    const-string/jumbo v0, "Required SETTINGS preface not received"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/http2/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 85
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/g;->c:La/e;

    sget-object v1, Lokhttp3/internal/http2/d;->a:La/f;

    invoke-virtual {v1}, La/f;->g()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, La/e;->c(J)La/f;

    move-result-object v0

    .line 86
    sget-object v1, Lokhttp3/internal/http2/g;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lokhttp3/internal/http2/g;->a:Ljava/util/logging/Logger;

    const-string/jumbo v2, "<< CONNECTION %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, La/f;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lokhttp3/internal/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 87
    :cond_1
    sget-object v1, Lokhttp3/internal/http2/d;->a:La/f;

    invoke-virtual {v1, v0}, La/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 88
    const-string/jumbo v1, "Expected a connection header but was %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, La/f;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lokhttp3/internal/http2/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 91
    :cond_2
    return-void
.end method

.method public a(ZLokhttp3/internal/http2/g$b;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 95
    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/http2/g;->c:La/e;

    const-wide/16 v4, 0x9

    invoke-interface {v2, v4, v5}, La/e;->a(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    iget-object v2, p0, Lokhttp3/internal/http2/g;->c:La/e;

    invoke-static {v2}, Lokhttp3/internal/http2/g;->a(La/e;)I

    move-result v2

    .line 112
    if-ltz v2, :cond_0

    const/16 v3, 0x4000

    if-le v2, v3, :cond_1

    .line 113
    :cond_0
    const-string/jumbo v3, "FRAME_SIZE_ERROR: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Lokhttp3/internal/http2/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 96
    :catch_0
    move-exception v0

    move v0, v1

    .line 164
    :goto_0
    return v0

    .line 115
    :cond_1
    iget-object v3, p0, Lokhttp3/internal/http2/g;->c:La/e;

    invoke-interface {v3}, La/e;->g()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 116
    if-eqz p1, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    .line 117
    const-string/jumbo v2, "Expected a SETTINGS frame but was %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lokhttp3/internal/http2/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 119
    :cond_2
    iget-object v1, p0, Lokhttp3/internal/http2/g;->c:La/e;

    invoke-interface {v1}, La/e;->g()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 120
    iget-object v4, p0, Lokhttp3/internal/http2/g;->c:La/e;

    invoke-interface {v4}, La/e;->i()I

    move-result v4

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    .line 121
    sget-object v5, Lokhttp3/internal/http2/g;->a:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lokhttp3/internal/http2/g;->a:Ljava/util/logging/Logger;

    invoke-static {v0, v4, v2, v3, v1}, Lokhttp3/internal/http2/d;->a(ZIIBB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 123
    :cond_3
    packed-switch v3, :pswitch_data_0

    .line 162
    iget-object v1, p0, Lokhttp3/internal/http2/g;->c:La/e;

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, La/e;->h(J)V

    goto :goto_0

    .line 125
    :pswitch_0
    invoke-direct {p0, p2, v2, v1, v4}, Lokhttp3/internal/http2/g;->b(Lokhttp3/internal/http2/g$b;IBI)V

    goto :goto_0

    .line 129
    :pswitch_1
    invoke-direct {p0, p2, v2, v1, v4}, Lokhttp3/internal/http2/g;->a(Lokhttp3/internal/http2/g$b;IBI)V

    goto :goto_0

    .line 133
    :pswitch_2
    invoke-direct {p0, p2, v2, v1, v4}, Lokhttp3/internal/http2/g;->c(Lokhttp3/internal/http2/g$b;IBI)V

    goto :goto_0

    .line 137
    :pswitch_3
    invoke-direct {p0, p2, v2, v1, v4}, Lokhttp3/internal/http2/g;->d(Lokhttp3/internal/http2/g$b;IBI)V

    goto :goto_0

    .line 141
    :pswitch_4
    invoke-direct {p0, p2, v2, v1, v4}, Lokhttp3/internal/http2/g;->e(Lokhttp3/internal/http2/g$b;IBI)V

    goto :goto_0

    .line 145
    :pswitch_5
    invoke-direct {p0, p2, v2, v1, v4}, Lokhttp3/internal/http2/g;->f(Lokhttp3/internal/http2/g$b;IBI)V

    goto :goto_0

    .line 149
    :pswitch_6
    invoke-direct {p0, p2, v2, v1, v4}, Lokhttp3/internal/http2/g;->g(Lokhttp3/internal/http2/g$b;IBI)V

    goto :goto_0

    .line 153
    :pswitch_7
    invoke-direct {p0, p2, v2, v1, v4}, Lokhttp3/internal/http2/g;->h(Lokhttp3/internal/http2/g$b;IBI)V

    goto :goto_0

    .line 157
    :pswitch_8
    invoke-direct {p0, p2, v2, v1, v4}, Lokhttp3/internal/http2/g;->i(Lokhttp3/internal/http2/g$b;IBI)V

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public close()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lokhttp3/internal/http2/g;->c:La/e;

    invoke-interface {v0}, La/e;->close()V

    .line 343
    return-void
.end method
