.class public Lcom/millennialmedia/internal/adwrapper/ClientMediationAdWrapperType$ClientMediationAdWrapper;
.super Lcom/millennialmedia/internal/adwrapper/AdWrapper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adwrapper/ClientMediationAdWrapperType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClientMediationAdWrapper"
.end annotation


# instance fields
.field public final networkId:Ljava/lang/String;

.field public final siteId:Ljava/lang/String;

.field public final spaceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/adwrapper/AdWrapper;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iput-object p2, p0, Lcom/millennialmedia/internal/adwrapper/ClientMediationAdWrapperType$ClientMediationAdWrapper;->networkId:Ljava/lang/String;

    iput-object p3, p0, Lcom/millennialmedia/internal/adwrapper/ClientMediationAdWrapperType$ClientMediationAdWrapper;->siteId:Ljava/lang/String;

    iput-object p4, p0, Lcom/millennialmedia/internal/adwrapper/ClientMediationAdWrapperType$ClientMediationAdWrapper;->spaceId:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "networkId, siteId and spaceId are required"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAdAdapter(Lcom/millennialmedia/internal/AdPlacement;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/millennialmedia/internal/adadapters/AdAdapter;
    .locals 2

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/ClientMediationAdWrapperType;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Processing client mediation playlist item ID: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/millennialmedia/internal/adwrapper/AdWrapper;->itemId:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->getMediatedAdapterInstance(Ljava/lang/Class;)Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/ClientMediationAdWrapperType;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to find ad adapter for network ID: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/millennialmedia/internal/adwrapper/ClientMediationAdWrapperType$ClientMediationAdWrapper;->networkId:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_1
    instance-of p3, p1, Lcom/millennialmedia/internal/adadapters/AdAdapter;

    if-nez p3, :cond_2

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/ClientMediationAdWrapperType;->access$000()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to use ad adapter <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "> for <"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/millennialmedia/internal/adwrapper/ClientMediationAdWrapperType$ClientMediationAdWrapper;->networkId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">, does not extend from AdAdapter"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_2
    new-instance p2, Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;

    iget-object p3, p0, Lcom/millennialmedia/internal/adwrapper/ClientMediationAdWrapperType$ClientMediationAdWrapper;->networkId:Ljava/lang/String;

    iget-object v0, p0, Lcom/millennialmedia/internal/adwrapper/ClientMediationAdWrapperType$ClientMediationAdWrapper;->siteId:Ljava/lang/String;

    iget-object v1, p0, Lcom/millennialmedia/internal/adwrapper/ClientMediationAdWrapperType$ClientMediationAdWrapper;->spaceId:Ljava/lang/String;

    invoke-direct {p2, p3, v0, v1}, Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter;->setMediationInfo(Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;)V

    check-cast p1, Lcom/millennialmedia/internal/adadapters/AdAdapter;

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getClientMediationTimeout()I

    move-result p2

    iput p2, p1, Lcom/millennialmedia/internal/adadapters/AdAdapter;->requestTimeout:I

    return-object p1
.end method
