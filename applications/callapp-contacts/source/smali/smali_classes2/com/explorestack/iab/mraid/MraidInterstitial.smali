.class public Lcom/explorestack/iab/mraid/MraidInterstitial;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
    }
.end annotation


# static fields
.field static final synthetic f:Z = true

.field private static final g:Ljava/lang/String; = "MraidInterstitial"

.field private static final h:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field a:Lcom/explorestack/iab/mraid/MraidInterstitialListener;

.field b:Lcom/explorestack/iab/mraid/MraidView;

.field c:Z

.field d:Z

.field final e:Lcom/explorestack/iab/mraid/MraidViewListener;

.field private i:Z

.field public final id:I

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/explorestack/iab/mraid/MraidInterstitial;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/explorestack/iab/mraid/MraidInterstitial;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial;->id:I

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial;->j:Z

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial;->k:Z

    .line 36
    new-instance v0, Lcom/explorestack/iab/mraid/MraidInterstitial$1;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/mraid/MraidInterstitial$1;-><init>(Lcom/explorestack/iab/mraid/MraidInterstitial;)V

    iput-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial;->e:Lcom/explorestack/iab/mraid/MraidViewListener;

    return-void
.end method

.method static synthetic a(Lcom/explorestack/iab/mraid/MraidInterstitial;Lcom/explorestack/iab/mraid/MraidInterstitialListener;)Lcom/explorestack/iab/mraid/MraidInterstitialListener;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidInterstitial;->a:Lcom/explorestack/iab/mraid/MraidInterstitialListener;

    return-object p1
.end method

.method static synthetic a(Lcom/explorestack/iab/mraid/MraidInterstitial;)Z
    .locals 1

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/explorestack/iab/mraid/MraidInterstitial;)Lcom/explorestack/iab/mraid/MraidInterstitialListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial;->a:Lcom/explorestack/iab/mraid/MraidInterstitialListener;

    return-object p0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/explorestack/iab/mraid/MraidInterstitial;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/explorestack/iab/mraid/MraidInterstitial;)V
    .locals 1

    .line 1138
    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial;->k:Z

    if-eqz v0, :cond_0

    .line 1139
    iget-object p0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial;->b:Lcom/explorestack/iab/mraid/MraidView;

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->peekActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1141
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 1142
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public static newBuilder()Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;
    .locals 2

    .line 212
    new-instance v0, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    new-instance v1, Lcom/explorestack/iab/mraid/MraidInterstitial;

    invoke-direct {v1}, Lcom/explorestack/iab/mraid/MraidInterstitial;-><init>()V

    invoke-direct {v0, v1}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;-><init>(Lcom/explorestack/iab/mraid/MraidInterstitial;)V

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 1

    .line 173
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidInterstitial;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidInterstitial;->isReceivedError()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 176
    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial;->c:Z

    const/4 v0, 0x1

    .line 177
    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial;->i:Z

    .line 178
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial;->a:Lcom/explorestack/iab/mraid/MraidInterstitialListener;

    if-eqz v0, :cond_1

    .line 179
    invoke-interface {v0, p0}, Lcom/explorestack/iab/mraid/MraidInterstitialListener;->onClose(Lcom/explorestack/iab/mraid/MraidInterstitial;)V

    .line 181
    :cond_1
    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial;->j:Z

    if-eqz v0, :cond_2

    .line 182
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidInterstitial;->destroy()V

    :cond_2
    :goto_0
    return-void
.end method

.method final a(Landroid/app/Activity;Landroid/view/ViewGroup;ZZ)V
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidInterstitial;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 121
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 p2, 0x0

    .line 122
    invoke-virtual {p1, p2, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidInterstitial;->b()V

    .line 125
    sget-object p1, Lcom/explorestack/iab/mraid/MraidInterstitial;->g:Ljava/lang/String;

    const-string p2, "Show failed: interstitial is not ready"

    invoke-static {p1, p2}, Lcom/explorestack/iab/mraid/MraidLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 128
    :cond_1
    sget-boolean v0, Lcom/explorestack/iab/mraid/MraidInterstitial;->f:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial;->b:Lcom/explorestack/iab/mraid/MraidView;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 129
    :cond_3
    :goto_0
    iput-boolean p4, p0, Lcom/explorestack/iab/mraid/MraidInterstitial;->j:Z

    .line 130
    iput-boolean p3, p0, Lcom/explorestack/iab/mraid/MraidInterstitial;->k:Z

    .line 131
    iget-object p3, p0, Lcom/explorestack/iab/mraid/MraidInterstitial;->b:Lcom/explorestack/iab/mraid/MraidView;

    new-instance p4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p4, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    iget-object p2, p0, Lcom/explorestack/iab/mraid/MraidInterstitial;->b:Lcom/explorestack/iab/mraid/MraidView;

    invoke-virtual {p2, p1}, Lcom/explorestack/iab/mraid/MraidView;->show(Landroid/app/Activity;)V

    return-void
.end method

.method final b()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial;->a:Lcom/explorestack/iab/mraid/MraidInterstitialListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 197
    invoke-interface {v0, p0, v1}, Lcom/explorestack/iab/mraid/MraidInterstitialListener;->onError(Lcom/explorestack/iab/mraid/MraidInterstitial;I)V

    :cond_0
    return-void
.end method

.method public canBeClosed()Z
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial;->b:Lcom/explorestack/iab/mraid/MraidView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/MraidView;->canBeClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidInterstitial;->isReceivedError()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public destroy()V
    .locals 2

    .line 202
    sget-object v0, Lcom/explorestack/iab/mraid/MraidInterstitial;->g:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 203
    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial;->c:Z

    const/4 v0, 0x0

    .line 204
    iput-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial;->a:Lcom/explorestack/iab/mraid/MraidInterstitialListener;

    .line 205
    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidInterstitial;->b:Lcom/explorestack/iab/mraid/MraidView;

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v1}, Lcom/explorestack/iab/mraid/MraidView;->destroy()V

    .line 207
    iput-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial;->b:Lcom/explorestack/iab/mraid/MraidView;

    :cond_0
    return-void
.end method

.method public dispatchClose()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial;->b:Lcom/explorestack/iab/mraid/MraidView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidInterstitial;->canBeClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial;->b:Lcom/explorestack/iab/mraid/MraidView;

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/MraidView;->handleClose()V

    :cond_0
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial;->i:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial;->b:Lcom/explorestack/iab/mraid/MraidView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isReceivedError()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial;->d:Z

    return v0
.end method

.method public load(Ljava/lang/String;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidInterstitial;->b:Lcom/explorestack/iab/mraid/MraidView;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0, p1}, Lcom/explorestack/iab/mraid/MraidView;->load(Ljava/lang/String;)V

    return-void

    .line 99
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "MraidView not created (mraidView == null)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public show(Landroid/content/Context;Lcom/explorestack/iab/mraid/MraidActivity$MraidType;)V
    .locals 0

    .line 105
    invoke-static {p1, p0, p2}, Lcom/explorestack/iab/mraid/MraidActivity;->show(Landroid/content/Context;Lcom/explorestack/iab/mraid/MraidInterstitial;Lcom/explorestack/iab/mraid/MraidActivity$MraidType;)V

    return-void
.end method

.method public showInView(Landroid/view/ViewGroup;Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 109
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/explorestack/iab/mraid/MraidInterstitial;->a(Landroid/app/Activity;Landroid/view/ViewGroup;ZZ)V

    return-void
.end method
