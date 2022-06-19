.class public interface abstract Lcom/sinch/verification/flashcall/FlashCallVerificationService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sinch/verification/core/verification/VerificationService;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\'J\"\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00032\u0008\u0008\u0001\u0010\t\u001a\u00020\n2\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u000bH\'\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/sinch/verification/flashcall/FlashCallVerificationService;",
        "Lcom/sinch/verification/core/verification/VerificationService;",
        "initializeVerification",
        "Lretrofit2/Call;",
        "Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;",
        "data",
        "Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;",
        "reportVerification",
        "",
        "number",
        "",
        "Lcom/sinch/verification/flashcall/report/FlashCallReportData;",
        "verification-flashcall_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract initializeVerification(Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;)Lretrofit2/Call;
    .param p1    # Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;
        .annotation runtime Lretrofit2/b/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/b/o;
        a = "verifications"
    .end annotation
.end method

.method public abstract reportVerification(Ljava/lang/String;Lcom/sinch/verification/flashcall/report/FlashCallReportData;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/b/s;
            a = "number"
        .end annotation
    .end param
    .param p2    # Lcom/sinch/verification/flashcall/report/FlashCallReportData;
        .annotation runtime Lretrofit2/b/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sinch/verification/flashcall/report/FlashCallReportData;",
            ")",
            "Lretrofit2/Call<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/b/n;
        a = "verifications/number/{number}"
    .end annotation
.end method
