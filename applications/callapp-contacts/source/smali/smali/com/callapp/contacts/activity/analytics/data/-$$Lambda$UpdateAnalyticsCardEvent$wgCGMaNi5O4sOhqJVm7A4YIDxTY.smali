.class public final synthetic Lcom/callapp/contacts/activity/analytics/data/-$$Lambda$UpdateAnalyticsCardEvent$wgCGMaNi5O4sOhqJVm7A4YIDxTY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/event/bus/EventType;


# static fields
.field public static final synthetic INSTANCE:Lcom/callapp/contacts/activity/analytics/data/-$$Lambda$UpdateAnalyticsCardEvent$wgCGMaNi5O4sOhqJVm7A4YIDxTY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callapp/contacts/activity/analytics/data/-$$Lambda$UpdateAnalyticsCardEvent$wgCGMaNi5O4sOhqJVm7A4YIDxTY;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/analytics/data/-$$Lambda$UpdateAnalyticsCardEvent$wgCGMaNi5O4sOhqJVm7A4YIDxTY;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/analytics/data/-$$Lambda$UpdateAnalyticsCardEvent$wgCGMaNi5O4sOhqJVm7A4YIDxTY;->INSTANCE:Lcom/callapp/contacts/activity/analytics/data/-$$Lambda$UpdateAnalyticsCardEvent$wgCGMaNi5O4sOhqJVm7A4YIDxTY;

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

    check-cast p1, Lcom/callapp/contacts/activity/analytics/data/UpdateAnalyticsCardEvent;

    check-cast p2, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/analytics/data/UpdateAnalyticsCardEvent$-CC;->lambda$wgCGMaNi5O4sOhqJVm7A4YIDxTY(Lcom/callapp/contacts/activity/analytics/data/UpdateAnalyticsCardEvent;Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V

    return-void
.end method
