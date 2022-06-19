.class public interface abstract Lcom/callapp/contacts/activity/analytics/data/UpdateAnalyticsCardEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/callapp/contacts/event/bus/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/event/bus/EventType<",
            "Lcom/callapp/contacts/activity/analytics/data/UpdateAnalyticsCardEvent;",
            "Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    sget-object v0, Lcom/callapp/contacts/activity/analytics/data/-$$Lambda$UpdateAnalyticsCardEvent$wgCGMaNi5O4sOhqJVm7A4YIDxTY;->INSTANCE:Lcom/callapp/contacts/activity/analytics/data/-$$Lambda$UpdateAnalyticsCardEvent$wgCGMaNi5O4sOhqJVm7A4YIDxTY;

    sput-object v0, Lcom/callapp/contacts/activity/analytics/data/UpdateAnalyticsCardEvent;->a:Lcom/callapp/contacts/event/bus/EventType;

    return-void
.end method


# virtual methods
.method public abstract onAnalyticsRefreshCard(Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V
.end method
