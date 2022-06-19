.class public final synthetic Lcom/callapp/contacts/activity/interfaces/-$$Lambda$RefreshSearchListener$aOx3iyOIN1SZrvo-bB1JypBNhYo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/event/bus/EventType;


# static fields
.field public static final synthetic INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$RefreshSearchListener$aOx3iyOIN1SZrvo-bB1JypBNhYo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$RefreshSearchListener$aOx3iyOIN1SZrvo-bB1JypBNhYo;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$RefreshSearchListener$aOx3iyOIN1SZrvo-bB1JypBNhYo;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$RefreshSearchListener$aOx3iyOIN1SZrvo-bB1JypBNhYo;->INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$RefreshSearchListener$aOx3iyOIN1SZrvo-bB1JypBNhYo;

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

    check-cast p1, Lcom/callapp/contacts/activity/interfaces/RefreshSearchListener;

    check-cast p2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/interfaces/RefreshSearchListener$-CC;->lambda$aOx3iyOIN1SZrvo-bB1JypBNhYo(Lcom/callapp/contacts/activity/interfaces/RefreshSearchListener;Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)V

    return-void
.end method
