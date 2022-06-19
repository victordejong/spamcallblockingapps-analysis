.class public Lcom/telguarder/features/numberLookup/PhoneEvent;
.super Ljava/lang/Object;
.source "PhoneEvent.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/telguarder/features/rateAndFeedback/Reportable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/telguarder/features/numberLookup/PhoneEvent;",
        ">;",
        "Lcom/telguarder/features/rateAndFeedback/Reportable;"
    }
.end annotation


# instance fields
.field public actorId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "actorId"
    .end annotation
.end field

.field public actorPhoneNumber:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "actorPhoneNumber"
    .end annotation
.end field

.field public actorType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "actorType"
    .end annotation
.end field

.field public address:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "address"
    .end annotation
.end field

.field public birthDate:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "birthDate"
    .end annotation
.end field

.field public callLogId:J

.field public calledPhoneNumber:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "calledPhoneNumber"
    .end annotation
.end field

.field public counter:I

.field public dateTimeInMillis:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "dateTimeInMillis"
    .end annotation
.end field

.field public email:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "email"
    .end annotation
.end field

.field public id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field public infoPageUrl:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "infoPageUrl"
    .end annotation
.end field

.field public lastUpdateDateTimeInMillis:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "lastUpdateDateTimeInMillis"
    .end annotation
.end field

.field public logoUrl:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "logoUrl"
    .end annotation
.end field

.field private mLastSpamComment:Ljava/lang/String;

.field private mLastSpamDate:Ljava/lang/String;

.field private mReportableAddress:Ljava/lang/String;

.field private mSpam:Ljava/lang/Boolean;

.field private mSpamComunityOrange:Ljava/lang/Boolean;

.field private mSpamComunityRed:Ljava/lang/Boolean;

.field private mSpamMessage:Ljava/lang/String;

.field private mSpamPersonal:Ljava/lang/Boolean;

.field private mSpamTitle:Ljava/lang/String;

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "name"
    .end annotation
.end field

.field public phoneNumberForDisplaying:Ljava/lang/String;

.field public phonebookNumber:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "phonebookNumber"
    .end annotation
.end field

.field public regionCode:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "regionCode"
    .end annotation
.end field

.field public searchResult:Lcom/telguarder/features/numberLookup/SearchResult;

.field public securityLevel:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "securityLevel"
    .end annotation
.end field

.field public spamType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "spamType"
    .end annotation
.end field

.field public type:I

.field public website:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "website"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mSpamComunityRed:Ljava/lang/Boolean;

    .line 61
    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mSpamComunityOrange:Ljava/lang/Boolean;

    .line 62
    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mSpamPersonal:Ljava/lang/Boolean;

    .line 63
    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mSpam:Ljava/lang/Boolean;

    .line 64
    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mSpamTitle:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mSpamMessage:Ljava/lang/String;

    return-void
.end method

.method private callTypeIsIncomingOrMissed(Lcom/telguarder/features/numberLookup/PhoneEvent;)I
    .locals 2

    .line 216
    iget v0, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->type:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    iget p1, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->type:I

    const/4 v0, 0x3

    invoke-static {p1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static phoneCallOfSearchResult(Landroid/content/Context;Lcom/telguarder/features/numberLookup/SearchResult;Ljava/lang/String;Lcom/telguarder/features/numberLookup/Spam;Ljava/lang/String;)Lcom/telguarder/features/numberLookup/PhoneEvent;
    .locals 3

    .line 82
    new-instance v0, Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-direct {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;-><init>()V

    .line 83
    iput-object p1, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->searchResult:Lcom/telguarder/features/numberLookup/SearchResult;

    const/4 v1, -0x1

    .line 84
    iput v1, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->id:I

    .line 85
    iput v1, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->type:I

    .line 86
    iget-object v1, p1, Lcom/telguarder/features/numberLookup/SearchResult;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->actorId:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Lcom/telguarder/features/numberLookup/SearchResult;->getFormattedName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    .line 88
    iget-object v1, p1, Lcom/telguarder/features/numberLookup/SearchResult;->birthDate:Ljava/lang/String;

    iput-object v1, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->birthDate:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Lcom/telguarder/features/numberLookup/SearchResult;->getActorType()Lcom/telguarder/features/numberLookup/ActorType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/ActorType;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->actorType:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Lcom/telguarder/features/numberLookup/SearchResult;->getAnyPhoneNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->actorPhoneNumber:Ljava/lang/String;

    .line 91
    iget-object v1, p1, Lcom/telguarder/features/numberLookup/SearchResult;->logoUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->logoUrl:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 93
    iget-object v2, p3, Lcom/telguarder/features/numberLookup/Spam;->spamType:Ljava/lang/String;

    iput-object v2, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->spamType:Ljava/lang/String;

    .line 94
    iget-object p3, p3, Lcom/telguarder/features/numberLookup/Spam;->infoPageUrl:Ljava/lang/String;

    iput-object p3, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->infoPageUrl:Ljava/lang/String;

    goto :goto_0

    .line 96
    :cond_0
    iput-object v1, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->spamType:Ljava/lang/String;

    .line 97
    iput-object v1, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->infoPageUrl:Ljava/lang/String;

    .line 99
    :goto_0
    invoke-virtual {p1}, Lcom/telguarder/features/numberLookup/SearchResult;->getAnyAddress()Lcom/telguarder/features/numberLookup/Address;

    move-result-object p3

    invoke-virtual {p3}, Lcom/telguarder/features/numberLookup/Address;->singleLine()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 100
    invoke-virtual {p1}, Lcom/telguarder/features/numberLookup/SearchResult;->getAnyAddress()Lcom/telguarder/features/numberLookup/Address;

    move-result-object p3

    invoke-virtual {p3}, Lcom/telguarder/features/numberLookup/Address;->singleLine()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->address:Ljava/lang/String;

    .line 102
    :cond_1
    iget-object p3, p1, Lcom/telguarder/features/numberLookup/SearchResult;->email:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 103
    iget-object p3, p1, Lcom/telguarder/features/numberLookup/SearchResult;->email:Ljava/lang/String;

    iput-object p3, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->email:Ljava/lang/String;

    .line 105
    :cond_2
    iget-object p3, p1, Lcom/telguarder/features/numberLookup/SearchResult;->webUrl:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 106
    iget-object p1, p1, Lcom/telguarder/features/numberLookup/SearchResult;->webUrl:Ljava/lang/String;

    iput-object p1, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->website:Ljava/lang/String;

    .line 108
    :cond_3
    iput-object p2, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    const/4 p1, 0x0

    .line 109
    invoke-static {p0, p2, p1, v1}, Lcom/telguarder/helpers/contact/ContactUtils;->getFormattedPhoneNumber(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->phoneNumberForDisplaying:Ljava/lang/String;

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    iput-wide p0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->dateTimeInMillis:J

    .line 111
    iput-object p4, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->securityLevel:Ljava/lang/String;

    return-object v0
.end method

.method public static phoneCallOfSearchResult(Landroid/content/Context;Lcom/telguarder/features/numberLookup/SearchResult;Ljava/lang/String;Ljava/lang/String;)Lcom/telguarder/features/numberLookup/PhoneEvent;
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-static {p0, p1, p2, v0, p3}, Lcom/telguarder/features/numberLookup/PhoneEvent;->phoneCallOfSearchResult(Landroid/content/Context;Lcom/telguarder/features/numberLookup/SearchResult;Ljava/lang/String;Lcom/telguarder/features/numberLookup/Spam;Ljava/lang/String;)Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object p0

    return-object p0
.end method

.method public static phoneEventOfCallCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/telguarder/features/numberLookup/PhoneEvent;
    .locals 5

    .line 117
    new-instance v0, Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-direct {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;-><init>()V

    const/4 v1, -0x1

    .line 118
    iput v1, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->id:I

    const-string v1, "_id"

    .line 119
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->callLogId:J

    const-string v1, "normalized_number"

    .line 120
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "number"

    .line 122
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 124
    :cond_0
    iput-object v1, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->phonebookNumber:Ljava/lang/String;

    const/4 v2, 0x0

    .line 125
    invoke-static {p0, v1, v2}, Lcom/telguarder/helpers/contact/ContactUtils;->getE164NUmberIfPossible(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    const/4 v4, 0x0

    .line 126
    invoke-static {p0, v3, v4, v2}, Lcom/telguarder/helpers/contact/ContactUtils;->getFormattedPhoneNumber(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->phoneNumberForDisplaying:Ljava/lang/String;

    .line 127
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "name"

    .line 128
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    goto :goto_0

    .line 130
    :cond_1
    invoke-static {p0}, Lcom/telguarder/helpers/contact/ContactUtils;->getHiddenNumberDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    :goto_0
    const-string p0, "type"

    .line 132
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    iput p0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->type:I

    .line 133
    sget-object p0, Lcom/telguarder/features/numberLookup/ActorType;->UNKNOWN:Lcom/telguarder/features/numberLookup/ActorType;

    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/ActorType;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->actorType:Ljava/lang/String;

    const-string p0, "date"

    .line 134
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    iput-wide p0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->dateTimeInMillis:J

    return-object v0
.end method

.method public static phoneEventOfHistoryCacheItem(Lcom/telguarder/features/numberLookup/CachedHistoryListItem;)Lcom/telguarder/features/numberLookup/PhoneEvent;
    .locals 3

    .line 140
    new-instance v0, Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-direct {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;-><init>()V

    const/4 v1, -0x1

    .line 141
    iput v1, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->id:I

    .line 142
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    .line 143
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->getSpamType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->spamType:Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->getInfoPageUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->infoPageUrl:Ljava/lang/String;

    .line 145
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->getPhoneNumberForDisplaying()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->phoneNumberForDisplaying:Ljava/lang/String;

    .line 146
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->getCalledPhoneNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->getCounter()I

    move-result v1

    iput v1, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->counter:I

    .line 148
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->getLastSpamComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->setLastSpamComment(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->getLastSpamDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->setLastSpamDate(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->getType()I

    move-result v1

    iput v1, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->type:I

    .line 151
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->getDateTimeInMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->dateTimeInMillis:J

    .line 152
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->getSecurityLevel()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->securityLevel:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/telguarder/features/numberLookup/PhoneEvent;)I
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 203
    iget v1, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->type:I

    iget v2, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->type:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 204
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 207
    :cond_0
    invoke-direct {p0, p0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->callTypeIsIncomingOrMissed(Lcom/telguarder/features/numberLookup/PhoneEvent;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 208
    invoke-direct {p0, p1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->callTypeIsIncomingOrMissed(Lcom/telguarder/features/numberLookup/PhoneEvent;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 209
    invoke-virtual {v2, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 210
    invoke-virtual {p1, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 211
    invoke-virtual {v0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 21
    check-cast p1, Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-virtual {p0, p1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->compareTo(Lcom/telguarder/features/numberLookup/PhoneEvent;)I

    move-result p1

    return p1
.end method

.method public getAllReportablePhoneNumbers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getDisplayableBirthDate()Ljava/lang/String;
    .locals 6

    .line 258
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->birthDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 262
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd. MMMM"

    new-instance v3, Ljava/util/Locale;

    const-string v4, "no"

    const-string v5, "NO"

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 264
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getLastSpamComment()Ljava/lang/String;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mLastSpamComment:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getLastSpamDate()Ljava/lang/String;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mLastSpamDate:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getLastSpamDateShort()Ljava/lang/String;
    .locals 4

    .line 356
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mLastSpamDate:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mLastSpamDate:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mLastSpamDate:Ljava/lang/String;

    const/16 v2, 0x8

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mLastSpamDate:Ljava/lang/String;

    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mLastSpamDate:Ljava/lang/String;

    return-object v0
.end method

.method public getReportableAddress()Ljava/lang/String;
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mReportableAddress:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->address:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\p{Cntrl}"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mReportableAddress:Ljava/lang/String;

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mReportableAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getReportableName()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getReportablePhoneNumber()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getReportableWebUrl()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->website:Ljava/lang/String;

    return-object v0
.end method

.method public getSpamMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mSpamMessage:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 323
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpamCommunityRed()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f100179

    .line 324
    invoke-static {p1, v0}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mSpamMessage:Ljava/lang/String;

    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpamCommunityOrange()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f10017a

    .line 326
    invoke-static {p1, v0}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mSpamMessage:Ljava/lang/String;

    goto :goto_0

    .line 327
    :cond_1
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpamPersonal()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f10017c

    .line 328
    invoke-static {p1, v0}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mSpamMessage:Ljava/lang/String;

    .line 331
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mSpamMessage:Ljava/lang/String;

    return-object p1
.end method

.method public getSpamTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mSpamTitle:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 304
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpamCommunityOrange()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f100182

    .line 305
    invoke-static {p1, v0}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mSpamTitle:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const v0, 0x7f100181

    .line 307
    invoke-static {p1, v0}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mSpamTitle:Ljava/lang/String;

    .line 317
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mSpamTitle:Ljava/lang/String;

    return-object p1
.end method

.method public isFromFreshCache(Landroid/content/Context;)Z
    .locals 5

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->lastUpdateDateTimeInMillis:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    invoke-static {p1}, Lcom/telguarder/helpers/common/AppUtil;->getLastUpdateTime(Landroid/content/Context;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->lastUpdateDateTimeInMillis:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isNumberTheSame(Ljava/lang/String;)Z
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/telguarder/helpers/contact/ContactUtils;->isNumberTheSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->actorPhoneNumber:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/telguarder/helpers/contact/ContactUtils;->isNumberTheSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->phonebookNumber:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/telguarder/helpers/contact/ContactUtils;->isNumberTheSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isSpam()Z
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mSpam:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->spamType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mSpam:Ljava/lang/Boolean;

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mSpam:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSpamCommunityOrange()Z
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mSpamComunityOrange:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpam()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->spamType:Ljava/lang/String;

    const-string v1, "communityReported"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mSpamComunityOrange:Ljava/lang/Boolean;

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mSpamComunityOrange:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSpamCommunityRed()Z
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mSpamComunityRed:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 272
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpam()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->spamType:Ljava/lang/String;

    const-string v1, "community"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mSpamComunityRed:Ljava/lang/Boolean;

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mSpamComunityRed:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSpamPersonal()Z
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mSpamPersonal:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 288
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpam()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->spamType:Ljava/lang/String;

    const-string v1, "personal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mSpamPersonal:Ljava/lang/Boolean;

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mSpamPersonal:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public sameAs(Lcom/telguarder/features/numberLookup/PhoneEvent;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->actorId:Ljava/lang/String;

    iget-object v1, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->actorId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/telguarder/helpers/common/AppUtil;->isSameStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/telguarder/helpers/common/AppUtil;->isSameStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->actorType:Ljava/lang/String;

    iget-object v1, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->actorType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/telguarder/helpers/common/AppUtil;->isSameStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->actorPhoneNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->actorPhoneNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/telguarder/helpers/common/AppUtil;->isSameStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->address:Ljava/lang/String;

    iget-object v1, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->address:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/telguarder/helpers/common/AppUtil;->isSameStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->logoUrl:Ljava/lang/String;

    iget-object v1, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->logoUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/telguarder/helpers/common/AppUtil;->isSameStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/telguarder/helpers/common/AppUtil;->isSameStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->spamType:Ljava/lang/String;

    iget-object v1, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->spamType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/telguarder/helpers/common/AppUtil;->isSameStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->securityLevel:Ljava/lang/String;

    iget-object p1, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->securityLevel:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/telguarder/helpers/common/AppUtil;->isSameStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setCoreValuesFromOtherPhoneCall(Lcom/telguarder/features/numberLookup/PhoneEvent;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 166
    :cond_0
    iget v0, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->id:I

    iput v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->id:I

    .line 167
    iget-object v0, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->actorId:Ljava/lang/String;

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->actorId:Ljava/lang/String;

    .line 168
    iget-object v0, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    .line 169
    iget-object v0, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->address:Ljava/lang/String;

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->address:Ljava/lang/String;

    .line 170
    iget-object v0, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->logoUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->logoUrl:Ljava/lang/String;

    .line 171
    iget-object v0, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->actorType:Ljava/lang/String;

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->actorType:Ljava/lang/String;

    .line 172
    iget-object v0, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->actorPhoneNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->actorPhoneNumber:Ljava/lang/String;

    .line 173
    iget-object v0, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    .line 174
    iget-object v0, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->email:Ljava/lang/String;

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->email:Ljava/lang/String;

    .line 175
    iget-object v0, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->website:Ljava/lang/String;

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->website:Ljava/lang/String;

    .line 176
    iget-object v0, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->birthDate:Ljava/lang/String;

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->birthDate:Ljava/lang/String;

    .line 177
    iget-wide v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->dateTimeInMillis:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 178
    iget-wide v0, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->dateTimeInMillis:J

    iput-wide v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->dateTimeInMillis:J

    .line 180
    :cond_1
    iget-wide v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->lastUpdateDateTimeInMillis:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 181
    iget-wide v0, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->lastUpdateDateTimeInMillis:J

    iput-wide v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->lastUpdateDateTimeInMillis:J

    :cond_2
    const/4 v0, 0x0

    .line 183
    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mSpamComunityRed:Ljava/lang/Boolean;

    .line 184
    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mSpamComunityOrange:Ljava/lang/Boolean;

    .line 185
    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mSpamPersonal:Ljava/lang/Boolean;

    .line 186
    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mSpam:Ljava/lang/Boolean;

    .line 187
    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mSpamTitle:Ljava/lang/String;

    .line 188
    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mSpamMessage:Ljava/lang/String;

    .line 189
    iget-object v0, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->spamType:Ljava/lang/String;

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->spamType:Ljava/lang/String;

    .line 190
    iget-object v0, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->securityLevel:Ljava/lang/String;

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->securityLevel:Ljava/lang/String;

    .line 191
    iget-object p1, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->infoPageUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->infoPageUrl:Ljava/lang/String;

    return-void
.end method

.method public setLastSpamComment(Ljava/lang/String;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mLastSpamComment:Ljava/lang/String;

    return-void
.end method

.method public setLastSpamDate(Ljava/lang/String;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEvent;->mLastSpamDate:Ljava/lang/String;

    return-void
.end method
