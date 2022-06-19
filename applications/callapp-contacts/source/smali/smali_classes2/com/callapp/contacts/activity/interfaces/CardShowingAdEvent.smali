.class public interface abstract Lcom/callapp/contacts/activity/interfaces/CardShowingAdEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/callapp/contacts/event/bus/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/event/bus/EventType<",
            "Lcom/callapp/contacts/activity/interfaces/CardShowingAdEvent;",
            "Lcom/callapp/contacts/activity/contact/cards/AdCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    sget-object v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$7UjbN4Z3FhpPkKz1EFaG59uhWWA;->INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$7UjbN4Z3FhpPkKz1EFaG59uhWWA;

    sput-object v0, Lcom/callapp/contacts/activity/interfaces/CardShowingAdEvent;->a:Lcom/callapp/contacts/event/bus/EventType;

    return-void
.end method


# virtual methods
.method public abstract onCardShowingAd(Lcom/callapp/contacts/activity/contact/cards/AdCard;)V
.end method
