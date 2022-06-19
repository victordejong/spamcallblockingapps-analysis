.class public Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtractedPhone"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 249
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;-><init>(Ljava/lang/String;Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;ZLjava/lang/String;)V
    .locals 0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-boolean p3, p0, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;->d:Z

    .line 254
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;->a:Ljava/lang/String;

    .line 255
    iput-object p2, p0, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;->c:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    .line 256
    iput-object p4, p0, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;)Ljava/lang/String;
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;)Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;->c:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    return-object p0
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 229
    check-cast p1, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;

    .line 1237
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;->c:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    iget-boolean v0, v0, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->isReliable:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;->isReliable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1241
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;->c:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    iget-boolean v0, v0, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->isReliable:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;->isReliable()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 1245
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;->c:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->ordinal()I

    move-result v0

    iget-object p1, p1, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;->c:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->ordinal()I

    move-result p1

    if-ge v0, p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public getAreaCode()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;->c:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    return-object v0
.end method

.method public isReliable()Z
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;->c:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;->isReliable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isValidated()Z
    .locals 1

    .line 272
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;->d:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PhoneCandidate{phoneNumber=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", source=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;->c:Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhoneSourcePriority;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
