.class public final synthetic Lcom/callapp/contacts/activity/interfaces/-$$Lambda$1kotnpso6VigZ0BCI2l3_1JpQCY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/event/bus/EventType;


# static fields
.field public static final synthetic INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$1kotnpso6VigZ0BCI2l3_1JpQCY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$1kotnpso6VigZ0BCI2l3_1JpQCY;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$1kotnpso6VigZ0BCI2l3_1JpQCY;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$1kotnpso6VigZ0BCI2l3_1JpQCY;->INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$1kotnpso6VigZ0BCI2l3_1JpQCY;

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

    check-cast p1, Lcom/callapp/contacts/activity/interfaces/NotifyDataChangedListener;

    check-cast p2, Lcom/callapp/contacts/model/DataChangedInfo;

    invoke-interface {p1, p2}, Lcom/callapp/contacts/activity/interfaces/NotifyDataChangedListener;->a(Lcom/callapp/contacts/model/DataChangedInfo;)V

    return-void
.end method
