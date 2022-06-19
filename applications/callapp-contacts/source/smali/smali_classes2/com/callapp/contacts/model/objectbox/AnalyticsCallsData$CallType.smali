.class public final enum Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

.field public static final enum INCOMING:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

.field public static final enum MISSED_CALL:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

.field public static final enum NOT_ANSWER:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

.field public static final enum OUTGOING:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 221
    new-instance v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    const-string v1, "NOT_ANSWER"

    const/4 v2, 0x0

    const-string v3, "not_answer"

    invoke-direct {v0, v1, v2, v3}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->NOT_ANSWER:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    .line 222
    new-instance v1, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    const-string v3, "OUTGOING"

    const/4 v4, 0x1

    const-string v5, "outgoing"

    invoke-direct {v1, v3, v4, v5}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->OUTGOING:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    .line 223
    new-instance v3, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    const-string v5, "INCOMING"

    const/4 v6, 0x2

    const-string v7, "incoming"

    invoke-direct {v3, v5, v6, v7}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->INCOMING:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    .line 224
    new-instance v5, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    const-string v7, "MISSED_CALL"

    const/4 v8, 0x3

    const-string v9, "missed_call"

    invoke-direct {v5, v7, v8, v9}, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->MISSED_CALL:Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 220
    sput-object v7, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->$VALUES:[Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

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

    .line 228
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 229
    iput-object p3, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;
    .locals 1

    .line 220
    const-class v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;
    .locals 1

    .line 220
    sget-object v0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->$VALUES:[Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    invoke-virtual {v0}, [Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;

    return-object v0
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsCallsData$CallType;->name:Ljava/lang/String;

    return-object v0
.end method
