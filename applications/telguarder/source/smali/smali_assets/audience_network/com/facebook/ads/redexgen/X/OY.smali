.class public final Lcom/facebook/ads/redexgen/X/OY;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/OW;,
        Lcom/facebook/ads/redexgen/X/OX;
    }
.end annotation


# static fields
.field public static A08:[B

.field public static A09:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/ON;",
            ">;"
        }
    .end annotation
.end field

.field public A01:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/OX;",
            ">;"
        }
    .end annotation
.end field

.field public A02:Z

.field public final A03:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A04:Lcom/facebook/ads/redexgen/X/OC;

.field public final A05:Ljava/lang/String;

.field public final A06:Ljava/lang/String;

.field public final A07:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/JC;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/OY;->A09()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/OY;->A08()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/ON;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/OC;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 46817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46818
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OY;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    .line 46819
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OY;->A00:Ljava/lang/ref/WeakReference;

    .line 46820
    const/4 v1, 0x0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OY;->A01:Ljava/lang/ref/WeakReference;

    .line 46821
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OY;->A07:Ljava/lang/ref/WeakReference;

    .line 46822
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/OY;->A04:Lcom/facebook/ads/redexgen/X/OC;

    .line 46823
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/OY;->A05:Ljava/lang/String;

    .line 46824
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/OY;->A06:Ljava/lang/String;

    .line 46825
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OY;->A02:Z

    .line 46826
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/OY;)Lcom/facebook/ads/redexgen/X/OC;
    .locals 0

    .line 46827
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/OY;->A04:Lcom/facebook/ads/redexgen/X/OC;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/OY;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xc

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/OY;)Ljava/lang/String;
    .locals 0

    .line 46828
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/OY;->A05:Ljava/lang/String;

    return-object p0
.end method

.method public static A03(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46829
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 46830
    .local p0, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 46831
    .local v3, "extraDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46832
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 46833
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46834
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 46835
    :cond_0
    return-object v2
.end method

.method private A04()V
    .locals 3

    .line 46836
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OY;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/OX;

    .line 46837
    .local p0, "uxListener":Lcom/facebook/ads/redexgen/X/OX;
    if-nez v0, :cond_0

    .line 46838
    return-void

    .line 46839
    :cond_0
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OX;->close()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/OY;->A09:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_1

    .line 46840
    sget-object v2, Lcom/facebook/ads/redexgen/X/OY;->A09:[Ljava/lang/String;

    const-string v1, "rLuDNCDiUJCt8jrcDw8nHa"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "w5dFeIXZRXYPRcNf7kYaeIakMq27def"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A05()V
    .locals 1

    .line 46841
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OY;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/OX;

    .line 46842
    .local p0, "uxListener":Lcom/facebook/ads/redexgen/X/OX;
    if-nez v0, :cond_0

    .line 46843
    return-void

    .line 46844
    :cond_0
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OX;->A7c()V

    .line 46845
    return-void
.end method

.method private A06()V
    .locals 1

    .line 46846
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OY;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/OX;

    .line 46847
    .local p0, "uxListener":Lcom/facebook/ads/redexgen/X/OX;
    if-nez v0, :cond_0

    .line 46848
    return-void

    .line 46849
    :cond_0
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OX;->A8G()V

    .line 46850
    return-void
.end method

.method private A07()V
    .locals 1

    .line 46851
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OY;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4r()V

    .line 46852
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OY;->A02:Z

    .line 46853
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OY;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/OX;

    .line 46854
    .local p0, "uxListener":Lcom/facebook/ads/redexgen/X/OX;
    if-nez v0, :cond_0

    .line 46855
    return-void

    .line 46856
    :cond_0
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OX;->AED()V

    .line 46857
    return-void
.end method

.method public static A08()V
    .locals 4

    const/16 v0, 0x49

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/OY;->A09:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/OY;->A09:[Ljava/lang/String;

    const-string v1, "q8I1zS5uUBp9u7UYsB3eM38aYjAC"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/OY;->A08:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        -0x5ct
        -0x50t
        -0x52t
        -0x52t
        -0x5et
        -0x51t
        -0x5bt
        -0x76t
        -0x67t
        -0x6et
        -0x6et
        -0x77t
        -0x70t
        -0x7dt
        -0x79t
        -0x6dt
        -0x78t
        -0x77t
        -0x6ct
        -0x5dt
        -0x64t
        -0x64t
        -0x6dt
        -0x66t
        -0x73t
        -0x65t
        -0x6dt
        -0x5ft
        -0x5ft
        -0x71t
        -0x6bt
        -0x6dt
        0x72t
        -0x7ft
        0x7at
        0x7at
        0x71t
        0x78t
        0x6bt
        -0x80t
        -0x7bt
        0x7ct
        0x71t
        -0x53t
        -0x62t
        -0x4et
        -0x50t
        -0x5et
        -0x5ft
        0x7ft
        -0x4at
        -0x6et
        -0x50t
        -0x5et
        -0x51t
        -0x49t
        -0x48t
        -0x5bt
        -0x4at
        -0x48t
        -0x57t
        -0x58t
        -0x7at
        -0x43t
        -0x67t
        -0x49t
        -0x57t
        -0x4at
        -0x2t
        -0x1t
        -0x14t
        -0x1t
        -0x10t
    .end array-data
.end method

.method public static A09()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "wHWy6mJnObE4TdegwzR1XIqaiMp2qzo2"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "2kKTv183xGQoCJ4bH8MOQBKEcrYPubr8"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "yAnU2m0QEWVpmJNiipOenY"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "2CWVvRtjqdC7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Y1Dj6sRIbzGHXk3FXnyOisKccxY5ExT7"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "AAUb4pYdx4XqEM8CotKihUFr9wNvuug2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "KLTFv3N2v474XPM9CBPbC4npqkPjZQN"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "uonDorlDhYGoL6YzDZYQroxkAXvFfbHU"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/OY;->A09:[Ljava/lang/String;

    return-void
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/OW;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 46858
    sget-object v1, Lcom/facebook/ads/redexgen/X/OV;->A00:[I

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/OW;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 46859
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OY;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/ON;

    .line 46860
    .local p0, "webViewController":Lcom/facebook/ads/redexgen/X/ON;
    if-nez v2, :cond_1

    .line 46861
    return-void

    .line 46862
    :pswitch_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/OY;->A0G(Lorg/json/JSONObject;)V

    .line 46863
    goto :goto_0

    .line 46864
    :pswitch_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/OY;->A06()V

    .line 46865
    goto :goto_0

    .line 46866
    :pswitch_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/OY;->A04()V

    .line 46867
    goto :goto_0

    .line 46868
    :pswitch_3
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/OY;->A07()V

    .line 46869
    goto :goto_0

    .line 46870
    :pswitch_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/OY;->A0H(Lorg/json/JSONObject;)V

    .line 46871
    goto :goto_0

    .line 46872
    :pswitch_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/OY;->A0I(Lorg/json/JSONObject;)V

    .line 46873
    goto :goto_0

    .line 46874
    :pswitch_6
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 46875
    :pswitch_7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/OY;->A05()V

    .line 46876
    :pswitch_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OY;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/0R;->A53(Ljava/lang/String;)V

    .line 46877
    goto :goto_0

    .line 46878
    :pswitch_9
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/OY;->A0B(Lcom/facebook/ads/redexgen/X/OW;Ljava/lang/String;)V

    .line 46879
    goto :goto_0

    .line 46880
    :cond_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/OV;->A00:[I

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/OW;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 46881
    :goto_1
    return-void

    .line 46882
    :pswitch_a
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/ON;->A0T()V

    .line 46883
    goto :goto_1

    .line 46884
    :pswitch_b
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/ON;->A0S()V

    .line 46885
    goto :goto_1

    .line 46886
    :pswitch_c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/OY;->A03(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/ON;->A0d(Ljava/util/Map;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/OW;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 46887
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OY;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/OX;

    .line 46888
    .local p0, "uxActionsJavascriptListener":Lcom/facebook/ads/redexgen/X/OX;
    if-nez v2, :cond_0

    .line 46889
    return-void

    .line 46890
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/OV;->A00:[I

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/OW;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 46891
    :goto_0
    return-void

    .line 46892
    :pswitch_0
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/OX;->AAF()V

    .line 46893
    goto :goto_0

    .line 46894
    :pswitch_1
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/OX;->ABc()V

    .line 46895
    goto :goto_0

    .line 46896
    :pswitch_2
    invoke-direct {p0, v2, p2}, Lcom/facebook/ads/redexgen/X/OY;->A0E(Lcom/facebook/ads/redexgen/X/OX;Ljava/lang/String;)V

    .line 46897
    goto :goto_0

    .line 46898
    :pswitch_3
    invoke-direct {p0, v2, p2}, Lcom/facebook/ads/redexgen/X/OY;->A0D(Lcom/facebook/ads/redexgen/X/OX;Ljava/lang/String;)V

    .line 46899
    goto :goto_0

    .line 46900
    :pswitch_4
    invoke-direct {p0, v2, p2}, Lcom/facebook/ads/redexgen/X/OY;->A0C(Lcom/facebook/ads/redexgen/X/OX;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/OX;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 46901
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46902
    .local p0, "extrasJSON":Lorg/json/JSONObject;
    const/16 v2, 0x44

    const/4 v1, 0x5

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OY;->A01(III)Ljava/lang/String;

    move-result-object v1

    .line 46903
    .local p1, "STATE_KEY":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 46904
    .local p2, "state":Z
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/OX;->AAs(Z)V

    .line 46905
    return-void
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/OX;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 46906
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46907
    .local p0, "extrasJSON":Lorg/json/JSONObject;
    const/16 v2, 0x2b

    const/16 v1, 0xc

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OY;->A01(III)Ljava/lang/String;

    move-result-object v1

    .line 46908
    .local p1, "PAUSED_BY_USER_KEY":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 46909
    .local p2, "pausedByUser":Z
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/OX;->AC4(Z)V

    .line 46910
    return-void
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/OX;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 46911
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46912
    .local p0, "extrasJSON":Lorg/json/JSONObject;
    const/16 v2, 0x37

    const/16 v1, 0xd

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OY;->A01(III)Ljava/lang/String;

    move-result-object v1

    .line 46913
    .local p1, "STARTED_BY_USER_KEY":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 46914
    .local p2, "startedByUser":Z
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/OX;->AC6(Z)V

    .line 46915
    return-void
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/OY;Lcom/facebook/ads/redexgen/X/OW;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 46916
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/OY;->A0A(Lcom/facebook/ads/redexgen/X/OW;Ljava/lang/String;)V

    return-void
.end method

.method private A0G(Lorg/json/JSONObject;)V
    .locals 4

    .line 46917
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OY;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/OX;

    .line 46918
    .local p0, "uxListener":Lcom/facebook/ads/redexgen/X/OX;
    if-nez v3, :cond_0

    .line 46919
    return-void

    .line 46920
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OY;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46921
    .local p1, "productUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46922
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/OX;->A7X()V

    .line 46923
    :goto_0
    return-void

    .line 46924
    :cond_1
    invoke-interface {v3, v1}, Lcom/facebook/ads/redexgen/X/OX;->A7Y(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private A0H(Lorg/json/JSONObject;)V
    .locals 5

    .line 46925
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OY;->A07:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/JC;

    .line 46926
    .local p0, "adEventManager":Lcom/facebook/ads/redexgen/X/JC;
    if-nez v3, :cond_0

    .line 46927
    return-void

    .line 46928
    :cond_0
    const/16 v4, 0x20

    sget-object v1, Lcom/facebook/ads/redexgen/X/OY;->A09:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/OY;->A09:[Ljava/lang/String;

    const-string v1, "hDImTkFK3KoL7AYoPxXIP"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/16 v1, 0xb

    const/4 v0, 0x0

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/OY;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46929
    .local p1, "key":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46930
    return-void

    .line 46931
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OY;->A06:Ljava/lang/String;

    new-instance v1, Lcom/facebook/ads/redexgen/X/JK;

    invoke-direct {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/JK;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    .line 46932
    .local v0, "handler":Lcom/facebook/ads/redexgen/X/JK;
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/OY;->A03(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/JK;->A03(Ljava/lang/String;Ljava/util/Map;)V

    .line 46933
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0I(Lorg/json/JSONObject;)V
    .locals 5

    .line 46934
    const/4 v4, -0x1

    const/4 v2, 0x7

    const/16 v1, 0xb

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OY;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 46935
    .local p1, "code":I
    if-ne v3, v4, :cond_0

    .line 46936
    return-void

    .line 46937
    :cond_0
    const/16 v2, 0x12

    const/16 v1, 0xe

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OY;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46938
    .local p0, "message":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46939
    return-void

    .line 46940
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OY;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/0R;->A8V(ILjava/lang/String;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/OY;->A09:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 46941
    sget-object v2, Lcom/facebook/ads/redexgen/X/OY;->A09:[Ljava/lang/String;

    const-string v1, "NCNoRnun1G3dlwmqoYaN2uZPLfccAkgr"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "12RLbgldZ9TmNXvaOMkOvzOeimlYTJg9"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A0J(Lcom/facebook/ads/redexgen/X/OX;)V
    .locals 1

    .line 46942
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OY;->A01:Ljava/lang/ref/WeakReference;

    .line 46943
    return-void
.end method

.method public final A0K()Z
    .locals 1

    .line 46944
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OY;->A02:Z

    return v0
.end method

.method public postMessage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 46945
    new-instance v0, Lcom/facebook/ads/redexgen/X/OU;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/OU;-><init>(Lcom/facebook/ads/redexgen/X/OY;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Le;->A00(Ljava/lang/Runnable;)V

    .line 46946
    return-void
.end method
