.class final Lcom/callapp/contacts/manager/phone/CallStateListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/event/bus/EventType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/phone/CallStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/event/bus/EventType<",
        "Lcom/callapp/contacts/manager/phone/CallStateListener;",
        "Lcom/callapp/contacts/model/call/CallData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic fire(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p1, Lcom/callapp/contacts/manager/phone/CallStateListener;

    check-cast p2, Lcom/callapp/contacts/model/call/CallData;

    .line 1010
    invoke-interface {p1, p2}, Lcom/callapp/contacts/manager/phone/CallStateListener;->onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V

    return-void
.end method
