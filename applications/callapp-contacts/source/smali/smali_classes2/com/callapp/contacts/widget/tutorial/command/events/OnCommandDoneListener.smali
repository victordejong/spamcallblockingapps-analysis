.class public interface abstract Lcom/callapp/contacts/widget/tutorial/command/events/OnCommandDoneListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:Lcom/callapp/contacts/event/bus/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/event/bus/EventType<",
            "Lcom/callapp/contacts/widget/tutorial/command/events/OnCommandDoneListener;",
            "Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    sget-object v0, Lcom/callapp/contacts/widget/tutorial/command/events/-$$Lambda$OnCommandDoneListener$M4XOEMxdkbnuQD_-7wpzecTQ1aY;->INSTANCE:Lcom/callapp/contacts/widget/tutorial/command/events/-$$Lambda$OnCommandDoneListener$M4XOEMxdkbnuQD_-7wpzecTQ1aY;

    sput-object v0, Lcom/callapp/contacts/widget/tutorial/command/events/OnCommandDoneListener;->i:Lcom/callapp/contacts/event/bus/EventType;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;)V
.end method
