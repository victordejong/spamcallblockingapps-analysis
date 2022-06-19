.class public Ldi1;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final i:Ldi1;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/ImageView;

.field public f:Landroid/widget/ImageView;

.field public g:Landroid/widget/ImageView;

.field public h:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldi1;

    invoke-direct {v0}, Ldi1;-><init>()V

    sput-object v0, Ldi1;->i:Ldi1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;Lcom/mopub/nativeads/ViewBinder;)Ldi1;
    .locals 3

    new-instance v0, Ldi1;

    invoke-direct {v0}, Ldi1;-><init>()V

    iput-object p0, v0, Ldi1;->a:Landroid/view/View;

    :try_start_0
    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->b:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Ldi1;->b:Landroid/widget/TextView;

    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->c:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Ldi1;->c:Landroid/widget/TextView;

    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->d:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Ldi1;->d:Landroid/widget/TextView;

    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->e:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Ldi1;->e:Landroid/widget/ImageView;

    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->f:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Ldi1;->f:Landroid/widget/ImageView;

    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->g:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Ldi1;->g:Landroid/widget/ImageView;

    iget p1, p1, Lcom/mopub/nativeads/ViewBinder;->h:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Ldi1;->h:Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Could not cast from id in ViewBinder to expected View type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    sget-object p0, Ldi1;->i:Ldi1;

    return-object p0
.end method
