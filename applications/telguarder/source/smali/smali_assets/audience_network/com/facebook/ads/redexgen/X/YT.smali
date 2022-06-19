.class public final Lcom/facebook/ads/redexgen/X/YT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/YS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceFeature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/6l<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/YT;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 65835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65836
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YT;->A00:Ljava/lang/String;

    .line 65837
    invoke-static {}, Lcom/facebook/ads/redexgen/X/YS;->A01()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YT;->A01:Z

    .line 65838
    return-void
.end method

.method private final A00(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 65839
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YT;->A00:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YT;->A01:Z

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 65840
    return-object p2
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "39xREpZgsL8GAHjlR8BD1GrJtemSpXJN"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "wdM"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "oJfPpd5"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DEB9zLKbYJ3zBmznzAgx1vj5OU8Bt66c"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "AeAuoOY"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "LQkf9UdMVjhgH1wQ0uWHQoi1aWxQt6lF"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "W6r8C8NJch5QPtyty4ReG3JhfrTFBgTg"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "FaD"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/YT;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A82(Ljava/lang/Object;)Z
    .locals 5

    .line 65841
    check-cast p1, Lcom/facebook/ads/redexgen/X/YT;

    .line 65842
    .local p0, "newDeviceFeature":Lcom/facebook/ads/redexgen/X/YT;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YT;->A00:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/YT;->A00:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/YT;->A01:Z

    iget-boolean v3, p1, Lcom/facebook/ads/redexgen/X/YT;->A01:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/YT;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/YT;->A02:[Ljava/lang/String;

    const-string v1, "lx3bCo3kf2H5jFNZYRceIifguy7tABjl"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final AE0()I
    .locals 1

    .line 65843
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YT;->A00:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final bridge synthetic AEM(Ljava/lang/Object;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 65844
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/YT;->A00(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
