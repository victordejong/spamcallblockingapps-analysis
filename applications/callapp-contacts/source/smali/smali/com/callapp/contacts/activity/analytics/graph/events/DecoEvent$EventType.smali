.class public final enum Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

.field public static final enum EVENT_COLOR_CHANGE:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

.field public static final enum EVENT_EFFECT:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

.field public static final enum EVENT_HIDE:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

.field public static final enum EVENT_MOVE:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

.field public static final enum EVENT_SHOW:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 167
    new-instance v0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    const-string v1, "EVENT_MOVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;->EVENT_MOVE:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    .line 168
    new-instance v1, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    const-string v3, "EVENT_SHOW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;->EVENT_SHOW:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    .line 169
    new-instance v3, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    const-string v5, "EVENT_HIDE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;->EVENT_HIDE:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    .line 170
    new-instance v5, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    const-string v7, "EVENT_EFFECT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;->EVENT_EFFECT:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    .line 171
    new-instance v7, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    const-string v9, "EVENT_COLOR_CHANGE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;->EVENT_COLOR_CHANGE:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 166
    sput-object v9, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;->$VALUES:[Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 166
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;
    .locals 1

    .line 166
    const-class v0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;
    .locals 1

    .line 166
    sget-object v0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;->$VALUES:[Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    invoke-virtual {v0}, [Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    return-object v0
.end method
