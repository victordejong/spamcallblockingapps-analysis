.class public final synthetic Lcom/callapp/contacts/activity/interfaces/-$$Lambda$znuyVXy3zu8ydiuLOP1h8LHCqLU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/event/bus/EventType;


# static fields
.field public static final synthetic INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$znuyVXy3zu8ydiuLOP1h8LHCqLU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$znuyVXy3zu8ydiuLOP1h8LHCqLU;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$znuyVXy3zu8ydiuLOP1h8LHCqLU;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$znuyVXy3zu8ydiuLOP1h8LHCqLU;->INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$znuyVXy3zu8ydiuLOP1h8LHCqLU;

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

    check-cast p1, Lcom/callapp/contacts/activity/interfaces/OnIncognitoCallStartedListener;

    check-cast p2, Lcom/callapp/contacts/model/contact/ContactData;

    invoke-interface {p1, p2}, Lcom/callapp/contacts/activity/interfaces/OnIncognitoCallStartedListener;->onIncognitoCallStarted(Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method
