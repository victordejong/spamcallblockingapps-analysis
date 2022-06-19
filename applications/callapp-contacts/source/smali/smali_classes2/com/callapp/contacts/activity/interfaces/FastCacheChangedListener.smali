.class public interface abstract Lcom/callapp/contacts/activity/interfaces/FastCacheChangedListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/callapp/contacts/event/bus/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/event/bus/EventType<",
            "Lcom/callapp/contacts/activity/interfaces/FastCacheChangedListener;",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    sget-object v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$RJfvGg2ammD0WYY2sneV2JN2ZgA;->INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$RJfvGg2ammD0WYY2sneV2JN2ZgA;

    sput-object v0, Lcom/callapp/contacts/activity/interfaces/FastCacheChangedListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/callapp/contacts/model/contact/ContactData;)V
.end method
