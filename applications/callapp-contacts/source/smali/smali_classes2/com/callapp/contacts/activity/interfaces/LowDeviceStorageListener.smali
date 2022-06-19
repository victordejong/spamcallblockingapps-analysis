.class public interface abstract Lcom/callapp/contacts/activity/interfaces/LowDeviceStorageListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/callapp/contacts/event/bus/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/event/bus/EventType<",
            "Lcom/callapp/contacts/activity/interfaces/LowDeviceStorageListener;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    sget-object v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$UKOXjivld2SUaDRC6WybgkkUVhw;->INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$UKOXjivld2SUaDRC6WybgkkUVhw;

    sput-object v0, Lcom/callapp/contacts/activity/interfaces/LowDeviceStorageListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Boolean;)V
.end method
