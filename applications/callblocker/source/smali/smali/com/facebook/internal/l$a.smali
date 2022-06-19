.class public Lcom/facebook/internal/l$a;
.super Ljava/lang/Object;
.source "FetchedAppSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/net/Uri;

.field private d:[I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[I)V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Lcom/facebook/internal/l$a;->a:Ljava/lang/String;

    .line 247
    iput-object p2, p0, Lcom/facebook/internal/l$a;->b:Ljava/lang/String;

    .line 248
    iput-object p3, p0, Lcom/facebook/internal/l$a;->c:Landroid/net/Uri;

    .line 249
    iput-object p4, p0, Lcom/facebook/internal/l$a;->d:[I

    .line 250
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/facebook/internal/l$a;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 171
    const-string/jumbo v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-static {v1}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-object v0

    .line 176
    :cond_1
    const-string/jumbo v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 178
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 184
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 185
    const/4 v3, 0x1

    aget-object v3, v1, v3

    .line 186
    invoke-static {v2}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v3}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    const-string/jumbo v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-static {v1}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 193
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 196
    :cond_2
    const-string/jumbo v1, "versions"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 198
    invoke-static {v1}, Lcom/facebook/internal/l$a;->a(Lorg/json/JSONArray;)[I

    move-result-object v4

    .line 200
    new-instance v1, Lcom/facebook/internal/l$a;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/facebook/internal/l$a;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[I)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONArray;)[I
    .locals 7

    .prologue
    const/4 v1, -0x1

    .line 208
    const/4 v0, 0x0

    .line 209
    if-eqz p0, :cond_2

    .line 210
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 211
    new-array v2, v4, [I

    .line 212
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_1

    .line 214
    invoke-virtual {p0, v3, v1}, Lorg/json/JSONArray;->optInt(II)I

    move-result v0

    .line 215
    if-ne v0, v1, :cond_0

    .line 218
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 219
    invoke-static {v5}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 221
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 229
    :cond_0
    :goto_1
    aput v0, v2, v3

    .line 212
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    const-string/jumbo v5, "FacebookSDK"

    invoke-static {v5, v0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    move v0, v1

    .line 224
    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 233
    :cond_2
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/facebook/internal/l$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/facebook/internal/l$a;->b:Ljava/lang/String;

    return-object v0
.end method
