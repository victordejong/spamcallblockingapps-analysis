.class public final synthetic Lcom/callapp/contacts/activity/interfaces/-$$Lambda$RJfvGg2ammD0WYY2sneV2JN2ZgA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/event/bus/EventType;


# static fields
.field public static final synthetic INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$RJfvGg2ammD0WYY2sneV2JN2ZgA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$RJfvGg2ammD0WYY2sneV2JN2ZgA;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$RJfvGg2ammD0WYY2sneV2JN2ZgA;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$RJfvGg2ammD0WYY2sneV2JN2ZgA;->INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$RJfvGg2ammD0WYY2sneV2JN2ZgA;

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

    check-cast p1, Lcom/callapp/contacts/activity/interfaces/FastCacheChangedListener;

    check-cast p2, Lcom/callapp/contacts/model/contact/ContactData;

    invoke-interface {p1, p2}, Lcom/callapp/contacts/activity/interfaces/FastCacheChangedListener;->a(Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method
