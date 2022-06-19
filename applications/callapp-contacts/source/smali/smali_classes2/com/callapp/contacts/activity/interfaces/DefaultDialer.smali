.class public interface abstract Lcom/callapp/contacts/activity/interfaces/DefaultDialer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/callapp/contacts/event/bus/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/event/bus/EventType<",
            "Lcom/callapp/contacts/activity/interfaces/DefaultDialer;",
            "Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    sget-object v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$DefaultDialer$t5I6pezOGAy0hHg7ArKbXECYZh4;->INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$DefaultDialer$t5I6pezOGAy0hHg7ArKbXECYZh4;

    sput-object v0, Lcom/callapp/contacts/activity/interfaces/DefaultDialer;->a:Lcom/callapp/contacts/event/bus/EventType;

    return-void
.end method


# virtual methods
.method public abstract onSetAsDefaultAppClicked()V
.end method
