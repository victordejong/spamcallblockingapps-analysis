.class public interface abstract Lcom/callapp/contacts/activity/interfaces/OnIncognitoCallStartedListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/callapp/contacts/event/bus/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/event/bus/EventType<",
            "Lcom/callapp/contacts/activity/interfaces/OnIncognitoCallStartedListener;",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    sget-object v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$znuyVXy3zu8ydiuLOP1h8LHCqLU;->INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$znuyVXy3zu8ydiuLOP1h8LHCqLU;

    sput-object v0, Lcom/callapp/contacts/activity/interfaces/OnIncognitoCallStartedListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    return-void
.end method


# virtual methods
.method public abstract onIncognitoCallStarted(Lcom/callapp/contacts/model/contact/ContactData;)V
.end method
