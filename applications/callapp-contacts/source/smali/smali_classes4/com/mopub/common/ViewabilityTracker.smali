.class Lcom/mopub/common/ViewabilityTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/ViewabilityTracker$STATE;
    }
.end annotation


# static fields
.field private static g:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field a:Z

.field protected b:Z

.field protected c:Lcom/mopub/common/ViewabilityTracker$STATE;

.field d:I

.field private e:Lcom/iab/omid/library/mopub/adsession/b;

.field private f:Lcom/iab/omid/library/mopub/adsession/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/mopub/common/ViewabilityTracker;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Lcom/iab/omid/library/mopub/adsession/b;Lcom/iab/omid/library/mopub/adsession/a;Landroid/view/View;)V
    .locals 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/mopub/common/ViewabilityTracker;->a:Z

    .line 46
    iput-boolean v0, p0, Lcom/mopub/common/ViewabilityTracker;->b:Z

    .line 156
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 157
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 158
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 160
    sget-object v0, Lcom/mopub/common/ViewabilityTracker$STATE;->INIT:Lcom/mopub/common/ViewabilityTracker$STATE;

    iput-object v0, p0, Lcom/mopub/common/ViewabilityTracker;->c:Lcom/mopub/common/ViewabilityTracker$STATE;

    .line 161
    iput-object p1, p0, Lcom/mopub/common/ViewabilityTracker;->e:Lcom/iab/omid/library/mopub/adsession/b;

    .line 162
    iput-object p2, p0, Lcom/mopub/common/ViewabilityTracker;->f:Lcom/iab/omid/library/mopub/adsession/a;

    .line 163
    sget-object p1, Lcom/mopub/common/ViewabilityTracker;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iput p1, p0, Lcom/mopub/common/ViewabilityTracker;->d:I

    .line 165
    invoke-virtual {p0, p3}, Lcom/mopub/common/ViewabilityTracker;->a(Landroid/view/View;)V

    return-void
.end method

.method static a(Lcom/iab/omid/library/mopub/adsession/e;Ljava/util/Set;Lcom/iab/omid/library/mopub/adsession/h;)Lcom/iab/omid/library/mopub/adsession/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iab/omid/library/mopub/adsession/e;",
            "Ljava/util/Set<",
            "Lcom/mopub/common/ViewabilityVendor;",
            ">;",
            "Lcom/iab/omid/library/mopub/adsession/h;",
            ")",
            "Lcom/iab/omid/library/mopub/adsession/b;"
        }
    .end annotation

    .line 114
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 115
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 116
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 119
    invoke-static {p1}, Lcom/mopub/common/ViewabilityTracker;->a(Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    .line 121
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    invoke-static {}, Lcom/mopub/common/ViewabilityManager;->e()Lcom/iab/omid/library/mopub/adsession/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-static {}, Lcom/mopub/common/ViewabilityManager;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 131
    invoke-static {v0, v1, p1, v2, v2}, Lcom/iab/omid/library/mopub/adsession/c;->a(Lcom/iab/omid/library/mopub/adsession/i;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/mopub/adsession/c;

    move-result-object p1

    .line 137
    sget-object v0, Lcom/iab/omid/library/mopub/adsession/g;->BEGIN_TO_RENDER:Lcom/iab/omid/library/mopub/adsession/g;

    sget-object v1, Lcom/iab/omid/library/mopub/adsession/h;->NATIVE:Lcom/iab/omid/library/mopub/adsession/h;

    const/4 v2, 0x0

    .line 138
    invoke-static {p0, v0, v1, p2, v2}, Lcom/iab/omid/library/mopub/adsession/AdSessionConfiguration;->createAdSessionConfiguration(Lcom/iab/omid/library/mopub/adsession/e;Lcom/iab/omid/library/mopub/adsession/g;Lcom/iab/omid/library/mopub/adsession/h;Lcom/iab/omid/library/mopub/adsession/h;Z)Lcom/iab/omid/library/mopub/adsession/AdSessionConfiguration;

    move-result-object p0

    .line 145
    invoke-static {p0, p1}, Lcom/iab/omid/library/mopub/adsession/b;->a(Lcom/iab/omid/library/mopub/adsession/AdSessionConfiguration;Lcom/iab/omid/library/mopub/adsession/c;)Lcom/iab/omid/library/mopub/adsession/b;

    move-result-object p0

    return-object p0

    .line 127
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter \'partner\' may not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 122
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "verificationScriptResources is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Landroid/view/View;Ljava/util/Set;)Lcom/mopub/common/ViewabilityTracker;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 98
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcom/iab/omid/library/mopub/adsession/e;->NATIVE_DISPLAY:Lcom/iab/omid/library/mopub/adsession/e;

    sget-object v1, Lcom/iab/omid/library/mopub/adsession/h;->NONE:Lcom/iab/omid/library/mopub/adsession/h;

    invoke-static {v0, p1, v1}, Lcom/mopub/common/ViewabilityTracker;->a(Lcom/iab/omid/library/mopub/adsession/e;Ljava/util/Set;Lcom/iab/omid/library/mopub/adsession/h;)Lcom/iab/omid/library/mopub/adsession/b;

    move-result-object p1

    .line 107
    invoke-static {p1}, Lcom/iab/omid/library/mopub/adsession/a;->a(Lcom/iab/omid/library/mopub/adsession/b;)Lcom/iab/omid/library/mopub/adsession/a;

    move-result-object v0

    .line 108
    new-instance v1, Lcom/mopub/common/ViewabilityTracker;

    invoke-direct {v1, p1, v0, p0}, Lcom/mopub/common/ViewabilityTracker;-><init>(Lcom/iab/omid/library/mopub/adsession/b;Lcom/iab/omid/library/mopub/adsession/a;Landroid/view/View;)V

    return-object v1

    .line 99
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty viewability vendors list."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Landroid/webkit/WebView;)Lcom/mopub/common/ViewabilityTracker;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 63
    invoke-static {}, Lcom/mopub/common/ViewabilityManager;->e()Lcom/iab/omid/library/mopub/adsession/i;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v6, ""

    const-string v0, "Partner is null"

    .line 1000
    invoke-static {v1, v0}, Lcom/iab/omid/library/mopub/d/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "WebView is null"

    invoke-static {p0, v0}, Lcom/iab/omid/library/mopub/d/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CustomReferenceData is greater than 256 characters"

    invoke-static {v6, v0}, Lcom/iab/omid/library/mopub/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/iab/omid/library/mopub/adsession/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v7, Lcom/iab/omid/library/mopub/adsession/d;->HTML:Lcom/iab/omid/library/mopub/adsession/d;

    const-string v5, ""

    move-object v0, v8

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/iab/omid/library/mopub/adsession/c;-><init>(Lcom/iab/omid/library/mopub/adsession/i;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/iab/omid/library/mopub/adsession/d;)V

    .line 74
    sget-object v0, Lcom/iab/omid/library/mopub/adsession/e;->HTML_DISPLAY:Lcom/iab/omid/library/mopub/adsession/e;

    sget-object v1, Lcom/iab/omid/library/mopub/adsession/g;->BEGIN_TO_RENDER:Lcom/iab/omid/library/mopub/adsession/g;

    sget-object v2, Lcom/iab/omid/library/mopub/adsession/h;->NATIVE:Lcom/iab/omid/library/mopub/adsession/h;

    sget-object v3, Lcom/iab/omid/library/mopub/adsession/h;->NONE:Lcom/iab/omid/library/mopub/adsession/h;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/iab/omid/library/mopub/adsession/AdSessionConfiguration;->createAdSessionConfiguration(Lcom/iab/omid/library/mopub/adsession/e;Lcom/iab/omid/library/mopub/adsession/g;Lcom/iab/omid/library/mopub/adsession/h;Lcom/iab/omid/library/mopub/adsession/h;Z)Lcom/iab/omid/library/mopub/adsession/AdSessionConfiguration;

    move-result-object v0

    .line 81
    invoke-static {v0, v8}, Lcom/iab/omid/library/mopub/adsession/b;->a(Lcom/iab/omid/library/mopub/adsession/AdSessionConfiguration;Lcom/iab/omid/library/mopub/adsession/c;)Lcom/iab/omid/library/mopub/adsession/b;

    move-result-object v0

    .line 83
    invoke-static {v0}, Lcom/iab/omid/library/mopub/adsession/a;->a(Lcom/iab/omid/library/mopub/adsession/b;)Lcom/iab/omid/library/mopub/adsession/a;

    move-result-object v1

    .line 84
    new-instance v2, Lcom/mopub/common/ViewabilityTracker;

    invoke-direct {v2, v0, v1, p0}, Lcom/mopub/common/ViewabilityTracker;-><init>(Lcom/iab/omid/library/mopub/adsession/b;Lcom/iab/omid/library/mopub/adsession/a;Landroid/view/View;)V

    return-object v2

    .line 65
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Parameter \'partner\' may not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Ljava/util/Set;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/mopub/common/ViewabilityVendor;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/iab/omid/library/mopub/adsession/j;",
            ">;"
        }
    .end annotation

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/ViewabilityVendor;

    .line 287
    :try_start_0
    invoke-virtual {v1}, Lcom/mopub/common/ViewabilityVendor;->getVendorKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "ResourceURL is null"

    if-nez v2, :cond_1

    :try_start_1
    invoke-virtual {v1}, Lcom/mopub/common/ViewabilityVendor;->getVerificationParameters()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 291
    :cond_0
    invoke-virtual {v1}, Lcom/mopub/common/ViewabilityVendor;->getVendorKey()Ljava/lang/String;

    move-result-object v2

    .line 292
    invoke-virtual {v1}, Lcom/mopub/common/ViewabilityVendor;->getJavascriptResourceUrl()Ljava/net/URL;

    move-result-object v4

    .line 293
    invoke-virtual {v1}, Lcom/mopub/common/ViewabilityVendor;->getVerificationParameters()Ljava/lang/String;

    move-result-object v1

    const-string v5, "VendorKey is null or empty"

    .line 20000
    invoke-static {v2, v5}, Lcom/iab/omid/library/mopub/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v3}, Lcom/iab/omid/library/mopub/d/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "VerificationParameters is null or empty"

    invoke-static {v1, v3}, Lcom/iab/omid/library/mopub/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/iab/omid/library/mopub/adsession/j;

    invoke-direct {v3, v2, v4, v1}, Lcom/iab/omid/library/mopub/adsession/j;-><init>(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 288
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/mopub/common/ViewabilityVendor;->getJavascriptResourceUrl()Ljava/net/URL;

    move-result-object v1

    .line 19000
    invoke-static {v1, v3}, Lcom/iab/omid/library/mopub/d/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/iab/omid/library/mopub/adsession/j;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1, v3}, Lcom/iab/omid/library/mopub/adsession/j;-><init>(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static a(Ljava/lang/String;)V
    .locals 4

    .line 311
    invoke-static {}, Lcom/mopub/common/ViewabilityManager;->isViewabilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "OMSDK "

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method final a(Landroid/view/View;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/mopub/common/ViewabilityTracker;->e:Lcom/iab/omid/library/mopub/adsession/b;

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/mopub/adsession/b;->a(Landroid/view/View;)V

    return-void
.end method

.method final a(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V
    .locals 2

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registerFriendlyObstruction(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/mopub/common/ViewabilityTracker;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/ViewabilityTracker;->a(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/mopub/common/ViewabilityTracker;->e:Lcom/iab/omid/library/mopub/adsession/b;

    iget-object p2, p2, Lcom/mopub/common/ViewabilityObstruction;->value:Lcom/iab/omid/library/mopub/adsession/f;

    const-string v1, " "

    invoke-virtual {v0, p1, p2, v1}, Lcom/iab/omid/library/mopub/adsession/b;->a(Landroid/view/View;Lcom/iab/omid/library/mopub/adsession/f;Ljava/lang/String;)V

    return-void
.end method

.method final a(Lcom/mopub/common/ViewabilityTracker$STATE;)V
    .locals 8

    .line 176
    invoke-static {}, Lcom/mopub/common/ViewabilityManager;->a()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    .line 177
    sget-object v0, Lcom/mopub/common/ViewabilityTracker$1;->a:[I

    invoke-virtual {p1}, Lcom/mopub/common/ViewabilityTracker$STATE;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const-string v3, "publishLoadedEvent"

    if-eq v0, v2, :cond_7

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    goto/16 :goto_3

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/ViewabilityTracker;->c:Lcom/mopub/common/ViewabilityTracker$STATE;

    sget-object v3, Lcom/mopub/common/ViewabilityTracker$STATE;->INIT:Lcom/mopub/common/ViewabilityTracker$STATE;

    if-eq v0, v3, :cond_8

    iget-object v0, p0, Lcom/mopub/common/ViewabilityTracker;->c:Lcom/mopub/common/ViewabilityTracker$STATE;

    sget-object v3, Lcom/mopub/common/ViewabilityTracker$STATE;->STOPPED:Lcom/mopub/common/ViewabilityTracker$STATE;

    if-eq v0, v3, :cond_8

    .line 209
    iget-object v0, p0, Lcom/mopub/common/ViewabilityTracker;->e:Lcom/iab/omid/library/mopub/adsession/b;

    invoke-virtual {v0}, Lcom/iab/omid/library/mopub/adsession/b;->b()V

    .line 210
    iput-boolean v1, p0, Lcom/mopub/common/ViewabilityTracker;->b:Z

    goto/16 :goto_2

    .line 198
    :cond_1
    iget-boolean v0, p0, Lcom/mopub/common/ViewabilityTracker;->a:Z

    if-nez v0, :cond_8

    .line 201
    iget-object v0, p0, Lcom/mopub/common/ViewabilityTracker;->c:Lcom/mopub/common/ViewabilityTracker$STATE;

    sget-object v3, Lcom/mopub/common/ViewabilityTracker$STATE;->STARTED:Lcom/mopub/common/ViewabilityTracker$STATE;

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/mopub/common/ViewabilityTracker;->c:Lcom/mopub/common/ViewabilityTracker$STATE;

    sget-object v3, Lcom/mopub/common/ViewabilityTracker$STATE;->STARTED_VIDEO:Lcom/mopub/common/ViewabilityTracker$STATE;

    if-ne v0, v3, :cond_8

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/mopub/common/ViewabilityTracker;->f:Lcom/iab/omid/library/mopub/adsession/a;

    .line 13000
    iget-object v3, v0, Lcom/iab/omid/library/mopub/adsession/a;->a:Lcom/iab/omid/library/mopub/adsession/k;

    invoke-static {v3}, Lcom/iab/omid/library/mopub/d/d;->a(Lcom/iab/omid/library/mopub/adsession/k;)V

    iget-object v3, v0, Lcom/iab/omid/library/mopub/adsession/a;->a:Lcom/iab/omid/library/mopub/adsession/k;

    invoke-static {v3}, Lcom/iab/omid/library/mopub/d/d;->c(Lcom/iab/omid/library/mopub/adsession/k;)V

    iget-object v3, v0, Lcom/iab/omid/library/mopub/adsession/a;->a:Lcom/iab/omid/library/mopub/adsession/k;

    invoke-virtual {v3}, Lcom/iab/omid/library/mopub/adsession/k;->e()Z

    move-result v3

    if-nez v3, :cond_3

    :try_start_0
    iget-object v3, v0, Lcom/iab/omid/library/mopub/adsession/a;->a:Lcom/iab/omid/library/mopub/adsession/k;

    invoke-virtual {v3}, Lcom/iab/omid/library/mopub/adsession/k;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_3
    :goto_0
    iget-object v3, v0, Lcom/iab/omid/library/mopub/adsession/a;->a:Lcom/iab/omid/library/mopub/adsession/k;

    invoke-virtual {v3}, Lcom/iab/omid/library/mopub/adsession/k;->e()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v0, v0, Lcom/iab/omid/library/mopub/adsession/a;->a:Lcom/iab/omid/library/mopub/adsession/k;

    .line 15000
    iget-boolean v3, v0, Lcom/iab/omid/library/mopub/adsession/k;->g:Z

    if-nez v3, :cond_4

    .line 16000
    iget-object v3, v0, Lcom/iab/omid/library/mopub/adsession/k;->c:Lcom/iab/omid/library/mopub/f/a;

    .line 17000
    invoke-static {}, Lcom/iab/omid/library/mopub/b/e;->a()Lcom/iab/omid/library/mopub/b/e;

    move-result-object v4

    invoke-virtual {v3}, Lcom/iab/omid/library/mopub/f/a;->c()Landroid/webkit/WebView;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "publishImpressionEvent"

    .line 18000
    invoke-virtual {v4, v3, v5, v1}, Lcom/iab/omid/library/mopub/b/e;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14000
    iput-boolean v2, v0, Lcom/iab/omid/library/mopub/adsession/k;->g:Z

    goto :goto_1

    .line 15000
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Impression event can only be sent once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 203
    :cond_5
    :goto_1
    iput-boolean v2, p0, Lcom/mopub/common/ViewabilityTracker;->a:Z

    goto :goto_2

    .line 188
    :cond_6
    iget-object v0, p0, Lcom/mopub/common/ViewabilityTracker;->c:Lcom/mopub/common/ViewabilityTracker$STATE;

    sget-object v4, Lcom/mopub/common/ViewabilityTracker$STATE;->INIT:Lcom/mopub/common/ViewabilityTracker$STATE;

    if-ne v0, v4, :cond_8

    .line 190
    iget-object v0, p0, Lcom/mopub/common/ViewabilityTracker;->e:Lcom/iab/omid/library/mopub/adsession/b;

    invoke-virtual {v0}, Lcom/iab/omid/library/mopub/adsession/b;->a()V

    .line 191
    sget-object v0, Lcom/iab/omid/library/mopub/adsession/a/d;->STANDALONE:Lcom/iab/omid/library/mopub/adsession/a/d;

    const-string v4, "Position is null"

    .line 7000
    invoke-static {v0, v4}, Lcom/iab/omid/library/mopub/d/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/iab/omid/library/mopub/adsession/a/e;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5, v2, v0}, Lcom/iab/omid/library/mopub/adsession/a/e;-><init>(ZLjava/lang/Float;ZLcom/iab/omid/library/mopub/adsession/a/d;)V

    .line 192
    iget-object v0, p0, Lcom/mopub/common/ViewabilityTracker;->f:Lcom/iab/omid/library/mopub/adsession/a;

    const-string v5, "VastProperties is null"

    .line 8000
    invoke-static {v4, v5}, Lcom/iab/omid/library/mopub/d/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/iab/omid/library/mopub/adsession/a;->a:Lcom/iab/omid/library/mopub/adsession/k;

    invoke-static {v5}, Lcom/iab/omid/library/mopub/d/d;->b(Lcom/iab/omid/library/mopub/adsession/k;)V

    iget-object v5, v0, Lcom/iab/omid/library/mopub/adsession/a;->a:Lcom/iab/omid/library/mopub/adsession/k;

    invoke-static {v5}, Lcom/iab/omid/library/mopub/d/d;->c(Lcom/iab/omid/library/mopub/adsession/k;)V

    iget-object v0, v0, Lcom/iab/omid/library/mopub/adsession/a;->a:Lcom/iab/omid/library/mopub/adsession/k;

    invoke-virtual {v4}, Lcom/iab/omid/library/mopub/adsession/a/e;->a()Lorg/json/JSONObject;

    move-result-object v4

    .line 9000
    invoke-virtual {v0}, Lcom/iab/omid/library/mopub/adsession/k;->c()V

    .line 10000
    iget-object v5, v0, Lcom/iab/omid/library/mopub/adsession/k;->c:Lcom/iab/omid/library/mopub/f/a;

    .line 11000
    invoke-static {}, Lcom/iab/omid/library/mopub/b/e;->a()Lcom/iab/omid/library/mopub/b/e;

    move-result-object v6

    invoke-virtual {v5}, Lcom/iab/omid/library/mopub/f/a;->c()Landroid/webkit/WebView;

    move-result-object v5

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v4, v7, v1

    .line 12000
    invoke-virtual {v6, v5, v3, v7}, Lcom/iab/omid/library/mopub/b/e;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9000
    iput-boolean v2, v0, Lcom/iab/omid/library/mopub/adsession/k;->h:Z

    .line 193
    iput-boolean v2, p0, Lcom/mopub/common/ViewabilityTracker;->b:Z

    goto :goto_2

    .line 179
    :cond_7
    iget-object v0, p0, Lcom/mopub/common/ViewabilityTracker;->c:Lcom/mopub/common/ViewabilityTracker$STATE;

    sget-object v4, Lcom/mopub/common/ViewabilityTracker$STATE;->INIT:Lcom/mopub/common/ViewabilityTracker$STATE;

    if-ne v0, v4, :cond_8

    .line 181
    iget-object v0, p0, Lcom/mopub/common/ViewabilityTracker;->e:Lcom/iab/omid/library/mopub/adsession/b;

    invoke-virtual {v0}, Lcom/iab/omid/library/mopub/adsession/b;->a()V

    .line 182
    iget-object v0, p0, Lcom/mopub/common/ViewabilityTracker;->f:Lcom/iab/omid/library/mopub/adsession/a;

    .line 2000
    iget-object v4, v0, Lcom/iab/omid/library/mopub/adsession/a;->a:Lcom/iab/omid/library/mopub/adsession/k;

    invoke-static {v4}, Lcom/iab/omid/library/mopub/d/d;->b(Lcom/iab/omid/library/mopub/adsession/k;)V

    iget-object v4, v0, Lcom/iab/omid/library/mopub/adsession/a;->a:Lcom/iab/omid/library/mopub/adsession/k;

    invoke-static {v4}, Lcom/iab/omid/library/mopub/d/d;->c(Lcom/iab/omid/library/mopub/adsession/k;)V

    iget-object v0, v0, Lcom/iab/omid/library/mopub/adsession/a;->a:Lcom/iab/omid/library/mopub/adsession/k;

    .line 3000
    invoke-virtual {v0}, Lcom/iab/omid/library/mopub/adsession/k;->c()V

    .line 4000
    iget-object v4, v0, Lcom/iab/omid/library/mopub/adsession/k;->c:Lcom/iab/omid/library/mopub/f/a;

    .line 5000
    invoke-static {}, Lcom/iab/omid/library/mopub/b/e;->a()Lcom/iab/omid/library/mopub/b/e;

    move-result-object v5

    invoke-virtual {v4}, Lcom/iab/omid/library/mopub/f/a;->c()Landroid/webkit/WebView;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    .line 6000
    invoke-virtual {v5, v4, v3, v1}, Lcom/iab/omid/library/mopub/b/e;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3000
    iput-boolean v2, v0, Lcom/iab/omid/library/mopub/adsession/k;->h:Z

    .line 183
    iput-boolean v2, p0, Lcom/mopub/common/ViewabilityTracker;->b:Z

    :goto_2
    const/4 v1, 0x1

    :cond_8
    :goto_3
    if-eqz v1, :cond_9

    .line 218
    iput-object p1, p0, Lcom/mopub/common/ViewabilityTracker;->c:Lcom/mopub/common/ViewabilityTracker$STATE;

    .line 219
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "new state: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mopub/common/ViewabilityTracker;->c:Lcom/mopub/common/ViewabilityTracker$STATE;

    invoke-virtual {v0}, Lcom/mopub/common/ViewabilityTracker$STATE;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/mopub/common/ViewabilityTracker;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mopub/common/ViewabilityTracker;->a(Ljava/lang/String;)V

    return-void

    .line 221
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "skip transition from: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mopub/common/ViewabilityTracker;->c:Lcom/mopub/common/ViewabilityTracker$STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mopub/common/ViewabilityTracker;->a(Ljava/lang/String;)V

    return-void
.end method

.method final a(Ljava/lang/Iterable;)V
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

    .line 252
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 254
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/mopub/common/ViewabilityObstruction;

    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/ViewabilityTracker;->a(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 256
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "registerFriendlyObstructions() "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

.method final a()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/mopub/common/ViewabilityTracker;->b:Z

    return v0
.end method

.method startTracking()V
    .locals 2

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startTracking(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/mopub/common/ViewabilityTracker;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/ViewabilityTracker;->a(Ljava/lang/String;)V

    .line 227
    sget-object v0, Lcom/mopub/common/ViewabilityTracker$STATE;->STARTED:Lcom/mopub/common/ViewabilityTracker$STATE;

    invoke-virtual {p0, v0}, Lcom/mopub/common/ViewabilityTracker;->a(Lcom/mopub/common/ViewabilityTracker$STATE;)V

    return-void
.end method

.method public trackImpression()V
    .locals 2

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "trackImpression(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/mopub/common/ViewabilityTracker;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/ViewabilityTracker;->a(Ljava/lang/String;)V

    .line 237
    sget-object v0, Lcom/mopub/common/ViewabilityTracker$STATE;->IMPRESSED:Lcom/mopub/common/ViewabilityTracker$STATE;

    invoke-virtual {p0, v0}, Lcom/mopub/common/ViewabilityTracker;->a(Lcom/mopub/common/ViewabilityTracker$STATE;)V

    return-void
.end method

.method trackVideo(Lcom/mopub/common/VideoEvent;)V
    .locals 0

    return-void
.end method

.method videoPrepared(F)V
    .locals 0

    return-void
.end method
