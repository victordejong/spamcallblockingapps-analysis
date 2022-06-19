.class public Lcom/telguarder/features/numberLookup/CachedHistoryListItem;
.super Lio/realm/RealmObject;
.source "CachedHistoryListItem.java"

# interfaces
.implements Lio/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxyInterface;


# instance fields
.field private calledPhoneNumber:Ljava/lang/String;

.field private counter:I

.field private dateTimeInMillis:J

.field private infoPageUrl:Ljava/lang/String;

.field private lastSpamComment:Ljava/lang/String;

.field private lastSpamDate:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private phoneNumberForDisplaying:Ljava/lang/String;

.field private securityLevel:Ljava/lang/String;

.field private spamType:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCalledPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->realmGet$calledPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCounter()I
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->realmGet$counter()I

    move-result v0

    return v0
.end method

.method public getDateTimeInMillis()J
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->realmGet$dateTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInfoPageUrl()Ljava/lang/String;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->realmGet$infoPageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastSpamComment()Ljava/lang/String;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->realmGet$lastSpamComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastSpamDate()Ljava/lang/String;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->realmGet$lastSpamDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumberForDisplaying()Ljava/lang/String;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->realmGet$phoneNumberForDisplaying()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecurityLevel()Ljava/lang/String;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->realmGet$securityLevel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpamType()Ljava/lang/String;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->realmGet$spamType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->realmGet$type()I

    move-result v0

    return v0
.end method

.method public realmGet$calledPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->calledPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$counter()I
    .locals 1

    iget v0, p0, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->counter:I

    return v0
.end method

.method public realmGet$dateTimeInMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->dateTimeInMillis:J

    return-wide v0
.end method

.method public realmGet$infoPageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->infoPageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$lastSpamComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->lastSpamComment:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$lastSpamDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->lastSpamDate:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$phoneNumberForDisplaying()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->phoneNumberForDisplaying:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$securityLevel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->securityLevel:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$spamType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->spamType:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$type()I
    .locals 1

    iget v0, p0, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->type:I

    return v0
.end method

.method public realmSet$calledPhoneNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->calledPhoneNumber:Ljava/lang/String;

    return-void
.end method

.method public realmSet$counter(I)V
    .locals 0

    iput p1, p0, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->counter:I

    return-void
.end method

.method public realmSet$dateTimeInMillis(J)V
    .locals 0

    iput-wide p1, p0, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->dateTimeInMillis:J

    return-void
.end method

.method public realmSet$infoPageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->infoPageUrl:Ljava/lang/String;

    return-void
.end method

.method public realmSet$lastSpamComment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->lastSpamComment:Ljava/lang/String;

    return-void
.end method

.method public realmSet$lastSpamDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->lastSpamDate:Ljava/lang/String;

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$phoneNumberForDisplaying(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->phoneNumberForDisplaying:Ljava/lang/String;

    return-void
.end method

.method public realmSet$securityLevel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->securityLevel:Ljava/lang/String;

    return-void
.end method

.method public realmSet$spamType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->spamType:Ljava/lang/String;

    return-void
.end method

.method public realmSet$type(I)V
    .locals 0

    iput p1, p0, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->type:I

    return-void
.end method

.method public setCalledPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->realmSet$calledPhoneNumber(Ljava/lang/String;)V

    return-void
.end method

.method public setCounter(I)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->realmSet$counter(I)V

    return-void
.end method

.method public setDateTimeInMillis(J)V
    .locals 0

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->realmSet$dateTimeInMillis(J)V

    return-void
.end method

.method public setInfoPageUrl(Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->realmGet$infoPageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->realmSet$infoPageUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setLastSpamComment(Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->realmSet$lastSpamComment(Ljava/lang/String;)V

    return-void
.end method

.method public setLastSpamDate(Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->realmSet$lastSpamDate(Ljava/lang/String;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->realmSet$name(Ljava/lang/String;)V

    return-void
.end method

.method public setPhoneNumberForDisplaying(Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->realmSet$phoneNumberForDisplaying(Ljava/lang/String;)V

    return-void
.end method

.method public setSecurityLevel(Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->realmSet$securityLevel(Ljava/lang/String;)V

    return-void
.end method

.method public setSpamType(Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->realmSet$spamType(Ljava/lang/String;)V

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->realmSet$type(I)V

    return-void
.end method
