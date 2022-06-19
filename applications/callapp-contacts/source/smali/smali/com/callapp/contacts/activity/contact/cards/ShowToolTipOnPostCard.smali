.class public interface abstract Lcom/callapp/contacts/activity/contact/cards/ShowToolTipOnPostCard;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/callapp/contacts/event/bus/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/event/bus/EventType<",
            "Lcom/callapp/contacts/activity/contact/cards/ShowToolTipOnPostCard;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    sget-object v0, Lcom/callapp/contacts/activity/contact/cards/-$$Lambda$ShowToolTipOnPostCard$1URamjSpevGazqNDYqyhrls3jxg;->INSTANCE:Lcom/callapp/contacts/activity/contact/cards/-$$Lambda$ShowToolTipOnPostCard$1URamjSpevGazqNDYqyhrls3jxg;

    sput-object v0, Lcom/callapp/contacts/activity/contact/cards/ShowToolTipOnPostCard;->a:Lcom/callapp/contacts/event/bus/EventType;

    return-void
.end method


# virtual methods
.method public abstract onPostCallNeedToShowToolTip(Z)V
.end method
