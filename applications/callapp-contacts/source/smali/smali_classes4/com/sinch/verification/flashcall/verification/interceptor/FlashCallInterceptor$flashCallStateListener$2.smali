.class final Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor$flashCallStateListener$2;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;-><init>(Landroid/content/Context;Lcom/sinch/verification/core/internal/pattern/PatternMatcher;Lcom/sinch/verification/flashcall/verification/callhistory/CallHistoryReader;Ljava/util/Date;JJLcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallStateListener;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallStateListener;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;


# direct methods
.method constructor <init>(Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;)V
    .locals 0

    iput-object p1, p0, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor$flashCallStateListener$2;->this$0:Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallStateListener;
    .locals 2

    .line 60
    new-instance v0, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallStateListener;

    iget-object v1, p0, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor$flashCallStateListener$2;->this$0:Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor;

    check-cast v1, Lcom/sinch/verification/flashcall/verification/interceptor/IncomingCallListener;

    invoke-direct {v0, v1}, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallStateListener;-><init>(Lcom/sinch/verification/flashcall/verification/interceptor/IncomingCallListener;)V

    return-object v0
.end method

.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallInterceptor$flashCallStateListener$2;->invoke()Lcom/sinch/verification/flashcall/verification/interceptor/FlashCallStateListener;

    move-result-object v0

    return-object v0
.end method
