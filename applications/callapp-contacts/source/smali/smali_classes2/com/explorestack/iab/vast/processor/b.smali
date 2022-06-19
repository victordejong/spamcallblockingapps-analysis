.class public final Lcom/explorestack/iab/vast/processor/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/explorestack/iab/vast/processor/VastAd;

.field public c:I

.field d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/processor/b;->a:Ljava/util/List;

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/explorestack/iab/vast/processor/b;->c:I

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/processor/b;->d:Z

    return-void
.end method


# virtual methods
.method final a(Lcom/explorestack/iab/vast/tags/a;I)V
    .locals 2

    .line 1031
    iput p2, p0, Lcom/explorestack/iab/vast/processor/b;->c:I

    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "params_error_code"

    .line 57
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1056
    iget-object p1, p1, Lcom/explorestack/iab/vast/tags/a;->d:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 59
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 60
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 61
    invoke-static {p2, v0}, Lcom/explorestack/iab/vast/VastUrlProcessorRegistry;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    .line 62
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/explorestack/iab/vast/processor/b;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/b;->b:Lcom/explorestack/iab/vast/processor/VastAd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
