.class public Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider;
.super Ljava/lang/Object;
.source "SpamCommentDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider$SpamCommentDataProviderCallback;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider;
    .locals 2

    const-class v0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider;->mInstance:Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider;

    if-nez v1, :cond_0

    new-instance v1, Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider;

    invoke-direct {v1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider;-><init>()V

    sput-object v1, Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider;->mInstance:Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider;

    .line 41
    :cond_0
    sget-object v1, Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider;->mInstance:Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getData(Landroid/content/Context;Ljava/lang/String;ZLcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider$SpamCommentDataProviderCallback;)V
    .locals 2

    if-nez p4, :cond_0

    return-void

    .line 47
    :cond_0
    sget-object v0, Lcom/telguarder/helpers/backend/BackendRequest$Method;->POST:Lcom/telguarder/helpers/backend/BackendRequest$Method;

    const-string v1, "https://api.advista.no/Report/Number/Comments/Mobile"

    invoke-static {p1, v1, v0}, Lcom/telguarder/helpers/backend/BackendRequestCreator;->backendRequestOfUrlAndMethodWithLogging(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/helpers/backend/BackendRequest$Method;)Lcom/telguarder/helpers/backend/BackendRequest;

    move-result-object p1

    const-string v0, "number"

    .line 48
    invoke-virtual {p1, v0, p2}, Lcom/telguarder/helpers/backend/BackendRequest;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const-string p2, "sortType"

    const-string p3, "legacy"

    .line 53
    invoke-virtual {p1, p2, p3}, Lcom/telguarder/helpers/backend/BackendRequest;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p2, 0x0

    .line 55
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "offset"

    invoke-virtual {p1, p3, p2}, Lcom/telguarder/helpers/backend/BackendRequest;->putParam(Ljava/lang/String;Ljava/lang/Number;)V

    const/16 p2, 0x1e

    .line 56
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "count"

    invoke-virtual {p1, p3, p2}, Lcom/telguarder/helpers/backend/BackendRequest;->putParam(Ljava/lang/String;Ljava/lang/Number;)V

    .line 57
    const-class p2, Lcom/telguarder/features/rateAndFeedback/CommentsResult;

    new-instance p3, Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider$1;

    invoke-direct {p3, p0, p4}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider$1;-><init>(Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider;Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider$SpamCommentDataProviderCallback;)V

    invoke-virtual {p1, p2, p3}, Lcom/telguarder/helpers/backend/BackendRequest;->execute(Ljava/lang/Class;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V

    return-void
.end method
