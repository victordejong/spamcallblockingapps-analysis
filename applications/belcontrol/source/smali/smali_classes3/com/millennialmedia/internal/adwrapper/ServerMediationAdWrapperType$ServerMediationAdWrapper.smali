.class public Lcom/millennialmedia/internal/adwrapper/ServerMediationAdWrapperType$ServerMediationAdWrapper;
.super Lcom/millennialmedia/internal/adwrapper/AdWrapper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adwrapper/ServerMediationAdWrapperType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerMediationAdWrapper"
.end annotation


# instance fields
.field public adnet:Ljava/lang/String;

.field public cridHeaderField:Ljava/lang/String;

.field public postBody:Ljava/lang/String;

.field public postContentType:Ljava/lang/String;

.field public final url:Ljava/lang/String;

.field public validateRegex:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/millennialmedia/internal/adwrapper/ServerMediationAdWrapperType$ServerMediationAdWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/millennialmedia/internal/adwrapper/AdWrapper;-><init>(Ljava/lang/String;Z)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iput-object p2, p0, Lcom/millennialmedia/internal/adwrapper/ServerMediationAdWrapperType$ServerMediationAdWrapper;->url:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "url is required"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAdAdapter(Lcom/millennialmedia/internal/AdPlacement;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/millennialmedia/internal/adadapters/AdAdapter;
    .locals 5

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/ServerMediationAdWrapperType;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Processing server mediation playlist item ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/millennialmedia/internal/adwrapper/AdWrapper;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getServerToServerTimeout()I

    move-result p2

    iget-object v0, p0, Lcom/millennialmedia/internal/adwrapper/ServerMediationAdWrapperType$ServerMediationAdWrapper;->postBody:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/adwrapper/ServerMediationAdWrapperType$ServerMediationAdWrapper;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/millennialmedia/internal/adwrapper/ServerMediationAdWrapperType$ServerMediationAdWrapper;->postBody:Ljava/lang/String;

    iget-object v2, p0, Lcom/millennialmedia/internal/adwrapper/ServerMediationAdWrapperType$ServerMediationAdWrapper;->postContentType:Ljava/lang/String;

    invoke-static {v0, v1, v2, p2}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/adwrapper/ServerMediationAdWrapperType$ServerMediationAdWrapper;->url:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromPostRequest(Ljava/lang/String;I)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object p2

    :goto_0
    iget v0, p2, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    const/16 v1, 0xc8

    const-string v2, ">"

    const/4 v3, 0x0

    if-ne v0, v1, :cond_6

    iget-object v0, p2, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/internal/adwrapper/ServerMediationAdWrapperType$ServerMediationAdWrapper;->validateRegex:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p2, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(?s)"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/millennialmedia/internal/adwrapper/ServerMediationAdWrapperType$ServerMediationAdWrapper;->validateRegex:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/ServerMediationAdWrapperType;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to validate content for server mediation playlist item due to \"no ad\" response for placement ID <"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/millennialmedia/internal/AdPlacement;->placementId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "> and content <"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    invoke-virtual {p3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-object v3

    :cond_3
    iget-object p3, p2, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-virtual {p0, p1, p3}, Lcom/millennialmedia/internal/adwrapper/AdWrapper;->getAdAdapterForContent(Lcom/millennialmedia/internal/AdPlacement;Ljava/lang/String;)Lcom/millennialmedia/internal/adadapters/AdAdapter;

    move-result-object p3

    if-nez p3, :cond_4

    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/ServerMediationAdWrapperType;->access$000()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object p1, p1, Lcom/millennialmedia/internal/AdPlacement;->placementId:Ljava/lang/String;

    aput-object p1, v0, v1

    const/4 p1, 0x1

    iget-object p2, p2, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    aput-object p2, v0, p1

    const-string p1, "Unable to find adapter for server mediation playlist item, placement ID <%s> and content <%s>"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_4
    iget-object p1, p2, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->adMetadata:Lcom/millennialmedia/internal/AdMetadata;

    invoke-virtual {p3, p1}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->setAdMetadata(Lcom/millennialmedia/internal/AdMetadata;)V

    iget-object p1, p2, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->adMetadata:Lcom/millennialmedia/internal/AdMetadata;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/millennialmedia/internal/adwrapper/ServerMediationAdWrapperType$ServerMediationAdWrapper;->cridHeaderField:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/millennialmedia/internal/adwrapper/ServerMediationAdWrapperType$ServerMediationAdWrapper;->adnet:Ljava/lang/String;

    new-instance v0, Lcom/millennialmedia/CreativeInfo;

    invoke-direct {v0, p1, p2}, Lcom/millennialmedia/CreativeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->setCreativeInfo(Lcom/millennialmedia/CreativeInfo;)V

    :cond_5
    return-object p3

    :cond_6
    :goto_1
    invoke-static {}, Lcom/millennialmedia/internal/adwrapper/ServerMediationAdWrapperType;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retrieve content for server mediation playlist item, placement ID <"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/millennialmedia/internal/AdPlacement;->placementId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/millennialmedia/internal/adwrapper/AdWrapper;->setErrorStatusFromResponseCode(Lcom/millennialmedia/internal/utils/HttpUtils$Response;)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-object v3
.end method
