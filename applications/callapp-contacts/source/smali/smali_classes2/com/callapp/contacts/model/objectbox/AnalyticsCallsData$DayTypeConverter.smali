.class Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayTypeConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/converter/PropertyConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DayTypeConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/converter/PropertyConverter<",
        "Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertToDatabaseValue(Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;)Ljava/lang/Integer;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 275
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic convertToDatabaseValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 259
    check-cast p1, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayTypeConverter;->convertToDatabaseValue(Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public convertToEntityProperty(Ljava/lang/Integer;)Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 265
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;->values()[Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 266
    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;->ordinal()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    :cond_2
    sget-object p1, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;->DAY:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;

    return-object p1
.end method

.method public bridge synthetic convertToEntityProperty(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 259
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayTypeConverter;->convertToEntityProperty(Ljava/lang/Integer;)Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;

    move-result-object p1

    return-object p1
.end method
