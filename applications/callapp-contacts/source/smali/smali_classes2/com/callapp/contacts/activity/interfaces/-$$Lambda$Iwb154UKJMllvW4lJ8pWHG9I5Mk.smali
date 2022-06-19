.class public final synthetic Lcom/callapp/contacts/activity/interfaces/-$$Lambda$Iwb154UKJMllvW4lJ8pWHG9I5Mk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/event/bus/EventType;


# static fields
.field public static final synthetic INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$Iwb154UKJMllvW4lJ8pWHG9I5Mk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$Iwb154UKJMllvW4lJ8pWHG9I5Mk;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$Iwb154UKJMllvW4lJ8pWHG9I5Mk;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$Iwb154UKJMllvW4lJ8pWHG9I5Mk;->INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$Iwb154UKJMllvW4lJ8pWHG9I5Mk;

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

    check-cast p1, Lcom/callapp/contacts/activity/interfaces/OnSlideMenuOpenedListener;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/callapp/contacts/activity/interfaces/OnSlideMenuOpenedListener;->a(Z)V

    return-void
.end method
