.class public final Lcom/facebook/ads/redexgen/X/Oe;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Of;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JsonParsingResult"
.end annotation


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A04:Lorg/json/JSONObject;

.field public final A05:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 46952
    .local p3, "imageUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "videoUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "fileUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46953
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Oe;->A04:Lorg/json/JSONObject;

    .line 46954
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Oe;->A00:Ljava/lang/String;

    .line 46955
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Oe;->A02:Ljava/util/ArrayList;

    .line 46956
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Oe;->A03:Ljava/util/ArrayList;

    .line 46957
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Oe;->A01:Ljava/util/ArrayList;

    .line 46958
    iput-boolean p6, p0, Lcom/facebook/ads/redexgen/X/Oe;->A05:Z

    .line 46959
    return-void
.end method
