.class public interface abstract Lcom/callapp/contacts/activity/interfaces/OnMissedCallReminderMenuClickListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/callapp/contacts/event/bus/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/event/bus/EventType<",
            "Lcom/callapp/contacts/activity/interfaces/OnMissedCallReminderMenuClickListener;",
            "Lcom/callapp/framework/phone/Phone;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    sget-object v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$K-MDJuBvC8dIFvHU3PjEFoIF2lk;->INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$K-MDJuBvC8dIFvHU3PjEFoIF2lk;

    sput-object v0, Lcom/callapp/contacts/activity/interfaces/OnMissedCallReminderMenuClickListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/callapp/framework/phone/Phone;)V
.end method
