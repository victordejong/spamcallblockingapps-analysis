.class public Lcom/explorestack/iab/vast/VastUrlProcessorRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/iab/vast/VastUrlProcessorRegistry$a;
    }
.end annotation


# static fields
.field static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/iab/vast/processor/url/UrlProcessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/explorestack/iab/vast/VastUrlProcessorRegistry$1;

    invoke-direct {v0}, Lcom/explorestack/iab/vast/VastUrlProcessorRegistry$1;-><init>()V

    sput-object v0, Lcom/explorestack/iab/vast/VastUrlProcessorRegistry;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 44
    :cond_0
    sget-object v0, Lcom/explorestack/iab/vast/VastUrlProcessorRegistry;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/iab/vast/processor/url/UrlProcessor;

    .line 45
    invoke-interface {v1, p0, p1}, Lcom/explorestack/iab/vast/processor/url/UrlProcessor;->prepare(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static a(Ljava/util/List;Landroid/os/Bundle;Lcom/explorestack/iab/vast/VastUrlProcessorRegistry$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/explorestack/iab/vast/VastUrlProcessorRegistry$a;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 31
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 34
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35
    invoke-static {v0, p1}, Lcom/explorestack/iab/vast/VastUrlProcessorRegistry;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/explorestack/iab/vast/VastUrlProcessorRegistry$a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static register(Lcom/explorestack/iab/vast/processor/url/UrlProcessor;)V
    .locals 1

    .line 21
    sget-object v0, Lcom/explorestack/iab/vast/VastUrlProcessorRegistry;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
