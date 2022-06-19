.class public Lcom/callapp/common/model/json/JSONXingProfessionalExperience;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5968879a599e9237L


# instance fields
.field private non_primary_companies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONXingUserCompany;",
            ">;"
        }
    .end annotation
.end field

.field private primary_company:Lcom/callapp/common/model/json/JSONXingUserCompany;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 43
    :cond_1
    instance-of v2, p1, Lcom/callapp/common/model/json/JSONXingProfessionalExperience;

    if-nez v2, :cond_2

    return v1

    .line 45
    :cond_2
    check-cast p1, Lcom/callapp/common/model/json/JSONXingProfessionalExperience;

    .line 46
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingProfessionalExperience;->non_primary_companies:Ljava/util/List;

    if-nez v2, :cond_3

    .line 47
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONXingProfessionalExperience;->non_primary_companies:Ljava/util/List;

    if-eqz v2, :cond_4

    return v1

    .line 49
    :cond_3
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingProfessionalExperience;->non_primary_companies:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 51
    :cond_4
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingProfessionalExperience;->primary_company:Lcom/callapp/common/model/json/JSONXingUserCompany;

    if-nez v2, :cond_5

    .line 52
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONXingProfessionalExperience;->primary_company:Lcom/callapp/common/model/json/JSONXingUserCompany;

    if-eqz p1, :cond_6

    return v1

    .line 54
    :cond_5
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONXingProfessionalExperience;->primary_company:Lcom/callapp/common/model/json/JSONXingUserCompany;

    invoke-virtual {v2, p1}, Lcom/callapp/common/model/json/JSONXingUserCompany;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public getNon_primary_companies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONXingUserCompany;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingProfessionalExperience;->non_primary_companies:Ljava/util/List;

    return-object v0
.end method

.method public getPrimary_company()Lcom/callapp/common/model/json/JSONXingUserCompany;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingProfessionalExperience;->primary_company:Lcom/callapp/common/model/json/JSONXingUserCompany;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingProfessionalExperience;->non_primary_companies:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 33
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingProfessionalExperience;->primary_company:Lcom/callapp/common/model/json/JSONXingUserCompany;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONXingUserCompany;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setNon_primary_companies(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONXingUserCompany;",
            ">;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingProfessionalExperience;->non_primary_companies:Ljava/util/List;

    return-void
.end method

.method public setPrimary_company(Lcom/callapp/common/model/json/JSONXingUserCompany;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingProfessionalExperience;->primary_company:Lcom/callapp/common/model/json/JSONXingUserCompany;

    return-void
.end method
