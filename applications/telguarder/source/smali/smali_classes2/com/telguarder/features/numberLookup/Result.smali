.class public abstract Lcom/telguarder/features/numberLookup/Result;
.super Ljava/lang/Object;
.source "Result.java"

# interfaces
.implements Lcom/telguarder/features/rateAndFeedback/Reportable;
.implements Lcom/telguarder/features/sharing/Shareable;
.implements Ljava/io/Serializable;


# instance fields
.field public address:Lcom/telguarder/features/numberLookup/Address;

.field public birthDate:Ljava/lang/String;

.field public coordinates:Lcom/telguarder/features/numberLookup/Coordinates;

.field public email:Ljava/lang/String;

.field public firstName:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public lastName:Ljava/lang/String;

.field public logoUrl:Ljava/lang/String;

.field public middleName:Ljava/lang/String;

.field public mobileNumbers:Lcom/telguarder/features/numberLookup/PhoneNumber;

.field public name:Ljava/lang/String;

.field public phoneNumbers:Lcom/telguarder/features/numberLookup/PhoneNumber;

.field public regionCode:Ljava/lang/String;

.field public spamInfoPageUrl:Ljava/lang/String;

.field public type:Lcom/telguarder/features/numberLookup/ActorType;

.field public visitingAddress:Lcom/telguarder/features/numberLookup/Address;

.field public webUrl:Ljava/lang/String;

.field public webUrlText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getPhoneNumbersForSharing()Ljava/lang/String;
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->phoneNumbers:Lcom/telguarder/features/numberLookup/PhoneNumber;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneNumber;->asList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/Result;->phoneNumbers:Lcom/telguarder/features/numberLookup/PhoneNumber;

    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/PhoneNumber;->getForSharing()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->mobileNumbers:Lcom/telguarder/features/numberLookup/PhoneNumber;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneNumber;->asList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 212
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/Result;->mobileNumbers:Lcom/telguarder/features/numberLookup/PhoneNumber;

    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/PhoneNumber;->getForSharing()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method


# virtual methods
.method public geAddressForMapLocation()Ljava/lang/String;
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->visitingAddress:Lcom/telguarder/features/numberLookup/Address;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/Address;->place:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->visitingAddress:Lcom/telguarder/features/numberLookup/Address;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/Address;->zip:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->visitingAddress:Lcom/telguarder/features/numberLookup/Address;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/Address;->street:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->visitingAddress:Lcom/telguarder/features/numberLookup/Address;

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->address:Lcom/telguarder/features/numberLookup/Address;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/Address;->place:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->address:Lcom/telguarder/features/numberLookup/Address;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/Address;->zip:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->address:Lcom/telguarder/features/numberLookup/Address;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/Address;->street:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 102
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->address:Lcom/telguarder/features/numberLookup/Address;

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_6

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/telguarder/features/numberLookup/Address;->street:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/telguarder/features/numberLookup/Address;->zip:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/telguarder/features/numberLookup/Address;->zip:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/telguarder/features/numberLookup/Address;->place:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v3, v0, Lcom/telguarder/features/numberLookup/Address;->place:Ljava/lang/String;

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->regionCode:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    return-object v1
.end method

.method public getActorType()Lcom/telguarder/features/numberLookup/ActorType;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->type:Lcom/telguarder/features/numberLookup/ActorType;

    return-object v0
.end method

.method public getAllPhoneNumberList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    iget-object v1, p0, Lcom/telguarder/features/numberLookup/Result;->phoneNumbers:Lcom/telguarder/features/numberLookup/PhoneNumber;

    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/PhoneNumber;->asList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/telguarder/features/numberLookup/Result;->mobileNumbers:Lcom/telguarder/features/numberLookup/PhoneNumber;

    if-eqz v1, :cond_1

    .line 173
    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/PhoneNumber;->asList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public getAllReportablePhoneNumbers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/Result;->getAllPhoneNumberList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAnyAddress()Lcom/telguarder/features/numberLookup/Address;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->visitingAddress:Lcom/telguarder/features/numberLookup/Address;

    if-eqz v0, :cond_0

    return-object v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->address:Lcom/telguarder/features/numberLookup/Address;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAnyMobileNumber()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->mobileNumbers:Lcom/telguarder/features/numberLookup/PhoneNumber;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneNumber;->primary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->mobileNumbers:Lcom/telguarder/features/numberLookup/PhoneNumber;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneNumber;->primary:Ljava/lang/String;

    return-object v0

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->mobileNumbers:Lcom/telguarder/features/numberLookup/PhoneNumber;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneNumber;->secondary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->mobileNumbers:Lcom/telguarder/features/numberLookup/PhoneNumber;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneNumber;->secondary:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAnyPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 138
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/Result;->getPrimaryPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/Result;->getPrimaryPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->phoneNumbers:Lcom/telguarder/features/numberLookup/PhoneNumber;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneNumber;->secondary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->phoneNumbers:Lcom/telguarder/features/numberLookup/PhoneNumber;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneNumber;->secondary:Ljava/lang/String;

    return-object v0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->mobileNumbers:Lcom/telguarder/features/numberLookup/PhoneNumber;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneNumber;->secondary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->mobileNumbers:Lcom/telguarder/features/numberLookup/PhoneNumber;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneNumber;->secondary:Ljava/lang/String;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormattedName()Ljava/lang/String;
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->type:Lcom/telguarder/features/numberLookup/ActorType;

    sget-object v1, Lcom/telguarder/features/numberLookup/ActorType;->PERSON:Lcom/telguarder/features/numberLookup/ActorType;

    const-string v2, ""

    if-ne v0, v1, :cond_1

    .line 65
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->firstName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/Result;->firstName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->lastName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/Result;->lastName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 76
    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->phoneNumbers:Lcom/telguarder/features/numberLookup/PhoneNumber;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneNumber;->primary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->phoneNumbers:Lcom/telguarder/features/numberLookup/PhoneNumber;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneNumber;->primary:Ljava/lang/String;

    return-object v0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->mobileNumbers:Lcom/telguarder/features/numberLookup/PhoneNumber;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneNumber;->primary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->mobileNumbers:Lcom/telguarder/features/numberLookup/PhoneNumber;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneNumber;->primary:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReportableAddress()Ljava/lang/String;
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/Result;->getAnyAddress()Lcom/telguarder/features/numberLookup/Address;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 127
    :cond_0
    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/Address;->asTwoLines()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReportableName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReportablePhoneNumber()Ljava/lang/String;
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/Result;->getAnyPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReportableWebUrl()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->webUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getShareableAddress()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->address:Lcom/telguarder/features/numberLookup/Address;

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/Address;->singleLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShareableCompanyName()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getShareableEmailAddress()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getShareableName()Ljava/lang/String;
    .locals 1

    .line 223
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/Result;->getFormattedName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShareablePhoneNumber()Ljava/lang/String;
    .locals 1

    .line 235
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/Result;->getAnyPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShareableRole()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getShareableText()Ljava/lang/String;
    .locals 3

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/Result;->getFormattedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/Result;->getAnyAddress()Lcom/telguarder/features/numberLookup/Address;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/Result;->getAnyAddress()Lcom/telguarder/features/numberLookup/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/Address;->singleLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    :cond_0
    invoke-direct {p0}, Lcom/telguarder/features/numberLookup/Result;->getPhoneNumbersForSharing()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getShareableWebsite()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->webUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWebUrlTextForDisplaying()Ljava/lang/String;
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->webUrlText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->webUrl:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/telguarder/features/numberLookup/Result;->webUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/Result;->webUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 47
    :goto_0
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->webUrl:Ljava/lang/String;

    return-object v0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->webUrlText:Ljava/lang/String;

    return-object v0
.end method

.method public hasAnyMobileNumber()Z
    .locals 1

    .line 268
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/Result;->getAnyMobileNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasAnyPhoneNumber()Z
    .locals 1

    .line 263
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/Result;->getAnyPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasEmailAddress()Z
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->email:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasValidAddressForMapLocation()Z
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->visitingAddress:Lcom/telguarder/features/numberLookup/Address;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/Address;->place:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->visitingAddress:Lcom/telguarder/features/numberLookup/Address;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/Address;->zip:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->visitingAddress:Lcom/telguarder/features/numberLookup/Address;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/Address;->street:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->address:Lcom/telguarder/features/numberLookup/Address;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/Address;->place:Ljava/lang/String;

    .line 93
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->address:Lcom/telguarder/features/numberLookup/Address;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/Address;->zip:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Result;->address:Lcom/telguarder/features/numberLookup/Address;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/Address;->street:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
