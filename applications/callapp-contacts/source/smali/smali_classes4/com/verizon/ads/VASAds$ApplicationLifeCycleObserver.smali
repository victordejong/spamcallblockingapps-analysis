.class final Lcom/verizon/ads/VASAds$ApplicationLifeCycleObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/VASAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ApplicationLifeCycleObserver"
.end annotation


# instance fields
.field volatile a:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1424
    iput-boolean v0, p0, Lcom/verizon/ads/VASAds$ApplicationLifeCycleObserver;->a:Z

    return-void
.end method


# virtual methods
.method public final onStart(Landroidx/lifecycle/p;)V
    .locals 0

    const/4 p1, 0x0

    .line 1433
    iput-boolean p1, p0, Lcom/verizon/ads/VASAds$ApplicationLifeCycleObserver;->a:Z

    return-void
.end method

.method public final onStop(Landroidx/lifecycle/p;)V
    .locals 0

    const/4 p1, 0x1

    .line 1428
    iput-boolean p1, p0, Lcom/verizon/ads/VASAds$ApplicationLifeCycleObserver;->a:Z

    return-void
.end method
