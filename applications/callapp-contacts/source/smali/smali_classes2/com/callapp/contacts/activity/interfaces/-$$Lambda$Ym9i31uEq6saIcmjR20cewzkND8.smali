.class public final synthetic Lcom/callapp/contacts/activity/interfaces/-$$Lambda$Ym9i31uEq6saIcmjR20cewzkND8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/event/bus/EventType;


# static fields
.field public static final synthetic INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$Ym9i31uEq6saIcmjR20cewzkND8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$Ym9i31uEq6saIcmjR20cewzkND8;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$Ym9i31uEq6saIcmjR20cewzkND8;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$Ym9i31uEq6saIcmjR20cewzkND8;->INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$Ym9i31uEq6saIcmjR20cewzkND8;

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

    check-cast p1, Lcom/callapp/contacts/activity/interfaces/FinishActivityListener;

    check-cast p2, Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lcom/callapp/contacts/activity/interfaces/FinishActivityListener;->finishActivity(Ljava/lang/Boolean;)V

    return-void
.end method
