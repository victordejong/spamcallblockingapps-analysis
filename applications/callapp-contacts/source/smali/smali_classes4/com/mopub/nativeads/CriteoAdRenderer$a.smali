.class final Lcom/mopub/nativeads/CriteoAdRenderer$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/CriteoAdRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/ImageView;

.field e:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/view/View;Lcom/mopub/nativeads/ViewBinder;)Lcom/mopub/nativeads/CriteoAdRenderer$a;
    .locals 2

    .line 145
    new-instance v0, Lcom/mopub/nativeads/CriteoAdRenderer$a;

    invoke-direct {v0}, Lcom/mopub/nativeads/CriteoAdRenderer$a;-><init>()V

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    :try_start_0
    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->b:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/CriteoAdRenderer$a;->a:Landroid/widget/TextView;

    .line 153
    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->c:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/CriteoAdRenderer$a;->b:Landroid/widget/TextView;

    .line 154
    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->d:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mopub/nativeads/CriteoAdRenderer$a;->c:Landroid/widget/TextView;

    .line 155
    iget v1, p1, Lcom/mopub/nativeads/ViewBinder;->e:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/mopub/nativeads/CriteoAdRenderer$a;->d:Landroid/widget/ImageView;

    .line 156
    iget p1, p1, Lcom/mopub/nativeads/ViewBinder;->f:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v0, Lcom/mopub/nativeads/CriteoAdRenderer$a;->e:Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 160
    :catch_0
    new-instance p0, Lcom/mopub/nativeads/CriteoAdRenderer$a;

    invoke-direct {p0}, Lcom/mopub/nativeads/CriteoAdRenderer$a;-><init>()V

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method
