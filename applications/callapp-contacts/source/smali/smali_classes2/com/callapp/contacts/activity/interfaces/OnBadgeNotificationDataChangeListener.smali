.class public interface abstract Lcom/callapp/contacts/activity/interfaces/OnBadgeNotificationDataChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b_:Lcom/callapp/contacts/event/bus/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/event/bus/EventType<",
            "Lcom/callapp/contacts/activity/interfaces/OnBadgeNotificationDataChangeListener;",
            "Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    sget-object v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$c_pU0ZPGcdT1nmXVCqKIMvI3eZQ;->INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$c_pU0ZPGcdT1nmXVCqKIMvI3eZQ;

    sput-object v0, Lcom/callapp/contacts/activity/interfaces/OnBadgeNotificationDataChangeListener;->b_:Lcom/callapp/contacts/event/bus/EventType;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)V
.end method
