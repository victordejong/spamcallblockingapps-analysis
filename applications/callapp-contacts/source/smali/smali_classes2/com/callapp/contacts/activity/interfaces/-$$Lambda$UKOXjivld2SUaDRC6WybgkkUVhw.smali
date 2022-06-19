.class public final synthetic Lcom/callapp/contacts/activity/interfaces/-$$Lambda$UKOXjivld2SUaDRC6WybgkkUVhw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/event/bus/EventType;


# static fields
.field public static final synthetic INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$UKOXjivld2SUaDRC6WybgkkUVhw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$UKOXjivld2SUaDRC6WybgkkUVhw;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$UKOXjivld2SUaDRC6WybgkkUVhw;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$UKOXjivld2SUaDRC6WybgkkUVhw;->INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$UKOXjivld2SUaDRC6WybgkkUVhw;

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

    check-cast p1, Lcom/callapp/contacts/activity/interfaces/LowDeviceStorageListener;

    check-cast p2, Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lcom/callapp/contacts/activity/interfaces/LowDeviceStorageListener;->a(Ljava/lang/Boolean;)V

    return-void
.end method
