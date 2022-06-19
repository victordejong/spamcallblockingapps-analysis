.class public final Lcom/facebook/ads/redexgen/X/Od;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ob;,
        Lcom/facebook/ads/redexgen/X/Oc;
    }
.end annotation


# static fields
.field public static A08:[B


# instance fields
.field public A00:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/OS;",
            ">;"
        }
    .end annotation
.end field

.field public A01:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/Oc;",
            ">;"
        }
    .end annotation
.end field

.field public A02:Z

.field public final A03:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A04:Lcom/facebook/ads/redexgen/X/OH;

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

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Od;->A08()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/OS;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/OH;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 46822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46823
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Od;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    .line 46824
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Od;->A00:Ljava/lang/ref/WeakReference;

    .line 46825
    const/4 v1, 0x0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Od;->A01:Ljava/lang/ref/WeakReference;

    .line 46826
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Od;->A07:Ljava/lang/ref/WeakReference;

    .line 46827
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Od;->A04:Lcom/facebook/ads/redexgen/X/OH;

    .line 46828
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Od;->A05:Ljava/lang/String;

    .line 46829
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Od;->A06:Ljava/lang/String;

    .line 46830
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Od;->A02:Z

    .line 46831
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Od;)Lcom/facebook/ads/redexgen/X/OH;
    .locals 0

    .line 46832
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Od;->A04:Lcom/facebook/ads/redexgen/X/OH;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Od;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x74

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Od;)Ljava/lang/String;
    .locals 0

    .line 46833
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Od;->A05:Ljava/lang/String;

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

    .line 46834
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 46835
    .local p0, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 46836
    .local v3, "extraDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46837
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 46838
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46839
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 46840
    :cond_0
    return-object v2
.end method

.method private A04()V
    .locals 1

    .line 46841
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Od;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Oc;

    .line 46842
    .local p0, "uxListener":Lcom/facebook/ads/redexgen/X/Oc;
    if-nez v0, :cond_0

    .line 46843
    return-void

    .line 46844
    :cond_0
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Oc;->close()V

    .line 46845
    return-void
.end method

.method private A05()V
    .locals 1

    .line 46846
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Od;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Oc;

    .line 46847
    .local p0, "uxListener":Lcom/facebook/ads/redexgen/X/Oc;
    if-nez v0, :cond_0

    .line 46848
    return-void

    .line 46849
    :cond_0
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Oc;->A7a()V

    .line 46850
    return-void
.end method

.method private A06()V
    .locals 1

    .line 46851
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Od;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Oc;

    .line 46852
    .local p0, "uxListener":Lcom/facebook/ads/redexgen/X/Oc;
    if-nez v0, :cond_0

    .line 46853
    return-void

    .line 46854
    :cond_0
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Oc;->A8E()V

    .line 46855
    return-void
.end method

.method private A07()V
    .locals 1

    .line 46856
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Od;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4t()V

    .line 46857
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Od;->A02:Z

    .line 46858
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Od;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Oc;

    .line 46859
    .local p0, "uxListener":Lcom/facebook/ads/redexgen/X/Oc;
    if-nez v0, :cond_0

    .line 46860
    return-void

    .line 46861
    :cond_0
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Oc;->AEB()V

    .line 46862
    return-void
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x49

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Od;->A08:[B

    return-void

    :array_0
    .array-data 1
        -0x14t
        -0x8t
        -0xat
        -0xat
        -0x16t
        -0x9t
        -0x13t
        0x2ft
        0x3et
        0x37t
        0x37t
        0x2et
        0x35t
        0x28t
        0x2ct
        0x38t
        0x2dt
        0x2et
        0xct
        0x1bt
        0x14t
        0x14t
        0xbt
        0x12t
        0x5t
        0x13t
        0xbt
        0x19t
        0x19t
        0x7t
        0xdt
        0xbt
        0x41t
        0x50t
        0x49t
        0x49t
        0x40t
        0x47t
        0x3at
        0x4ft
        0x54t
        0x4bt
        0x40t
        -0x13t
        -0x22t
        -0xet
        -0x10t
        -0x1et
        -0x1ft
        -0x41t
        -0xat
        -0x2et
        -0x10t
        -0x1et
        -0x11t
        0x19t
        0x1at
        0x7t
        0x18t
        0x1at
        0xbt
        0xat
        -0x18t
        0x1ft
        -0x5t
        0x19t
        0xbt
        0x18t
        -0x18t
        -0x17t
        -0x2at
        -0x17t
        -0x26t
    .end array-data
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/Ob;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 46863
    sget-object v1, Lcom/facebook/ads/redexgen/X/Oa;->A00:[I

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ob;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 46864
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Od;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/OS;

    .line 46865
    .local p0, "webViewController":Lcom/facebook/ads/redexgen/X/OS;
    if-nez v2, :cond_1

    .line 46866
    return-void

    .line 46867
    :pswitch_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Od;->A0F(Lorg/json/JSONObject;)V

    .line 46868
    goto :goto_0

    .line 46869
    :pswitch_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Od;->A06()V

    .line 46870
    goto :goto_0

    .line 46871
    :pswitch_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Od;->A04()V

    .line 46872
    goto :goto_0

    .line 46873
    :pswitch_3
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Od;->A07()V

    .line 46874
    goto :goto_0

    .line 46875
    :pswitch_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Od;->A0G(Lorg/json/JSONObject;)V

    .line 46876
    goto :goto_0

    .line 46877
    :pswitch_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Od;->A0H(Lorg/json/JSONObject;)V

    .line 46878
    goto :goto_0

    .line 46879
    :pswitch_6
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 46880
    :pswitch_7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Od;->A05()V

    .line 46881
    :pswitch_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Od;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/0R;->A55(Ljava/lang/String;)V

    .line 46882
    goto :goto_0

    .line 46883
    :pswitch_9
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Od;->A0A(Lcom/facebook/ads/redexgen/X/Ob;Ljava/lang/String;)V

    .line 46884
    goto :goto_0

    .line 46885
    :cond_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/Oa;->A00:[I

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ob;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 46886
    :goto_1
    return-void

    .line 46887
    :pswitch_a
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/OS;->A0T()V

    .line 46888
    goto :goto_1

    .line 46889
    :pswitch_b
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/OS;->A0S()V

    .line 46890
    goto :goto_1

    .line 46891
    :pswitch_c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Od;->A03(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/OS;->A0d(Ljava/util/Map;)V

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

.method private A0A(Lcom/facebook/ads/redexgen/X/Ob;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 46892
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Od;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Oc;

    .line 46893
    .local p0, "uxActionsJavascriptListener":Lcom/facebook/ads/redexgen/X/Oc;
    if-nez v2, :cond_0

    .line 46894
    return-void

    .line 46895
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/Oa;->A00:[I

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ob;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 46896
    :goto_0
    return-void

    .line 46897
    :pswitch_0
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/Oc;->AAG()V

    .line 46898
    goto :goto_0

    .line 46899
    :pswitch_1
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/Oc;->ABc()V

    .line 46900
    goto :goto_0

    .line 46901
    :pswitch_2
    invoke-direct {p0, v2, p2}, Lcom/facebook/ads/redexgen/X/Od;->A0D(Lcom/facebook/ads/redexgen/X/Oc;Ljava/lang/String;)V

    .line 46902
    goto :goto_0

    .line 46903
    :pswitch_3
    invoke-direct {p0, v2, p2}, Lcom/facebook/ads/redexgen/X/Od;->A0C(Lcom/facebook/ads/redexgen/X/Oc;Ljava/lang/String;)V

    .line 46904
    goto :goto_0

    .line 46905
    :pswitch_4
    invoke-direct {p0, v2, p2}, Lcom/facebook/ads/redexgen/X/Od;->A0B(Lcom/facebook/ads/redexgen/X/Oc;Ljava/lang/String;)V

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

.method private A0B(Lcom/facebook/ads/redexgen/X/Oc;Ljava/lang/String;)V
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
    const/16 v2, 0x44

    const/4 v1, 0x5

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Od;->A01(III)Ljava/lang/String;

    move-result-object v1

    .line 46908
    .local p1, "STATE_KEY":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 46909
    .local p2, "state":Z
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Oc;->AAs(Z)V

    .line 46910
    return-void
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/Oc;Ljava/lang/String;)V
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
    const/16 v2, 0x2b

    const/16 v1, 0xc

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Od;->A01(III)Ljava/lang/String;

    move-result-object v1

    .line 46913
    .local p1, "PAUSED_BY_USER_KEY":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 46914
    .local p2, "pausedByUser":Z
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Oc;->AC4(Z)V

    .line 46915
    return-void
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/Oc;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 46916
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46917
    .local p0, "extrasJSON":Lorg/json/JSONObject;
    const/16 v2, 0x37

    const/16 v1, 0xd

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Od;->A01(III)Ljava/lang/String;

    move-result-object v1

    .line 46918
    .local p1, "STARTED_BY_USER_KEY":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 46919
    .local p2, "startedByUser":Z
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Oc;->AC6(Z)V

    .line 46920
    return-void
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/Od;Lcom/facebook/ads/redexgen/X/Ob;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 46921
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Od;->A09(Lcom/facebook/ads/redexgen/X/Ob;Ljava/lang/String;)V

    return-void
.end method

.method private A0F(Lorg/json/JSONObject;)V
    .locals 4

    .line 46922
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Od;->A01:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Oc;

    .line 46923
    .local p0, "uxListener":Lcom/facebook/ads/redexgen/X/Oc;
    if-nez v3, :cond_0

    .line 46924
    return-void

    .line 46925
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Od;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46926
    .local p1, "productUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46927
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/Oc;->A7V()V

    .line 46928
    :goto_0
    return-void

    .line 46929
    :cond_1
    invoke-interface {v3, v1}, Lcom/facebook/ads/redexgen/X/Oc;->A7W(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private A0G(Lorg/json/JSONObject;)V
    .locals 4

    .line 46930
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Od;->A07:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/JC;

    .line 46931
    .local p0, "adEventManager":Lcom/facebook/ads/redexgen/X/JC;
    if-nez v3, :cond_0

    .line 46932
    return-void

    .line 46933
    :cond_0
    const/16 v2, 0x20

    const/16 v1, 0xb

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Od;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46934
    .local p1, "key":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46935
    return-void

    .line 46936
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Od;->A06:Ljava/lang/String;

    new-instance v1, Lcom/facebook/ads/redexgen/X/JJ;

    invoke-direct {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/JJ;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    .line 46937
    .local v0, "handler":Lcom/facebook/ads/redexgen/X/JJ;
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Od;->A03(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/JJ;->A04(Ljava/lang/String;Ljava/util/Map;)V

    .line 46938
    return-void
.end method

.method private A0H(Lorg/json/JSONObject;)V
    .locals 5

    .line 46939
    const/4 v4, -0x1

    const/4 v2, 0x7

    const/16 v1, 0xb

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Od;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 46940
    .local p1, "code":I
    if-ne v3, v4, :cond_0

    .line 46941
    return-void

    .line 46942
    :cond_0
    const/16 v2, 0x12

    const/16 v1, 0xe

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Od;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46943
    .local p0, "message":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46944
    return-void

    .line 46945
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Od;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/0R;->A8T(ILjava/lang/String;)V

    .line 46946
    return-void
.end method


# virtual methods
.method public final A0I(Lcom/facebook/ads/redexgen/X/Oc;)V
    .locals 1

    .line 46947
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Od;->A01:Ljava/lang/ref/WeakReference;

    .line 46948
    return-void
.end method

.method public final A0J()Z
    .locals 1

    .line 46949
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Od;->A02:Z

    return v0
.end method

.method public postMessage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 46950
    new-instance v0, Lcom/facebook/ads/redexgen/X/OZ;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/OZ;-><init>(Lcom/facebook/ads/redexgen/X/Od;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A00(Ljava/lang/Runnable;)V

    .line 46951
    return-void
.end method
