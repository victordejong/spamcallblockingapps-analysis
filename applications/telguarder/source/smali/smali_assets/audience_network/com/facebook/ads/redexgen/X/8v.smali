.class public final Lcom/facebook/ads/redexgen/X/8v;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/lang/String;

.field public A01:Ljava/lang/String;

.field public A02:Ljava/lang/String;

.field public A03:Ljava/util/Date;

.field public A04:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8v;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8v;->A02()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 1

    .line 19166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19167
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8v;->A01:Ljava/lang/String;

    .line 19168
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/8v;->A00:Ljava/lang/String;

    .line 19169
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/8v;->A02:Ljava/lang/String;

    .line 19170
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/8v;->A03:Ljava/util/Date;

    .line 19171
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8v;->A04:Z

    .line 19172
    return-void

    .line 19173
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 7

    .line 19174
    const/16 v2, 0x2d

    const/4 v1, 0x3

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 19175
    const/16 v2, 0x2a

    const/4 v1, 0x3

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 19176
    const/16 v2, 0x30

    const/4 v1, 0x5

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 19177
    const/16 v2, 0x20

    const/16 v1, 0xa

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 19178
    invoke-direct {p0, v6, v5, v4, v0}, Lcom/facebook/ads/redexgen/X/8v;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    .line 19179
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/8v;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x69

    int-to-byte v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/8v;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x55

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/8v;->A06:[Ljava/lang/String;

    const-string v1, "T8BMvjTdx1Fbb9f"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    aput-byte v3, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/8v;",
            ">;"
        }
    .end annotation

    .line 19180
    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 19181
    return-object v1

    .line 19182
    :cond_0
    const/4 v4, 0x0

    .line 19183
    .local v1, "jsonArray":Lorg/json/JSONArray;
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v4, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19184
    :catch_0
    if-nez v4, :cond_1

    .line 19185
    return-object v1

    .line 19186
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 19187
    .local p0, "cookies":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/dto/AdCookieData;>;"
    const/4 v2, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 19188
    const/4 v1, 0x0

    .line 19189
    .local v0, "row":Lorg/json/JSONObject;
    :try_start_1
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 19190
    :catch_1
    if-eqz v1, :cond_2

    .line 19191
    new-instance v0, Lcom/facebook/ads/redexgen/X/8v;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/8v;-><init>(Lorg/json/JSONObject;)V

    .line 19192
    .local v3, "cookie":Lcom/facebook/ads/redexgen/X/8v;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19193
    .end local v0    # "row":Lorg/json/JSONObject;
    .end local v3    # "cookie":Lcom/facebook/ads/redexgen/X/8v;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19194
    .end local v4    # "i":I
    :cond_3
    return-object v3
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x35

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8v;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x10t
        0x10t
        0x10t
        0x79t
        0x75t
        0x31t
        0x31t
        0x78t
        0x18t
        0x18t
        0x18t
        0x78t
        0x2ct
        0x2ct
        0x2ct
        0x2ct
        0x75t
        0x1dt
        0x1dt
        0x6ft
        0x38t
        0x38t
        0x6ft
        0x26t
        0x26t
        0x75t
        0x2ft
        0x2ft
        0x2ft
        0x3t
        0x9t
        0x10t
        0x2et
        0x33t
        0x3bt
        0x22t
        0x39t
        0x2at
        0x3ft
        0x22t
        0x24t
        0x25t
        0x6dt
        0x63t
        0x7ft
        0x70t
        0x77t
        0x69t
        0x65t
        0x72t
        0x7ft
        0x66t
        0x76t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ucpFVfLguHSodhTyJjwGdefGvEJ8OSid"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "grvvVFq9fjphh6eIR0LM7WxIVeVNC9gO"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "uJMfNNRMAe5t9jBkN3c2BpOySAkgvITx"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "XSRZp8j8YPkvLoorgDX7DyVBZTrFnOmK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "TSvaw5tCmhZ0H2jh00Wj0ehf73zcVqgd"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Fb3va6Te6JHQjkzmUX"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "IGOTdPX8irXpyUhtwYMIK4CDyZrb3tc8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "k3utkFtVTOwQAGWQaw1Auj"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/8v;->A06:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A04()Ljava/lang/String;
    .locals 5

    .line 19195
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/8v;->A03:Ljava/util/Date;

    .line 19196
    .local p0, "expirationDate":Ljava/util/Date;
    if-nez v4, :cond_0

    .line 19197
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 19198
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/32 v0, 0x36ee80

    add-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 19199
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0x1d

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 19200
    .local v4, "dateFormat":Ljava/text/DateFormat;
    const/16 v2, 0x1d

    const/4 v1, 0x3

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 19201
    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A05()Z
    .locals 1

    .line 19202
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8v;->A00:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8v;->A02:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8v;->A01:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
