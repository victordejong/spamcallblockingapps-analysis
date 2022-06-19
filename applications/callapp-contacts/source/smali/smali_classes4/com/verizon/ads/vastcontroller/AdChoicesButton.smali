.class public Lcom/verizon/ads/vastcontroller/AdChoicesButton;
.super Lcom/verizon/ads/vastcontroller/InteractiveImageView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;
    }
.end annotation


# static fields
.field private static final j:Lcom/verizon/ads/Logger;


# instance fields
.field a:I

.field b:Z

.field c:Z

.field d:Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

.field e:I

.field f:I

.field g:I

.field h:Lcom/verizon/ads/vastcontroller/VASTParser$Icon;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->j:Lcom/verizon/ads/Logger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Lcom/verizon/ads/vastcontroller/InteractiveImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->k:Z

    .line 29
    iput-boolean p1, p0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->b:Z

    .line 30
    iput-boolean p1, p0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->c:Z

    .line 31
    sget-object v0, Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;->READY:Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

    iput-object v0, p0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->d:Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

    .line 32
    iput p1, p0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->e:I

    .line 33
    iput p1, p0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->f:I

    const-string p1, "adChoicesButton"

    .line 48
    invoke-virtual {p0, p1}, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->setTag(Ljava/lang/Object;)V

    .line 49
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 p1, 0x8

    .line 50
    invoke-virtual {p0, p1}, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/vastcontroller/AdChoicesButton;)V
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->b()V

    return-void
.end method

.method static synthetic c()Lcom/verizon/ads/Logger;
    .locals 1

    .line 20
    sget-object v0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->j:Lcom/verizon/ads/Logger;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 1

    .line 124
    sget-object v0, Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;->COMPLETE:Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

    iput-object v0, p0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->d:Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

    .line 126
    new-instance v0, Lcom/verizon/ads/vastcontroller/AdChoicesButton$2;

    invoke-direct {v0, p0}, Lcom/verizon/ads/vastcontroller/AdChoicesButton$2;-><init>(Lcom/verizon/ads/vastcontroller/AdChoicesButton;)V

    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method final b()V
    .locals 3

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->b:Z

    .line 140
    iget-object v1, p0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->d:Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

    sget-object v2, Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;->SHOWING:Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

    if-ne v1, v2, :cond_0

    .line 141
    sget-object v1, Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;->SHOWN:Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

    iput-object v1, p0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->d:Lcom/verizon/ads/vastcontroller/AdChoicesButton$AdChoicesButtonState;

    .line 1211
    iget-boolean v1, p0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->k:Z

    if-nez v1, :cond_0

    .line 1212
    iput-boolean v0, p0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->k:Z

    .line 1213
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->h:Lcom/verizon/ads/vastcontroller/VASTParser$Icon;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$Icon;->iconViewTrackingUrls:Ljava/util/List;

    const-string v1, "icon view tracker"

    invoke-static {v0, v1}, Lcom/verizon/ads/vastcontroller/TrackingEvent;->fireUrls(Ljava/util/List;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 188
    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->d()V

    .line 190
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->h:Lcom/verizon/ads/vastcontroller/VASTParser$Icon;

    iget-object p1, p1, Lcom/verizon/ads/vastcontroller/VASTParser$Icon;->iconClicks:Lcom/verizon/ads/vastcontroller/VASTParser$IconClicks;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->h:Lcom/verizon/ads/vastcontroller/VASTParser$Icon;

    iget-object p1, p1, Lcom/verizon/ads/vastcontroller/VASTParser$Icon;->iconClicks:Lcom/verizon/ads/vastcontroller/VASTParser$IconClicks;

    iget-object p1, p1, Lcom/verizon/ads/vastcontroller/VASTParser$IconClicks;->clickThrough:Ljava/lang/String;

    invoke-static {p1}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->e()V

    .line 194
    invoke-virtual {p0}, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->h:Lcom/verizon/ads/vastcontroller/VASTParser$Icon;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$Icon;->iconClicks:Lcom/verizon/ads/vastcontroller/VASTParser$IconClicks;

    iget-object v0, v0, Lcom/verizon/ads/vastcontroller/VASTParser$IconClicks;->clickThrough:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/verizon/ads/support/utils/ActivityUtils;->startActivityFromUrl(Landroid/content/Context;Ljava/lang/String;)Z

    .line 2203
    :cond_0
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->h:Lcom/verizon/ads/vastcontroller/VASTParser$Icon;

    iget-object p1, p1, Lcom/verizon/ads/vastcontroller/VASTParser$Icon;->iconClicks:Lcom/verizon/ads/vastcontroller/VASTParser$IconClicks;

    if-eqz p1, :cond_1

    .line 2204
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->h:Lcom/verizon/ads/vastcontroller/VASTParser$Icon;

    iget-object p1, p1, Lcom/verizon/ads/vastcontroller/VASTParser$Icon;->iconClicks:Lcom/verizon/ads/vastcontroller/VASTParser$IconClicks;

    iget-object p1, p1, Lcom/verizon/ads/vastcontroller/VASTParser$IconClicks;->clickTrackingUrls:Ljava/util/List;

    const-string v0, "icon click tracker"

    invoke-static {p1, v0}, Lcom/verizon/ads/vastcontroller/TrackingEvent;->fireUrls(Ljava/util/List;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic setInteractionListener(Lcom/verizon/ads/vastcontroller/VASTVideoView$InteractionListener;)V
    .locals 0

    .line 19
    invoke-super {p0, p1}, Lcom/verizon/ads/vastcontroller/InteractiveImageView;->setInteractionListener(Lcom/verizon/ads/vastcontroller/VASTVideoView$InteractionListener;)V

    return-void
.end method
