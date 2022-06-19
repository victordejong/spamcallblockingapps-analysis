.class public Lcom/callapp/common/model/json/JSONXingUser;
.super Lcom/callapp/common/model/json/JSONXingCompactUser;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x46d81606ef75912fL


# instance fields
.field private birth_date:Lcom/callapp/common/model/json/JSONXingUserBirthday;

.field private first_name:Ljava/lang/String;

.field private gender:Ljava/lang/String;

.field private instant_messaging_accounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private last_name:Ljava/lang/String;

.field private professional_experience:Lcom/callapp/common/model/json/JSONXingProfessionalExperience;

.field private web_profiles:Lcom/callapp/common/model/json/JSONXingWebProfiles;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/callapp/common/model/json/JSONXingCompactUser;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 96
    :cond_0
    invoke-super {p0, p1}, Lcom/callapp/common/model/json/JSONXingCompactUser;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 98
    :cond_1
    instance-of v1, p1, Lcom/callapp/common/model/json/JSONXingUser;

    if-nez v1, :cond_2

    return v2

    .line 100
    :cond_2
    check-cast p1, Lcom/callapp/common/model/json/JSONXingUser;

    .line 101
    iget-object v1, p0, Lcom/callapp/common/model/json/JSONXingUser;->birth_date:Lcom/callapp/common/model/json/JSONXingUserBirthday;

    if-nez v1, :cond_3

    .line 102
    iget-object v1, p1, Lcom/callapp/common/model/json/JSONXingUser;->birth_date:Lcom/callapp/common/model/json/JSONXingUserBirthday;

    if-eqz v1, :cond_4

    return v2

    .line 104
    :cond_3
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingUser;->birth_date:Lcom/callapp/common/model/json/JSONXingUserBirthday;

    invoke-virtual {v1, v3}, Lcom/callapp/common/model/json/JSONXingUserBirthday;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 106
    :cond_4
    iget-object v1, p0, Lcom/callapp/common/model/json/JSONXingUser;->first_name:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 107
    iget-object v1, p1, Lcom/callapp/common/model/json/JSONXingUser;->first_name:Ljava/lang/String;

    if-eqz v1, :cond_6

    return v2

    .line 109
    :cond_5
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingUser;->first_name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 111
    :cond_6
    iget-object v1, p0, Lcom/callapp/common/model/json/JSONXingUser;->gender:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 112
    iget-object v1, p1, Lcom/callapp/common/model/json/JSONXingUser;->gender:Ljava/lang/String;

    if-eqz v1, :cond_8

    return v2

    .line 114
    :cond_7
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingUser;->gender:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 116
    :cond_8
    iget-object v1, p0, Lcom/callapp/common/model/json/JSONXingUser;->instant_messaging_accounts:Ljava/util/Map;

    if-nez v1, :cond_9

    .line 117
    iget-object v1, p1, Lcom/callapp/common/model/json/JSONXingUser;->instant_messaging_accounts:Ljava/util/Map;

    if-eqz v1, :cond_a

    return v2

    .line 119
    :cond_9
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingUser;->instant_messaging_accounts:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 121
    :cond_a
    iget-object v1, p0, Lcom/callapp/common/model/json/JSONXingUser;->last_name:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 122
    iget-object v1, p1, Lcom/callapp/common/model/json/JSONXingUser;->last_name:Ljava/lang/String;

    if-eqz v1, :cond_c

    return v2

    .line 124
    :cond_b
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingUser;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 126
    :cond_c
    iget-object v1, p0, Lcom/callapp/common/model/json/JSONXingUser;->professional_experience:Lcom/callapp/common/model/json/JSONXingProfessionalExperience;

    if-nez v1, :cond_d

    .line 127
    iget-object v1, p1, Lcom/callapp/common/model/json/JSONXingUser;->professional_experience:Lcom/callapp/common/model/json/JSONXingProfessionalExperience;

    if-eqz v1, :cond_e

    return v2

    .line 129
    :cond_d
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingUser;->professional_experience:Lcom/callapp/common/model/json/JSONXingProfessionalExperience;

    invoke-virtual {v1, v3}, Lcom/callapp/common/model/json/JSONXingProfessionalExperience;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 131
    :cond_e
    iget-object v1, p0, Lcom/callapp/common/model/json/JSONXingUser;->web_profiles:Lcom/callapp/common/model/json/JSONXingWebProfiles;

    if-nez v1, :cond_f

    .line 132
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONXingUser;->web_profiles:Lcom/callapp/common/model/json/JSONXingWebProfiles;

    if-eqz p1, :cond_10

    return v2

    .line 134
    :cond_f
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONXingUser;->web_profiles:Lcom/callapp/common/model/json/JSONXingWebProfiles;

    invoke-virtual {v1, p1}, Lcom/callapp/common/model/json/JSONXingWebProfiles;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    return v2

    :cond_10
    return v0
.end method

.method public getBirth_date()Lcom/callapp/common/model/json/JSONXingUserBirthday;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingUser;->birth_date:Lcom/callapp/common/model/json/JSONXingUserBirthday;

    return-object v0
.end method

.method public getFirst_name()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingUser;->first_name:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingUser;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getInstant_messaging_accounts()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingUser;->instant_messaging_accounts:Ljava/util/Map;

    return-object v0
.end method

.method public getLast_name()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingUser;->last_name:Ljava/lang/String;

    return-object v0
.end method

.method public getProfessional_experience()Lcom/callapp/common/model/json/JSONXingProfessionalExperience;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingUser;->professional_experience:Lcom/callapp/common/model/json/JSONXingProfessionalExperience;

    return-object v0
.end method

.method public getWeb_profiles()Lcom/callapp/common/model/json/JSONXingWebProfiles;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingUser;->web_profiles:Lcom/callapp/common/model/json/JSONXingWebProfiles;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 81
    invoke-super {p0}, Lcom/callapp/common/model/json/JSONXingCompactUser;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 82
    iget-object v1, p0, Lcom/callapp/common/model/json/JSONXingUser;->birth_date:Lcom/callapp/common/model/json/JSONXingUserBirthday;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONXingUserBirthday;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 83
    iget-object v1, p0, Lcom/callapp/common/model/json/JSONXingUser;->first_name:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 84
    iget-object v1, p0, Lcom/callapp/common/model/json/JSONXingUser;->gender:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 85
    iget-object v1, p0, Lcom/callapp/common/model/json/JSONXingUser;->instant_messaging_accounts:Ljava/util/Map;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 86
    iget-object v1, p0, Lcom/callapp/common/model/json/JSONXingUser;->last_name:Ljava/lang/String;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 87
    iget-object v1, p0, Lcom/callapp/common/model/json/JSONXingUser;->professional_experience:Lcom/callapp/common/model/json/JSONXingProfessionalExperience;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONXingProfessionalExperience;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 88
    iget-object v1, p0, Lcom/callapp/common/model/json/JSONXingUser;->web_profiles:Lcom/callapp/common/model/json/JSONXingWebProfiles;

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONXingWebProfiles;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    return v0
.end method

.method public setBirth_date(Lcom/callapp/common/model/json/JSONXingUserBirthday;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingUser;->birth_date:Lcom/callapp/common/model/json/JSONXingUserBirthday;

    return-void
.end method

.method public setFirst_name(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingUser;->first_name:Ljava/lang/String;

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingUser;->gender:Ljava/lang/String;

    return-void
.end method

.method public setInstant_messaging_accounts(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingUser;->instant_messaging_accounts:Ljava/util/Map;

    return-void
.end method

.method public setLast_name(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingUser;->last_name:Ljava/lang/String;

    return-void
.end method

.method public setProfessional_experience(Lcom/callapp/common/model/json/JSONXingProfessionalExperience;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingUser;->professional_experience:Lcom/callapp/common/model/json/JSONXingProfessionalExperience;

    return-void
.end method

.method public setWeb_profiles(Lcom/callapp/common/model/json/JSONXingWebProfiles;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingUser;->web_profiles:Lcom/callapp/common/model/json/JSONXingWebProfiles;

    return-void
.end method
