.class public final Lcom/verizon/ads/RequestMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/RequestMetadata$Builder;,
        Lcom/verizon/ads/RequestMetadata$Politics;,
        Lcom/verizon/ads/RequestMetadata$MaritalStatus;,
        Lcom/verizon/ads/RequestMetadata$Gender;,
        Lcom/verizon/ads/RequestMetadata$Ethnicity;,
        Lcom/verizon/ads/RequestMetadata$Education;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    invoke-static {p1}, Lcom/verizon/ads/RequestMetadata;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/verizon/ads/RequestMetadata;->a:Ljava/util/Map;

    .line 696
    invoke-static {p2}, Lcom/verizon/ads/RequestMetadata;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/verizon/ads/RequestMetadata;->b:Ljava/util/Map;

    .line 697
    invoke-static {p3}, Lcom/verizon/ads/RequestMetadata;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/verizon/ads/RequestMetadata;->c:Ljava/util/Map;

    .line 698
    invoke-static {p4}, Lcom/verizon/ads/RequestMetadata;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/verizon/ads/RequestMetadata;->d:Ljava/util/Map;

    if-eqz p5, :cond_0

    .line 701
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/verizon/ads/RequestMetadata;->e:Ljava/util/List;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Lcom/verizon/ads/RequestMetadata$1;)V
    .locals 0

    .line 19
    invoke-direct/range {p0 .. p5}, Lcom/verizon/ads/RequestMetadata;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/RequestMetadata;)Ljava/util/Map;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/verizon/ads/RequestMetadata;->a:Ljava/util/Map;

    return-object p0
.end method

.method private static a(Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 767
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/verizon/ads/RequestMetadata;)Ljava/util/Map;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/verizon/ads/RequestMetadata;->b:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic c(Lcom/verizon/ads/RequestMetadata;)Ljava/util/Map;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/verizon/ads/RequestMetadata;->c:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic d(Lcom/verizon/ads/RequestMetadata;)Ljava/util/Map;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/verizon/ads/RequestMetadata;->d:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic e(Lcom/verizon/ads/RequestMetadata;)Ljava/util/List;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/verizon/ads/RequestMetadata;->e:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final getAppData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 724
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata;->b:Ljava/util/Map;

    return-object v0
.end method

.method public final getExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 757
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata;->d:Ljava/util/Map;

    return-object v0
.end method

.method public final getPlacementData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 735
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata;->c:Ljava/util/Map;

    return-object v0
.end method

.method public final getSupportedOrientations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 746
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata;->e:Ljava/util/List;

    return-object v0
.end method

.method public final getUserData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 713
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata;->a:Ljava/util/Map;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 678
    iget-object v1, p0, Lcom/verizon/ads/RequestMetadata;->e:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/verizon/ads/RequestMetadata;->a:Ljava/util/Map;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/verizon/ads/RequestMetadata;->b:Ljava/util/Map;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/verizon/ads/RequestMetadata;->c:Ljava/util/Map;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/verizon/ads/RequestMetadata;->d:Ljava/util/Map;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "RequestMetadata{supportedOrientations: %s, userData: %s, appData: %s, placementData: %s, extras: %s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
