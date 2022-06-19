.class public abstract Lio/bidmachine/AdView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/IAd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SelfType:",
        "Lio/bidmachine/AdView<",
        "TSelfType;TAdType;TAdRequestType;TAdObjectType;TExternalAd",
        "ListenerType;",
        ">;AdType:",
        "Lio/bidmachine/ViewAd<",
        "TAdType;TAdRequestType;TAdObjectType;*",
        "Lio/bidmachine/AdListener<",
        "TAdType;>;>;AdRequestType:",
        "Lio/bidmachine/AdRequest<",
        "TAdRequestType;*>;AdObjectType:",
        "Lio/bidmachine/ViewAdObject<",
        "TAdRequestType;**>;ExternalAd",
        "ListenerType::Lio/bidmachine/AdListener<",
        "TSelfType;>;>",
        "Landroid/widget/FrameLayout;",
        "Lio/bidmachine/IAd<",
        "TSelfType;TAdRequestType;>;"
    }
.end annotation


# instance fields
.field private final adListener:Lio/bidmachine/AdListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/AdListener<",
            "TAdType;>;"
        }
    .end annotation
.end field

.field private currentAd:Lio/bidmachine/ViewAd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdType;"
        }
    .end annotation
.end field

.field private externalListener:Lio/bidmachine/AdListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TExternalAd",
            "ListenerType;"
        }
    .end annotation
.end field

.field private isAttachedToWindow:Z

.field private isShowPending:Z

.field private pendingAd:Lio/bidmachine/ViewAd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lio/bidmachine/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lio/bidmachine/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lio/bidmachine/AdView;->isShowPending:Z

    .line 27
    iput-boolean p1, p0, Lio/bidmachine/AdView;->isAttachedToWindow:Z

    .line 170
    new-instance p1, Lio/bidmachine/AdView$1;

    invoke-direct {p1, p0}, Lio/bidmachine/AdView$1;-><init>(Lio/bidmachine/AdView;)V

    iput-object p1, p0, Lio/bidmachine/AdView;->adListener:Lio/bidmachine/AdListener;

    return-void
.end method

.method static synthetic access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lio/bidmachine/AdView;->externalListener:Lio/bidmachine/AdListener;

    return-object p0
.end method

.method static synthetic access$100(Lio/bidmachine/AdView;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lio/bidmachine/AdView;->performShow()V

    return-void
.end method

.method private canPerformShow()Z
    .locals 2

    .line 147
    iget-boolean v0, p0, Lio/bidmachine/AdView;->isAttachedToWindow:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/bidmachine/AdView;->isShowPending:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/bidmachine/AdView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private canShow(Lio/bidmachine/ViewAd;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdType;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {p1}, Lio/bidmachine/ViewAd;->canShow()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isLoaded(Lio/bidmachine/ViewAd;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdType;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p1}, Lio/bidmachine/ViewAd;->isLoaded()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private performShow()V
    .locals 1

    .line 161
    invoke-direct {p0}, Lio/bidmachine/AdView;->canPerformShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-direct {p0}, Lio/bidmachine/AdView;->prepareDisplayRequest()V

    .line 163
    invoke-virtual {p0}, Lio/bidmachine/AdView;->canShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    invoke-virtual {v0, p0}, Lio/bidmachine/ViewAd;->show(Landroid/view/ViewGroup;)V

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lio/bidmachine/AdView;->isShowPending:Z

    :cond_0
    return-void
.end method

.method private prepareDisplayRequest()V
    .locals 1

    .line 151
    iget-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/bidmachine/ViewAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lio/bidmachine/ViewAd;->destroy()V

    .line 155
    :cond_0
    iget-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    iput-object v0, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    :cond_1
    return-void
.end method


# virtual methods
.method public canShow()Z
    .locals 1

    .line 139
    iget-object v0, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    invoke-direct {p0, v0}, Lio/bidmachine/AdView;->canShow(Lio/bidmachine/ViewAd;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    invoke-direct {p0, v0}, Lio/bidmachine/AdView;->canShow(Lio/bidmachine/ViewAd;)Z

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

.method protected abstract createAd(Landroid/content/Context;)Lio/bidmachine/ViewAd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TAdType;"
        }
    .end annotation
.end method

.method public destroy()V
    .locals 2

    .line 65
    iget-object v0, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lio/bidmachine/ViewAd;->destroy()V

    .line 67
    iput-object v1, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    .line 69
    :cond_0
    iget-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v0}, Lio/bidmachine/ViewAd;->destroy()V

    .line 71
    iput-object v1, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    :cond_1
    return-void
.end method

.method public getAuctionResult()Lio/bidmachine/models/AuctionResult;
    .locals 1

    .line 106
    iget-object v0, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lio/bidmachine/ViewAd;->getAuctionResult()Lio/bidmachine/models/AuctionResult;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {v0}, Lio/bidmachine/ViewAd;->getAuctionResult()Lio/bidmachine/models/AuctionResult;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 98
    iget-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Lio/bidmachine/ViewAd;->isDestroyed()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {v0}, Lio/bidmachine/ViewAd;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isExpired()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Lio/bidmachine/ViewAd;->isExpired()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {v0}, Lio/bidmachine/ViewAd;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    invoke-direct {p0, v0}, Lio/bidmachine/AdView;->isLoaded(Lio/bidmachine/ViewAd;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    invoke-direct {p0, v0}, Lio/bidmachine/AdView;->isLoaded(Lio/bidmachine/ViewAd;)Z

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

.method public isLoading()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/bidmachine/ViewAd;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public load(Lio/bidmachine/AdRequest;)Lio/bidmachine/AdView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;)TSelfType;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lio/bidmachine/AdView;->isShowPending:Z

    .line 54
    iget-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Lio/bidmachine/ViewAd;->destroy()V

    .line 57
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/AdView;->createAd(Landroid/content/Context;)Lio/bidmachine/ViewAd;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    .line 58
    iget-object v1, p0, Lio/bidmachine/AdView;->adListener:Lio/bidmachine/AdListener;

    invoke-virtual {v0, v1}, Lio/bidmachine/ViewAd;->setListener(Lio/bidmachine/AdListener;)Lio/bidmachine/IAd;

    .line 59
    iget-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    invoke-virtual {v0, p1}, Lio/bidmachine/ViewAd;->load(Lio/bidmachine/AdRequest;)Lio/bidmachine/IAd;

    return-object p0
.end method

.method public bridge synthetic load(Lio/bidmachine/AdRequest;)Lio/bidmachine/IAd;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lio/bidmachine/AdView;->load(Lio/bidmachine/AdRequest;)Lio/bidmachine/AdView;

    move-result-object p1

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 125
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lio/bidmachine/AdView;->isAttachedToWindow:Z

    .line 127
    invoke-direct {p0}, Lio/bidmachine/AdView;->performShow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 132
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lio/bidmachine/AdView;->isAttachedToWindow:Z

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lio/bidmachine/AdView;->isShowPending:Z

    return-void
.end method

.method public setListener(Lio/bidmachine/AdListener;)Lio/bidmachine/AdView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TExternalAd",
            "ListenerType;",
            ")TSelfType;"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lio/bidmachine/AdView;->externalListener:Lio/bidmachine/AdListener;

    return-object p0
.end method

.method public setVisibility(I)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 118
    invoke-virtual {p0}, Lio/bidmachine/AdView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 119
    invoke-direct {p0}, Lio/bidmachine/AdView;->performShow()V

    :cond_0
    return-void
.end method
