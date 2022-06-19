.class public Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/glide/GlideUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GlideRequestBuilder"
.end annotation


# instance fields
.field private A:I

.field private B:Z

.field private C:I

.field private D:Z

.field private E:Landroid/graphics/drawable/Drawable;

.field private F:Lcom/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType;

.field public a:Landroid/widget/ImageView;

.field b:I

.field c:I

.field public d:Landroid/widget/ViewSwitcher;

.field public e:Landroid/content/Context;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Integer;

.field public h:Landroid/graphics/drawable/Drawable;

.field public i:F

.field public j:Z

.field public k:I

.field public l:Z

.field public m:Z

.field public n:Lcom/bumptech/glide/e/g;

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Ljava/lang/String;

.field public s:Z

.field public t:Z

.field private u:Landroid/view/View;

.field private v:Lcom/callapp/contacts/util/glide/GlideUtils$CustomViewListener;

.field private w:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

.field private x:I

.field private y:Landroid/graphics/PorterDuff$Mode;

.field private z:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->y:Landroid/graphics/PorterDuff$Mode;

    .line 350
    invoke-static {p1}, Lcom/callapp/contacts/util/ImageUtils;->getResourceUri(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Lcom/callapp/contacts/util/glide/GlideUtils$CustomViewListener;)V
    .locals 1

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->y:Landroid/graphics/PorterDuff$Mode;

    .line 343
    iput-object p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->e:Landroid/content/Context;

    .line 344
    iput-object p2, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->f:Ljava/lang/String;

    .line 345
    iput-object p3, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->u:Landroid/view/View;

    .line 346
    iput-object p4, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->v:Lcom/callapp/contacts/util/glide/GlideUtils$CustomViewListener;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;ILandroid/content/Context;)V
    .locals 1

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->y:Landroid/graphics/PorterDuff$Mode;

    .line 315
    iput-object p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a:Landroid/widget/ImageView;

    .line 316
    invoke-static {p2}, Lcom/callapp/contacts/util/ImageUtils;->getResourceUri(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->f:Ljava/lang/String;

    .line 317
    iput-object p3, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->e:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
    .locals 1

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->y:Landroid/graphics/PorterDuff$Mode;

    .line 321
    iput-object p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a:Landroid/widget/ImageView;

    .line 322
    iput-object p2, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->E:Landroid/graphics/drawable/Drawable;

    .line 323
    iput-object p3, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->e:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->y:Landroid/graphics/PorterDuff$Mode;

    .line 309
    iput-object p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a:Landroid/widget/ImageView;

    .line 310
    iput-object p2, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->f:Ljava/lang/String;

    .line 311
    iput-object p3, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->e:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->y:Landroid/graphics/PorterDuff$Mode;

    .line 339
    iput-object p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Lcom/bumptech/glide/e/g;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->n:Lcom/bumptech/glide/e/g;

    return-object p0
.end method

.method private a(Lcom/callapp/contacts/util/glide/GlideRequest;)Lcom/callapp/contacts/util/glide/GlideRequest;
    .locals 10

    .line 514
    iget-boolean v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    if-eqz v0, :cond_0

    return-object p1

    .line 517
    :cond_0
    iget-boolean v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->B:Z

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->F:Lcom/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType;

    .line 1669
    new-instance v1, Lcom/bumptech/glide/e/h;

    invoke-direct {v1}, Lcom/bumptech/glide/e/h;-><init>()V

    new-instance v2, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;

    iget v3, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->C:I

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0}, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation;-><init>(IILcom/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/e/h;->a(Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/glide/GlideRequest;->c(Lcom/bumptech/glide/e/a;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    return-object p1

    .line 519
    :cond_1
    iget-boolean v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->m:Z

    if-eqz v0, :cond_2

    .line 1677
    new-instance v0, Lcom/bumptech/glide/e/h;

    invoke-direct {v0}, Lcom/bumptech/glide/e/h;-><init>()V

    invoke-static {}, Lcom/callapp/contacts/util/glide/BlurTransformation;->getInstance()Lcom/callapp/contacts/util/glide/BlurTransformation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e/h;->a(Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/glide/GlideRequest;->c(Lcom/bumptech/glide/e/a;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    return-object p1

    .line 2673
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->g:Ljava/lang/Integer;

    iget v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->x:I

    iget-object v2, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->y:Landroid/graphics/PorterDuff$Mode;

    iget v3, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->z:I

    iget v4, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->A:I

    iget v5, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->i:F

    .line 2683
    new-instance v8, Lcom/bumptech/glide/e/h;

    invoke-direct {v8}, Lcom/bumptech/glide/e/h;-><init>()V

    new-instance v9, Lcom/callapp/contacts/util/glide/CircleBackgroundCrop;

    if-eqz v0, :cond_3

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v6, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v2, v6

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    move-object v2, v0

    :goto_0
    iget-boolean v6, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    iget-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->f:Ljava/lang/String;

    .line 2684
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;)Z

    move-result v7

    move-object v0, v9

    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/util/glide/CircleBackgroundCrop;-><init>(Ljava/lang/Integer;Landroid/graphics/ColorFilter;IIFZZ)V

    .line 2683
    invoke-virtual {v8, v9}, Lcom/bumptech/glide/e/h;->a(Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/e/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/h;

    .line 2673
    iget-object v1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e/h;->b(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/glide/GlideRequest;->c(Lcom/bumptech/glide/e/a;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method private a(Z)Lcom/callapp/contacts/util/glide/GlideRequest;
    .locals 3

    .line 689
    iget-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/callapp/contacts/util/glide/GlideUtils;->b(Landroid/content/Context;)Lcom/callapp/contacts/util/glide/GlideRequests;

    move-result-object v0

    .line 691
    iget-object v1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->w:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->f:Ljava/lang/String;

    const-string v2, "https://graph.facebook.com/"

    invoke-static {v1, v2}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 692
    iget-object v1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->f:Ljava/lang/String;

    const-string v2, "/picture?type=normal"

    invoke-static {v1, v2}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->f:Ljava/lang/String;

    const-string v2, "/picture?width="

    invoke-static {v1, v2}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 693
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->w:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    :cond_1
    if-eqz p1, :cond_6

    .line 698
    iget-object p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->w:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    if-eqz p1, :cond_2

    .line 699
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideRequests;->j()Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->w:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    iget-object v1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->c(Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/glide/GlideRequest;->b(Ljava/lang/Object;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    iget-boolean v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->p:Z

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/glide/GlideRequest;->c(Z)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    invoke-direct {p0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->f()Lcom/bumptech/glide/load/model/GlideUrl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/glide/GlideRequest;->b(Lcom/bumptech/glide/load/f;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    return-object p1

    .line 700
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->p:Z

    if-eqz p1, :cond_3

    goto :goto_0

    .line 702
    :cond_3
    iget-boolean p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->s:Z

    if-eqz p1, :cond_4

    .line 703
    iget-object p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/util/glide/GlideRequests;->b(Ljava/lang/String;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/contacts/util/glide/GlideUtils;->b(Ljava/lang/String;)Lcom/bumptech/glide/f/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/glide/GlideRequest;->b(Lcom/bumptech/glide/load/f;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    return-object p1

    .line 705
    :cond_4
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideRequests;->j()Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/glide/GlideRequest;->b(Ljava/lang/String;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    return-object p1

    .line 701
    :cond_5
    :goto_0
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideRequests;->j()Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/glide/GlideRequest;->b(Ljava/lang/String;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    invoke-direct {p0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->e()Lcom/bumptech/glide/load/model/GlideUrl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/glide/GlideRequest;->b(Lcom/bumptech/glide/load/f;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    return-object p1

    .line 707
    :cond_6
    iget-boolean p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->D:Z

    if-eqz p1, :cond_b

    .line 708
    iget-object p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->w:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    if-eqz p1, :cond_7

    .line 709
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideRequests;->h()Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->w:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    iget-object v1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->c(Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/glide/GlideRequest;->b(Ljava/lang/Object;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    iget-boolean v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->p:Z

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/glide/GlideRequest;->c(Z)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    invoke-direct {p0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->f()Lcom/bumptech/glide/load/model/GlideUrl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/glide/GlideRequest;->b(Lcom/bumptech/glide/load/f;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    return-object p1

    .line 710
    :cond_7
    iget-boolean p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->s:Z

    if-eqz p1, :cond_8

    .line 711
    iget-object p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/util/glide/GlideRequests;->b(Ljava/lang/String;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/contacts/util/glide/GlideUtils;->b(Ljava/lang/String;)Lcom/bumptech/glide/f/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/glide/GlideRequest;->b(Lcom/bumptech/glide/load/f;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    return-object p1

    .line 712
    :cond_8
    iget-object p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->p:Z

    if-eqz p1, :cond_9

    goto :goto_1

    .line 715
    :cond_9
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideRequests;->h()Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/glide/GlideRequest;->b(Ljava/lang/String;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    return-object p1

    .line 713
    :cond_a
    :goto_1
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideRequests;->h()Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/glide/GlideRequest;->b(Ljava/lang/String;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    invoke-direct {p0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->e()Lcom/bumptech/glide/load/model/GlideUrl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/glide/GlideRequest;->b(Lcom/bumptech/glide/load/f;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    return-object p1

    .line 718
    :cond_b
    iget-object p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->w:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    if-eqz p1, :cond_c

    .line 719
    iget-object v1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->f:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->c(Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/util/glide/GlideRequests;->b(Ljava/lang/Object;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    iget-boolean v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->p:Z

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/glide/GlideRequest;->c(Z)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    invoke-direct {p0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->f()Lcom/bumptech/glide/load/model/GlideUrl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/glide/GlideRequest;->b(Lcom/bumptech/glide/load/f;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    return-object p1

    .line 720
    :cond_c
    iget-boolean p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->s:Z

    if-eqz p1, :cond_d

    .line 721
    iget-object p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/util/glide/GlideRequests;->b(Ljava/lang/String;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/contacts/util/glide/GlideUtils;->b(Ljava/lang/String;)Lcom/bumptech/glide/f/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/glide/GlideRequest;->b(Lcom/bumptech/glide/load/f;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    return-object p1

    .line 722
    :cond_d
    iget-object p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_f

    iget-boolean p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->p:Z

    if-eqz p1, :cond_e

    goto :goto_2

    .line 725
    :cond_e
    iget-object p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/util/glide/GlideRequests;->b(Ljava/lang/String;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    return-object p1

    .line 723
    :cond_f
    :goto_2
    iget-object p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/util/glide/GlideRequests;->b(Ljava/lang/String;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    invoke-direct {p0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->e()Lcom/bumptech/glide/load/model/GlideUrl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/glide/GlideRequest;->b(Lcom/bumptech/glide/load/f;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Landroid/widget/ViewSwitcher;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d:Landroid/widget/ViewSwitcher;

    return-object p0
.end method

.method private b(Lcom/callapp/contacts/util/glide/GlideRequest;)V
    .locals 2

    .line 650
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder$2;

    iget-object v1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->u:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder$2;-><init>(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/glide/GlideRequest;->a(Lcom/bumptech/glide/e/a/j;)Lcom/bumptech/glide/e/a/j;

    return-void
.end method

.method static synthetic c(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Landroid/content/Context;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Lcom/callapp/contacts/util/glide/GlideUtils$CustomViewListener;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->v:Lcom/callapp/contacts/util/glide/GlideUtils$CustomViewListener;

    return-object p0
.end method

.method private e()Lcom/bumptech/glide/load/model/GlideUrl;
    .locals 4

    .line 731
    new-instance v0, Lcom/bumptech/glide/load/model/GlideUrl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->g:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->x:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->y:Landroid/graphics/PorterDuff$Mode;

    .line 734
    invoke-virtual {v3}, Landroid/graphics/PorterDuff$Mode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->z:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->A:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->i:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->dh:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    .line 738
    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    .line 739
    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->isLightTheme()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "light"

    goto :goto_0

    :cond_0
    const-string v3, "dark"

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->n:Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;

    .line 740
    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide v2, 0x179319d98aaL

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->T:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    :goto_1
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private f()Lcom/bumptech/glide/load/model/GlideUrl;
    .locals 3

    .line 744
    new-instance v0, Lcom/bumptech/glide/load/model/GlideUrl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->T:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;
    .locals 4

    .line 471
    new-instance v0, Landroidx/swiperefreshlayout/widget/b;

    iget-object v1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/swiperefreshlayout/widget/b;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x41200000    # 10.0f

    .line 472
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/b;->a(F)V

    .line 473
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const v2, 0x7f06008a

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/b;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 474
    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/b;->a()V

    .line 475
    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/b;->start()V

    .line 1480
    iput-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->h:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final a(II)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;
    .locals 0

    .line 327
    iput p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->b:I

    .line 328
    iput p2, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->c:I

    return-object p0
.end method

.method public final a(ILandroid/graphics/PorterDuff$Mode;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;
    .locals 0

    .line 454
    iput p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->x:I

    .line 455
    iput-object p2, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->y:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public final a(ILcom/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 401
    iput-boolean v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->B:Z

    .line 402
    iput-object p2, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->F:Lcom/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType;

    .line 403
    iput p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->C:I

    return-object p0
.end method

.method public final a(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;
    .locals 0

    if-eqz p1, :cond_0

    .line 365
    invoke-static {p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->w:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    :cond_0
    return-object p0
.end method

.method public final b(II)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;
    .locals 0

    .line 460
    iput p2, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->A:I

    .line 461
    iput p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->z:I

    return-object p0
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x1

    .line 508
    :try_start_0
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(Z)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->n:Lcom/bumptech/glide/e/g;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/glide/GlideRequest;->c(Lcom/bumptech/glide/e/g;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideRequest;->b()Lcom/bumptech/glide/e/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/bumptech/glide/e/c;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final c()Lcom/bumptech/glide/e/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/e/c<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 529
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(Z)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->n:Lcom/bumptech/glide/e/g;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/glide/GlideRequest;->c(Lcom/bumptech/glide/e/g;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object v0

    .line 531
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(Lcom/callapp/contacts/util/glide/GlideRequest;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object v0

    .line 533
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideRequest;->b()Lcom/bumptech/glide/e/c;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 4

    .line 579
    iget-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->e:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->u:Landroid/view/View;

    if-eqz v1, :cond_1

    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->t:Z

    if-nez v0, :cond_2

    return-void

    .line 585
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->E:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 586
    iget-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/callapp/contacts/util/glide/GlideUtils;->b(Landroid/content/Context;)Lcom/callapp/contacts/util/glide/GlideRequests;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->E:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/glide/GlideRequests;->b(Landroid/graphics/drawable/Drawable;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 589
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(Z)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object v0

    .line 592
    :goto_0
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(Lcom/callapp/contacts/util/glide/GlideRequest;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object v0

    .line 594
    iget v1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->k:I

    if-lez v1, :cond_4

    .line 595
    invoke-static {v1}, Lcom/bumptech/glide/load/resource/b/c;->a(I)Lcom/bumptech/glide/load/resource/b/c;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/e/b/a$a;

    invoke-direct {v2}, Lcom/bumptech/glide/e/b/a$a;-><init>()V

    const/4 v3, 0x1

    .line 3071
    iput-boolean v3, v2, Lcom/bumptech/glide/e/b/a$a;->a:Z

    .line 595
    invoke-virtual {v2}, Lcom/bumptech/glide/e/b/a$a;->a()Lcom/bumptech/glide/e/b/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/resource/b/c;->a(Lcom/bumptech/glide/e/b/a;)Lcom/bumptech/glide/load/resource/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/glide/GlideRequest;->b(Lcom/bumptech/glide/l;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object v0

    goto :goto_1

    .line 597
    :cond_4
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideRequest;->n()Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object v0

    .line 600
    :goto_1
    iget v1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->o:I

    if-eqz v1, :cond_5

    .line 601
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/glide/GlideRequest;->e(I)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object v0

    .line 604
    :cond_5
    iget-object v1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    .line 605
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/glide/GlideRequest;->c(Landroid/graphics/drawable/Drawable;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object v0

    .line 608
    :cond_6
    iget-object v1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->r:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 609
    new-instance v1, Lcom/bumptech/glide/load/model/GlideUrl;

    iget-object v2, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->r:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/glide/GlideRequest;->b(Lcom/bumptech/glide/load/f;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object v0

    .line 612
    :cond_7
    iget v1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->b:I

    if-eqz v1, :cond_8

    iget v2, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->c:I

    if-eqz v2, :cond_8

    .line 613
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/glide/GlideRequest;->c(II)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object v0

    .line 616
    :cond_8
    new-instance v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder$1;-><init>(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/glide/GlideRequest;->c(Lcom/bumptech/glide/e/g;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object v0

    .line 638
    iget-boolean v1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->t:Z

    if-eqz v1, :cond_9

    .line 639
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideRequest;->c()Lcom/bumptech/glide/e/a/j;

    return-void

    .line 641
    :cond_9
    iget-object v1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a:Landroid/widget/ImageView;

    if-eqz v1, :cond_a

    .line 642
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/glide/GlideRequest;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/e/a/k;

    return-void

    .line 643
    :cond_a
    iget-object v1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->u:Landroid/view/View;

    if-eqz v1, :cond_b

    .line 644
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->b(Lcom/callapp/contacts/util/glide/GlideRequest;)V

    :cond_b
    return-void
.end method

.method public getBackgroundColor()Ljava/lang/Integer;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->g:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x1

    .line 550
    iput-boolean v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->D:Z

    const/4 v0, 0x0

    .line 552
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(Z)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->n:Lcom/bumptech/glide/e/g;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/glide/GlideRequest;->c(Lcom/bumptech/glide/e/g;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object v0

    .line 554
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(Lcom/callapp/contacts/util/glide/GlideRequest;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object v0

    .line 558
    :try_start_0
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideRequest;->b()Lcom/bumptech/glide/e/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/bumptech/glide/e/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaceHolder()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->h:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getResizedBitmap(I)Lcom/bumptech/glide/e/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/e/c<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 567
    iput-boolean v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->D:Z

    const/4 v0, 0x0

    .line 569
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(Z)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->n:Lcom/bumptech/glide/e/g;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/glide/GlideRequest;->c(Lcom/bumptech/glide/e/g;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object v0

    .line 571
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(Lcom/callapp/contacts/util/glide/GlideRequest;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object v0

    .line 573
    invoke-virtual {v0, p1, p1}, Lcom/callapp/contacts/util/glide/GlideRequest;->a(II)Lcom/bumptech/glide/e/c;

    move-result-object p1

    return-object p1
.end method

.method public getTargetBitmap()Lcom/bumptech/glide/e/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/e/c<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 539
    iput-boolean v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->D:Z

    const/4 v0, 0x0

    .line 541
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(Z)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->n:Lcom/bumptech/glide/e/g;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/glide/GlideRequest;->c(Lcom/bumptech/glide/e/g;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object v0

    .line 543
    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(Lcom/callapp/contacts/util/glide/GlideRequest;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object v0

    .line 545
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideRequest;->b()Lcom/bumptech/glide/e/c;

    move-result-object v0

    return-object v0
.end method

.method public isForce()Z
    .locals 1

    .line 423
    iget-boolean v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->p:Z

    return v0
.end method

.method public isShowInitialsTextView()Z
    .locals 1

    .line 305
    iget-boolean v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->j:Z

    return v0
.end method
