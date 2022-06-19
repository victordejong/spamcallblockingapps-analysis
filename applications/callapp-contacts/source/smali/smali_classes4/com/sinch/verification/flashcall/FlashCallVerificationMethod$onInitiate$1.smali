.class final Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$onInitiate$1;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->onInitiate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;",
        "Lkotlin/v;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;",
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
.field final synthetic this$0:Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;


# direct methods
.method constructor <init>(Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;)V
    .locals 0

    iput-object p1, p0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$onInitiate$1;->this$0:Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    check-cast p1, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;

    invoke-virtual {p0, p1}, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$onInitiate$1;->invoke(Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod$onInitiate$1;->this$0:Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;

    invoke-static {v0, p1}, Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;->access$initializeInterceptor(Lcom/sinch/verification/flashcall/FlashCallVerificationMethod;Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;)V

    return-void
.end method
