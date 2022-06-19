.class public final Lcom/facebook/ads/redexgen/X/Xs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/8F;


# static fields
.field public static A05:Lcom/facebook/ads/redexgen/X/Xs;

.field public static A06:[B

.field public static A07:[Ljava/lang/String;

.field public static final A08:[Lcom/facebook/ads/redexgen/X/0T;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/0U;

.field public A01:Lcom/facebook/ads/redexgen/X/8E;

.field public A02:Lcom/facebook/ads/redexgen/X/8Q;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/93;

.field public A04:Lcom/facebook/ads/redexgen/X/Qv;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 58164
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Xs;->A07()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Xs;->A06()V

    const/16 v0, 0x9

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/0T;

    sget-object v1, Lcom/facebook/ads/redexgen/X/0T;->A10:Lcom/facebook/ads/redexgen/X/0T;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/0T;->A0e:Lcom/facebook/ads/redexgen/X/0T;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/0T;->A11:Lcom/facebook/ads/redexgen/X/0T;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/0T;->A19:Lcom/facebook/ads/redexgen/X/0T;

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/0T;->A0v:Lcom/facebook/ads/redexgen/X/0T;

    const/4 v0, 0x4

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/0T;->A0x:Lcom/facebook/ads/redexgen/X/0T;

    const/4 v0, 0x5

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/0T;->A1u:Lcom/facebook/ads/redexgen/X/0T;

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/0T;->A1v:Lcom/facebook/ads/redexgen/X/0T;

    const/4 v0, 0x7

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/0T;->A1w:Lcom/facebook/ads/redexgen/X/0T;

    const/16 v0, 0x8

    aput-object v1, v2, v0

    sput-object v2, Lcom/facebook/ads/redexgen/X/Xs;->A08:[Lcom/facebook/ads/redexgen/X/0T;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/XK;Lcom/facebook/ads/redexgen/X/Qv;)Lcom/facebook/ads/redexgen/X/5T;
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/Qv;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 58166
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A16(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 58167
    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 58168
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5U;->A00()Lcom/facebook/ads/redexgen/X/5U;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/5U;->A01(Lcom/facebook/ads/redexgen/X/Qv;)Lcom/facebook/ads/redexgen/X/5T;

    move-result-object p0

    return-object p0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/XK;)Lcom/facebook/ads/redexgen/X/8Q;
    .locals 1

    .line 58169
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8R;->A00()Lcom/facebook/ads/redexgen/X/8R;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/8R;->A01(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/8Q;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized A02()Lcom/facebook/ads/redexgen/X/Xs;
    .locals 4

    const-class v3, Lcom/facebook/ads/redexgen/X/Xs;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xs;->A07:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Xs;->A07:[Ljava/lang/String;

    const-string v1, "yNOYv8BJbeG1jc93xecDuC4SV0M6ZsAO"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "rgM7W1LhEjhuRpvAxAxTebmxK2ArHzjw"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    monitor-enter v3

    .line 58170
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Xs;->A05:Lcom/facebook/ads/redexgen/X/Xs;

    if-nez v0, :cond_1

    .line 58171
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xs;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Xs;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Xs;->A05:Lcom/facebook/ads/redexgen/X/Xs;

    .line 58172
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/Xs;->A05:Lcom/facebook/ads/redexgen/X/Xs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v0

    .line 58173
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/XK;)Lcom/facebook/ads/redexgen/X/QK;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 58174
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A12(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58175
    const/4 v0, 0x0

    return-object v0

    .line 58176
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Qc;->A01(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/QK;

    move-result-object v0

    return-object v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/XK;Lcom/facebook/ads/redexgen/X/8Q;Lcom/facebook/ads/redexgen/X/QK;)Lcom/facebook/ads/redexgen/X/Qv;
    .locals 17
    .param p2    # Lcom/facebook/ads/redexgen/X/QK;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 58177
    move-object/from16 v4, p0

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/J4;->A1f(Landroid/content/Context;)Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    move-object/from16 v16, p2

    if-nez v16, :cond_1

    .line 58178
    :cond_0
    return-object v8

    .line 58179
    :cond_1
    new-instance v3, Lcom/facebook/ads/redexgen/X/KB;

    const/4 v6, 0x0

    sget-object v7, Lcom/facebook/ads/redexgen/X/Jr;->A07:Lcom/facebook/ads/redexgen/X/Jr;

    .line 58180
    invoke-static {}, Lcom/facebook/ads/AdSettings;->getTestAdType()Lcom/facebook/ads/AdSettings$TestAdType;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/AdSettings$TestAdType;->DEFAULT:Lcom/facebook/ads/AdSettings$TestAdType;

    if-eq v1, v0, :cond_2

    .line 58181
    invoke-static {}, Lcom/facebook/ads/AdSettings;->getTestAdType()Lcom/facebook/ads/AdSettings$TestAdType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AdSettings$TestAdType;->getAdTypeString()Ljava/lang/String;

    move-result-object v8

    .line 58182
    :cond_2
    const/4 v9, 0x0

    .line 58183
    invoke-static {v4}, Lcom/facebook/ads/AdSettings;->isTestMode(Landroid/content/Context;)Z

    move-result v10

    .line 58184
    invoke-static {}, Lcom/facebook/ads/AdSettings;->isMixedAudience()Z

    move-result v11

    new-instance v12, Lcom/facebook/ads/redexgen/X/Jw;

    invoke-direct {v12}, Lcom/facebook/ads/redexgen/X/Jw;-><init>()V

    .line 58185
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/J4;->A0H(Landroid/content/Context;)I

    move-result v0

    .line 58186
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LQ;->A01(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xs;->A05(III)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v3 .. v15}, Lcom/facebook/ads/redexgen/X/KB;-><init>(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/LK;Lcom/facebook/ads/redexgen/X/Jr;Ljava/lang/String;IZZLcom/facebook/ads/redexgen/X/Jw;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V

    .line 58187
    .local v4, "adEnvironmentData":Lcom/facebook/ads/redexgen/X/KB;
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Qw;->A00()Lcom/facebook/ads/redexgen/X/Qw;

    move-result-object v13

    .line 58188
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/KI;->A05(Lcom/facebook/ads/redexgen/X/8D;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Xr;

    invoke-direct {v1, v3, v4}, Lcom/facebook/ads/redexgen/X/Xr;-><init>(Lcom/facebook/ads/redexgen/X/KB;Lcom/facebook/ads/redexgen/X/XK;)V

    .line 58189
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Qt;->A00()Lcom/facebook/ads/redexgen/X/Qs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qs;->A00()Lcom/facebook/ads/redexgen/X/Qt;

    move-result-object p2

    .line 58190
    move-object/from16 v15, p1

    move-object v14, v4

    move-object/from16 p1, v1

    invoke-virtual/range {v13 .. v19}, Lcom/facebook/ads/redexgen/X/Qw;->A01(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/8Q;Lcom/facebook/ads/redexgen/X/QK;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Qu;Lcom/facebook/ads/redexgen/X/Qt;)Lcom/facebook/ads/redexgen/X/Qv;

    move-result-object v0

    .line 58191
    return-object v0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xs;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xs;->A07:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Xs;->A07:[Ljava/lang/String;

    const-string v1, "Hv2WK1fJh7GnXaP"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "jwUFRNkRPBL5IaL"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_2

    aget-byte p1, v3, p0

    sub-int/2addr p1, p2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xs;->A07:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Xs;->A07:[Ljava/lang/String;

    const-string v1, "3jbuj6iR6sIerVLqEJ9xAsC0KuP7QrbG"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "qsuffxm3RCjhy50iWQEl04Txy4tWGAPw"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    add-int/lit8 v0, p1, -0x62

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x3b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Xs;->A06:[B

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xs;->A07:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xs;->A07:[Ljava/lang/String;

    const-string v1, "XQj6tBQR93KUWcmqG7acynHpkyXbPHo4"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "0fPU7ngiro1m2vFzwgFa3cBnolZ3o5pA"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        -0x3ft
        -0x3bt
        -0xet
        -0x40t
        -0x3ft
        -0x3ft
        -0x38t
        -0x10t
        0x2t
        0x10t
        0x10t
        0x6t
        0xct
        0xbt
        -0x43t
        0x1t
        -0x2t
        0x11t
        -0x2t
        -0x43t
        0x6t
        0xbt
        0x6t
        0x11t
        0x6t
        -0x2t
        0x9t
        0x6t
        0x17t
        0x2t
        0x1t
        0x21t
        0x14t
        0x1ft
        0x1et
        0x21t
        0x23t
        0x2t
        0x14t
        0x22t
        0x22t
        0x18t
        0x1et
        0x1dt
        -0xdt
        0x10t
        0x23t
        0x10t
        -0x8t
        0x1dt
        0x18t
        0x23t
        0x18t
        0x10t
        0x1bt
        0x18t
        0x29t
        0x14t
        0x13t
    .end array-data
.end method

.method public static A07()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "kZNWMB05A80rolZkZr5gINRkemJedumA"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "PGnlsDLswmZGHAGkHnqyou4j"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CQczeQcoxNMNqPeDO5UPH4delPie3CF6"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Ozs7AQnIuhnl4TF488yhCLnc3lqg3Tqv"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "QUMQF15y8F49TOv2Mbtf3pi6YRJU7tsl"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "iRM3Hx3PCEqf"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "8yEJzjy1AvS4vnL"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "zEXAgd0MZ6iopjt"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Xs;->A07:[Ljava/lang/String;

    return-void
.end method

.method public static A08()V
    .locals 7

    const/16 v2, 0x1f

    const/16 v1, 0x1c

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xs;->A05(III)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    const/16 v4, 0x18

    const/16 v3, 0x3b

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xs;->A07:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xs;->A07:[Ljava/lang/String;

    const-string v1, "4ii3kc4oT9MJsiDOLfNQb5ib2"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v6, v4, v3}, Lcom/facebook/ads/redexgen/X/Xs;->A05(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xs;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/Jz;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58192
    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/XK;Lcom/facebook/ads/redexgen/X/5T;)V
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/5T;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 58193
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A16(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 58194
    :cond_0
    return-void

    .line 58195
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5R;->A00()Lcom/facebook/ads/redexgen/X/5R;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/facebook/ads/redexgen/X/5R;->A01(Lcom/facebook/ads/redexgen/X/5T;Lcom/facebook/ads/redexgen/X/XK;)Lcom/facebook/ads/redexgen/X/5Q;

    .line 58196
    return-void
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/XK;Lcom/facebook/ads/redexgen/X/Qv;)V
    .locals 3
    .param p1    # Lcom/facebook/ads/redexgen/X/Qv;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 58197
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A0h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 58198
    :cond_0
    return-void

    .line 58199
    :cond_1
    new-instance v2, Lcom/facebook/ads/redexgen/X/5p;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/5p;-><init>()V

    .line 58200
    invoke-static {}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;->getBidderTokenProviderApi()Lcom/facebook/ads/redexgen/X/5q;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/5o;

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/facebook/ads/redexgen/X/5o;-><init>(Lcom/facebook/ads/redexgen/X/XK;Lcom/facebook/ads/redexgen/X/Qv;Lcom/facebook/ads/redexgen/X/5p;Lcom/facebook/ads/redexgen/X/5q;)V

    .line 58201
    return-void
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/XK;Lcom/facebook/ads/redexgen/X/Qv;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/Qv;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 58202
    if-nez p1, :cond_0

    .line 58203
    return-void

    .line 58204
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/J7;->A00(Lcom/facebook/ads/redexgen/X/XK;Lcom/facebook/ads/redexgen/X/Qv;)V

    .line 58205
    return-void
.end method


# virtual methods
.method public final declared-synchronized A0C(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/8Q;
    .locals 1

    monitor-enter p0

    .line 58206
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xs;->A02:Lcom/facebook/ads/redexgen/X/8Q;

    if-nez v0, :cond_0

    .line 58207
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xs;->A01(Lcom/facebook/ads/redexgen/X/XK;)Lcom/facebook/ads/redexgen/X/8Q;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xs;->A02:Lcom/facebook/ads/redexgen/X/8Q;

    .line 58208
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/8D;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xs;->A02:Lcom/facebook/ads/redexgen/X/8Q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 58209
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0D()Lcom/facebook/ads/redexgen/X/Qv;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 58210
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xs;->A04:Lcom/facebook/ads/redexgen/X/Qv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0E(Lcom/facebook/ads/redexgen/X/XK;)V
    .locals 2

    monitor-enter p0

    .line 58211
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xs;->A04:Lcom/facebook/ads/redexgen/X/Qv;

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58212
    monitor-exit p0

    return-void

    .line 58213
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Xs;->A01(Lcom/facebook/ads/redexgen/X/XK;)Lcom/facebook/ads/redexgen/X/8Q;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xs;->A02:Lcom/facebook/ads/redexgen/X/8Q;

    .line 58214
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Xs;->A03(Lcom/facebook/ads/redexgen/X/XK;)Lcom/facebook/ads/redexgen/X/QK;

    move-result-object v1

    .line 58215
    .local p0, "networkModule":Lcom/facebook/ads/redexgen/X/QK;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xs;->A02:Lcom/facebook/ads/redexgen/X/8Q;

    invoke-static {p1, v0, v1}, Lcom/facebook/ads/redexgen/X/Xs;->A04(Lcom/facebook/ads/redexgen/X/XK;Lcom/facebook/ads/redexgen/X/8Q;Lcom/facebook/ads/redexgen/X/QK;)Lcom/facebook/ads/redexgen/X/Qv;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xs;->A04:Lcom/facebook/ads/redexgen/X/Qv;

    .line 58216
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xs;->A04:Lcom/facebook/ads/redexgen/X/Qv;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Xs;->A00(Lcom/facebook/ads/redexgen/X/XK;Lcom/facebook/ads/redexgen/X/Qv;)Lcom/facebook/ads/redexgen/X/5T;

    move-result-object v0

    .line 58217
    .local p1, "assetPreloadDbModule":Lcom/facebook/ads/redexgen/X/5T;
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Xs;->A09(Lcom/facebook/ads/redexgen/X/XK;Lcom/facebook/ads/redexgen/X/5T;)V

    .line 58218
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xs;->A04:Lcom/facebook/ads/redexgen/X/Qv;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Xs;->A0A(Lcom/facebook/ads/redexgen/X/XK;Lcom/facebook/ads/redexgen/X/Qv;)V

    .line 58219
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xs;->A04:Lcom/facebook/ads/redexgen/X/Qv;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Xs;->A0B(Lcom/facebook/ads/redexgen/X/XK;Lcom/facebook/ads/redexgen/X/Qv;)V

    .line 58220
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xs;->A04:Lcom/facebook/ads/redexgen/X/Qv;

    if-eqz v0, :cond_1

    .line 58221
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xs;->A04:Lcom/facebook/ads/redexgen/X/Qv;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qv;->A5O()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58222
    .end local v0
    :cond_1
    monitor-exit p0

    return-void

    .line 58223
    .end local p0    # "networkModule":Lcom/facebook/ads/redexgen/X/QK;
    .end local p1    # "assetPreloadDbModule":Lcom/facebook/ads/redexgen/X/5T;
    .end local v1
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A5V(Lcom/facebook/ads/redexgen/X/XK;)Lcom/facebook/ads/redexgen/X/JC;
    .locals 1

    .line 58224
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/br;->A01(Lcom/facebook/ads/redexgen/X/XK;)Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized A5j(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/8E;
    .locals 1

    monitor-enter p0

    .line 58225
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xs;->A01:Lcom/facebook/ads/redexgen/X/8E;

    if-nez v0, :cond_0

    .line 58226
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xp;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Xp;-><init>(Lcom/facebook/ads/redexgen/X/Xs;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xs;->A01:Lcom/facebook/ads/redexgen/X/8E;

    .line 58227
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/8D;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xs;->A01:Lcom/facebook/ads/redexgen/X/8E;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 58228
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A6D(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/8d;
    .locals 1

    monitor-enter p0

    .line 58229
    :try_start_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xa;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Xa;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p1    # null:Lcom/facebook/ads/redexgen/X/8D;
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A6M(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/8G;
    .locals 4

    monitor-enter p0

    .line 58230
    :try_start_0
    new-instance v3, Lcom/facebook/ads/redexgen/X/Xn;

    invoke-direct {v3, p0, p1}, Lcom/facebook/ads/redexgen/X/Xn;-><init>(Lcom/facebook/ads/redexgen/X/Xs;Lcom/facebook/ads/redexgen/X/8D;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xs;->A07:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Xs;->A07:[Ljava/lang/String;

    const-string v1, "2Vt1OUprKjNjnyD3"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3

    .end local p1    # null:Lcom/facebook/ads/redexgen/X/8D;
    .end local v3
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A6Y(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/0U;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 58231
    :try_start_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/J4;->A0q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58232
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 58233
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xs;->A00:Lcom/facebook/ads/redexgen/X/0U;

    if-nez v0, :cond_1

    .line 58234
    invoke-static {}, Lcom/facebook/ads/redexgen/X/0V;->A00()Lcom/facebook/ads/redexgen/X/0V;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Xq;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Xq;-><init>(Lcom/facebook/ads/redexgen/X/Xs;Lcom/facebook/ads/redexgen/X/8D;)V

    .line 58235
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/0V;->A01(Lcom/facebook/ads/redexgen/X/0S;)Lcom/facebook/ads/redexgen/X/0U;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xs;->A00:Lcom/facebook/ads/redexgen/X/0U;

    .line 58236
    .end local v0
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Xs;->A00:Lcom/facebook/ads/redexgen/X/0U;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xs;->A07:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xs;->A07:[Ljava/lang/String;

    const-string v1, "VIV2EvMRfEPiWlvmDKty9fFKFHJul9Yn"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "0wfCQdIt8NwFYvPKQ0QtM4LE4vJ9WdpV"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 58237
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A76(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/8H;
    .locals 1

    monitor-enter p0

    .line 58238
    :try_start_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xo;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Xo;-><init>(Lcom/facebook/ads/redexgen/X/Xs;Lcom/facebook/ads/redexgen/X/8D;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p1    # null:Lcom/facebook/ads/redexgen/X/8D;
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A7C()Lcom/facebook/ads/redexgen/X/93;
    .locals 1

    monitor-enter p0

    .line 58239
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xs;->A03:Lcom/facebook/ads/redexgen/X/93;

    if-nez v0, :cond_0

    .line 58240
    new-instance v0, Lcom/facebook/ads/redexgen/X/93;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/93;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xs;->A03:Lcom/facebook/ads/redexgen/X/93;

    .line 58241
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Xs;->A08()V

    .line 58242
    .end local v0
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xs;->A03:Lcom/facebook/ads/redexgen/X/93;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 58243
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
