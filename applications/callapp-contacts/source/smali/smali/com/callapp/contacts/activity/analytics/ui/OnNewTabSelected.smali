.class public interface abstract Lcom/callapp/contacts/activity/analytics/ui/OnNewTabSelected;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/callapp/contacts/event/bus/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/event/bus/EventType<",
            "Lcom/callapp/contacts/activity/analytics/ui/OnNewTabSelected;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    sget-object v0, Lcom/callapp/contacts/activity/analytics/ui/-$$Lambda$OnNewTabSelected$heXhCjGycLbyf29-OYdfHPOuk5c;->INSTANCE:Lcom/callapp/contacts/activity/analytics/ui/-$$Lambda$OnNewTabSelected$heXhCjGycLbyf29-OYdfHPOuk5c;

    sput-object v0, Lcom/callapp/contacts/activity/analytics/ui/OnNewTabSelected;->b:Lcom/callapp/contacts/event/bus/EventType;

    return-void
.end method


# virtual methods
.method public abstract onNewSelected()V
.end method
