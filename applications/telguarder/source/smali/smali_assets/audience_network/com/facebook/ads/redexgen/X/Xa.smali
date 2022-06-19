.class public final Lcom/facebook/ads/redexgen/X/Xa;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/XZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemSetting"
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

.field public final A01:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Xa;->A05()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/6a;)V
    .locals 1

    .line 65180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65181
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Xa;->A00:Ljava/lang/String;

    .line 65182
    invoke-static {p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Xa;->A03(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/6a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xa;->A01:Ljava/lang/String;

    .line 65183
    return-void
.end method

.method public static A00(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 65184
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-ge v1, v0, :cond_0

    .line 65185
    const/4 v0, 0x0

    return-object v0

    .line 65186
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A01(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 65187
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-ge v1, v0, :cond_0

    .line 65188
    const/4 v0, 0x0

    return-object v0

    .line 65189
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A02(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 65190
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-ge v1, v0, :cond_0

    .line 65191
    const/4 v0, 0x0

    return-object v0

    .line 65192
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A03(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/6a;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 65193
    sget-object v1, Lcom/facebook/ads/redexgen/X/6Z;->A00:[I

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/6a;->ordinal()I

    move-result v0

    aget v1, v1, v0

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    .line 65194
    const-string v0, ""

    return-object v0

    .line 65195
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Xa;->A02(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 65196
    :cond_1
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Xa;->A01(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 65197
    :cond_2
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Xa;->A00(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final A04(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 65198
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xa;->A00:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xa;->A01:Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65199
    return-object p2
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "7M3SACidi"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "joLu297ZYSjYlhYBg0mst7WGH2CWg3XA"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Evwt7FMVMNX4dthpbIJI7cTlTMftGgBb"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "SyTMnPdUP6FF3QK15313vFFE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "jfBaGPW0yq2b9oTUdFbSkYF6qUxjo3wM"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "d0EO6KdB6iLNN9gLLK9DhdFVw2DibYNo"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "2ZAWXsMVWnxbTP1dFPsfcLFmWpwrGbqb"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "GAiU9YwU93OeJzD0bvCY8ibI7nw7Q5fo"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Xa;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A82(Ljava/lang/Object;)Z
    .locals 6

    .line 65200
    check-cast p1, Lcom/facebook/ads/redexgen/X/Xa;

    .line 65201
    .local p0, "newSystemSettingValue":Lcom/facebook/ads/redexgen/X/Xa;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xa;->A00:Ljava/lang/String;

    const/4 v5, 0x1

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Xa;->A00:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v4, 0x1

    .line 65202
    .local p1, "isSettingNameEqual":Z
    :goto_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Xa;->A01:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xa;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 65203
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Xa;->A02:[Ljava/lang/String;

    const-string v1, "VIboP01VWfPxNo8YuWPXPdN2YawJqXta"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "spnYoKkVpx8bUNYynU4vbuu8iqbouXuj"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v3, :cond_5

    .line 65204
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Xa;->A01:Ljava/lang/String;

    if-nez v0, :cond_5

    const/4 v2, 0x1

    .line 65205
    .local v0, "isSettingValueEqual":Z
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xa;->A00:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Xa;->A00:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 65206
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 65207
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xa;->A01:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Xa;->A01:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 65208
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 65209
    :cond_3
    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    :goto_2
    return v5

    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 65210
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final AE0()I
    .locals 4

    .line 65211
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xa;->A00:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xa;->A01:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 65212
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xa;->A01:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v1, v0

    return v1

    .line 65213
    :cond_0
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xa;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xa;->A02:[Ljava/lang/String;

    const-string v1, "i6RhkbUYYCuIMmPNKiuFZBFJEtbMFqXg"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "EMTjuqTOcyN1F5m2SS2KFECVw4PQzSCv"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final bridge synthetic AEM(Ljava/lang/Object;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 65214
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Xa;->A04(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
