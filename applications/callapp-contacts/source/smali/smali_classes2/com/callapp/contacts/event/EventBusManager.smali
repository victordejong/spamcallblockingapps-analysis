.class public Lcom/callapp/contacts/event/EventBusManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;
    }
.end annotation


# static fields
.field public static final a:Lcom/callapp/contacts/event/bus/EventBus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/callapp/contacts/event/bus/EventBus;

    invoke-direct {v0}, Lcom/callapp/contacts/event/bus/EventBus;-><init>()V

    sput-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
