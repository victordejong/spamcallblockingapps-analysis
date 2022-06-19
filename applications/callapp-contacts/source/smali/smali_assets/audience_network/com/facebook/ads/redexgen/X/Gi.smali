.class public final Lcom/facebook/ads/redexgen/X/Gi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/QJ;


# instance fields
.field public A00:I

.field public A01:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public A03:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;[B)V
    .locals 1

    .line 35134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35135
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Gi;->A00:I

    .line 35136
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Gi;->A01:Ljava/lang/String;

    goto :goto_0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35137
    :catch_0
    move-exception v0

    .line 35138
    .local p0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 35139
    .end local p0    # "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Gi;->A02:Ljava/util/Map;

    .line 35140
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Gi;->A03:[B

    .line 35141
    return-void
.end method


# virtual methods
.method public final A5h()[B
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 35142
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gi;->A03:[B

    return-object v0
.end method

.method public final A5i()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 35143
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gi;->A03:[B

    if-eqz v1, :cond_0

    .line 35144
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    .line 35145
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A6Z()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 35146
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gi;->A02:Ljava/util/Map;

    return-object v0
.end method

.method public final A7J()I
    .locals 1

    .line 35147
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gi;->A00:I

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 35148
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gi;->A01:Ljava/lang/String;

    return-object v0
.end method
