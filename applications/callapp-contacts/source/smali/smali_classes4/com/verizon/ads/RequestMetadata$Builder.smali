.class public final Lcom/verizon/ads/RequestMetadata$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/RequestMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
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

.field private final b:Ljava/util/Map;
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

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->b:Ljava/util/Map;

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->d:Ljava/util/Map;

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->f:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/verizon/ads/RequestMetadata;)V
    .locals 1

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->b:Ljava/util/Map;

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->d:Ljava/util/Map;

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->f:Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 229
    invoke-static {p1}, Lcom/verizon/ads/RequestMetadata;->a(Lcom/verizon/ads/RequestMetadata;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/verizon/ads/RequestMetadata$Builder;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->a:Ljava/util/Map;

    .line 230
    invoke-static {p1}, Lcom/verizon/ads/RequestMetadata;->b(Lcom/verizon/ads/RequestMetadata;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/verizon/ads/RequestMetadata$Builder;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->c:Ljava/util/Map;

    .line 231
    invoke-static {p1}, Lcom/verizon/ads/RequestMetadata;->c(Lcom/verizon/ads/RequestMetadata;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/verizon/ads/RequestMetadata$Builder;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->e:Ljava/util/Map;

    .line 232
    invoke-static {p1}, Lcom/verizon/ads/RequestMetadata;->d(Lcom/verizon/ads/RequestMetadata;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/verizon/ads/RequestMetadata$Builder;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->g:Ljava/util/Map;

    .line 233
    invoke-static {p1}, Lcom/verizon/ads/RequestMetadata;->e(Lcom/verizon/ads/RequestMetadata;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1663
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    .line 233
    :goto_0
    iput-object p1, p0, Lcom/verizon/ads/RequestMetadata$Builder;->h:Ljava/util/List;

    :cond_1
    return-void
.end method

.method private static a(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
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

    .line 653
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public final build()Lcom/verizon/ads/RequestMetadata;
    .locals 9

    .line 614
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 616
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 617
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->a:Ljava/util/Map;

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/verizon/ads/RequestMetadata$Builder;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 624
    :cond_1
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 626
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->e:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 627
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->e:Ljava/util/Map;

    .line 630
    :cond_2
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/verizon/ads/RequestMetadata$Builder;->f:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 634
    :cond_3
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 636
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->c:Ljava/util/Map;

    if-nez v0, :cond_4

    .line 637
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->c:Ljava/util/Map;

    .line 640
    :cond_4
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/verizon/ads/RequestMetadata$Builder;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 643
    :cond_5
    new-instance v0, Lcom/verizon/ads/RequestMetadata;

    iget-object v3, p0, Lcom/verizon/ads/RequestMetadata$Builder;->a:Ljava/util/Map;

    iget-object v4, p0, Lcom/verizon/ads/RequestMetadata$Builder;->c:Ljava/util/Map;

    iget-object v5, p0, Lcom/verizon/ads/RequestMetadata$Builder;->e:Ljava/util/Map;

    iget-object v6, p0, Lcom/verizon/ads/RequestMetadata$Builder;->g:Ljava/util/Map;

    iget-object v7, p0, Lcom/verizon/ads/RequestMetadata$Builder;->h:Ljava/util/List;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/verizon/ads/RequestMetadata;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Lcom/verizon/ads/RequestMetadata$1;)V

    return-object v0
.end method

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

    .line 256
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->c:Ljava/util/Map;

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

    .line 278
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->g:Ljava/util/Map;

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

    .line 267
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->e:Ljava/util/Map;

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

    .line 289
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->h:Ljava/util/List;

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

    .line 245
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->a:Ljava/util/Map;

    return-object v0
.end method

.method public final putExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/verizon/ads/RequestMetadata$Builder;
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->g:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 597
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->g:Ljava/util/Map;

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setAppData(Ljava/util/Map;)Lcom/verizon/ads/RequestMetadata$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/verizon/ads/RequestMetadata$Builder;"
        }
    .end annotation

    .line 329
    iput-object p1, p0, Lcom/verizon/ads/RequestMetadata$Builder;->c:Ljava/util/Map;

    return-object p0
.end method

.method public final setExtras(Ljava/util/Map;)Lcom/verizon/ads/RequestMetadata$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/verizon/ads/RequestMetadata$Builder;"
        }
    .end annotation

    .line 301
    iput-object p1, p0, Lcom/verizon/ads/RequestMetadata$Builder;->g:Ljava/util/Map;

    return-object p0
.end method

.method public final setImpressionGroup(Ljava/lang/String;)Lcom/verizon/ads/RequestMetadata$Builder;
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->f:Ljava/util/Map;

    const-string v1, "impressionGroup"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setMediator(Ljava/lang/String;)Lcom/verizon/ads/RequestMetadata$Builder;
    .locals 2

    .line 581
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->d:Ljava/util/Map;

    const-string v1, "mediator"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setPlacementData(Ljava/util/Map;)Lcom/verizon/ads/RequestMetadata$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/verizon/ads/RequestMetadata$Builder;"
        }
    .end annotation

    .line 343
    iput-object p1, p0, Lcom/verizon/ads/RequestMetadata$Builder;->e:Ljava/util/Map;

    return-object p0
.end method

.method public final setSupportedOrientations(Ljava/util/List;)Lcom/verizon/ads/RequestMetadata$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/verizon/ads/RequestMetadata$Builder;"
        }
    .end annotation

    .line 315
    iput-object p1, p0, Lcom/verizon/ads/RequestMetadata$Builder;->h:Ljava/util/List;

    return-object p0
.end method

.method public final setUserAge(Ljava/lang/Integer;)Lcom/verizon/ads/RequestMetadata$Builder;
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->b:Ljava/util/Map;

    const-string v1, "age"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setUserChildren(Ljava/lang/Integer;)Lcom/verizon/ads/RequestMetadata$Builder;
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->b:Ljava/util/Map;

    const-string v1, "children"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setUserCountry(Ljava/lang/String;)Lcom/verizon/ads/RequestMetadata$Builder;
    .locals 2

    .line 539
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->b:Ljava/util/Map;

    const-string v1, "country"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setUserData(Ljava/util/Map;)Lcom/verizon/ads/RequestMetadata$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/verizon/ads/RequestMetadata$Builder;"
        }
    .end annotation

    .line 357
    iput-object p1, p0, Lcom/verizon/ads/RequestMetadata$Builder;->a:Ljava/util/Map;

    return-object p0
.end method

.method public final setUserDma(Ljava/lang/String;)Lcom/verizon/ads/RequestMetadata$Builder;
    .locals 2

    .line 567
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->b:Ljava/util/Map;

    const-string v1, "dma"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setUserDob(Ljava/util/Date;)Lcom/verizon/ads/RequestMetadata$Builder;
    .locals 2

    .line 511
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->b:Ljava/util/Map;

    const-string v1, "dob"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setUserEducation(Lcom/verizon/ads/RequestMetadata$Education;)Lcom/verizon/ads/RequestMetadata$Builder;
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->b:Ljava/util/Map;

    iget-object p1, p1, Lcom/verizon/ads/RequestMetadata$Education;->value:Ljava/lang/String;

    const-string v1, "education"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setUserEthnicity(Lcom/verizon/ads/RequestMetadata$Ethnicity;)Lcom/verizon/ads/RequestMetadata$Builder;
    .locals 2

    .line 455
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->b:Ljava/util/Map;

    iget-object p1, p1, Lcom/verizon/ads/RequestMetadata$Ethnicity;->value:Ljava/lang/String;

    const-string v1, "ethnicity"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setUserGender(Lcom/verizon/ads/RequestMetadata$Gender;)Lcom/verizon/ads/RequestMetadata$Builder;
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->b:Ljava/util/Map;

    iget-object p1, p1, Lcom/verizon/ads/RequestMetadata$Gender;->value:Ljava/lang/String;

    const-string v1, "gender"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setUserIncome(Ljava/lang/Integer;)Lcom/verizon/ads/RequestMetadata$Builder;
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->b:Ljava/util/Map;

    const-string v1, "income"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setUserKeywords(Ljava/util/List;)Lcom/verizon/ads/RequestMetadata$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/verizon/ads/RequestMetadata$Builder;"
        }
    .end annotation

    .line 427
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->b:Ljava/util/Map;

    const-string v1, "keywords"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setUserMaritalStatus(Lcom/verizon/ads/RequestMetadata$MaritalStatus;)Lcom/verizon/ads/RequestMetadata$Builder;
    .locals 2

    .line 483
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->b:Ljava/util/Map;

    iget-object p1, p1, Lcom/verizon/ads/RequestMetadata$MaritalStatus;->value:Ljava/lang/String;

    const-string v1, "marital"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setUserPolitics(Lcom/verizon/ads/RequestMetadata$Politics;)Lcom/verizon/ads/RequestMetadata$Builder;
    .locals 2

    .line 497
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->b:Ljava/util/Map;

    iget-object p1, p1, Lcom/verizon/ads/RequestMetadata$Politics;->value:Ljava/lang/String;

    const-string v1, "politics"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setUserPostalCode(Ljava/lang/String;)Lcom/verizon/ads/RequestMetadata$Builder;
    .locals 2

    .line 553
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->b:Ljava/util/Map;

    const-string v1, "postalCode"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setUserState(Ljava/lang/String;)Lcom/verizon/ads/RequestMetadata$Builder;
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/verizon/ads/RequestMetadata$Builder;->b:Ljava/util/Map;

    const-string v1, "state"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
