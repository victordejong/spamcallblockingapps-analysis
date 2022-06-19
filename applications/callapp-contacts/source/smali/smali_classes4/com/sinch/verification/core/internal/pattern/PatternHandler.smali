.class public abstract Lcom/sinch/verification/core/internal/pattern/PatternHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/sinch/verification/core/internal/pattern/PatternHandler;",
        "",
        "template",
        "",
        "patternFactory",
        "Lcom/sinch/verification/core/internal/pattern/PatternFactory;",
        "(Ljava/lang/String;Lcom/sinch/verification/core/internal/pattern/PatternFactory;)V",
        "pattern",
        "Ljava/util/regex/Pattern;",
        "getPattern$verification_core_productionRelease",
        "()Ljava/util/regex/Pattern;",
        "verification-core_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final pattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sinch/verification/core/internal/pattern/PatternFactory;)V
    .locals 1

    const-string v0, "template"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "patternFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-interface {p2, p1}, Lcom/sinch/verification/core/internal/pattern/PatternFactory;->create(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/sinch/verification/core/internal/pattern/PatternHandler;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public final getPattern$verification_core_productionRelease()Ljava/util/regex/Pattern;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/sinch/verification/core/internal/pattern/PatternHandler;->pattern:Ljava/util/regex/Pattern;

    return-object v0
.end method
