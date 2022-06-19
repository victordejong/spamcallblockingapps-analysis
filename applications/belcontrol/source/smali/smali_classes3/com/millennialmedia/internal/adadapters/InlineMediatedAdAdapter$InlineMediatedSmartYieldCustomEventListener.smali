.class public final Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$InlineMediatedSmartYieldCustomEventListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/mediation/SmartYieldCustomEvent$SmartYieldCustomEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InlineMediatedSmartYieldCustomEventListener"
.end annotation


# instance fields
.field private requestId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$InlineMediatedSmartYieldCustomEventListener;->requestId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$InlineMediatedSmartYieldCustomEventListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBidLost()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$InlineMediatedSmartYieldCustomEventListener;->requestId:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->getActiveSmartYieldDecisionListener(Ljava/lang/String;)Lcom/millennialmedia/internal/adadapters/SmartYieldAdapter$SmartYieldDecisionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/SmartYieldAdapter$SmartYieldDecisionListener;->onBidLost()V

    :cond_0
    return-void
.end method

.method public onError()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineMediatedAdAdapter$InlineMediatedSmartYieldCustomEventListener;->requestId:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/internal/adwrapper/SmartYieldAdWrapperType;->getActiveSmartYieldDecisionListener(Ljava/lang/String;)Lcom/millennialmedia/internal/adadapters/SmartYieldAdapter$SmartYieldDecisionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/SmartYieldAdapter$SmartYieldDecisionListener;->onError()V

    :cond_0
    return-void
.end method
