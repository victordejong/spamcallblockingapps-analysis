.class public Lcom/mopub/nativeads/PangleAdViewBinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/PangleAdViewBinder$Builder;
    }
.end annotation


# instance fields
.field public final mCallToActionId:I

.field public final mDescriptionTextId:I

.field public final mExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mIconImageId:I

.field public final mLayoutId:I

.field public final mLogoViewId:I

.field public final mMediaViewId:I

.field public final mSourceId:I

.field public final mTitleId:I


# direct methods
.method private constructor <init>(Lcom/mopub/nativeads/PangleAdViewBinder$Builder;)V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-static {p1}, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->a(Lcom/mopub/nativeads/PangleAdViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/PangleAdViewBinder;->mLayoutId:I

    .line 106
    invoke-static {p1}, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->b(Lcom/mopub/nativeads/PangleAdViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/PangleAdViewBinder;->mTitleId:I

    .line 107
    invoke-static {p1}, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->c(Lcom/mopub/nativeads/PangleAdViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/PangleAdViewBinder;->mDescriptionTextId:I

    .line 108
    invoke-static {p1}, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->d(Lcom/mopub/nativeads/PangleAdViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/PangleAdViewBinder;->mCallToActionId:I

    .line 109
    invoke-static {p1}, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->e(Lcom/mopub/nativeads/PangleAdViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/PangleAdViewBinder;->mIconImageId:I

    .line 110
    invoke-static {p1}, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->f(Lcom/mopub/nativeads/PangleAdViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/PangleAdViewBinder;->mMediaViewId:I

    .line 111
    invoke-static {p1}, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->g(Lcom/mopub/nativeads/PangleAdViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/PangleAdViewBinder;->mSourceId:I

    .line 112
    invoke-static {p1}, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->h(Lcom/mopub/nativeads/PangleAdViewBinder$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/PangleAdViewBinder;->mExtras:Ljava/util/Map;

    .line 113
    invoke-static {p1}, Lcom/mopub/nativeads/PangleAdViewBinder$Builder;->i(Lcom/mopub/nativeads/PangleAdViewBinder$Builder;)I

    move-result p1

    iput p1, p0, Lcom/mopub/nativeads/PangleAdViewBinder;->mLogoViewId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/nativeads/PangleAdViewBinder$Builder;Lcom/mopub/nativeads/PangleAdViewBinder$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/mopub/nativeads/PangleAdViewBinder;-><init>(Lcom/mopub/nativeads/PangleAdViewBinder$Builder;)V

    return-void
.end method
