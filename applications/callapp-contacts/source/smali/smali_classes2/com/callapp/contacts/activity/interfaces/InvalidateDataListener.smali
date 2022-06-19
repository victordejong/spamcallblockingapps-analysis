.class public interface abstract Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/callapp/contacts/event/bus/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/event/bus/EventType<",
            "Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;",
            "Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    sget-object v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$YgKQq6nFik8TnsnZ5AB7aRDB4L0;->INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$YgKQq6nFik8TnsnZ5AB7aRDB4L0;

    sput-object v0, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    return-void
.end method


# virtual methods
.method public abstract invalidateData(Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)V
.end method
