.class public Lcom/verizon/ads/vastcontroller/VASTParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/vastcontroller/VASTParser$JavaScriptResource;,
        Lcom/verizon/ads/vastcontroller/VASTParser$Verification;,
        Lcom/verizon/ads/vastcontroller/VASTParser$AdVerifications;,
        Lcom/verizon/ads/vastcontroller/VASTParser$Background;,
        Lcom/verizon/ads/vastcontroller/VASTParser$ButtonClicks;,
        Lcom/verizon/ads/vastcontroller/VASTParser$Button;,
        Lcom/verizon/ads/vastcontroller/VASTParser$Overlay;,
        Lcom/verizon/ads/vastcontroller/VASTParser$MMExtension;,
        Lcom/verizon/ads/vastcontroller/VASTParser$WebResource;,
        Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;,
        Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;,
        Lcom/verizon/ads/vastcontroller/VASTParser$IconClicks;,
        Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;,
        Lcom/verizon/ads/vastcontroller/VASTParser$ProgressEvent;,
        Lcom/verizon/ads/vastcontroller/VASTParser$TrackingEvent;,
        Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;,
        Lcom/verizon/ads/vastcontroller/VASTParser$MediaFile;,
        Lcom/verizon/ads/vastcontroller/VASTParser$Icon;,
        Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;,
        Lcom/verizon/ads/vastcontroller/VASTParser$Creative;,
        Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;,
        Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;,
        Lcom/verizon/ads/vastcontroller/VASTParser$Ad;
    }
.end annotation


# static fields
.field private static final a:Lcom/verizon/ads/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/verizon/ads/vastcontroller/VASTParser;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/vastcontroller/VASTParser;->a:Lcom/verizon/ads/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/verizon/ads/vastcontroller/VASTParser$Ad;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "Ad"

    .line 765
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v2, "id"

    .line 769
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 771
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_f

    .line 772
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 776
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "InLine"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, "Error"

    const-string v7, "Extensions"

    const-string v8, "Impression"

    const-string v9, "Creatives"

    if-eqz v3, :cond_7

    .line 1841
    invoke-interface {p0, v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 1843
    new-instance v1, Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;

    invoke-direct {v1}, Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;-><init>()V

    .line 1845
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-eq v3, v4, :cond_f

    .line 1846
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 1851
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1852
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->h(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;->creatives:Ljava/util/List;

    goto :goto_1

    .line 1853
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1855
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->q(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 1857
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1858
    iget-object v5, v1, Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;->impressions:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1861
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1862
    invoke-static {p0, v1}, Lcom/verizon/ads/vastcontroller/VASTParser;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/verizon/ads/vastcontroller/VASTParser$Ad;)V

    goto :goto_1

    .line 1863
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1864
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->q(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 1866
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1867
    iput-object v3, v1, Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;->error:Ljava/lang/String;

    goto :goto_1

    .line 1870
    :cond_5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "AdTitle"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1872
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->q(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 1873
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1874
    iput-object v3, v1, Lcom/verizon/ads/vastcontroller/VASTParser$InLineAd;->title:Ljava/lang/String;

    goto :goto_1

    .line 1878
    :cond_6
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 781
    :cond_7
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Wrapper"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2801
    invoke-interface {p0, v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 2803
    new-instance v1, Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;

    invoke-direct {v1}, Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;-><init>()V

    .line 2805
    :cond_8
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-eq v3, v4, :cond_f

    .line 2806
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v0, :cond_8

    .line 2810
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "VASTAdTagURI"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2811
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->q(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;->adTagURI:Ljava/lang/String;

    goto :goto_2

    .line 2812
    :cond_9
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2813
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->h(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;->creatives:Ljava/util/List;

    goto :goto_2

    .line 2814
    :cond_a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2815
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->q(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 2817
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 2818
    iget-object v5, v1, Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;->impressions:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2821
    :cond_b
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2822
    invoke-static {p0, v1}, Lcom/verizon/ads/vastcontroller/VASTParser;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/verizon/ads/vastcontroller/VASTParser$Ad;)V

    goto :goto_2

    .line 2823
    :cond_c
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2824
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->q(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 2826
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 2827
    iput-object v3, v1, Lcom/verizon/ads/vastcontroller/VASTParser$WrapperAd;->error:Ljava/lang/String;

    goto :goto_2

    .line 2831
    :cond_d
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 787
    :cond_e
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_f
    if-eqz v1, :cond_10

    .line 792
    iput-object v2, v1, Lcom/verizon/ads/vastcontroller/VASTParser$Ad;->id:Ljava/lang/String;

    :cond_10
    return-object v1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    if-eqz p0, :cond_1

    .line 1554
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1558
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/verizon/ads/vastcontroller/VASTParser$Ad;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "Extensions"

    .line 888
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 890
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    .line 891
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 896
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Extension"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "type"

    .line 897
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MMInteractiveVideo"

    .line 898
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 899
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->b(Lorg/xmlpull/v1/XmlPullParser;)Lcom/verizon/ads/vastcontroller/VASTParser$MMExtension;

    move-result-object v2

    iput-object v2, p1, Lcom/verizon/ads/vastcontroller/VASTParser$Ad;->mmExtension:Lcom/verizon/ads/vastcontroller/VASTParser$MMExtension;

    goto :goto_0

    :cond_1
    const-string v3, "AdVerifications"

    .line 900
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 901
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->c(Lorg/xmlpull/v1/XmlPullParser;)Lcom/verizon/ads/vastcontroller/VASTParser$AdVerifications;

    move-result-object v2

    iput-object v2, p1, Lcom/verizon/ads/vastcontroller/VASTParser$Ad;->adVerifications:Lcom/verizon/ads/vastcontroller/VASTParser$AdVerifications;

    goto :goto_0

    .line 903
    :cond_2
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 907
    :cond_3
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static a(Ljava/lang/String;Z)Z
    .locals 0

    if-nez p0, :cond_0

    return p1

    .line 1548
    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 1

    .line 1565
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1569
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static b(Lorg/xmlpull/v1/XmlPullParser;)Lcom/verizon/ads/vastcontroller/VASTParser$MMExtension;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "Extension"

    .line 915
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    .line 921
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    .line 922
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-ne v5, v0, :cond_0

    .line 927
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Overlay"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v2, "hideButtons"

    .line 928
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-static {v2, v5}, Lcom/verizon/ads/vastcontroller/VASTParser;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 929
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->q(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    .line 930
    new-instance v6, Lcom/verizon/ads/vastcontroller/VASTParser$Overlay;

    invoke-direct {v6, v5, v2}, Lcom/verizon/ads/vastcontroller/VASTParser$Overlay;-><init>(Ljava/lang/String;Z)V

    move-object v2, v6

    goto :goto_0

    .line 932
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Background"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 933
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->e(Lorg/xmlpull/v1/XmlPullParser;)Lcom/verizon/ads/vastcontroller/VASTParser$Background;

    move-result-object v3

    goto :goto_0

    .line 934
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Buttons"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 935
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->f(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    .line 937
    :cond_3
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 941
    :cond_4
    new-instance p0, Lcom/verizon/ads/vastcontroller/VASTParser$MMExtension;

    invoke-direct {p0, v2, v3, v4}, Lcom/verizon/ads/vastcontroller/VASTParser$MMExtension;-><init>(Lcom/verizon/ads/vastcontroller/VASTParser$Overlay;Lcom/verizon/ads/vastcontroller/VASTParser$Background;Ljava/util/List;)V

    return-object p0
.end method

.method private static c(Lorg/xmlpull/v1/XmlPullParser;)Lcom/verizon/ads/vastcontroller/VASTParser$AdVerifications;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "Extension"

    .line 947
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 949
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 951
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    .line 952
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 956
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "AdVerifications"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 957
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 958
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 962
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Verification"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 963
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->d(Lorg/xmlpull/v1/XmlPullParser;)Lcom/verizon/ads/vastcontroller/VASTParser$Verification;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 965
    :cond_2
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 969
    :cond_3
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 973
    :cond_4
    new-instance p0, Lcom/verizon/ads/vastcontroller/VASTParser$AdVerifications;

    invoke-direct {p0, v1}, Lcom/verizon/ads/vastcontroller/VASTParser$AdVerifications;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method private static d(Lorg/xmlpull/v1/XmlPullParser;)Lcom/verizon/ads/vastcontroller/VASTParser$Verification;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "Verification"

    .line 979
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v2, "vendor"

    .line 981
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 983
    new-instance v3, Lcom/verizon/ads/vastcontroller/VASTParser$Verification;

    invoke-direct {v3, v2}, Lcom/verizon/ads/vastcontroller/VASTParser$Verification;-><init>(Ljava/lang/String;)V

    .line 984
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_4

    .line 985
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 989
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "JavaScriptResource"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 990
    new-instance v2, Lcom/verizon/ads/vastcontroller/VASTParser$JavaScriptResource;

    const-string v4, "apiFramework"

    invoke-interface {p0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "browserOptional"

    .line 991
    invoke-interface {p0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/verizon/ads/vastcontroller/VASTParser;->a(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->q(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v5, v6}, Lcom/verizon/ads/vastcontroller/VASTParser$JavaScriptResource;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    iput-object v2, v3, Lcom/verizon/ads/vastcontroller/VASTParser$Verification;->javaScriptResource:Lcom/verizon/ads/vastcontroller/VASTParser$JavaScriptResource;

    goto :goto_0

    .line 993
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "TrackingEvents"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 994
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->n(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v3, Lcom/verizon/ads/vastcontroller/VASTParser$Verification;->trackingEvents:Ljava/util/Map;

    goto :goto_0

    .line 995
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "VerificationParameters"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 996
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->q(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/verizon/ads/vastcontroller/VASTParser$Verification;->verificationParameters:Ljava/lang/String;

    goto :goto_0

    .line 998
    :cond_3
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method private static e(Lorg/xmlpull/v1/XmlPullParser;)Lcom/verizon/ads/vastcontroller/VASTParser$Background;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "Background"

    .line 1008
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 1010
    new-instance v2, Lcom/verizon/ads/vastcontroller/VASTParser$Background;

    const-string v3, "hideButtons"

    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/verizon/ads/vastcontroller/VASTParser;->a(Ljava/lang/String;Z)Z

    move-result v3

    invoke-direct {v2, v3}, Lcom/verizon/ads/vastcontroller/VASTParser$Background;-><init>(Z)V

    .line 1012
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    .line 1013
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 1017
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StaticResource"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1018
    new-instance v3, Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;

    const-string v4, "creativeType"

    invoke-interface {p0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "backgroundColor"

    .line 1019
    invoke-interface {p0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->q(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/verizon/ads/vastcontroller/VASTParser$Background;->staticResource:Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;

    goto :goto_0

    .line 1021
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WebResource"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1022
    new-instance v3, Lcom/verizon/ads/vastcontroller/VASTParser$WebResource;

    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->q(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/verizon/ads/vastcontroller/VASTParser$WebResource;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/verizon/ads/vastcontroller/VASTParser$Background;->webResource:Lcom/verizon/ads/vastcontroller/VASTParser$WebResource;

    goto :goto_0

    .line 1025
    :cond_2
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method private static f(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Lcom/verizon/ads/vastcontroller/VASTParser$Button;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "Buttons"

    .line 1035
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 1037
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1039
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 1040
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1045
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Button"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1046
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->readButton(Lorg/xmlpull/v1/XmlPullParser;)Lcom/verizon/ads/vastcontroller/VASTParser$Button;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1048
    :cond_1
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static g(Lorg/xmlpull/v1/XmlPullParser;)Lcom/verizon/ads/vastcontroller/VASTParser$ButtonClicks;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "ButtonClicks"

    .line 1097
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 1099
    new-instance v1, Lcom/verizon/ads/vastcontroller/VASTParser$ButtonClicks;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2}, Lcom/verizon/ads/vastcontroller/VASTParser$ButtonClicks;-><init>(Ljava/util/List;)V

    .line 1101
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    .line 1102
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1106
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ButtonClickThrough"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1107
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->q(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/verizon/ads/vastcontroller/VASTParser$ButtonClicks;->clickThrough:Ljava/lang/String;

    goto :goto_0

    .line 1108
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ButtonClickTracking"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1109
    iget-object v2, v1, Lcom/verizon/ads/vastcontroller/VASTParser$ButtonClicks;->clickTrackingUrls:Ljava/util/List;

    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->q(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1111
    :cond_2
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private static h(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Lcom/verizon/ads/vastcontroller/VASTParser$Creative;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "Creatives"

    .line 1121
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 1123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1125
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 1126
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1131
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Creative"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1132
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->i(Lorg/xmlpull/v1/XmlPullParser;)Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1134
    :cond_1
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static i(Lorg/xmlpull/v1/XmlPullParser;)Lcom/verizon/ads/vastcontroller/VASTParser$Creative;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "Creative"

    .line 1144
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v2, "AdID"

    .line 1146
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sequence"

    .line 1147
    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1150
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1152
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1154
    :catch_0
    sget-object v4, Lcom/verizon/ads/vastcontroller/VASTParser;->a:Lcom/verizon/ads/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid sequence number: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for Creative."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    .line 1158
    :cond_0
    :goto_0
    new-instance v3, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;

    invoke-direct {v3, v2, v1}, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1160
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    .line 1161
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1165
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Linear"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1166
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->l(Lorg/xmlpull/v1/XmlPullParser;)Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;

    move-result-object v1

    iput-object v1, v3, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;->linearAd:Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;

    goto :goto_1

    .line 1167
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CompanionAds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1168
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->j(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v3, Lcom/verizon/ads/vastcontroller/VASTParser$Creative;->companionAds:Ljava/util/List;

    goto :goto_1

    .line 1170
    :cond_3
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :cond_4
    return-object v3
.end method

.method private static j(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "CompanionAds"

    .line 1181
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 1183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1185
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 1186
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1190
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Companion"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1191
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->k(Lorg/xmlpull/v1/XmlPullParser;)Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1194
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1198
    :cond_1
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static k(Lorg/xmlpull/v1/XmlPullParser;)Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "Companion"

    .line 1208
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v2, "id"

    .line 1213
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "width"

    .line 1214
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/verizon/ads/vastcontroller/VASTParser;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    const-string v2, "height"

    .line 1215
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/verizon/ads/vastcontroller/VASTParser;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    const-string v2, "assetWidth"

    .line 1216
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/verizon/ads/vastcontroller/VASTParser;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    const-string v2, "assetHeight"

    .line 1217
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/verizon/ads/vastcontroller/VASTParser;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 1219
    new-instance v2, Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;

    const-string v3, "hideButtons"

    .line 1220
    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    invoke-static {v3, v9}, Lcom/verizon/ads/vastcontroller/VASTParser;->a(Ljava/lang/String;Z)Z

    move-result v9

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1222
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    .line 1223
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 1227
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StaticResource"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1228
    new-instance v3, Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;

    const-string v4, "creativeType"

    invoke-interface {p0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "backgroundColor"

    .line 1229
    invoke-interface {p0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->q(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;->staticResource:Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;

    goto :goto_0

    .line 1231
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HTMLResource"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1232
    new-instance v3, Lcom/verizon/ads/vastcontroller/VASTParser$WebResource;

    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->q(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/verizon/ads/vastcontroller/VASTParser$WebResource;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;->htmlResource:Lcom/verizon/ads/vastcontroller/VASTParser$WebResource;

    goto :goto_0

    .line 1234
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IFrameResource"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1235
    new-instance v3, Lcom/verizon/ads/vastcontroller/VASTParser$WebResource;

    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->q(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/verizon/ads/vastcontroller/VASTParser$WebResource;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;->iframeResource:Lcom/verizon/ads/vastcontroller/VASTParser$WebResource;

    goto :goto_0

    .line 1237
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TrackingEvents"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1238
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->n(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v2, Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;->trackingEvents:Ljava/util/Map;

    goto :goto_0

    .line 1240
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CompanionClickTracking"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1241
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->q(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 1242
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1243
    iget-object v4, v2, Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;->companionClickTracking:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1246
    :cond_5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CompanionClickThrough"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1247
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->q(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 1248
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1249
    iput-object v3, v2, Lcom/verizon/ads/vastcontroller/VASTParser$CompanionAd;->companionClickThrough:Ljava/lang/String;

    goto/16 :goto_0

    .line 1253
    :cond_6
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->p(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception p0

    .line 1257
    :goto_1
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTParser;->a:Lcom/verizon/ads/Logger;

    const-string v2, "Syntax error in Companion element; skipping."

    invoke-virtual {v0, v2, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v1

    :cond_7
    return-object v2
.end method

.method private static l(Lorg/xmlpull/v1/XmlPullParser;)Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "Linear"

    .line 1266
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 1268
    new-instance v2, Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;

    const-string v3, "skipoffset"

    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;-><init>(Ljava/lang/String;)V

    .line 1270
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_9

    .line 1271
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 1275
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "MediaFiles"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1276
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->o(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;->mediaFiles:Ljava/util/List;

    goto :goto_0

    .line 1277
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "TrackingEvents"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1278
    iget-object v3, v2, Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->n(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 1279
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Icons"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3354
    invoke-interface {p0, v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 3356
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3358
    :cond_3
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v4, :cond_5

    .line 3359
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-ne v5, v0, :cond_3

    .line 3363
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Icon"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3364
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->readIcon(Lorg/xmlpull/v1/XmlPullParser;)Lcom/verizon/ads/vastcontroller/VASTParser$Icon;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3366
    :cond_4
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 1280
    :cond_5
    iput-object v3, v2, Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;->icons:Ljava/util/List;

    goto :goto_0

    .line 1281
    :cond_6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VideoClicks"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1282
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->m(Lorg/xmlpull/v1/XmlPullParser;)Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;

    move-result-object v3

    iput-object v3, v2, Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;->videoClicks:Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;

    goto/16 :goto_0

    .line 1283
    :cond_7
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Duration"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1284
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->q(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/verizon/ads/vastcontroller/VASTParser$LinearAd;->duration:Ljava/lang/String;

    goto/16 :goto_0

    .line 1286
    :cond_8
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_9
    return-object v2
.end method

.method private static m(Lorg/xmlpull/v1/XmlPullParser;)Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "VideoClicks"

    .line 1296
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 1298
    new-instance v1, Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 1300
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    .line 1301
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1305
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ClickThrough"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1306
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->q(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;->clickThrough:Ljava/lang/String;

    goto :goto_0

    .line 1307
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ClickTracking"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1308
    iget-object v2, v1, Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;->clickTrackingUrls:Ljava/util/List;

    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->q(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1309
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CustomClick"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1310
    iget-object v2, v1, Lcom/verizon/ads/vastcontroller/VASTParser$VideoClicks;->customClickUrls:Ljava/util/List;

    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->q(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1312
    :cond_3
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method private static n(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/Map<",
            "Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;",
            "Ljava/util/List<",
            "Lcom/verizon/ads/vastcontroller/VASTParser$TrackingEvent;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "TrackingEvents"

    .line 1423
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 1425
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1427
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    .line 1428
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 1432
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Tracking"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "event"

    .line 1434
    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "offset"

    .line 1437
    invoke-interface {p0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1438
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->q(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    .line 1440
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1442
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->valueOf(Ljava/lang/String;)Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    move-result-object v7

    .line 1445
    sget-object v8, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->progress:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    invoke-virtual {v8, v7}, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1446
    new-instance v8, Lcom/verizon/ads/vastcontroller/VASTParser$ProgressEvent;

    invoke-direct {v8, v6, v5}, Lcom/verizon/ads/vastcontroller/VASTParser$ProgressEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1448
    :cond_1
    new-instance v8, Lcom/verizon/ads/vastcontroller/VASTParser$TrackingEvent;

    invoke-direct {v8, v7, v6}, Lcom/verizon/ads/vastcontroller/VASTParser$TrackingEvent;-><init>(Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;Ljava/lang/String;)V

    .line 1451
    :goto_1
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_2

    .line 1453
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1454
    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    :cond_2
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 1460
    invoke-static {v4}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1461
    sget-object v4, Lcom/verizon/ads/vastcontroller/VASTParser;->a:Lcom/verizon/ads/Logger;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Unsupported VAST event type: "

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 1467
    :cond_3
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method private static o(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Lcom/verizon/ads/vastcontroller/VASTParser$MediaFile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "MediaFiles"

    .line 1477
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 1479
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1481
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 1482
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 1486
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaFile"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    const-string v3, "type"

    .line 1489
    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "delivery"

    .line 1490
    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "apiFramework"

    .line 1491
    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "width"

    .line 1492
    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/verizon/ads/vastcontroller/VASTParser;->b(Ljava/lang/String;)I

    move-result v9

    const-string v3, "height"

    .line 1493
    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/verizon/ads/vastcontroller/VASTParser;->b(Ljava/lang/String;)I

    move-result v10

    const-string v3, "bitrate"

    .line 1494
    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/verizon/ads/vastcontroller/VASTParser;->b(Ljava/lang/String;)I

    move-result v11

    const-string v3, "maintainAspectRatio"

    .line 1496
    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 1498
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->q(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    .line 1500
    new-instance v3, Lcom/verizon/ads/vastcontroller/VASTParser$MediaFile;

    move-object v4, v3

    invoke-direct/range {v4 .. v12}, Lcom/verizon/ads/vastcontroller/VASTParser$MediaFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 1505
    sget-object v4, Lcom/verizon/ads/vastcontroller/VASTParser;->a:Lcom/verizon/ads/Logger;

    const-string v5, "Skipping malformed MediaFile element in VAST response."

    invoke-virtual {v4, v5, v3}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1509
    :cond_1
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private static p(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1521
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 1527
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 1522
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/verizon/ads/vastcontroller/VASTParser$Ad;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 721
    sget-object p0, Lcom/verizon/ads/vastcontroller/VASTParser;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Ad content was null."

    invoke-virtual {p0, v1}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return-object v0

    .line 728
    :cond_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v3, 0x0

    .line 729
    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 730
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 731
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 734
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "VAST"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, ""

    const-string v2, "version"

    .line 736
    invoke-interface {v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 738
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 740
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 743
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 745
    invoke-static {v1}, Lcom/verizon/ads/vastcontroller/VASTParser;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/verizon/ads/vastcontroller/VASTParser$Ad;

    move-result-object v0

    goto :goto_0

    .line 748
    :cond_1
    sget-object v1, Lcom/verizon/ads/vastcontroller/VASTParser;->a:Lcom/verizon/ads/Logger;

    const-string v2, "Unsupported VAST version = "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 751
    sget-object v2, Lcom/verizon/ads/vastcontroller/VASTParser;->a:Lcom/verizon/ads/Logger;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "Invalid version format for VAST tag with version = "

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 755
    :cond_2
    sget-object p0, Lcom/verizon/ads/vastcontroller/VASTParser;->a:Lcom/verizon/ads/Logger;

    const-string v1, "VAST version not provided."

    invoke-virtual {p0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static q(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1575
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1577
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static readButton(Lorg/xmlpull/v1/XmlPullParser;)Lcom/verizon/ads/vastcontroller/VASTParser$Button;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "Button"

    .line 1058
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v2, "name"

    .line 1060
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "offset"

    .line 1061
    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "position"

    .line 1062
    invoke-interface {p0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1065
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1067
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1069
    :catch_0
    sget-object v5, Lcom/verizon/ads/vastcontroller/VASTParser;->a:Lcom/verizon/ads/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Invalid position: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for Button."

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    :cond_0
    const/4 v4, 0x0

    .line 1073
    :goto_0
    new-instance v5, Lcom/verizon/ads/vastcontroller/VASTParser$Button;

    invoke-direct {v5, v2, v3, v4}, Lcom/verizon/ads/vastcontroller/VASTParser$Button;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1075
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    .line 1076
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 1080
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StaticResource"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1081
    new-instance v2, Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;

    const-string v3, "creativeType"

    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "backgroundColor"

    .line 1082
    invoke-interface {p0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->q(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v6}, Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v5, Lcom/verizon/ads/vastcontroller/VASTParser$Button;->staticResource:Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;

    goto :goto_1

    .line 1084
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ButtonClicks"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1085
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->g(Lorg/xmlpull/v1/XmlPullParser;)Lcom/verizon/ads/vastcontroller/VASTParser$ButtonClicks;

    move-result-object v2

    iput-object v2, v5, Lcom/verizon/ads/vastcontroller/VASTParser$Button;->buttonClicks:Lcom/verizon/ads/vastcontroller/VASTParser$ButtonClicks;

    goto :goto_1

    .line 1087
    :cond_3
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :cond_4
    return-object v5
.end method

.method public static readIcon(Lorg/xmlpull/v1/XmlPullParser;)Lcom/verizon/ads/vastcontroller/VASTParser$Icon;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "Icon"

    .line 1376
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v2, "program"

    .line 1378
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "width"

    .line 1379
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "height"

    .line 1380
    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "xPosition"

    .line 1381
    invoke-interface {p0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "yPosition"

    .line 1382
    invoke-interface {p0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "apiFramework"

    .line 1383
    invoke-interface {p0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "offset"

    .line 1384
    invoke-interface {p0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v5, "duration"

    .line 1385
    invoke-interface {p0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1387
    new-instance v12, Lcom/verizon/ads/vastcontroller/VASTParser$Icon;

    invoke-static {v2}, Lcom/verizon/ads/vastcontroller/VASTParser;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Lcom/verizon/ads/vastcontroller/VASTParser;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lcom/verizon/ads/vastcontroller/VASTParser$Icon;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_a

    .line 1391
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1395
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "StaticResource"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1396
    new-instance v2, Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;

    const-string v3, "creativeType"

    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "backgroundColor"

    .line 1397
    invoke-interface {p0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->q(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v12, Lcom/verizon/ads/vastcontroller/VASTParser$Icon;->staticResource:Lcom/verizon/ads/vastcontroller/VASTParser$StaticResource;

    goto :goto_0

    .line 1399
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "HTMLResource"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1400
    new-instance v2, Lcom/verizon/ads/vastcontroller/VASTParser$WebResource;

    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->q(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/verizon/ads/vastcontroller/VASTParser$WebResource;-><init>(Ljava/lang/String;)V

    iput-object v2, v12, Lcom/verizon/ads/vastcontroller/VASTParser$Icon;->htmlResource:Lcom/verizon/ads/vastcontroller/VASTParser$WebResource;

    goto :goto_0

    .line 1401
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "IFrameResource"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1402
    new-instance v2, Lcom/verizon/ads/vastcontroller/VASTParser$WebResource;

    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->q(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/verizon/ads/vastcontroller/VASTParser$WebResource;-><init>(Ljava/lang/String;)V

    iput-object v2, v12, Lcom/verizon/ads/vastcontroller/VASTParser$Icon;->iframeResource:Lcom/verizon/ads/vastcontroller/VASTParser$WebResource;

    goto :goto_0

    .line 1403
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "IconClicks"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4322
    invoke-interface {p0, v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 4324
    new-instance v2, Lcom/verizon/ads/vastcontroller/VASTParser$IconClicks;

    invoke-direct {v2}, Lcom/verizon/ads/vastcontroller/VASTParser$IconClicks;-><init>()V

    .line 4326
    :cond_4
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    if-eq v4, v3, :cond_7

    .line 4327
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    if-ne v4, v0, :cond_4

    .line 4331
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IconClickThrough"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4332
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->q(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    .line 4333
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 4334
    iput-object v4, v2, Lcom/verizon/ads/vastcontroller/VASTParser$IconClicks;->clickThrough:Ljava/lang/String;

    goto :goto_1

    .line 4337
    :cond_5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IconClickTracking"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4338
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->q(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    .line 4339
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 4340
    iget-object v5, v2, Lcom/verizon/ads/vastcontroller/VASTParser$IconClicks;->clickTrackingUrls:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4344
    :cond_6
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 1404
    :cond_7
    iput-object v2, v12, Lcom/verizon/ads/vastcontroller/VASTParser$Icon;->iconClicks:Lcom/verizon/ads/vastcontroller/VASTParser$IconClicks;

    goto/16 :goto_0

    .line 1405
    :cond_8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IconViewTracking"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1406
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->q(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    .line 1407
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1408
    iget-object v3, v12, Lcom/verizon/ads/vastcontroller/VASTParser$Icon;->iconViewTrackingUrls:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1412
    :cond_9
    invoke-static {p0}, Lcom/verizon/ads/vastcontroller/VASTParser;->p(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_a
    return-object v12
.end method
