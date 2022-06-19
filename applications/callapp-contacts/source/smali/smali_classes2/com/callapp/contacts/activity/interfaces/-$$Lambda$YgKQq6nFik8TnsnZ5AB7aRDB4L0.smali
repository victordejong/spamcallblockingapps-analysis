.class public final synthetic Lcom/callapp/contacts/activity/interfaces/-$$Lambda$YgKQq6nFik8TnsnZ5AB7aRDB4L0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/event/bus/EventType;


# static fields
.field public static final synthetic INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$YgKQq6nFik8TnsnZ5AB7aRDB4L0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$YgKQq6nFik8TnsnZ5AB7aRDB4L0;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$YgKQq6nFik8TnsnZ5AB7aRDB4L0;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$YgKQq6nFik8TnsnZ5AB7aRDB4L0;->INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$YgKQq6nFik8TnsnZ5AB7aRDB4L0;

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

    check-cast p1, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;

    check-cast p2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-interface {p1, p2}, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->invalidateData(Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)V

    return-void
.end method
