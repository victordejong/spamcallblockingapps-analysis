.class public final synthetic Lcom/callapp/contacts/activity/interfaces/-$$Lambda$DialpadToggleListener$QQqRCI16wVccrF7DaKa0GvZNTFQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/event/bus/EventType;


# static fields
.field public static final synthetic INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$DialpadToggleListener$QQqRCI16wVccrF7DaKa0GvZNTFQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$DialpadToggleListener$QQqRCI16wVccrF7DaKa0GvZNTFQ;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$DialpadToggleListener$QQqRCI16wVccrF7DaKa0GvZNTFQ;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$DialpadToggleListener$QQqRCI16wVccrF7DaKa0GvZNTFQ;->INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$DialpadToggleListener$QQqRCI16wVccrF7DaKa0GvZNTFQ;

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

    check-cast p1, Lcom/callapp/contacts/activity/interfaces/DialpadToggleListener;

    check-cast p2, Lcom/callapp/contacts/activity/interfaces/DialpadToggleListener$ToggleDialpadEvent;

    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/interfaces/DialpadToggleListener$-CC;->lambda$QQqRCI16wVccrF7DaKa0GvZNTFQ(Lcom/callapp/contacts/activity/interfaces/DialpadToggleListener;Lcom/callapp/contacts/activity/interfaces/DialpadToggleListener$ToggleDialpadEvent;)V

    return-void
.end method
