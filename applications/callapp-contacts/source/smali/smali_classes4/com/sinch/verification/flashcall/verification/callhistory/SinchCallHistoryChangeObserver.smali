.class public final Lcom/sinch/verification/flashcall/verification/callhistory/SinchCallHistoryChangeObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/sinch/verification/flashcall/verification/callhistory/SinchCallHistoryChangeObserver;",
        "Landroid/database/ContentObserver;",
        "callHistoryChangeListener",
        "Lcom/sinch/verification/flashcall/verification/callhistory/CallHistoryChangeListener;",
        "(Lcom/sinch/verification/flashcall/verification/callhistory/CallHistoryChangeListener;)V",
        "onChange",
        "",
        "selfChange",
        "",
        "uri",
        "Landroid/net/Uri;",
        "registerOn",
        "contentResolver",
        "Landroid/content/ContentResolver;",
        "unregisterFrom",
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
.field private final callHistoryChangeListener:Lcom/sinch/verification/flashcall/verification/callhistory/CallHistoryChangeListener;


# direct methods
.method public constructor <init>(Lcom/sinch/verification/flashcall/verification/callhistory/CallHistoryChangeListener;)V
    .locals 1

    const-string v0, "callHistoryChangeListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/sinch/verification/flashcall/verification/callhistory/SinchCallHistoryChangeObserver;->callHistoryChangeListener:Lcom/sinch/verification/flashcall/verification/callhistory/CallHistoryChangeListener;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 18
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 19
    iget-object p1, p0, Lcom/sinch/verification/flashcall/verification/callhistory/SinchCallHistoryChangeObserver;->callHistoryChangeListener:Lcom/sinch/verification/flashcall/verification/callhistory/CallHistoryChangeListener;

    invoke-interface {p1}, Lcom/sinch/verification/flashcall/verification/callhistory/CallHistoryChangeListener;->onCallHistoryChanged()V

    return-void
.end method

.method public final registerOn(Landroid/content/ContentResolver;)V
    .locals 3

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    move-object v1, p0

    check-cast v1, Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final unregisterFrom(Landroid/content/ContentResolver;)V
    .locals 1

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    move-object v0, p0

    check-cast v0, Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
