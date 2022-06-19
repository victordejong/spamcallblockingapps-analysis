.class public final synthetic Lcom/callapp/contacts/widget/tutorial/command/events/-$$Lambda$OnCommandDoneListener$M4XOEMxdkbnuQD_-7wpzecTQ1aY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/event/bus/EventType;


# static fields
.field public static final synthetic INSTANCE:Lcom/callapp/contacts/widget/tutorial/command/events/-$$Lambda$OnCommandDoneListener$M4XOEMxdkbnuQD_-7wpzecTQ1aY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callapp/contacts/widget/tutorial/command/events/-$$Lambda$OnCommandDoneListener$M4XOEMxdkbnuQD_-7wpzecTQ1aY;

    invoke-direct {v0}, Lcom/callapp/contacts/widget/tutorial/command/events/-$$Lambda$OnCommandDoneListener$M4XOEMxdkbnuQD_-7wpzecTQ1aY;-><init>()V

    sput-object v0, Lcom/callapp/contacts/widget/tutorial/command/events/-$$Lambda$OnCommandDoneListener$M4XOEMxdkbnuQD_-7wpzecTQ1aY;->INSTANCE:Lcom/callapp/contacts/widget/tutorial/command/events/-$$Lambda$OnCommandDoneListener$M4XOEMxdkbnuQD_-7wpzecTQ1aY;

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

    check-cast p1, Lcom/callapp/contacts/widget/tutorial/command/events/OnCommandDoneListener;

    check-cast p2, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    invoke-static {p1, p2}, Lcom/callapp/contacts/widget/tutorial/command/events/OnCommandDoneListener$-CC;->lambda$M4XOEMxdkbnuQD_-7wpzecTQ1aY(Lcom/callapp/contacts/widget/tutorial/command/events/OnCommandDoneListener;Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;)V

    return-void
.end method
