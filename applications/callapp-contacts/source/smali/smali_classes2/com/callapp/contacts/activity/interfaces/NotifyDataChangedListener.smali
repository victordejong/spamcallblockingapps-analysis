.class public interface abstract Lcom/callapp/contacts/activity/interfaces/NotifyDataChangedListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/callapp/contacts/event/bus/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/event/bus/EventType<",
            "Lcom/callapp/contacts/activity/interfaces/NotifyDataChangedListener;",
            "Lcom/callapp/contacts/model/DataChangedInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    sget-object v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$1kotnpso6VigZ0BCI2l3_1JpQCY;->INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$1kotnpso6VigZ0BCI2l3_1JpQCY;

    sput-object v0, Lcom/callapp/contacts/activity/interfaces/NotifyDataChangedListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/callapp/contacts/model/DataChangedInfo;)V
.end method
