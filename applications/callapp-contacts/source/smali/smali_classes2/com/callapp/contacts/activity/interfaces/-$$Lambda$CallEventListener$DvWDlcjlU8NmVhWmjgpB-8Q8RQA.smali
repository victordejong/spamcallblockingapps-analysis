.class public final synthetic Lcom/callapp/contacts/activity/interfaces/-$$Lambda$CallEventListener$DvWDlcjlU8NmVhWmjgpB-8Q8RQA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/event/bus/EventType;


# static fields
.field public static final synthetic INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$CallEventListener$DvWDlcjlU8NmVhWmjgpB-8Q8RQA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$CallEventListener$DvWDlcjlU8NmVhWmjgpB-8Q8RQA;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$CallEventListener$DvWDlcjlU8NmVhWmjgpB-8Q8RQA;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$CallEventListener$DvWDlcjlU8NmVhWmjgpB-8Q8RQA;->INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$CallEventListener$DvWDlcjlU8NmVhWmjgpB-8Q8RQA;

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

    check-cast p1, Lcom/callapp/contacts/activity/interfaces/CallEventListener;

    check-cast p2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/interfaces/CallEventListener$-CC;->lambda$DvWDlcjlU8NmVhWmjgpB-8Q8RQA(Lcom/callapp/contacts/activity/interfaces/CallEventListener;Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)V

    return-void
.end method
