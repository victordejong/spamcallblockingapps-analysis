.class public final synthetic Lcom/callapp/contacts/activity/interfaces/-$$Lambda$7UjbN4Z3FhpPkKz1EFaG59uhWWA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/event/bus/EventType;


# static fields
.field public static final synthetic INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$7UjbN4Z3FhpPkKz1EFaG59uhWWA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$7UjbN4Z3FhpPkKz1EFaG59uhWWA;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$7UjbN4Z3FhpPkKz1EFaG59uhWWA;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$7UjbN4Z3FhpPkKz1EFaG59uhWWA;->INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$7UjbN4Z3FhpPkKz1EFaG59uhWWA;

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

    check-cast p1, Lcom/callapp/contacts/activity/interfaces/CardShowingAdEvent;

    check-cast p2, Lcom/callapp/contacts/activity/contact/cards/AdCard;

    invoke-interface {p1, p2}, Lcom/callapp/contacts/activity/interfaces/CardShowingAdEvent;->onCardShowingAd(Lcom/callapp/contacts/activity/contact/cards/AdCard;)V

    return-void
.end method
