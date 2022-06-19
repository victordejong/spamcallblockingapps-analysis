.class public Lcom/mopub/common/ViewabilityTracker;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/ViewabilityTracker$STATE;
    }
.end annotation


# static fields
.field public static g:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public a:Lv31;

.field public b:Lu31;

.field public c:Z

.field public d:Z

.field public e:Lcom/mopub/common/ViewabilityTracker$STATE;

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/mopub/common/ViewabilityTracker;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lv31;Lu31;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/common/ViewabilityTracker;->c:Z

    iput-boolean v0, p0, Lcom/mopub/common/ViewabilityTracker;->d:Z

    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Lcom/mopub/common/ViewabilityTracker$STATE;->INIT:Lcom/mopub/common/ViewabilityTracker$STATE;

    iput-object v0, p0, Lcom/mopub/common/ViewabilityTracker;->e:Lcom/mopub/common/ViewabilityTracker$STATE;

    iput-object p1, p0, Lcom/mopub/common/ViewabilityTracker;->a:Lv31;

    iput-object p2, p0, Lcom/mopub/common/ViewabilityTracker;->b:Lu31;

    sget-object p1, Lcom/mopub/common/ViewabilityTracker;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iput p1, p0, Lcom/mopub/common/ViewabilityTracker;->f:I

    invoke-virtual {p0, p3}, Lcom/mopub/common/ViewabilityTracker;->k(Landroid/view/View;)V

    return-void
.end method

.method public static b(Lz31;Ljava/util/Set;Lc41;)Lv31;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz31;",
            "Ljava/util/Set<",
            "Lcom/mopub/common/ViewabilityVendor;",
            ">;",
            "Lc41;",
            ")",
            "Lv31;"
        }
    .end annotation

    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/mopub/common/ViewabilityTracker;->d(Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mopub/common/ViewabilityManager;->e()Ld41;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mopub/common/ViewabilityManager;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, p1, v2, v2}, Lx31;->b(Ld41;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lx31;

    move-result-object p1

    sget-object v0, Lb41;->f:Lb41;

    sget-object v1, Lc41;->b:Lc41;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p2, v2}, Lw31;->a(Lz31;Lb41;Lc41;Lc41;Z)Lw31;

    move-result-object p0

    invoke-static {p0, p1}, Lv31;->b(Lw31;Lx31;)Lv31;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter \'partner\' may not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "verificationScriptResources is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Landroid/view/View;Ljava/util/Set;)Lcom/mopub/common/ViewabilityTracker;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Set<",
            "Lcom/mopub/common/ViewabilityVendor;",
            ">;)",
            "Lcom/mopub/common/ViewabilityTracker;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lz31;->d:Lz31;

    sget-object v1, Lc41;->d:Lc41;

    invoke-static {v0, p1, v1}, Lcom/mopub/common/ViewabilityTracker;->b(Lz31;Ljava/util/Set;Lc41;)Lv31;

    move-result-object p1

    invoke-static {p1}, Lu31;->a(Lv31;)Lu31;

    move-result-object v0

    new-instance v1, Lcom/mopub/common/ViewabilityTracker;

    invoke-direct {v1, p1, v0, p0}, Lcom/mopub/common/ViewabilityTracker;-><init>(Lv31;Lu31;Landroid/view/View;)V

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty viewability vendors list."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Ljava/util/Set;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/mopub/common/ViewabilityVendor;",
            ">;)",
            "Ljava/util/List<",
            "Le41;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/ViewabilityVendor;

    :try_start_0
    invoke-virtual {v1}, Lcom/mopub/common/ViewabilityVendor;->getVendorKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/mopub/common/ViewabilityVendor;->getVerificationParameters()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Lcom/mopub/common/ViewabilityVendor;->getVendorKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mopub/common/ViewabilityVendor;->getJavascriptResourceUrl()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mopub/common/ViewabilityVendor;->getVerificationParameters()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Le41;->a(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)Le41;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_2
    invoke-virtual {v1}, Lcom/mopub/common/ViewabilityVendor;->getJavascriptResourceUrl()Ljava/net/URL;

    move-result-object v1

    invoke-static {v1}, Le41;->b(Ljava/net/URL;)Le41;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static e(Landroid/webkit/WebView;)Lcom/mopub/common/ViewabilityTracker;
    .locals 6

    invoke-static {}, Lcom/mopub/common/ViewabilityManager;->e()Ld41;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-static {v0, p0, v1, v1}, Lx31;->a(Ld41;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lx31;

    move-result-object v0

    sget-object v1, Lz31;->c:Lz31;

    sget-object v2, Lb41;->f:Lb41;

    sget-object v3, Lc41;->b:Lc41;

    sget-object v4, Lc41;->d:Lc41;

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lw31;->a(Lz31;Lb41;Lc41;Lc41;Z)Lw31;

    move-result-object v1

    invoke-static {v1, v0}, Lv31;->b(Lw31;Lx31;)Lv31;

    move-result-object v0

    invoke-static {v0}, Lu31;->a(Lv31;)Lu31;

    move-result-object v1

    new-instance v2, Lcom/mopub/common/ViewabilityTracker;

    invoke-direct {v2, v0, v1, p0}, Lcom/mopub/common/ViewabilityTracker;-><init>(Lv31;Lu31;Landroid/view/View;)V

    return-object v2

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Parameter \'partner\' may not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Lcom/mopub/common/ViewabilityTracker$STATE;)V
    .locals 4

    invoke-static {}, Lcom/mopub/common/ViewabilityManager;->h()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    sget-object v0, Lcom/mopub/common/ViewabilityTracker$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/mopub/common/ViewabilityTracker;->e:Lcom/mopub/common/ViewabilityTracker$STATE;

    sget-object v3, Lcom/mopub/common/ViewabilityTracker$STATE;->INIT:Lcom/mopub/common/ViewabilityTracker$STATE;

    if-eq v0, v3, :cond_6

    sget-object v3, Lcom/mopub/common/ViewabilityTracker$STATE;->STOPPED:Lcom/mopub/common/ViewabilityTracker$STATE;

    if-eq v0, v3, :cond_6

    iget-object v0, p0, Lcom/mopub/common/ViewabilityTracker;->a:Lv31;

    invoke-virtual {v0}, Lv31;->c()V

    iput-boolean v1, p0, Lcom/mopub/common/ViewabilityTracker;->d:Z

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/mopub/common/ViewabilityTracker;->c:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/mopub/common/ViewabilityTracker;->e:Lcom/mopub/common/ViewabilityTracker$STATE;

    sget-object v3, Lcom/mopub/common/ViewabilityTracker$STATE;->STARTED:Lcom/mopub/common/ViewabilityTracker$STATE;

    if-eq v0, v3, :cond_3

    sget-object v3, Lcom/mopub/common/ViewabilityTracker$STATE;->STARTED_VIDEO:Lcom/mopub/common/ViewabilityTracker$STATE;

    if-ne v0, v3, :cond_6

    :cond_3
    iget-object v0, p0, Lcom/mopub/common/ViewabilityTracker;->b:Lu31;

    invoke-virtual {v0}, Lu31;->b()V

    iput-boolean v2, p0, Lcom/mopub/common/ViewabilityTracker;->c:Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/mopub/common/ViewabilityTracker;->e:Lcom/mopub/common/ViewabilityTracker$STATE;

    sget-object v3, Lcom/mopub/common/ViewabilityTracker$STATE;->INIT:Lcom/mopub/common/ViewabilityTracker$STATE;

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/mopub/common/ViewabilityTracker;->a:Lv31;

    invoke-virtual {v0}, Lv31;->e()V

    sget-object v0, Lj41;->f:Lj41;

    invoke-static {v2, v0}, Lk41;->b(ZLj41;)Lk41;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/common/ViewabilityTracker;->b:Lu31;

    invoke-virtual {v1, v0}, Lu31;->d(Lk41;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/mopub/common/ViewabilityTracker;->e:Lcom/mopub/common/ViewabilityTracker$STATE;

    sget-object v3, Lcom/mopub/common/ViewabilityTracker$STATE;->INIT:Lcom/mopub/common/ViewabilityTracker$STATE;

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/mopub/common/ViewabilityTracker;->a:Lv31;

    invoke-virtual {v0}, Lv31;->e()V

    iget-object v0, p0, Lcom/mopub/common/ViewabilityTracker;->b:Lu31;

    invoke-virtual {v0}, Lu31;->c()V

    :goto_0
    iput-boolean v2, p0, Lcom/mopub/common/ViewabilityTracker;->d:Z

    :goto_1
    const/4 v1, 0x1

    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    iput-object p1, p0, Lcom/mopub/common/ViewabilityTracker;->e:Lcom/mopub/common/ViewabilityTracker$STATE;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "new state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mopub/common/ViewabilityTracker;->e:Lcom/mopub/common/ViewabilityTracker$STATE;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/mopub/common/ViewabilityTracker;->f:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skip transition from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/common/ViewabilityTracker;->e:Lcom/mopub/common/ViewabilityTracker$STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-virtual {p0, p1}, Lcom/mopub/common/ViewabilityTracker;->h(Ljava/lang/String;)V

    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mopub/common/ViewabilityTracker;->c:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mopub/common/ViewabilityTracker;->d:Z

    return v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/mopub/common/ViewabilityManager;->isViewabilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMSDK "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public i(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerFriendlyObstruction(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mopub/common/ViewabilityTracker;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/ViewabilityTracker;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mopub/common/ViewabilityTracker;->a:Lv31;

    iget-object p2, p2, Lcom/mopub/common/ViewabilityObstruction;->a:La41;

    const-string v1, " "

    invoke-virtual {v0, p1, p2, v1}, Lv31;->a(Landroid/view/View;La41;Ljava/lang/String;)V

    return-void
.end method

.method public j(Ljava/lang/Iterable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Lcom/mopub/common/ViewabilityObstruction;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/mopub/common/ViewabilityObstruction;

    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/ViewabilityTracker;->i(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerFriendlyObstructions() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public k(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/common/ViewabilityTracker;->a:Lv31;

    invoke-virtual {v0, p1}, Lv31;->d(Landroid/view/View;)V

    return-void
.end method

.method public l()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopTracking(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mopub/common/ViewabilityTracker;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/ViewabilityTracker;->h(Ljava/lang/String;)V

    sget-object v0, Lcom/mopub/common/ViewabilityTracker$STATE;->STOPPED:Lcom/mopub/common/ViewabilityTracker$STATE;

    invoke-virtual {p0, v0}, Lcom/mopub/common/ViewabilityTracker;->a(Lcom/mopub/common/ViewabilityTracker$STATE;)V

    return-void
.end method

.method public startTracking()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startTracking(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mopub/common/ViewabilityTracker;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/ViewabilityTracker;->h(Ljava/lang/String;)V

    sget-object v0, Lcom/mopub/common/ViewabilityTracker$STATE;->STARTED:Lcom/mopub/common/ViewabilityTracker$STATE;

    invoke-virtual {p0, v0}, Lcom/mopub/common/ViewabilityTracker;->a(Lcom/mopub/common/ViewabilityTracker$STATE;)V

    return-void
.end method

.method public trackImpression()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trackImpression(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mopub/common/ViewabilityTracker;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/ViewabilityTracker;->h(Ljava/lang/String;)V

    sget-object v0, Lcom/mopub/common/ViewabilityTracker$STATE;->IMPRESSED:Lcom/mopub/common/ViewabilityTracker$STATE;

    invoke-virtual {p0, v0}, Lcom/mopub/common/ViewabilityTracker;->a(Lcom/mopub/common/ViewabilityTracker$STATE;)V

    return-void
.end method

.method public trackVideo(Lcom/mopub/common/VideoEvent;)V
    .locals 0

    return-void
.end method

.method public videoPrepared(F)V
    .locals 0

    return-void
.end method
