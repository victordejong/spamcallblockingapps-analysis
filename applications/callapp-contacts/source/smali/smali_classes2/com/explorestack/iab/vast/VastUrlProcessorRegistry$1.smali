.class final Lcom/explorestack/iab/vast/VastUrlProcessorRegistry$1;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/vast/VastUrlProcessorRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/explorestack/iab/vast/processor/url/UrlProcessor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    new-instance v0, Lcom/explorestack/iab/vast/processor/url/a;

    invoke-direct {v0}, Lcom/explorestack/iab/vast/processor/url/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/VastUrlProcessorRegistry$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
