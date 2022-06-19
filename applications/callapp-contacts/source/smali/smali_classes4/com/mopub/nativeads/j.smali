.class final Lcom/mopub/nativeads/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final i:Lcom/mopub/nativeads/j;


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/ImageView;

.field f:Landroid/widget/ImageView;

.field g:Landroid/widget/ImageView;

.field h:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/mopub/nativeads/j;

    invoke-direct {v0}, Lcom/mopub/nativeads/j;-><init>()V

    sput-object v0, Lcom/mopub/nativeads/j;->i:Lcom/mopub/nativeads/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/view/View;Lcom/mopub/nativeads/ViewBinder;)Lcom/mopub/nativeads/j;
    .locals 3

    .line 38
    new-instance v0, Lcom/mopub/nativeads/j;

    invoke-direct {v0}, Lcom/mopub/nativeads/j;-><init>()V

    .line 39
    iput-object p0, v0, Lcom/mopub/nativeads/j;->a:Landroid/view/View;

    .line 41
    :try_start_0
    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->b:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/j;->b:Landroid/widget/TextView;

    .line 42
    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->c:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/j;->c:Landroid/widget/TextView;

    .line 43
    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->d:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/j;->d:Landroid/widget/TextView;

    .line 44
    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->e:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/mopub/nativeads/j;->e:Landroid/widget/ImageView;

    .line 45
    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->f:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/mopub/nativeads/j;->f:Landroid/widget/ImageView;

    .line 46
    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->g:I

    .line 47
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/mopub/nativeads/j;->g:Landroid/widget/ImageView;

    .line 48
    iget p1, p1, Lcom/mopub/nativeads/ViewBinder;->h:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/mopub/nativeads/j;->h:Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 51
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Could not cast from id in ViewBinder to expected View type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 53
    sget-object p0, Lcom/mopub/nativeads/j;->i:Lcom/mopub/nativeads/j;

    return-object p0
.end method
