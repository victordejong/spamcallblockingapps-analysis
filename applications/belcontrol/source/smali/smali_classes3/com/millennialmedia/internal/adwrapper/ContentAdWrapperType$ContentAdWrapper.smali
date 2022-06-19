.class public Lcom/millennialmedia/internal/adwrapper/ContentAdWrapperType$ContentAdWrapper;
.super Lcom/millennialmedia/internal/adwrapper/AdWrapper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adwrapper/ContentAdWrapperType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentAdWrapper"
.end annotation


# instance fields
.field public adnet:Ljava/lang/String;

.field public creativeId:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/internal/AdMetadata;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/millennialmedia/internal/adwrapper/ContentAdWrapperType$ContentAdWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/internal/AdMetadata;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/internal/AdMetadata;Z)V
    .locals 0

    invoke-direct {p0, p1, p4}, Lcom/millennialmedia/internal/adwrapper/AdWrapper;-><init>(Ljava/lang/String;Z)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iput-object p2, p0, Lcom/millennialmedia/internal/adwrapper/ContentAdWrapperType$ContentAdWrapper;->value:Ljava/lang/String;

    iget-object p1, p0, Lcom/millennialmedia/internal/adwrapper/AdWrapper;->adMetadata:Lcom/millennialmedia/internal/AdMetadata;

    invoke-virtual {p1, p3}, Lcom/millennialmedia/internal/AdMetadata;->addAll(Lcom/millennialmedia/internal/AdMetadata;)V

    return-void

    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "value is required"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAdAdapter(Lcom/millennialmedia/internal/AdPlacement;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/millennialmedia/internal/adadapters/AdAdapter;
    .locals 1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/ContentAdWrapperType;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Processing ad content playlist item ID: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/millennialmedia/internal/adwrapper/AdWrapper;->itemId:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lcom/millennialmedia/internal/adwrapper/ContentAdWrapperType$ContentAdWrapper;->value:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/internal/adwrapper/AdWrapper;->getAdAdapterForContent(Lcom/millennialmedia/internal/AdPlacement;Ljava/lang/String;)Lcom/millennialmedia/internal/adadapters/AdAdapter;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/ContentAdWrapperType;->access$000()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object p1, p1, Lcom/millennialmedia/internal/AdPlacement;->placementId:Ljava/lang/String;

    aput-object p1, p3, v0

    const/4 p1, 0x1

    iget-object v0, p0, Lcom/millennialmedia/internal/adwrapper/ContentAdWrapperType$ContentAdWrapper;->value:Ljava/lang/String;

    aput-object v0, p3, p1

    const-string p1, "Unable to find adapter for ad content playlist item, placement ID <%s> and content <%s>"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/millennialmedia/internal/adwrapper/ContentAdWrapperType$ContentAdWrapper;->adnet:Ljava/lang/String;

    new-instance p3, Lcom/millennialmedia/CreativeInfo;

    iget-object v0, p0, Lcom/millennialmedia/internal/adwrapper/ContentAdWrapperType$ContentAdWrapper;->creativeId:Ljava/lang/String;

    invoke-direct {p3, v0, p1}, Lcom/millennialmedia/CreativeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->setCreativeInfo(Lcom/millennialmedia/CreativeInfo;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/adwrapper/AdWrapper;->adMetadata:Lcom/millennialmedia/internal/AdMetadata;

    invoke-virtual {p2, p1}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->setAdMetadata(Lcom/millennialmedia/internal/AdMetadata;)V

    return-object p2
.end method
