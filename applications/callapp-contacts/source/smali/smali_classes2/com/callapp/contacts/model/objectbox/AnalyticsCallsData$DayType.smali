.class public final enum Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DayType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;

.field public static final enum DAY:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;

.field public static final enum NIGHT:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;


# instance fields
.field private dayType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 206
    new-instance v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;

    const-string v1, "DAY"

    const/4 v2, 0x0

    const-string v3, "day"

    invoke-direct {v0, v1, v2, v3}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;->DAY:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;

    .line 207
    new-instance v1, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;

    const-string v3, "NIGHT"

    const/4 v4, 0x1

    const-string v5, "night"

    invoke-direct {v1, v3, v4, v5}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;->NIGHT:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 205
    sput-object v3, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;->$VALUES:[Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 211
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 212
    iput-object p3, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;->dayType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;
    .locals 1

    .line 205
    const-class v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;
    .locals 1

    .line 205
    sget-object v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;->$VALUES:[Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;

    invoke-virtual {v0}, [Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;

    return-object v0
.end method


# virtual methods
.method public final getDayType()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$DayType;->dayType:Ljava/lang/String;

    return-object v0
.end method
