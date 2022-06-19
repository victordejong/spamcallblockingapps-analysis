.class public Lcom/explorestack/iab/vast/activity/VastView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/utils/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/iab/vast/activity/VastView$b;,
        Lcom/explorestack/iab/vast/activity/VastView$c;,
        Lcom/explorestack/iab/vast/activity/VastView$d;,
        Lcom/explorestack/iab/vast/activity/VastView$a;,
        Lcom/explorestack/iab/vast/activity/VastView$SavedState;,
        Lcom/explorestack/iab/vast/activity/VastView$VastViewState;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private final I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/iab/utils/i<",
            "+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private final K:Ljava/lang/Runnable;

.field private final L:Ljava/lang/Runnable;

.field private final M:Lcom/explorestack/iab/vast/activity/VastView$c;

.field private final N:Lcom/explorestack/iab/vast/activity/VastView$c;

.field private final O:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private P:I

.field private Q:F

.field private final R:Lcom/explorestack/iab/vast/activity/VastView$c;

.field private final S:Landroid/view/TextureView$SurfaceTextureListener;

.field private final T:Landroid/media/MediaPlayer$OnCompletionListener;

.field private final U:Landroid/media/MediaPlayer$OnErrorListener;

.field private final V:Landroid/media/MediaPlayer$OnPreparedListener;

.field private final W:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field a:Lcom/explorestack/iab/vast/view/IabVideoTexture;

.field private aa:Lcom/explorestack/iab/vast/b$a;

.field private final ab:Landroid/view/View$OnTouchListener;

.field private final ac:Landroid/webkit/WebChromeClient;

.field private final ad:Landroid/webkit/WebViewClient;

.field b:Landroid/widget/FrameLayout;

.field c:Landroid/view/Surface;

.field d:Landroid/widget/FrameLayout;

.field e:Lcom/explorestack/iab/utils/d;

.field f:Lcom/explorestack/iab/utils/e;

.field g:Lcom/explorestack/iab/utils/m;

.field h:Lcom/explorestack/iab/utils/k;

.field i:Lcom/explorestack/iab/utils/j;

.field j:Lcom/explorestack/iab/utils/l;

.field k:Lcom/explorestack/iab/utils/f;

.field l:Landroid/media/MediaPlayer;

.field m:Landroid/view/View;

.field n:Lcom/explorestack/iab/vast/tags/f;

.field o:Lcom/explorestack/iab/vast/tags/f;

.field p:Landroid/widget/ImageView;

.field q:Lcom/explorestack/iab/mraid/MraidInterstitial;

.field r:Lcom/explorestack/iab/vast/VastRequest;

.field s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

.field private final t:Ljava/lang/String;

.field private u:Lcom/explorestack/iab/vast/activity/VastView$d;

.field private v:Lcom/explorestack/iab/vast/activity/VastView$b;

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 175
    invoke-direct {p0, p1, v0}, Lcom/explorestack/iab/vast/activity/VastView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 179
    invoke-direct {p0, p1, p2, v0}, Lcom/explorestack/iab/vast/activity/VastView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 183
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "VASTView-"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Ljava/lang/String;

    .line 145
    new-instance p2, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    invoke-direct {p2}, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;-><init>()V

    iput-object p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    const/4 p2, 0x0

    .line 154
    iput p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->w:I

    .line 155
    iput p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->x:I

    .line 160
    iput-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->A:Z

    .line 161
    iput-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->B:Z

    .line 163
    iput-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->C:Z

    .line 164
    iput-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->D:Z

    .line 165
    iput-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->E:Z

    .line 166
    iput-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->F:Z

    .line 167
    iput-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->G:Z

    .line 169
    iput-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->H:Z

    .line 171
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/explorestack/iab/vast/activity/VastView;->I:Ljava/util/List;

    .line 172
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/explorestack/iab/vast/activity/VastView;->J:Ljava/util/List;

    .line 836
    new-instance p3, Lcom/explorestack/iab/vast/activity/VastView$20;

    invoke-direct {p3, p0}, Lcom/explorestack/iab/vast/activity/VastView$20;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    iput-object p3, p0, Lcom/explorestack/iab/vast/activity/VastView;->K:Ljava/lang/Runnable;

    .line 1358
    new-instance p3, Lcom/explorestack/iab/vast/activity/VastView$21;

    invoke-direct {p3, p0}, Lcom/explorestack/iab/vast/activity/VastView$21;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    iput-object p3, p0, Lcom/explorestack/iab/vast/activity/VastView;->L:Ljava/lang/Runnable;

    .line 1384
    new-instance p3, Lcom/explorestack/iab/vast/activity/VastView$2;

    invoke-direct {p3, p0}, Lcom/explorestack/iab/vast/activity/VastView$2;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    iput-object p3, p0, Lcom/explorestack/iab/vast/activity/VastView;->M:Lcom/explorestack/iab/vast/activity/VastView$c;

    .line 1409
    new-instance p3, Lcom/explorestack/iab/vast/activity/VastView$3;

    invoke-direct {p3, p0}, Lcom/explorestack/iab/vast/activity/VastView$3;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    iput-object p3, p0, Lcom/explorestack/iab/vast/activity/VastView;->N:Lcom/explorestack/iab/vast/activity/VastView$c;

    .line 1440
    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    iput-object p3, p0, Lcom/explorestack/iab/vast/activity/VastView;->O:Ljava/util/LinkedList;

    .line 1441
    iput p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->P:I

    const/4 p3, 0x0

    .line 1442
    iput p3, p0, Lcom/explorestack/iab/vast/activity/VastView;->Q:F

    .line 1450
    new-instance p3, Lcom/explorestack/iab/vast/activity/VastView$4;

    invoke-direct {p3, p0}, Lcom/explorestack/iab/vast/activity/VastView$4;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    iput-object p3, p0, Lcom/explorestack/iab/vast/activity/VastView;->R:Lcom/explorestack/iab/vast/activity/VastView$c;

    .line 1505
    new-instance p3, Lcom/explorestack/iab/vast/activity/VastView$5;

    invoke-direct {p3, p0}, Lcom/explorestack/iab/vast/activity/VastView$5;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    iput-object p3, p0, Lcom/explorestack/iab/vast/activity/VastView;->S:Landroid/view/TextureView$SurfaceTextureListener;

    .line 1543
    new-instance v0, Lcom/explorestack/iab/vast/activity/VastView$6;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/vast/activity/VastView$6;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->T:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 1552
    new-instance v0, Lcom/explorestack/iab/vast/activity/VastView$7;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/vast/activity/VastView$7;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->U:Landroid/media/MediaPlayer$OnErrorListener;

    .line 1562
    new-instance v0, Lcom/explorestack/iab/vast/activity/VastView$8;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/vast/activity/VastView$8;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->V:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 1603
    new-instance v0, Lcom/explorestack/iab/vast/activity/VastView$9;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/vast/activity/VastView$9;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->W:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 1614
    new-instance v0, Lcom/explorestack/iab/vast/activity/VastView$10;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/vast/activity/VastView$10;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->aa:Lcom/explorestack/iab/vast/b$a;

    .line 1780
    new-instance v0, Lcom/explorestack/iab/vast/activity/VastView$11;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/vast/activity/VastView$11;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->ab:Landroid/view/View$OnTouchListener;

    .line 1797
    new-instance v0, Lcom/explorestack/iab/vast/activity/VastView$13;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/vast/activity/VastView$13;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->ac:Landroid/webkit/WebChromeClient;

    .line 1827
    new-instance v0, Lcom/explorestack/iab/vast/activity/VastView$14;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/vast/activity/VastView$14;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->ad:Landroid/webkit/WebViewClient;

    const/high16 v0, -0x1000000

    .line 184
    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->setBackgroundColor(I)V

    .line 185
    new-instance v0, Lcom/explorestack/iab/vast/activity/VastView$1;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/vast/activity/VastView$1;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    new-instance v0, Lcom/explorestack/iab/vast/view/IabVideoTexture;

    invoke-direct {v0, p1}, Lcom/explorestack/iab/vast/view/IabVideoTexture;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->a:Lcom/explorestack/iab/vast/view/IabVideoTexture;

    .line 196
    invoke-virtual {v0, p3}, Lcom/explorestack/iab/vast/view/IabVideoTexture;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 197
    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/explorestack/iab/vast/activity/VastView;->b:Landroid/widget/FrameLayout;

    .line 198
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->a:Lcom/explorestack/iab/vast/view/IabVideoTexture;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0x11

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p3, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    iget-object p3, p0, Lcom/explorestack/iab/vast/activity/VastView;->b:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p3, v0}, Lcom/explorestack/iab/vast/activity/VastView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/explorestack/iab/vast/activity/VastView;->d:Landroid/widget/FrameLayout;

    .line 206
    invoke-virtual {p3, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 207
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->d:Landroid/widget/FrameLayout;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/iab/vast/activity/VastView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private A()V
    .locals 3

    .line 1337
    iget v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->y:I

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->z:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 1341
    :cond_0
    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->a:Lcom/explorestack/iab/vast/view/IabVideoTexture;

    invoke-virtual {v2, v0, v1}, Lcom/explorestack/iab/vast/view/IabVideoTexture;->setVideoSize(II)V

    return-void

    .line 1338
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Ljava/lang/String;

    const-string v1, "configureVideoSurface - skip: videoWidth or videoHeight is 0"

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic A(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->i()V

    return-void
.end method

.method private B()V
    .locals 1

    .line 1349
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->D()V

    .line 1350
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->C()V

    .line 1351
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->L:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic B(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 2

    .line 17973
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Ljava/lang/String;

    const-string v1, "handleImpressions"

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17974
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v0, :cond_0

    .line 17975
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isImpressionProcessed:Z

    .line 17976
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/processor/VastAd;->getImpressionUrlList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private C()V
    .locals 1

    .line 1355
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->L:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic C(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->b(Z)V

    return-void
.end method

.method private D()V
    .locals 1

    .line 1445
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->O:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    .line 1446
    iput v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->P:I

    const/4 v0, 0x0

    .line 1447
    iput v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->Q:F

    return-void
.end method

.method static synthetic D(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->z()V

    return-void
.end method

.method static synthetic E(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/util/List;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/explorestack/iab/vast/activity/VastView;->I:Ljava/util/List;

    return-object p0
.end method

.method private E()V
    .locals 1

    .line 1597
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->s()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1600
    :cond_0
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->j()V

    return-void
.end method

.method static synthetic F(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->o()V

    return-void
.end method

.method static synthetic G(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->p()V

    return-void
.end method

.method static synthetic a(Lcom/explorestack/iab/vast/activity/VastView;F)F
    .locals 0

    .line 82
    iput p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->Q:F

    return p1
.end method

.method static synthetic a(Lcom/explorestack/iab/vast/activity/VastView;I)I
    .locals 0

    .line 82
    iput p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->y:I

    return p1
.end method

.method private a(Landroid/content/Context;Lcom/explorestack/iab/vast/tags/f;)Landroid/view/View;
    .locals 9

    .line 582
    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->b(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "width"

    .line 4177
    invoke-virtual {p2, v1}, Lcom/explorestack/iab/vast/tags/f;->d(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 5177
    invoke-virtual {p2, v1}, Lcom/explorestack/iab/vast/tags/f;->d(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const/high16 v1, 0x44360000    # 728.0f

    goto :goto_0

    :cond_1
    const/high16 v1, 0x43a00000    # 320.0f

    .line 583
    :goto_0
    invoke-static {p1, v1}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/content/Context;F)I

    move-result v1

    const-string v2, "height"

    .line 5181
    invoke-virtual {p2, v2}, Lcom/explorestack/iab/vast/tags/f;->d(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2

    .line 6181
    invoke-virtual {p2, v2}, Lcom/explorestack/iab/vast/tags/f;->d(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_1

    :cond_3
    const/high16 v0, 0x42480000    # 50.0f

    .line 585
    :goto_1
    invoke-static {p1, v0}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/content/Context;F)I

    move-result v0

    .line 588
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 591
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 592
    invoke-static {}, Lcom/explorestack/iab/utils/Utils;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setId(I)V

    .line 593
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v1, 0x0

    .line 594
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollContainer(Z)V

    .line 595
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 596
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    const/high16 v3, 0x2000000

    .line 597
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 598
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 599
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 600
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->ab:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 601
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->ad:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 602
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->ac:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 603
    invoke-virtual {p2}, Lcom/explorestack/iab/vast/tags/f;->e()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    const/4 v8, 0x0

    const-string v4, ""

    const-string v6, "text/html"

    const-string v7, "utf-8"

    move-object v3, v0

    .line 605
    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    :cond_4
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 608
    invoke-static {}, Lcom/explorestack/iab/utils/Utils;->a()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 609
    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 610
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method private static a(Lcom/explorestack/iab/vast/a;Lcom/explorestack/iab/utils/h;)Lcom/explorestack/iab/utils/h;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 394
    new-instance p1, Lcom/explorestack/iab/utils/h;

    invoke-direct {p1}, Lcom/explorestack/iab/utils/h;-><init>()V

    .line 395
    invoke-interface {p0}, Lcom/explorestack/iab/vast/a;->j()Ljava/lang/Integer;

    move-result-object v0

    .line 3076
    iput-object v0, p1, Lcom/explorestack/iab/utils/h;->a:Ljava/lang/Integer;

    .line 396
    invoke-interface {p0}, Lcom/explorestack/iab/vast/a;->k()Ljava/lang/Integer;

    move-result-object p0

    .line 3088
    iput-object p0, p1, Lcom/explorestack/iab/utils/h;->b:Ljava/lang/Integer;

    return-object p1

    .line 399
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/iab/utils/h;->i()Z

    move-result v0

    if-nez v0, :cond_2

    .line 400
    invoke-interface {p0}, Lcom/explorestack/iab/vast/a;->j()Ljava/lang/Integer;

    move-result-object v0

    .line 4076
    iput-object v0, p1, Lcom/explorestack/iab/utils/h;->a:Ljava/lang/Integer;

    .line 402
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/iab/utils/h;->j()Z

    move-result v0

    if-nez v0, :cond_3

    .line 403
    invoke-interface {p0}, Lcom/explorestack/iab/vast/a;->k()Ljava/lang/Integer;

    move-result-object p0

    .line 4088
    iput-object p0, p1, Lcom/explorestack/iab/utils/h;->b:Ljava/lang/Integer;

    :cond_3
    return-object p1
.end method

.method private a(I)V
    .locals 2

    .line 1121
    :try_start_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v0, :cond_0

    .line 1122
    invoke-virtual {v0, p1}, Lcom/explorestack/iab/vast/VastRequest;->sendError(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1125
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$d;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v1, :cond_1

    .line 1128
    invoke-interface {v0, v1, p1}, Lcom/explorestack/iab/vast/activity/VastView$d;->a(Lcom/explorestack/iab/vast/VastRequest;I)V

    :cond_1
    return-void
.end method

.method private a(Lcom/explorestack/iab/vast/TrackingEvent;)V
    .locals 3

    .line 1133
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Track Event: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1136
    invoke-virtual {v0}, Lcom/explorestack/iab/vast/processor/VastAd;->getTrackingEventListMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Ljava/util/Map;Lcom/explorestack/iab/vast/TrackingEvent;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/explorestack/iab/vast/a;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 311
    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->h()Lcom/explorestack/iab/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/h;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->i:Lcom/explorestack/iab/utils/j;

    if-eqz p1, :cond_1

    .line 319
    invoke-virtual {p1}, Lcom/explorestack/iab/utils/j;->d()V

    :cond_1
    return-void

    .line 312
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->i:Lcom/explorestack/iab/utils/j;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 313
    new-instance v0, Lcom/explorestack/iab/utils/j;

    invoke-direct {v0, v1}, Lcom/explorestack/iab/utils/j;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->i:Lcom/explorestack/iab/utils/j;

    :cond_3
    if-eqz p1, :cond_4

    .line 316
    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->h()Lcom/explorestack/iab/utils/h;

    move-result-object v1

    .line 315
    :cond_4
    invoke-static {p1, v1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/a;Lcom/explorestack/iab/utils/h;)Lcom/explorestack/iab/utils/h;

    move-result-object p1

    .line 317
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->i:Lcom/explorestack/iab/utils/j;

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Lcom/explorestack/iab/utils/j;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/explorestack/iab/utils/h;)V

    return-void
.end method

.method private a(Lcom/explorestack/iab/vast/a;Z)V
    .locals 2

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    .line 325
    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->c()Lcom/explorestack/iab/utils/h;

    move-result-object p2

    invoke-virtual {p2}, Lcom/explorestack/iab/utils/h;->d()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_4

    .line 327
    iget-object p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->k:Lcom/explorestack/iab/utils/f;

    if-nez p2, :cond_2

    .line 328
    new-instance p2, Lcom/explorestack/iab/utils/f;

    new-instance v0, Lcom/explorestack/iab/vast/activity/VastView$12;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/vast/activity/VastView$12;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    invoke-direct {p2, v0}, Lcom/explorestack/iab/utils/f;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->k:Lcom/explorestack/iab/utils/f;

    .line 334
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->J:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p1, :cond_3

    .line 337
    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->c()Lcom/explorestack/iab/utils/h;

    move-result-object p2

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    .line 336
    :goto_1
    invoke-static {p1, p2}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/a;Lcom/explorestack/iab/utils/h;)Lcom/explorestack/iab/utils/h;

    move-result-object p1

    .line 338
    iget-object p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->k:Lcom/explorestack/iab/utils/f;

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0, v1, p1}, Lcom/explorestack/iab/utils/f;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/explorestack/iab/utils/h;)V

    return-void

    .line 339
    :cond_4
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->k:Lcom/explorestack/iab/utils/f;

    if-eqz p1, :cond_5

    .line 340
    invoke-virtual {p1}, Lcom/explorestack/iab/utils/f;->d()V

    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->j()V

    return-void
.end method

.method static synthetic a(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/TrackingEvent;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/TrackingEvent;)V

    return-void
.end method

.method static synthetic a(Lcom/explorestack/iab/vast/activity/VastView;Ljava/lang/String;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 1239
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "startPlayback: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->s()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1243
    :cond_0
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget-boolean p1, p1, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isCompanionShown:Z

    if-eqz p1, :cond_1

    .line 1244
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->e()V

    return-void

    .line 1245
    :cond_1
    iget-boolean p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->A:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 1246
    iget-boolean p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->C:Z

    if-eqz p1, :cond_2

    .line 1247
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->y()V

    .line 1248
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->f()V

    .line 1249
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->A()V

    .line 1250
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->v()V

    .line 1251
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->aa:Lcom/explorestack/iab/vast/b$a;

    invoke-static {p0, p1}, Lcom/explorestack/iab/vast/b;->a(Landroid/view/View;Lcom/explorestack/iab/vast/b$a;)V

    goto :goto_0

    .line 1253
    :cond_2
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->D:Z

    .line 1255
    :goto_0
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    .line 1256
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->b:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    .line 1259
    :cond_3
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->B:Z

    :cond_4
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1167
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->s()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 1170
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1174
    :cond_1
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/explorestack/iab/vast/VastRequest;->fireUrls(Ljava/util/List;Landroid/os/Bundle;)V

    return-void

    .line 1171
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Ljava/lang/String;

    const-string v0, "\turl list is null"

    invoke-static {p1, v0}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/Map;Lcom/explorestack/iab/vast/TrackingEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/explorestack/iab/vast/TrackingEvent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/explorestack/iab/vast/TrackingEvent;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1156
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1157
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Ljava/util/List;)V

    return-void

    .line 1159
    :cond_0
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "Processing Event - fail: %s (tracking event map is null or empty)"

    .line 1160
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1159
    invoke-static {p1, p2}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Z)V
    .locals 0

    .line 409
    iput-boolean p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->H:Z

    .line 410
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->c()V

    return-void
.end method

.method static synthetic a(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/tags/f;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 18104
    iget-object p1, p1, Lcom/explorestack/iab/vast/tags/f;->a:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 18097
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/explorestack/iab/vast/activity/VastView;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/explorestack/iab/vast/activity/VastView;Z)Z
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->C:Z

    return p1
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1105
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "processClickThroughEvent: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->wasClicked:Z

    if-eqz p2, :cond_1

    .line 1108
    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Ljava/util/List;)V

    .line 1109
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$d;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz p1, :cond_0

    .line 1110
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->w()V

    .line 1111
    invoke-direct {p0, v1}, Lcom/explorestack/iab/vast/activity/VastView;->d(Z)V

    .line 1112
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$d;

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    invoke-interface {p1, v0, p0, p2}, Lcom/explorestack/iab/vast/activity/VastView$d;->a(Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/utils/c;Ljava/lang/String;)V

    :cond_0
    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/explorestack/iab/vast/activity/VastView;I)I
    .locals 0

    .line 82
    iput p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->z:I

    return p1
.end method

.method private b(Lcom/explorestack/iab/vast/TrackingEvent;)V
    .locals 3

    .line 1141
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Track Banner Event: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->n:Lcom/explorestack/iab/vast/tags/f;

    if-eqz v0, :cond_0

    .line 14116
    iget-object v0, v0, Lcom/explorestack/iab/vast/tags/f;->b:Ljava/util/Map;

    .line 1143
    invoke-direct {p0, v0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Ljava/util/Map;Lcom/explorestack/iab/vast/TrackingEvent;)V

    :cond_0
    return-void
.end method

.method private b(Lcom/explorestack/iab/vast/a;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 345
    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->e()Lcom/explorestack/iab/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/h;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 369
    :cond_0
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->e:Lcom/explorestack/iab/utils/d;

    if-eqz p1, :cond_1

    .line 370
    invoke-virtual {p1}, Lcom/explorestack/iab/utils/d;->d()V

    :cond_1
    return-void

    .line 346
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->e:Lcom/explorestack/iab/utils/d;

    if-nez v0, :cond_3

    .line 347
    new-instance v0, Lcom/explorestack/iab/utils/d;

    new-instance v1, Lcom/explorestack/iab/vast/activity/VastView$15;

    invoke-direct {v1, p0}, Lcom/explorestack/iab/vast/activity/VastView$15;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    invoke-direct {v0, v1}, Lcom/explorestack/iab/utils/d;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->e:Lcom/explorestack/iab/utils/d;

    .line 364
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->J:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p1, :cond_4

    .line 367
    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->e()Lcom/explorestack/iab/utils/h;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 366
    :goto_1
    invoke-static {p1, v0}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/a;Lcom/explorestack/iab/utils/h;)Lcom/explorestack/iab/utils/h;

    move-result-object p1

    .line 368
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->e:Lcom/explorestack/iab/utils/d;

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, p1}, Lcom/explorestack/iab/utils/d;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/explorestack/iab/utils/h;)V

    return-void
.end method

.method private b(Z)V
    .locals 5

    .line 626
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->s()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 6636
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->getPaddingRight()I

    move-result v1

    sub-int/2addr p1, v1

    .line 6640
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 632
    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {v2}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v2

    .line 633
    invoke-virtual {v2, p1, v1}, Lcom/explorestack/iab/vast/processor/VastAd;->getCompanion(II)Lcom/explorestack/iab/vast/tags/f;

    move-result-object p1

    .line 634
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->o:Lcom/explorestack/iab/vast/tags/f;

    if-eq v1, p1, :cond_2

    if-eqz p1, :cond_1

    .line 635
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {v1}, Lcom/explorestack/iab/vast/VastRequest;->shouldUseScreenSizeForCompanionOrientation()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "width"

    .line 7177
    invoke-virtual {p1, v1}, Lcom/explorestack/iab/vast/tags/f;->d(Ljava/lang/String;)I

    move-result v1

    const-string v2, "height"

    .line 7181
    invoke-virtual {p1, v2}, Lcom/explorestack/iab/vast/tags/f;->d(Ljava/lang/String;)I

    move-result v2

    .line 636
    invoke-static {v1, v2}, Lcom/explorestack/iab/utils/Utils;->a(II)I

    move-result v1

    iput v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->x:I

    goto :goto_0

    .line 638
    :cond_1
    iget v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->w:I

    iput v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->x:I

    .line 640
    :goto_0
    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->o:Lcom/explorestack/iab/vast/tags/f;

    .line 641
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->q:Lcom/explorestack/iab/mraid/MraidInterstitial;

    if-eqz p1, :cond_2

    .line 642
    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/MraidInterstitial;->destroy()V

    .line 643
    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->q:Lcom/explorestack/iab/mraid/MraidInterstitial;

    .line 647
    :cond_2
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->o:Lcom/explorestack/iab/vast/tags/f;

    const/4 v1, 0x1

    if-nez p1, :cond_4

    .line 648
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->p:Landroid/widget/ImageView;

    if-nez p1, :cond_3

    .line 649
    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->p:Landroid/widget/ImageView;

    .line 651
    :cond_3
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->p:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 652
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->p:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void

    .line 653
    :cond_4
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->q:Lcom/explorestack/iab/mraid/MraidInterstitial;

    if-nez p1, :cond_9

    .line 654
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->g()V

    .line 655
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->o:Lcom/explorestack/iab/vast/tags/f;

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/tags/f;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 657
    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {v2}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v2

    .line 658
    invoke-virtual {v2}, Lcom/explorestack/iab/vast/processor/VastAd;->getAppodealExtension()Lcom/explorestack/iab/vast/tags/d;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 7211
    iget-object v2, v2, Lcom/explorestack/iab/vast/tags/d;->b:Lcom/explorestack/iab/vast/tags/l;

    goto :goto_1

    :cond_5
    move-object v2, v0

    .line 663
    :goto_1
    new-instance v3, Lcom/explorestack/iab/vast/activity/VastView$a;

    invoke-direct {v3, p0, v0}, Lcom/explorestack/iab/vast/activity/VastView$a;-><init>(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/activity/VastView$1;)V

    .line 664
    invoke-static {}, Lcom/explorestack/iab/mraid/MraidInterstitial;->newBuilder()Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v4

    .line 665
    invoke-virtual {v4, v0}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setBaseUrl(Ljava/lang/String;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    .line 666
    invoke-virtual {v0, v1}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setPreload(Z)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    iget-object v4, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    .line 667
    invoke-virtual {v4}, Lcom/explorestack/iab/vast/VastRequest;->getCompanionCloseTime()F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setCloseTime(F)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    iget-object v4, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    .line 668
    invoke-virtual {v4}, Lcom/explorestack/iab/vast/VastRequest;->isForceUseNativeCloseTime()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->forceUseNativeCloseButton(Z)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    const/4 v4, 0x0

    .line 669
    invoke-virtual {v0, v4}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setIsTag(Z)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    .line 670
    invoke-virtual {v0, v3}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setListener(Lcom/explorestack/iab/mraid/MraidInterstitialListener;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    if-eqz v2, :cond_7

    .line 8091
    iget-object v3, v2, Lcom/explorestack/iab/vast/tags/l;->a:Lcom/explorestack/iab/utils/h;

    .line 674
    invoke-virtual {v0, v3}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setCloseStyle(Lcom/explorestack/iab/utils/h;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    .line 8096
    iget-object v3, v2, Lcom/explorestack/iab/vast/tags/l;->b:Lcom/explorestack/iab/utils/h;

    .line 675
    invoke-virtual {v0, v3}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setCountDownStyle(Lcom/explorestack/iab/utils/h;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    .line 8101
    iget-object v3, v2, Lcom/explorestack/iab/vast/tags/l;->c:Lcom/explorestack/iab/utils/h;

    .line 676
    invoke-virtual {v0, v3}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setLoadingStyle(Lcom/explorestack/iab/utils/h;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    .line 8106
    iget-object v3, v2, Lcom/explorestack/iab/vast/tags/l;->d:Lcom/explorestack/iab/utils/h;

    .line 677
    invoke-virtual {v0, v3}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setProgressStyle(Lcom/explorestack/iab/utils/h;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    .line 8123
    iget v3, v2, Lcom/explorestack/iab/vast/tags/l;->g:F

    .line 678
    invoke-virtual {v0, v3}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setDurationSec(F)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    .line 9111
    iget-object v3, v2, Lcom/explorestack/iab/vast/tags/l;->e:Ljava/lang/String;

    .line 679
    invoke-virtual {v0, v3}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setProductLink(Ljava/lang/String;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    .line 9139
    iget-boolean v3, v2, Lcom/explorestack/iab/vast/tags/l;->i:Z

    if-eqz v3, :cond_6

    .line 681
    invoke-virtual {v0, v1}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->forceUseNativeCloseButton(Z)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    .line 9143
    :cond_6
    iget-boolean v1, v2, Lcom/explorestack/iab/vast/tags/l;->j:Z

    .line 683
    invoke-virtual {v0, v1}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setR1(Z)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    .line 9147
    iget-boolean v1, v2, Lcom/explorestack/iab/vast/tags/l;->k:Z

    .line 684
    invoke-virtual {v0, v1}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setR2(Z)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    .line 686
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->build(Landroid/content/Context;)Lcom/explorestack/iab/mraid/MraidInterstitial;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->q:Lcom/explorestack/iab/mraid/MraidInterstitial;

    .line 687
    invoke-virtual {v0, p1}, Lcom/explorestack/iab/mraid/MraidInterstitial;->load(Ljava/lang/String;)V

    return-void

    .line 689
    :cond_8
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->p()V

    :cond_9
    return-void
.end method

.method static synthetic b(Lcom/explorestack/iab/vast/activity/VastView;)Z
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->m()Z

    move-result p0

    return p0
.end method

.method private c()V
    .locals 5

    .line 416
    iget-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->H:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    goto :goto_2

    .line 419
    :cond_0
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->t()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->E:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 426
    :goto_2
    iget-object v3, p0, Lcom/explorestack/iab/vast/activity/VastView;->e:Lcom/explorestack/iab/utils/d;

    const/16 v4, 0x8

    if-eqz v3, :cond_4

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    const/16 v1, 0x8

    .line 427
    :goto_3
    invoke-virtual {v3, v1}, Lcom/explorestack/iab/utils/d;->a(I)V

    .line 429
    :cond_4
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->f:Lcom/explorestack/iab/utils/e;

    if-eqz v1, :cond_6

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    const/16 v2, 0x8

    .line 430
    :goto_4
    invoke-virtual {v1, v2}, Lcom/explorestack/iab/utils/e;->a(I)V

    :cond_6
    return-void
.end method

.method private c(Lcom/explorestack/iab/vast/TrackingEvent;)V
    .locals 3

    .line 1148
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Track Companion Event: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->o:Lcom/explorestack/iab/vast/tags/f;

    if-eqz v0, :cond_0

    .line 15116
    iget-object v0, v0, Lcom/explorestack/iab/vast/tags/f;->b:Ljava/util/Map;

    .line 1150
    invoke-direct {p0, v0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Ljava/util/Map;Lcom/explorestack/iab/vast/TrackingEvent;)V

    :cond_0
    return-void
.end method

.method private c(Lcom/explorestack/iab/vast/a;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 375
    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->i()Lcom/explorestack/iab/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/h;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 383
    :cond_0
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->f:Lcom/explorestack/iab/utils/e;

    if-eqz p1, :cond_1

    .line 384
    invoke-virtual {p1}, Lcom/explorestack/iab/utils/e;->d()V

    :cond_1
    return-void

    .line 376
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->f:Lcom/explorestack/iab/utils/e;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 377
    new-instance v0, Lcom/explorestack/iab/utils/e;

    invoke-direct {v0, v1}, Lcom/explorestack/iab/utils/e;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->f:Lcom/explorestack/iab/utils/e;

    .line 378
    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->J:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p1, :cond_4

    .line 381
    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->i()Lcom/explorestack/iab/utils/h;

    move-result-object v1

    .line 380
    :cond_4
    invoke-static {p1, v1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/a;Lcom/explorestack/iab/utils/h;)Lcom/explorestack/iab/utils/h;

    move-result-object p1

    .line 382
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->f:Lcom/explorestack/iab/utils/e;

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, p1}, Lcom/explorestack/iab/utils/e;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/explorestack/iab/utils/h;)V

    return-void
.end method

.method private c(Z)V
    .locals 6

    .line 699
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->s()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->E:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 702
    :cond_0
    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->b(Z)V

    const/4 p1, 0x1

    .line 703
    iput-boolean p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->E:Z

    .line 704
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iput-boolean p1, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isCompanionShown:Z

    .line 705
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 706
    iget v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->x:I

    if-eq v0, v1, :cond_1

    .line 707
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$d;

    if-eqz v0, :cond_1

    .line 708
    invoke-interface {v0, v1}, Lcom/explorestack/iab/vast/activity/VastView$d;->a(I)V

    .line 711
    :cond_1
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->j:Lcom/explorestack/iab/utils/l;

    if-eqz v0, :cond_2

    .line 712
    invoke-virtual {v0}, Lcom/explorestack/iab/utils/l;->d()V

    .line 714
    :cond_2
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->h:Lcom/explorestack/iab/utils/k;

    if-eqz v0, :cond_3

    .line 715
    invoke-virtual {v0}, Lcom/explorestack/iab/utils/k;->d()V

    .line 717
    :cond_3
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->g:Lcom/explorestack/iab/utils/m;

    if-eqz v0, :cond_4

    .line 718
    invoke-virtual {v0}, Lcom/explorestack/iab/utils/m;->d()V

    .line 721
    :cond_4
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->k()V

    .line 723
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->o:Lcom/explorestack/iab/vast/tags/f;

    if-nez v0, :cond_6

    .line 724
    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Z)V

    .line 726
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->p:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    .line 727
    new-instance v5, Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->p:Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 729
    new-instance p1, Lcom/explorestack/iab/vast/activity/VastView$19;

    .line 730
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    .line 731
    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getFileUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    .line 732
    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/processor/VastAd;->getPickedMediaFileTag()Lcom/explorestack/iab/vast/tags/MediaFileTag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/tags/MediaFileTag;->getText()Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/explorestack/iab/vast/activity/VastView$19;-><init>(Lcom/explorestack/iab/vast/activity/VastView;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->v:Lcom/explorestack/iab/vast/activity/VastView$b;

    .line 770
    :cond_5
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 772
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->p:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    .line 774
    invoke-direct {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->a(Z)V

    .line 775
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->b:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 776
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->d()V

    .line 777
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->k:Lcom/explorestack/iab/utils/f;

    if-eqz v1, :cond_7

    .line 778
    invoke-virtual {v1, v2}, Lcom/explorestack/iab/utils/f;->a(I)V

    .line 781
    :cond_7
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->q:Lcom/explorestack/iab/mraid/MraidInterstitial;

    if-eqz v1, :cond_9

    .line 782
    invoke-virtual {v1}, Lcom/explorestack/iab/mraid/MraidInterstitial;->isReady()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 783
    invoke-direct {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->d(Z)V

    .line 784
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->q:Lcom/explorestack/iab/mraid/MraidInterstitial;

    invoke-virtual {p1, p0, v0}, Lcom/explorestack/iab/mraid/MraidInterstitial;->showInView(Landroid/view/ViewGroup;Z)V

    goto :goto_0

    .line 786
    :cond_8
    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->d(Z)V

    goto :goto_0

    .line 789
    :cond_9
    invoke-direct {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->d(Z)V

    .line 790
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->p()V

    .line 793
    :goto_0
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->y()V

    .line 794
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 796
    sget-object p1, Lcom/explorestack/iab/vast/TrackingEvent;->creativeView:Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->c(Lcom/explorestack/iab/vast/TrackingEvent;)V

    :cond_a
    :goto_1
    return-void
.end method

.method static synthetic c(Lcom/explorestack/iab/vast/activity/VastView;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/explorestack/iab/vast/activity/VastView;->E:Z

    return p0
.end method

.method private d()V
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->m:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 616
    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->b(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 617
    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->m:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private d(Lcom/explorestack/iab/vast/a;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 435
    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->d()Lcom/explorestack/iab/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/h;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 448
    :cond_0
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->h:Lcom/explorestack/iab/utils/k;

    if-eqz p1, :cond_1

    .line 449
    invoke-virtual {p1}, Lcom/explorestack/iab/utils/k;->d()V

    :cond_1
    return-void

    .line 436
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->h:Lcom/explorestack/iab/utils/k;

    if-nez v0, :cond_3

    .line 437
    new-instance v0, Lcom/explorestack/iab/utils/k;

    new-instance v1, Lcom/explorestack/iab/vast/activity/VastView$16;

    invoke-direct {v1, p0}, Lcom/explorestack/iab/vast/activity/VastView$16;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    invoke-direct {v0, v1}, Lcom/explorestack/iab/utils/k;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->h:Lcom/explorestack/iab/utils/k;

    .line 443
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->J:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p1, :cond_4

    .line 446
    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->d()Lcom/explorestack/iab/utils/h;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 445
    :goto_1
    invoke-static {p1, v0}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/a;Lcom/explorestack/iab/utils/h;)Lcom/explorestack/iab/utils/h;

    move-result-object p1

    .line 447
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->h:Lcom/explorestack/iab/utils/k;

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, p1}, Lcom/explorestack/iab/utils/k;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/explorestack/iab/utils/h;)V

    return-void
.end method

.method static synthetic d(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->n()V

    return-void
.end method

.method private d(Z)V
    .locals 1

    .line 884
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->i:Lcom/explorestack/iab/utils/j;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 888
    invoke-virtual {v0, p1}, Lcom/explorestack/iab/utils/j;->a(I)V

    .line 889
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->i:Lcom/explorestack/iab/utils/j;

    invoke-virtual {p1}, Lcom/explorestack/iab/utils/j;->b()V

    return-void

    :cond_1
    const/16 p1, 0x8

    .line 891
    invoke-virtual {v0, p1}, Lcom/explorestack/iab/utils/j;->a(I)V

    return-void
.end method

.method private e()V
    .locals 1

    const/4 v0, 0x0

    .line 695
    invoke-direct {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->c(Z)V

    return-void
.end method

.method private e(Lcom/explorestack/iab/vast/a;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 454
    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->g()Lcom/explorestack/iab/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/h;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 455
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->g:Lcom/explorestack/iab/utils/m;

    if-nez v0, :cond_0

    .line 456
    new-instance v0, Lcom/explorestack/iab/utils/m;

    new-instance v1, Lcom/explorestack/iab/vast/activity/VastView$17;

    invoke-direct {v1, p0}, Lcom/explorestack/iab/vast/activity/VastView$17;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    invoke-direct {v0, v1}, Lcom/explorestack/iab/utils/m;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->g:Lcom/explorestack/iab/utils/m;

    .line 462
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->J:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p1, :cond_1

    .line 465
    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->g()Lcom/explorestack/iab/utils/h;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 464
    :goto_0
    invoke-static {p1, v0}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/a;Lcom/explorestack/iab/utils/h;)Lcom/explorestack/iab/utils/h;

    move-result-object p1

    .line 466
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->g:Lcom/explorestack/iab/utils/m;

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, p1}, Lcom/explorestack/iab/utils/m;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/explorestack/iab/utils/h;)V

    return-void

    .line 467
    :cond_2
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->g:Lcom/explorestack/iab/utils/m;

    if-eqz p1, :cond_3

    .line 468
    invoke-virtual {p1}, Lcom/explorestack/iab/utils/m;->d()V

    :cond_3
    return-void
.end method

.method static synthetic e(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 2

    .line 15896
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget-boolean v1, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isMuted:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isMuted:Z

    .line 15897
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->i()V

    .line 15898
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isMuted:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/explorestack/iab/vast/TrackingEvent;->mute:Lcom/explorestack/iab/vast/TrackingEvent;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/explorestack/iab/vast/TrackingEvent;->unmute:Lcom/explorestack/iab/vast/TrackingEvent;

    :goto_0
    invoke-direct {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/TrackingEvent;)V

    return-void
.end method

.method private f()V
    .locals 1

    .line 800
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->p:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 801
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->g()V

    goto :goto_0

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->q:Lcom/explorestack/iab/mraid/MraidInterstitial;

    if-eqz v0, :cond_1

    .line 803
    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/MraidInterstitial;->destroy()V

    const/4 v0, 0x0

    .line 804
    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->q:Lcom/explorestack/iab/mraid/MraidInterstitial;

    .line 805
    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->o:Lcom/explorestack/iab/vast/tags/f;

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 807
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->E:Z

    return-void
.end method

.method private f(Lcom/explorestack/iab/vast/a;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 473
    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->f()Lcom/explorestack/iab/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/h;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 482
    :cond_0
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->j:Lcom/explorestack/iab/utils/l;

    if-eqz p1, :cond_1

    .line 483
    invoke-virtual {p1}, Lcom/explorestack/iab/utils/l;->d()V

    :cond_1
    return-void

    .line 474
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->j:Lcom/explorestack/iab/utils/l;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 475
    new-instance v0, Lcom/explorestack/iab/utils/l;

    invoke-direct {v0, v1}, Lcom/explorestack/iab/utils/l;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->j:Lcom/explorestack/iab/utils/l;

    .line 476
    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->J:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p1, :cond_4

    .line 479
    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->f()Lcom/explorestack/iab/utils/h;

    move-result-object v1

    .line 478
    :cond_4
    invoke-static {p1, v1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/a;Lcom/explorestack/iab/utils/h;)Lcom/explorestack/iab/utils/h;

    move-result-object p1

    .line 480
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->j:Lcom/explorestack/iab/utils/l;

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, p1}, Lcom/explorestack/iab/utils/l;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/explorestack/iab/utils/h;)V

    .line 481
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->j:Lcom/explorestack/iab/utils/l;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/explorestack/iab/utils/l;->a(FII)V

    return-void
.end method

.method static synthetic f(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 2

    .line 16310
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16313
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isCompanionShown:Z

    .line 16314
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iput v1, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->currentVideoPosition:I

    .line 16316
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->f()V

    .line 16317
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/processor/VastAd;->getAppodealExtension()Lcom/explorestack/iab/vast/tags/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->g(Lcom/explorestack/iab/vast/a;)V

    const-string v0, "restartPlayback"

    .line 16318
    invoke-direct {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->p:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 812
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->h()V

    .line 813
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->p:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 814
    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->p:Landroid/widget/ImageView;

    :cond_0
    return-void
.end method

.method private g(Lcom/explorestack/iab/vast/a;)V
    .locals 13

    if-eqz p1, :cond_0

    .line 490
    sget-object v0, Lcom/explorestack/iab/utils/Assets;->defVideoStyle:Lcom/explorestack/iab/utils/h;

    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->b()Lcom/explorestack/iab/utils/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/utils/h;->a(Lcom/explorestack/iab/utils/h;)Lcom/explorestack/iab/utils/h;

    move-result-object v0

    goto :goto_0

    .line 492
    :cond_0
    sget-object v0, Lcom/explorestack/iab/utils/Assets;->defVideoStyle:Lcom/explorestack/iab/utils/h;

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 494
    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->n()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 498
    :cond_1
    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->b:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/explorestack/iab/vast/activity/VastView$18;

    invoke-direct {v3, p0}, Lcom/explorestack/iab/vast/activity/VastView$18;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 495
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->b:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 505
    :goto_2
    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/h;->b()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 506
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->d()V

    .line 507
    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->n:Lcom/explorestack/iab/vast/tags/f;

    const/16 v3, 0xd

    const/4 v4, -0x1

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget-boolean v2, v2, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isCompanionShown:Z

    if-nez v2, :cond_8

    .line 508
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/explorestack/iab/vast/activity/VastView;->n:Lcom/explorestack/iab/vast/tags/f;

    invoke-direct {p0, v2, v5}, Lcom/explorestack/iab/vast/activity/VastView;->a(Landroid/content/Context;Lcom/explorestack/iab/vast/tags/f;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->m:Landroid/view/View;

    .line 510
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 512
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v6, p0, Lcom/explorestack/iab/vast/activity/VastView;->m:Landroid/view/View;

    .line 513
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4153
    iget-object v6, v0, Lcom/explorestack/iab/utils/h;->g:Ljava/lang/String;

    const-string v7, "inline"

    .line 517
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 518
    sget-object v3, Lcom/explorestack/iab/utils/Assets;->defInlineBannerStyle:Lcom/explorestack/iab/utils/h;

    .line 519
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/16 v9, 0xc

    const/16 v10, 0xa

    const/16 v11, 0xb

    const/16 v12, 0x9

    if-ne v6, v8, :cond_4

    const/16 v6, 0xf

    .line 521
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 522
    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 523
    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 524
    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 525
    invoke-virtual {v0}, Lcom/explorestack/iab/utils/h;->e()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 526
    invoke-virtual {v2, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 527
    iget-object v4, p0, Lcom/explorestack/iab/vast/activity/VastView;->m:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 528
    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3

    .line 530
    :cond_3
    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v1, 0x1

    .line 531
    iget-object v4, p0, Lcom/explorestack/iab/vast/activity/VastView;->m:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 532
    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3

    :cond_4
    const/16 v1, 0xe

    .line 535
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 536
    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 537
    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 538
    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 539
    invoke-virtual {v0}, Lcom/explorestack/iab/utils/h;->f()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v4, 0x30

    if-ne v1, v4, :cond_5

    .line 540
    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 541
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->m:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v2, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 542
    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3

    .line 544
    :cond_5
    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 545
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->m:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v2, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 546
    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3

    .line 550
    :cond_6
    sget-object v1, Lcom/explorestack/iab/utils/Assets;->defBannerStyle:Lcom/explorestack/iab/utils/h;

    .line 551
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object v3, v1

    :goto_3
    if-eqz p1, :cond_7

    .line 556
    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->c()Lcom/explorestack/iab/utils/h;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/explorestack/iab/utils/h;->a(Lcom/explorestack/iab/utils/h;)Lcom/explorestack/iab/utils/h;

    move-result-object v3

    .line 561
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->m:Landroid/view/View;

    invoke-virtual {v3, p1, v1}, Lcom/explorestack/iab/utils/h;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 562
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v3, p1, v5}, Lcom/explorestack/iab/utils/h;->a(Landroid/content/Context;Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 563
    invoke-virtual {v3, v5}, Lcom/explorestack/iab/utils/h;->a(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 564
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->m:Landroid/view/View;

    invoke-virtual {v3}, Lcom/explorestack/iab/utils/h;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 566
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v1}, Lcom/explorestack/iab/utils/h;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 567
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lcom/explorestack/iab/utils/h;->a(Landroid/content/Context;Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 568
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 569
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->m:Landroid/view/View;

    invoke-virtual {p0, p1, v5}, Lcom/explorestack/iab/vast/activity/VastView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 570
    sget-object p1, Lcom/explorestack/iab/vast/TrackingEvent;->creativeView:Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->b(Lcom/explorestack/iab/vast/TrackingEvent;)V

    return-void

    .line 572
    :cond_8
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 574
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 576
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic g(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->A()V

    return-void
.end method

.method static synthetic h(Lcom/explorestack/iab/vast/activity/VastView;)Lcom/explorestack/iab/vast/activity/VastView$c;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/explorestack/iab/vast/activity/VastView;->M:Lcom/explorestack/iab/vast/activity/VastView$c;

    return-object p0
.end method

.method private h()V
    .locals 2

    .line 819
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->v:Lcom/explorestack/iab/vast/activity/VastView$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 9984
    iput-boolean v1, v0, Lcom/explorestack/iab/vast/activity/VastView$b;->c:Z

    const/4 v0, 0x0

    .line 821
    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->v:Lcom/explorestack/iab/vast/activity/VastView$b;

    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/explorestack/iab/vast/activity/VastView;)Lcom/explorestack/iab/vast/activity/VastView$c;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/explorestack/iab/vast/activity/VastView;->N:Lcom/explorestack/iab/vast/activity/VastView$c;

    return-object p0
.end method

.method private i()V
    .locals 2

    .line 902
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->h:Lcom/explorestack/iab/utils/k;

    if-nez v0, :cond_0

    goto :goto_0

    .line 905
    :cond_0
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget-boolean v1, v1, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isMuted:Z

    .line 10046
    iput-boolean v1, v0, Lcom/explorestack/iab/utils/k;->e:Z

    .line 10047
    invoke-virtual {v0}, Lcom/explorestack/iab/utils/k;->a()V

    .line 906
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isMuted:Z

    if-eqz v0, :cond_1

    .line 907
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->l:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void

    .line 909
    :cond_1
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->l:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic j(Lcom/explorestack/iab/vast/activity/VastView;)Lcom/explorestack/iab/vast/activity/VastView$c;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/explorestack/iab/vast/activity/VastView;->R:Lcom/explorestack/iab/vast/activity/VastView$c;

    return-object p0
.end method

.method private j()V
    .locals 2

    .line 914
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->J:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/iab/utils/i;

    .line 915
    invoke-virtual {v1}, Lcom/explorestack/iab/utils/i;->e()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Ljava/lang/String;

    return-object p0
.end method

.method private k()V
    .locals 2

    .line 926
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->J:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/iab/utils/i;

    .line 927
    invoke-virtual {v1}, Lcom/explorestack/iab/utils/i;->f()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    .line 953
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Ljava/lang/String;

    const-string v1, "performVideoCloseClick"

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->y()V

    .line 955
    iget-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->G:Z

    if-nez v0, :cond_2

    .line 956
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isCompleted:Z

    if-nez v0, :cond_0

    .line 957
    sget-object v0, Lcom/explorestack/iab/vast/TrackingEvent;->skip:Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-direct {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/TrackingEvent;)V

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v0, :cond_1

    .line 960
    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getMaxDurationMillis()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    .line 961
    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getVideoType()Lcom/explorestack/iab/vast/VideoType;

    move-result-object v0

    sget-object v1, Lcom/explorestack/iab/vast/VideoType;->Rewarded:Lcom/explorestack/iab/vast/VideoType;

    if-ne v0, v1, :cond_1

    .line 962
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$d;

    if-eqz v0, :cond_1

    .line 963
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    invoke-interface {v0, v1}, Lcom/explorestack/iab/vast/activity/VastView$d;->b(Lcom/explorestack/iab/vast/VastRequest;)V

    .line 966
    :cond_1
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->r()V

    return-void

    .line 968
    :cond_2
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->n()V

    return-void
.end method

.method static synthetic l(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 2

    .line 16981
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Ljava/lang/String;

    const-string v1, "handleComplete"

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16982
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isSkipEnabled:Z

    .line 16983
    iget-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->G:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isCompleted:Z

    if-nez v0, :cond_2

    .line 16984
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iput-boolean v1, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isCompleted:Z

    .line 16985
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$d;

    if-eqz v0, :cond_0

    .line 16986
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    invoke-interface {v0, v1}, Lcom/explorestack/iab/vast/activity/VastView$d;->b(Lcom/explorestack/iab/vast/VastRequest;)V

    .line 16988
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->isR2()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->wasClicked:Z

    if-nez v0, :cond_1

    .line 16989
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->m()Z

    .line 16991
    :cond_1
    sget-object v0, Lcom/explorestack/iab/vast/TrackingEvent;->complete:Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-direct {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/TrackingEvent;)V

    .line 16993
    :cond_2
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isCompleted:Z

    if-eqz v0, :cond_3

    .line 16994
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->r()V

    :cond_3
    return-void
.end method

.method static synthetic m(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 1

    const/4 v0, 0x1

    .line 82
    invoke-direct {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->a(Z)V

    return-void
.end method

.method private m()Z
    .locals 2

    .line 999
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Ljava/lang/String;

    const-string v1, "handleInfoClicked"

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v0, :cond_0

    .line 1002
    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/processor/VastAd;->getClickTrackingUrlList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    .line 1003
    invoke-virtual {v1}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/iab/vast/processor/VastAd;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v1

    .line 1001
    invoke-direct {p0, v0, v1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic n(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/util/LinkedList;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/explorestack/iab/vast/activity/VastView;->O:Ljava/util/LinkedList;

    return-object p0
.end method

.method private n()V
    .locals 3

    .line 1009
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Ljava/lang/String;

    const-string v1, "handleClose"

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    sget-object v0, Lcom/explorestack/iab/vast/TrackingEvent;->close:Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-direct {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/TrackingEvent;)V

    .line 1011
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v1, :cond_0

    .line 1012
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->u()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/explorestack/iab/vast/activity/VastView$d;->a(Lcom/explorestack/iab/vast/VastRequest;Z)V

    :cond_0
    return-void
.end method

.method static synthetic o(Lcom/explorestack/iab/vast/activity/VastView;)I
    .locals 2

    .line 82
    iget v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->P:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->P:I

    return v0
.end method

.method private o()V
    .locals 3

    .line 1017
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Ljava/lang/String;

    const-string v1, "handleCompanionClose"

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    sget-object v0, Lcom/explorestack/iab/vast/TrackingEvent;->close:Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-direct {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->c(Lcom/explorestack/iab/vast/TrackingEvent;)V

    .line 1019
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v1, :cond_0

    .line 1020
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->u()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/explorestack/iab/vast/activity/VastView$d;->a(Lcom/explorestack/iab/vast/VastRequest;Z)V

    :cond_0
    return-void
.end method

.method static synthetic p(Lcom/explorestack/iab/vast/activity/VastView;)I
    .locals 0

    .line 82
    iget p0, p0, Lcom/explorestack/iab/vast/activity/VastView;->P:I

    return p0
.end method

.method private p()V
    .locals 3

    .line 1025
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Ljava/lang/String;

    const-string v1, "handleCompanionShowError"

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x258

    .line 1026
    invoke-direct {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->a(I)V

    .line 1028
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->o:Lcom/explorestack/iab/vast/tags/f;

    if-eqz v0, :cond_0

    .line 1029
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->f()V

    const/4 v0, 0x1

    .line 1030
    invoke-direct {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->c(Z)V

    return-void

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$d;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v1, :cond_1

    .line 1032
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->u()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/explorestack/iab/vast/activity/VastView$d;->a(Lcom/explorestack/iab/vast/VastRequest;Z)V

    :cond_1
    return-void
.end method

.method private q()V
    .locals 2

    .line 1037
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Ljava/lang/String;

    const-string v1, "handlePlaybackError"

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1038
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->G:Z

    const/16 v0, 0x195

    .line 1039
    invoke-direct {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->a(I)V

    .line 1040
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->r()V

    return-void
.end method

.method static synthetic q(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->q()V

    return-void
.end method

.method static synthetic r(Lcom/explorestack/iab/vast/activity/VastView;)F
    .locals 0

    .line 82
    iget p0, p0, Lcom/explorestack/iab/vast/activity/VastView;->Q:F

    return p0
.end method

.method private r()V
    .locals 2

    .line 1044
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Ljava/lang/String;

    const-string v1, "finishVideoPlaying"

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->y()V

    .line 1046
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v0, :cond_2

    .line 1047
    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->isAutoClose()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    .line 1048
    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/processor/VastAd;->getAppodealExtension()Lcom/explorestack/iab/vast/tags/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    .line 1049
    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v0

    .line 1050
    invoke-virtual {v0}, Lcom/explorestack/iab/vast/processor/VastAd;->getAppodealExtension()Lcom/explorestack/iab/vast/tags/d;

    move-result-object v0

    .line 10211
    iget-object v0, v0, Lcom/explorestack/iab/vast/tags/d;->b:Lcom/explorestack/iab/vast/tags/l;

    .line 11131
    iget-boolean v0, v0, Lcom/explorestack/iab/vast/tags/l;->h:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1055
    :cond_0
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1056
    sget-object v0, Lcom/explorestack/iab/vast/TrackingEvent;->close:Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-direct {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/TrackingEvent;)V

    :cond_1
    const/4 v0, 0x0

    .line 1058
    invoke-direct {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->d(Z)V

    .line 1059
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->d()V

    .line 11695
    invoke-direct {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->c(Z)V

    return-void

    .line 1053
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->n()V

    return-void
.end method

.method private s()Z
    .locals 1

    .line 1182
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic s(Lcom/explorestack/iab/vast/activity/VastView;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/explorestack/iab/vast/activity/VastView;->D:Z

    return p0
.end method

.method private t()Z
    .locals 2

    .line 1190
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isSkipEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget v0, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->skipTime:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic t(Lcom/explorestack/iab/vast/activity/VastView;)Z
    .locals 1

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->D:Z

    return v0
.end method

.method static synthetic u(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->x()V

    return-void
.end method

.method private u()Z
    .locals 2

    .line 1198
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v0, :cond_2

    .line 1199
    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getCompanionCloseTime()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isCompleted:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    .line 1200
    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getCompanionCloseTime()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isCompanionShown:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private v()V
    .locals 3

    .line 1209
    :try_start_0
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isCompanionShown:Z

    if-nez v0, :cond_3

    .line 1211
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->l:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1212
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->l:Landroid/media/MediaPlayer;

    .line 1213
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 1214
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->l:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1215
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->l:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->T:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1216
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->l:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->U:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1217
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->l:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->V:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1218
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->l:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->W:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 1221
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getFileUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-direct {p0, v1}, Lcom/explorestack/iab/vast/activity/VastView;->d(Z)V

    .line 1222
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->l:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->c:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 1224
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getFileUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1225
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->l:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    .line 1226
    invoke-virtual {v1}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/iab/vast/processor/VastAd;->getPickedMediaFileTag()Lcom/explorestack/iab/vast/tags/MediaFileTag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/iab/vast/tags/MediaFileTag;->getText()Ljava/lang/String;

    move-result-object v1

    .line 1225
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 1228
    :cond_2
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {v2}, Lcom/explorestack/iab/vast/VastRequest;->getFileUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1230
    :goto_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception v0

    .line 1233
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1234
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->q()V

    return-void
.end method

.method static synthetic v(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->w()V

    return-void
.end method

.method private w()V
    .locals 2

    .line 1264
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isPaused:Z

    if-nez v0, :cond_0

    .line 1265
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Ljava/lang/String;

    const-string v1, "pausePlayback"

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isPaused:Z

    .line 1267
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->currentVideoPosition:I

    .line 1268
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 1269
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->C()V

    .line 1270
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->k()V

    .line 1271
    sget-object v0, Lcom/explorestack/iab/vast/TrackingEvent;->pause:Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-direct {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/TrackingEvent;)V

    :cond_0
    return-void
.end method

.method static synthetic w(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->E()V

    return-void
.end method

.method private x()V
    .locals 3

    .line 1276
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isPaused:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->A:Z

    if-eqz v0, :cond_1

    .line 1277
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Ljava/lang/String;

    const-string v1, "resumePlayback"

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isPaused:Z

    .line 1279
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 1281
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->E()V

    .line 1282
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->B()V

    .line 1283
    invoke-direct {p0, v2}, Lcom/explorestack/iab/vast/activity/VastView;->d(Z)V

    .line 1284
    sget-object v0, Lcom/explorestack/iab/vast/TrackingEvent;->resume:Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-direct {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/TrackingEvent;)V

    return-void

    .line 1285
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isCompanionShown:Z

    if-nez v0, :cond_1

    .line 1286
    invoke-direct {p0, v1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic x(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->d(Z)V

    return-void
.end method

.method private y()V
    .locals 3

    .line 1292
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isPaused:Z

    .line 1293
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 1294
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Ljava/lang/String;

    const-string v2, "stopPlayback"

    invoke-static {v0, v2}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1296
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1298
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 1299
    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->l:Landroid/media/MediaPlayer;

    .line 1301
    iput-boolean v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->F:Z

    .line 1302
    iput-boolean v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->G:Z

    .line 1304
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->C()V

    .line 1305
    invoke-static {p0}, Lcom/explorestack/iab/vast/b;->a(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method static synthetic y(Lcom/explorestack/iab/vast/activity/VastView;)Z
    .locals 1

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->F:Z

    return v0
.end method

.method private z()V
    .locals 2

    .line 1322
    iget-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->A:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/iab/vast/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1323
    iget-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->B:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1324
    iput-boolean v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->B:Z

    const-string v0, "onWindowFocusChanged"

    .line 1325
    invoke-direct {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->a(Ljava/lang/String;)V

    return-void

    .line 1326
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isCompanionShown:Z

    if-nez v0, :cond_1

    .line 1327
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->x()V

    return-void

    .line 1329
    :cond_1
    invoke-direct {p0, v1}, Lcom/explorestack/iab/vast/activity/VastView;->d(Z)V

    return-void

    .line 1332
    :cond_2
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->w()V

    return-void
.end method

.method static synthetic z(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->B()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 936
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->t()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 10194
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isCompanionShown:Z

    if-nez v0, :cond_1

    .line 940
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->l()V

    return-void

    .line 941
    :cond_1
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getVideoType()Lcom/explorestack/iab/vast/VideoType;

    move-result-object v0

    sget-object v1, Lcom/explorestack/iab/vast/VideoType;->NonRewarded:Lcom/explorestack/iab/vast/VideoType;

    if-ne v0, v1, :cond_4

    .line 942
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->o:Lcom/explorestack/iab/vast/tags/f;

    if-nez v0, :cond_2

    .line 943
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->n()V

    return-void

    .line 944
    :cond_2
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->q:Lcom/explorestack/iab/mraid/MraidInterstitial;

    if-eqz v0, :cond_3

    .line 945
    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/MraidInterstitial;->dispatchClose()V

    return-void

    .line 947
    :cond_3
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->o()V

    :cond_4
    return-void
.end method

.method public final a(Lcom/explorestack/iab/vast/VastRequest;Z)Z
    .locals 5

    .line 233
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->y()V

    if-nez p2, :cond_0

    .line 236
    new-instance v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    invoke-direct {v0}, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "vastRequest.getVastAd() is null. Stop playing..."

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 239
    iput-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    .line 240
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->n()V

    .line 241
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 244
    :cond_1
    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz p1, :cond_b

    .line 245
    invoke-virtual {p1}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 246
    invoke-virtual {p1}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Lcom/explorestack/iab/vast/processor/VastAd;->getAppodealExtension()Lcom/explorestack/iab/vast/tags/d;

    move-result-object v1

    .line 249
    invoke-virtual {p1}, Lcom/explorestack/iab/vast/VastRequest;->getPreferredVideoOrientation()I

    move-result v4

    iput v4, p0, Lcom/explorestack/iab/vast/activity/VastView;->w:I

    if-eqz v1, :cond_2

    .line 2151
    iget-object v4, v1, Lcom/explorestack/iab/vast/tags/d;->a:Lcom/explorestack/iab/utils/h;

    .line 251
    invoke-virtual {v4}, Lcom/explorestack/iab/utils/h;->d()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2205
    iget-object v2, v1, Lcom/explorestack/iab/vast/tags/d;->c:Lcom/explorestack/iab/vast/tags/f;

    .line 252
    iput-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->n:Lcom/explorestack/iab/vast/tags/f;

    goto :goto_0

    .line 254
    :cond_2
    iput-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->n:Lcom/explorestack/iab/vast/tags/f;

    .line 257
    :goto_0
    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->n:Lcom/explorestack/iab/vast/tags/f;

    if-nez v2, :cond_3

    .line 258
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/iab/vast/processor/VastAd;->getBanner(Landroid/content/Context;)Lcom/explorestack/iab/vast/tags/f;

    move-result-object v2

    iput-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->n:Lcom/explorestack/iab/vast/tags/f;

    .line 260
    :cond_3
    invoke-virtual {v0}, Lcom/explorestack/iab/vast/processor/VastAd;->getAppodealExtension()Lcom/explorestack/iab/vast/tags/d;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/explorestack/iab/vast/activity/VastView;->g(Lcom/explorestack/iab/vast/a;)V

    .line 263
    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->m:Landroid/view/View;

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/a;Z)V

    .line 264
    invoke-direct {p0, v1}, Lcom/explorestack/iab/vast/activity/VastView;->b(Lcom/explorestack/iab/vast/a;)V

    .line 265
    invoke-direct {p0, v1}, Lcom/explorestack/iab/vast/activity/VastView;->c(Lcom/explorestack/iab/vast/a;)V

    .line 266
    invoke-direct {p0, v1}, Lcom/explorestack/iab/vast/activity/VastView;->d(Lcom/explorestack/iab/vast/a;)V

    .line 267
    invoke-direct {p0, v1}, Lcom/explorestack/iab/vast/activity/VastView;->e(Lcom/explorestack/iab/vast/a;)V

    .line 268
    invoke-direct {p0, v1}, Lcom/explorestack/iab/vast/activity/VastView;->f(Lcom/explorestack/iab/vast/a;)V

    .line 269
    invoke-direct {p0, v1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/a;)V

    .line 272
    invoke-direct {p0, v3}, Lcom/explorestack/iab/vast/activity/VastView;->d(Z)V

    .line 274
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$d;

    if-eqz v1, :cond_6

    .line 276
    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget-boolean v2, v2, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isCompanionShown:Z

    if-eqz v2, :cond_5

    .line 277
    iget v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->x:I

    goto :goto_2

    .line 278
    :cond_5
    iget v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->w:I

    .line 275
    :goto_2
    invoke-interface {v1, v2}, Lcom/explorestack/iab/vast/activity/VastView$d;->a(I)V

    :cond_6
    if-nez p2, :cond_9

    .line 282
    invoke-virtual {p1}, Lcom/explorestack/iab/vast/VastRequest;->isForceUseNativeCloseTime()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/processor/VastAd;->getSkipOffsetSec()I

    move-result v1

    if-lez v1, :cond_7

    .line 283
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/processor/VastAd;->getSkipOffsetSec()I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->skipTime:F

    goto :goto_3

    .line 284
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/iab/vast/VastRequest;->getVideoCloseTime()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_8

    .line 285
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/VastRequest;->getVideoCloseTime()F

    move-result v1

    iput v1, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->skipTime:F

    goto :goto_3

    .line 287
    :cond_8
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->skipTime:F

    .line 289
    :goto_3
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$d;

    if-eqz v0, :cond_9

    .line 290
    invoke-interface {v0, p1}, Lcom/explorestack/iab/vast/activity/VastView$d;->a(Lcom/explorestack/iab/vast/VastRequest;)V

    .line 295
    :cond_9
    invoke-virtual {p1}, Lcom/explorestack/iab/vast/VastRequest;->getVideoType()Lcom/explorestack/iab/vast/VideoType;

    move-result-object p1

    sget-object v0, Lcom/explorestack/iab/vast/VideoType;->Rewarded:Lcom/explorestack/iab/vast/VideoType;

    if-eq p1, v0, :cond_a

    const/4 v3, 0x1

    :cond_a
    invoke-direct {p0, v3}, Lcom/explorestack/iab/vast/activity/VastView;->a(Z)V

    .line 296
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "load (restoring: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Ljava/lang/String;)V

    return v4

    .line 300
    :cond_b
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->n()V

    .line 301
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public addView(Landroid/view/View;)V
    .locals 0

    .line 212
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 213
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1186
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->F:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clickHandleCanceled()V
    .locals 1

    .line 13194
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isCompanionShown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1078
    invoke-direct {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->d(Z)V

    return-void

    .line 1080
    :cond_0
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->x()V

    return-void
.end method

.method public clickHandled()V
    .locals 1

    .line 12194
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isCompanionShown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1067
    invoke-direct {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->d(Z)V

    return-void

    .line 1068
    :cond_0
    iget-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->A:Z

    if-nez v0, :cond_1

    .line 1069
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->w()V

    return-void

    .line 1071
    :cond_1
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->x()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 859
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 860
    iget-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->A:Z

    if-eqz v0, :cond_0

    const-string v0, "onAttachedToWindow"

    .line 861
    invoke-direct {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 218
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 219
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->s()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 220
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/processor/VastAd;->getAppodealExtension()Lcom/explorestack/iab/vast/tags/d;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->g(Lcom/explorestack/iab/vast/a;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 867
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 868
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->y()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1662
    instance-of v0, p1, Lcom/explorestack/iab/vast/activity/VastView$SavedState;

    if-nez v0, :cond_0

    .line 1663
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1666
    :cond_0
    check-cast p1, Lcom/explorestack/iab/vast/activity/VastView$SavedState;

    .line 1667
    invoke-virtual {p1}, Lcom/explorestack/iab/vast/activity/VastView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1668
    iget-object v0, p1, Lcom/explorestack/iab/vast/activity/VastView$SavedState;->vastViewState:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    if-eqz v0, :cond_1

    .line 1669
    iget-object v0, p1, Lcom/explorestack/iab/vast/activity/VastView$SavedState;->vastViewState:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    .line 1671
    :cond_1
    iget-object v0, p1, Lcom/explorestack/iab/vast/activity/VastView$SavedState;->vastRequest:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v0, :cond_2

    .line 1672
    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView$SavedState;->vastRequest:Lcom/explorestack/iab/vast/VastRequest;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/VastRequest;Z)Z

    :cond_2
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1650
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1651
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->currentVideoPosition:I

    .line 1653
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1654
    new-instance v1, Lcom/explorestack/iab/vast/activity/VastView$SavedState;

    invoke-direct {v1, v0}, Lcom/explorestack/iab/vast/activity/VastView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1655
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iput-object v0, v1, Lcom/explorestack/iab/vast/activity/VastView$SavedState;->vastViewState:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    .line 1656
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    iput-object v0, v1, Lcom/explorestack/iab/vast/activity/VastView$SavedState;->vastRequest:Lcom/explorestack/iab/vast/VastRequest;

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 831
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 832
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->K:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 833
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->K:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .line 851
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 852
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onWindowFocusChanged: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    iput-boolean p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->A:Z

    .line 854
    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->z()V

    return-void
.end method

.method public setListener(Lcom/explorestack/iab/vast/activity/VastView$d;)V
    .locals 0

    .line 1627
    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$d;

    return-void
.end method
