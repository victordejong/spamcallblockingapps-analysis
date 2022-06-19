.class public final Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallStateListener;",
        "Landroid/telephony/PhoneStateListener;",
        "listener",
        "Lcom/sinch/verification/flashcall/verification/interceptor/IncomingCallListener;",
        "(Lcom/sinch/verification/flashcall/verification/interceptor/IncomingCallListener;)V",
        "onCallStateChanged",
        "",
        "state",
        "",
        "phoneNumber",
        "",
        "verification-flashcall_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final listener:Lcom/sinch/verification/flashcall/verification/interceptor/IncomingCallListener;


# direct methods
.method public constructor <init>(Lcom/sinch/verification/flashcall/verification/interceptor/IncomingCallListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    iput-object p1, p0, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallStateListener;->listener:Lcom/sinch/verification/flashcall/verification/interceptor/IncomingCallListener;

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 1

    .line 12
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 13
    move-object p1, p2

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 14
    iget-object p1, p0, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallStateListener;->listener:Lcom/sinch/verification/flashcall/verification/interceptor/IncomingCallListener;

    invoke-interface {p1, p2}, Lcom/sinch/verification/flashcall/verification/interceptor/IncomingCallListener;->onIncomingCallRinging(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
