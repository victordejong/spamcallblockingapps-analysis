.class public Lcom/monet/bidder/AppMonetView;
.super Lnet/pubnative/lite/sdk/views/HyBidAdView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/monet/bidder/AppMonetView$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "AppMonetView"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/monet/bidder/AppMonetView$a;

.field private d:Lcom/monet/bidder/c;

.field private e:Lnet/pubnative/lite/sdk/models/AdSize;

.field private final f:Lnet/pubnative/lite/sdk/views/HyBidAdView$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/views/HyBidAdView;-><init>(Landroid/content/Context;)V

    sget-object p1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_300x250:Lnet/pubnative/lite/sdk/models/AdSize;

    iput-object p1, p0, Lcom/monet/bidder/AppMonetView;->e:Lnet/pubnative/lite/sdk/models/AdSize;

    new-instance p1, Lcom/monet/bidder/AppMonetView$1;

    invoke-direct {p1, p0}, Lcom/monet/bidder/AppMonetView$1;-><init>(Lcom/monet/bidder/AppMonetView;)V

    iput-object p1, p0, Lcom/monet/bidder/AppMonetView;->f:Lnet/pubnative/lite/sdk/views/HyBidAdView$Listener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/pubnative/lite/sdk/views/HyBidAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_300x250:Lnet/pubnative/lite/sdk/models/AdSize;

    iput-object p1, p0, Lcom/monet/bidder/AppMonetView;->e:Lnet/pubnative/lite/sdk/models/AdSize;

    new-instance p1, Lcom/monet/bidder/AppMonetView$1;

    invoke-direct {p1, p0}, Lcom/monet/bidder/AppMonetView$1;-><init>(Lcom/monet/bidder/AppMonetView;)V

    iput-object p1, p0, Lcom/monet/bidder/AppMonetView;->f:Lnet/pubnative/lite/sdk/views/HyBidAdView$Listener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/pubnative/lite/sdk/views/HyBidAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_300x250:Lnet/pubnative/lite/sdk/models/AdSize;

    iput-object p1, p0, Lcom/monet/bidder/AppMonetView;->e:Lnet/pubnative/lite/sdk/models/AdSize;

    new-instance p1, Lcom/monet/bidder/AppMonetView$1;

    invoke-direct {p1, p0}, Lcom/monet/bidder/AppMonetView$1;-><init>(Lcom/monet/bidder/AppMonetView;)V

    iput-object p1, p0, Lcom/monet/bidder/AppMonetView;->f:Lnet/pubnative/lite/sdk/views/HyBidAdView$Listener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lnet/pubnative/lite/sdk/views/HyBidAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object p1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_300x250:Lnet/pubnative/lite/sdk/models/AdSize;

    iput-object p1, p0, Lcom/monet/bidder/AppMonetView;->e:Lnet/pubnative/lite/sdk/models/AdSize;

    new-instance p1, Lcom/monet/bidder/AppMonetView$1;

    invoke-direct {p1, p0}, Lcom/monet/bidder/AppMonetView$1;-><init>(Lcom/monet/bidder/AppMonetView;)V

    iput-object p1, p0, Lcom/monet/bidder/AppMonetView;->f:Lnet/pubnative/lite/sdk/views/HyBidAdView$Listener;

    return-void
.end method

.method static synthetic a(Lcom/monet/bidder/AppMonetView;)Lcom/monet/bidder/AppMonetView$a;
    .locals 0

    iget-object p0, p0, Lcom/monet/bidder/AppMonetView;->c:Lcom/monet/bidder/AppMonetView$a;

    return-object p0
.end method


# virtual methods
.method public setAdSize(Lcom/monet/bidder/a;)V
    .locals 2

    .line 1000
    iget-object v0, p1, Lcom/monet/bidder/a;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_300x250:Lnet/pubnative/lite/sdk/models/AdSize;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/models/AdSize;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/monet/bidder/a;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_300x250:Lnet/pubnative/lite/sdk/models/AdSize;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/models/AdSize;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object p1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_300x250:Lnet/pubnative/lite/sdk/models/AdSize;

    goto/16 :goto_0

    :cond_0
    iget-object v0, p1, Lcom/monet/bidder/a;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_480x320:Lnet/pubnative/lite/sdk/models/AdSize;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/models/AdSize;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/monet/bidder/a;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_480x320:Lnet/pubnative/lite/sdk/models/AdSize;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/models/AdSize;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_1

    sget-object p1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_480x320:Lnet/pubnative/lite/sdk/models/AdSize;

    goto/16 :goto_0

    :cond_1
    iget-object v0, p1, Lcom/monet/bidder/a;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_300x50:Lnet/pubnative/lite/sdk/models/AdSize;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/models/AdSize;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/monet/bidder/a;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_300x50:Lnet/pubnative/lite/sdk/models/AdSize;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/models/AdSize;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_2

    sget-object p1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_300x50:Lnet/pubnative/lite/sdk/models/AdSize;

    goto/16 :goto_0

    :cond_2
    iget-object v0, p1, Lcom/monet/bidder/a;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_320x480:Lnet/pubnative/lite/sdk/models/AdSize;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/models/AdSize;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lcom/monet/bidder/a;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_320x480:Lnet/pubnative/lite/sdk/models/AdSize;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/models/AdSize;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_3

    sget-object p1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_320x480:Lnet/pubnative/lite/sdk/models/AdSize;

    goto/16 :goto_0

    :cond_3
    iget-object v0, p1, Lcom/monet/bidder/a;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_1024x768:Lnet/pubnative/lite/sdk/models/AdSize;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/models/AdSize;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lcom/monet/bidder/a;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_1024x768:Lnet/pubnative/lite/sdk/models/AdSize;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/models/AdSize;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_4

    sget-object p1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_1024x768:Lnet/pubnative/lite/sdk/models/AdSize;

    goto/16 :goto_0

    :cond_4
    iget-object v0, p1, Lcom/monet/bidder/a;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_768x1024:Lnet/pubnative/lite/sdk/models/AdSize;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/models/AdSize;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_5

    iget-object v0, p1, Lcom/monet/bidder/a;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_768x1024:Lnet/pubnative/lite/sdk/models/AdSize;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/models/AdSize;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_5

    sget-object p1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_768x1024:Lnet/pubnative/lite/sdk/models/AdSize;

    goto/16 :goto_0

    :cond_5
    iget-object v0, p1, Lcom/monet/bidder/a;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_728x90:Lnet/pubnative/lite/sdk/models/AdSize;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/models/AdSize;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_6

    iget-object v0, p1, Lcom/monet/bidder/a;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_728x90:Lnet/pubnative/lite/sdk/models/AdSize;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/models/AdSize;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_6

    sget-object p1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_728x90:Lnet/pubnative/lite/sdk/models/AdSize;

    goto/16 :goto_0

    :cond_6
    iget-object v0, p1, Lcom/monet/bidder/a;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_160x600:Lnet/pubnative/lite/sdk/models/AdSize;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/models/AdSize;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_7

    iget-object v0, p1, Lcom/monet/bidder/a;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_160x600:Lnet/pubnative/lite/sdk/models/AdSize;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/models/AdSize;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_7

    sget-object p1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_160x600:Lnet/pubnative/lite/sdk/models/AdSize;

    goto :goto_0

    :cond_7
    iget-object v0, p1, Lcom/monet/bidder/a;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_250x250:Lnet/pubnative/lite/sdk/models/AdSize;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/models/AdSize;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_8

    iget-object v0, p1, Lcom/monet/bidder/a;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_250x250:Lnet/pubnative/lite/sdk/models/AdSize;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/models/AdSize;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_8

    sget-object p1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_250x250:Lnet/pubnative/lite/sdk/models/AdSize;

    goto :goto_0

    :cond_8
    iget-object v0, p1, Lcom/monet/bidder/a;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_300x600:Lnet/pubnative/lite/sdk/models/AdSize;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/models/AdSize;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_9

    iget-object v0, p1, Lcom/monet/bidder/a;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_300x600:Lnet/pubnative/lite/sdk/models/AdSize;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/models/AdSize;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_9

    sget-object p1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_300x600:Lnet/pubnative/lite/sdk/models/AdSize;

    goto :goto_0

    :cond_9
    iget-object v0, p1, Lcom/monet/bidder/a;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_320x100:Lnet/pubnative/lite/sdk/models/AdSize;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/models/AdSize;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_a

    iget-object p1, p1, Lcom/monet/bidder/a;->a:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v0, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_320x100:Lnet/pubnative/lite/sdk/models/AdSize;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/models/AdSize;->getHeight()I

    move-result v0

    if-ne p1, v0, :cond_a

    sget-object p1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_320x100:Lnet/pubnative/lite/sdk/models/AdSize;

    goto :goto_0

    :cond_a
    sget-object p1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_320x50:Lnet/pubnative/lite/sdk/models/AdSize;

    :goto_0
    iput-object p1, p0, Lcom/monet/bidder/AppMonetView;->e:Lnet/pubnative/lite/sdk/models/AdSize;

    invoke-super {p0, p1}, Lnet/pubnative/lite/sdk/views/HyBidAdView;->setAdSize(Lnet/pubnative/lite/sdk/models/AdSize;)V

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/monet/bidder/AppMonetView;->b:Ljava/lang/String;

    return-void
.end method

.method public setBannerAdListener(Lcom/monet/bidder/AppMonetView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/monet/bidder/AppMonetView;->c:Lcom/monet/bidder/AppMonetView$a;

    return-void
.end method

.method public setMonetBid(Lcom/monet/bidder/c;)V
    .locals 0

    iput-object p1, p0, Lcom/monet/bidder/AppMonetView;->d:Lcom/monet/bidder/c;

    return-void
.end method
