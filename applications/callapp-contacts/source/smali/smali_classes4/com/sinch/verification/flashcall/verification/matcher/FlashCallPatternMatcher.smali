.class public final Lcom/sinch/verification/flashcall/verification/matcher/FlashCallPatternMatcher;
.super Lcom/sinch/verification/core/internal/pattern/PatternMatcher;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/sinch/verification/flashcall/verification/matcher/FlashCallPatternMatcher;",
        "Lcom/sinch/verification/core/internal/pattern/PatternMatcher;",
        "template",
        "",
        "(Ljava/lang/String;)V",
        "verification-flashcall_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "template"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcom/sinch/verification/flashcall/verification/matcher/FlashCallPatternFactory;

    invoke-direct {v0}, Lcom/sinch/verification/flashcall/verification/matcher/FlashCallPatternFactory;-><init>()V

    check-cast v0, Lcom/sinch/verification/core/internal/pattern/PatternFactory;

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/sinch/verification/core/internal/pattern/PatternMatcher;-><init>(Ljava/lang/String;Lcom/sinch/verification/core/internal/pattern/PatternFactory;)V

    return-void
.end method
