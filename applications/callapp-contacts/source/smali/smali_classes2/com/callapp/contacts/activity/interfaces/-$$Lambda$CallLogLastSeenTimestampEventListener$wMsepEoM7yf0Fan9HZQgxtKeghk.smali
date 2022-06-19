.class public final synthetic Lcom/callapp/contacts/activity/interfaces/-$$Lambda$CallLogLastSeenTimestampEventListener$wMsepEoM7yf0Fan9HZQgxtKeghk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/event/bus/EventType;


# static fields
.field public static final synthetic INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$CallLogLastSeenTimestampEventListener$wMsepEoM7yf0Fan9HZQgxtKeghk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$CallLogLastSeenTimestampEventListener$wMsepEoM7yf0Fan9HZQgxtKeghk;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$CallLogLastSeenTimestampEventListener$wMsepEoM7yf0Fan9HZQgxtKeghk;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$CallLogLastSeenTimestampEventListener$wMsepEoM7yf0Fan9HZQgxtKeghk;->INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$CallLogLastSeenTimestampEventListener$wMsepEoM7yf0Fan9HZQgxtKeghk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fire(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/callapp/contacts/activity/interfaces/CallLogLastSeenTimestampEventListener;

    check-cast p2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/interfaces/CallLogLastSeenTimestampEventListener$-CC;->lambda$wMsepEoM7yf0Fan9HZQgxtKeghk(Lcom/callapp/contacts/activity/interfaces/CallLogLastSeenTimestampEventListener;Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)V

    return-void
.end method
