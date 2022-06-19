.class public interface abstract Lcom/callapp/contacts/activity/interfaces/CallEventListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/callapp/contacts/event/bus/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/event/bus/EventType<",
            "Lcom/callapp/contacts/activity/interfaces/CallEventListener;",
            "Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    sget-object v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$CallEventListener$DvWDlcjlU8NmVhWmjgpB-8Q8RQA;->INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$CallEventListener$DvWDlcjlU8NmVhWmjgpB-8Q8RQA;

    sput-object v0, Lcom/callapp/contacts/activity/interfaces/CallEventListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method
