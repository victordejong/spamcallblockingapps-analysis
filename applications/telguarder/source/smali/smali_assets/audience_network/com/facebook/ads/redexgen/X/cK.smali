.class public abstract Lcom/facebook/ads/redexgen/X/cK;
.super Lcom/facebook/ads/redexgen/X/0f;
.source ""


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/0m;

.field public final A01:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/cK;->A0C()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/cK;->A0B()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/0m;Z)V
    .locals 0
    .param p4    # Lcom/facebook/ads/redexgen/X/0m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 71230
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/0f;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Ljava/lang/String;)V

    .line 71231
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/cK;->A00:Lcom/facebook/ads/redexgen/X/0m;

    .line 71232
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/cK;->A01:Z

    .line 71233
    return-void
.end method

.method public static A0A(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/cK;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x30

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0B()V
    .locals 4

    const/16 v0, 0x26

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/cK;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/cK;->A03:[Ljava/lang/String;

    const-string v1, "E0qxoPtldo8saq"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/cK;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x3ct
        0x13t
        0x16t
        0x1ct
        0x14t
        0x5ft
        0x13t
        0x10t
        0x18t
        0x18t
        0x1at
        0x1bt
        0x1bt
        0x18t
        0x1at
        0x12t
        0x26t
        0xdt
        0x10t
        0x14t
        0x1ct
        0x1ft
        0x16t
        0x12t
        0x5t
        0x16t
        0x2ct
        0x7t
        0x1at
        0x1et
        0x16t
        0x20t
        0x3at
        0x3bt
        0x2ct
        0x20t
        0x22t
        0x2at
    .end array-data
.end method

.method public static A0C()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "yKsrGZvRhlHO"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "9EputwQvm"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "xy4ysuU"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "7AjoeEFyRFUmAcGguWz5skIE39kXLiT8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "yw7hkrjnug4F5v8JlqxYlpspwNYrqeOP"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "YdvcKbM"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Mv5W7ZjuxpjDlIvwBIaHg3eS9AlP"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "wZHnfIG7rJSoOb"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/cK;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A0D()V
    .locals 2

    .line 71234
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cK;->A00:Lcom/facebook/ads/redexgen/X/0m;

    if-eqz v1, :cond_0

    .line 71235
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0f;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/0m;->A08(Ljava/lang/String;)V

    .line 71236
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cK;->A0E()V

    .line 71237
    return-void
.end method

.method public abstract A0E()V
.end method

.method public final A0F(Ljava/util/Map;Lcom/facebook/ads/redexgen/X/0e;)V
    .locals 7
    .param p2    # Lcom/facebook/ads/redexgen/X/0e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/0e;",
            ")V"
        }
    .end annotation

    .line 71238
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0f;->A02:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71239
    instance-of v0, p0, Lcom/facebook/ads/redexgen/X/Fc;

    if-eqz v0, :cond_2

    .line 71240
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0f;->A01:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0f;->A02:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/JC;->A8r(Ljava/lang/String;Ljava/util/Map;)V

    .line 71241
    :goto_0
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/0e;->A03(Lcom/facebook/ads/redexgen/X/0e;)Z

    move-result v1

    .line 71242
    .local p0, "isError":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cK;->A00:Lcom/facebook/ads/redexgen/X/0m;

    if-eqz v0, :cond_1

    .line 71243
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/0m;->A07(Lcom/facebook/ads/redexgen/X/0e;)V

    .line 71244
    if-eqz v1, :cond_0

    .line 71245
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cK;->A00:Lcom/facebook/ads/redexgen/X/0m;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0m;->A06()V

    .line 71246
    .end local p0    # "isError":Z
    .end local p1    # null:Ljava/util/Map;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/0f;->A00:Lcom/facebook/ads/redexgen/X/Wm;

    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cK;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/L3;->A02(Landroid/content/Context;Ljava/lang/String;)V

    .line 71247
    return-void

    .line 71248
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 71249
    .local p1, "userReturnDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v5, -0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 71250
    const/16 v2, 0x15

    const/16 v1, 0xa

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cK;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71251
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 71252
    const/16 v2, 0xc

    const/16 v1, 0x9

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cK;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71253
    sget-object v0, Lcom/facebook/ads/redexgen/X/0e;->A04:Lcom/facebook/ads/redexgen/X/0e;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0e;->name()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1f

    const/4 v1, 0x7

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cK;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71254
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0f;->A01:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0f;->A02:Ljava/lang/String;

    invoke-interface {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/JC;->A8u(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 71255
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0f;->A01:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0f;->A02:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/JC;->A8e(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
