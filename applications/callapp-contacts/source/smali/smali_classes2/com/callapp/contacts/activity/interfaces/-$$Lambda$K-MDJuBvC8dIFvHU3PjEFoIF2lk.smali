.class public final synthetic Lcom/callapp/contacts/activity/interfaces/-$$Lambda$K-MDJuBvC8dIFvHU3PjEFoIF2lk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/event/bus/EventType;


# static fields
.field public static final synthetic INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$K-MDJuBvC8dIFvHU3PjEFoIF2lk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$K-MDJuBvC8dIFvHU3PjEFoIF2lk;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$K-MDJuBvC8dIFvHU3PjEFoIF2lk;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$K-MDJuBvC8dIFvHU3PjEFoIF2lk;->INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$K-MDJuBvC8dIFvHU3PjEFoIF2lk;

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

    check-cast p1, Lcom/callapp/contacts/activity/interfaces/OnMissedCallReminderMenuClickListener;

    check-cast p2, Lcom/callapp/framework/phone/Phone;

    invoke-interface {p1, p2}, Lcom/callapp/contacts/activity/interfaces/OnMissedCallReminderMenuClickListener;->a(Lcom/callapp/framework/phone/Phone;)V

    return-void
.end method
