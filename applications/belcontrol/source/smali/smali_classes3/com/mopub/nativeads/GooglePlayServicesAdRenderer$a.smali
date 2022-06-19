.class public Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/GooglePlayServicesAdRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final m:Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/ImageView;

.field public f:Landroid/widget/ImageView;

.field public g:Landroid/widget/ImageView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/FrameLayout;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;

    invoke-direct {v0}, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;-><init>()V

    sput-object v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->m:Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromViewBinder(Landroid/view/View;Lcom/mopub/nativeads/ViewBinder;)Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;
    .locals 2

    new-instance v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;

    invoke-direct {v0}, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;-><init>()V

    iput-object p0, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->a:Landroid/view/View;

    :try_start_0
    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->b:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->b:Landroid/widget/TextView;

    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->c:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->c:Landroid/widget/TextView;

    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->d:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->d:Landroid/widget/TextView;

    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->e:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->e:Landroid/widget/ImageView;

    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->f:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->f:Landroid/widget/ImageView;

    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->g:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->g:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/mopub/nativeads/ViewBinder;->i:Ljava/util/Map;

    const-string v1, "key_star_rating"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->h:Landroid/widget/TextView;

    :cond_0
    const-string v1, "key_advertiser"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->i:Landroid/widget/TextView;

    :cond_1
    const-string v1, "key_store"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->j:Landroid/widget/TextView;

    :cond_2
    const-string v1, "key_price"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->k:Landroid/widget/TextView;

    :cond_3
    const-string v1, "ad_choices_container"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    iput-object p0, v0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->l:Landroid/widget/FrameLayout;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object v0

    :catch_0
    move-exception p0

    const-string p1, "Could not cast from id in ViewBinder to expected View type"

    invoke-static {p1, p0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;->m:Lcom/mopub/nativeads/GooglePlayServicesAdRenderer$a;

    return-object p0
.end method
