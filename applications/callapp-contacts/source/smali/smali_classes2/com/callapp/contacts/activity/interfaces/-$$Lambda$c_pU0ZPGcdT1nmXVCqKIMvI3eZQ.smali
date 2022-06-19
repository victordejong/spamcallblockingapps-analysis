.class public final synthetic Lcom/callapp/contacts/activity/interfaces/-$$Lambda$c_pU0ZPGcdT1nmXVCqKIMvI3eZQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/event/bus/EventType;


# static fields
.field public static final synthetic INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$c_pU0ZPGcdT1nmXVCqKIMvI3eZQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$c_pU0ZPGcdT1nmXVCqKIMvI3eZQ;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$c_pU0ZPGcdT1nmXVCqKIMvI3eZQ;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$c_pU0ZPGcdT1nmXVCqKIMvI3eZQ;->INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$c_pU0ZPGcdT1nmXVCqKIMvI3eZQ;

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

    check-cast p1, Lcom/callapp/contacts/activity/interfaces/OnBadgeNotificationDataChangeListener;

    check-cast p2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-interface {p1, p2}, Lcom/callapp/contacts/activity/interfaces/OnBadgeNotificationDataChangeListener;->a(Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)V

    return-void
.end method
