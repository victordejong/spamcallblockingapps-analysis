.class Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AB_TEST_SEGMENT:Ljava/lang/String; = "${AB_TEST_SEGMENT}"

.field private static final APP_FBID:Ljava/lang/String; = "${APP_FBID}"

.field private static final AUCTION_ID:Ljava/lang/String; = "${AUCTION_ID}"

.field private static final AUCTION_LOSS_CODE:Ljava/lang/String; = "${AUCTION_LOSS}"

.field private static final AUCTION_PRICE:Ljava/lang/String; = "${AUCTION_PRICE}"

.field private static final BUNDLE:Ljava/lang/String; = "${BUNDLE}"

.field private static final IDFA:Ljava/lang/String; = "${IDFA}"

.field private static final PARTNER_FBID:Ljava/lang/String; = "${PARTNER_FBID}"

.field private static final PHASE:Ljava/lang/String; = "${PHASE}"

.field private static final PLACEMENT_FBID:Ljava/lang/String; = "${PLACEMENT_FBID}"

.field private static final TAG:Ljava/lang/String; = "FacebookNotifier"

.field private static final WINNER_NAME:Ljava/lang/String; = "${WINNER_NAME}"

.field private static final WINNER_TYPE:Ljava/lang/String; = "${WINNER_TYPE}"


# instance fields
.field private final DEFAULT_TIMEOUT_MS:I

.field private final mBidderData:Lcom/facebook/biddingkit/facebook/bidder/b$a;

.field private final mConfiguration:Lcom/facebook/biddingkit/facebook/bidder/d;

.field private mFacebookBid:Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;

.field private mIdfa:Ljava/lang/String;

.field private mIsDefault:Z

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/biddingkit/facebook/bidder/b$a;Lcom/facebook/biddingkit/facebook/bidder/d;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7d0

    .line 55
    iput v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->DEFAULT_TIMEOUT_MS:I

    const-string v0, ""

    .line 61
    iput-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mPackageName:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mIdfa:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mBidderData:Lcom/facebook/biddingkit/facebook/bidder/b$a;

    .line 74
    iput-object p2, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mConfiguration:Lcom/facebook/biddingkit/facebook/bidder/d;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/facebook/biddingkit/facebook/bidder/d;)V
    .locals 3

    .line 65
    new-instance v0, Lcom/facebook/biddingkit/facebook/bidder/b$a;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/facebook/biddingkit/facebook/bidder/b$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/biddingkit/c/d;Ljava/lang/String;)V

    .line 1264
    iput-object p1, v0, Lcom/facebook/biddingkit/facebook/bidder/b$a;->d:Ljava/lang/String;

    .line 65
    invoke-direct {p0, v0, p2}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;-><init>(Lcom/facebook/biddingkit/facebook/bidder/b$a;Lcom/facebook/biddingkit/facebook/bidder/d;)V

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mIsDefault:Z

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;)Lcom/facebook/biddingkit/facebook/bidder/b$a;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mBidderData:Lcom/facebook/biddingkit/facebook/bidder/b$a;

    return-object p0
.end method

.method protected static getCPMCents(Lcom/facebook/biddingkit/f/b;Lcom/facebook/biddingkit/f/b;)Ljava/lang/Double;
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_2

    .line 94
    sget-object v2, Lcom/facebook/biddingkit/facebook/bidder/b;->a:Ljava/lang/String;

    invoke-interface {p0}, Lcom/facebook/biddingkit/f/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    invoke-interface {p1}, Lcom/facebook/biddingkit/f/b;->a()D

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_1

    .line 97
    :cond_1
    invoke-interface {p0}, Lcom/facebook/biddingkit/f/b;->a()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_1

    .line 100
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private getEndpoint()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mFacebookBid:Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->getLurl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mFacebookBid:Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;

    invoke-virtual {v0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->getLurl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 184
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mConfiguration:Lcom/facebook/biddingkit/facebook/bidder/d;

    .line 6076
    iget-object v0, v0, Lcom/facebook/biddingkit/facebook/bidder/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected static getEntryName(Lcom/facebook/biddingkit/f/b;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 88
    :cond_0
    invoke-interface {p0}, Lcom/facebook/biddingkit/f/b;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTimeout()I
    .locals 1

    const/16 v0, 0x7d0

    return v0
.end method


# virtual methods
.method protected getIdfa()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mIdfa:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/biddingkit/b/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/biddingkit/e/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mIdfa:Ljava/lang/String;

    return-object v0
.end method

.method protected getLossCode(Ljava/lang/String;)Lcom/facebook/biddingkit/a/b;
    .locals 2

    .line 189
    iget-boolean v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mIsDefault:Z

    if-eqz v0, :cond_0

    .line 190
    sget-object p1, Lcom/facebook/biddingkit/a/b;->DID_NOT_PARTICIPATE:Lcom/facebook/biddingkit/a/b;

    return-object p1

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mFacebookBid:Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;

    if-eqz v0, :cond_3

    .line 194
    sget-object v0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$2;->a:[I

    iget-object v1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mFacebookBid:Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;

    invoke-virtual {v1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->getStatusCode()Lcom/facebook/biddingkit/http/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/biddingkit/http/a/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 199
    :cond_1
    sget-object p1, Lcom/facebook/biddingkit/a/b;->TIMEOUT:Lcom/facebook/biddingkit/a/b;

    return-object p1

    .line 197
    :cond_2
    sget-object p1, Lcom/facebook/biddingkit/a/b;->NO_BID:Lcom/facebook/biddingkit/a/b;

    return-object p1

    .line 204
    :cond_3
    :goto_0
    sget-object v0, Lcom/facebook/biddingkit/facebook/bidder/b;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 205
    sget-object p1, Lcom/facebook/biddingkit/a/b;->WIN:Lcom/facebook/biddingkit/a/b;

    return-object p1

    .line 207
    :cond_4
    iget-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mFacebookBid:Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;

    if-nez p1, :cond_5

    .line 210
    sget-object p1, Lcom/facebook/biddingkit/a/b;->TIMEOUT:Lcom/facebook/biddingkit/a/b;

    return-object p1

    .line 212
    :cond_5
    sget-object p1, Lcom/facebook/biddingkit/a/b;->OUTBID:Lcom/facebook/biddingkit/a/b;

    return-object p1
.end method

.method protected getPackageName()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-static {}, Lcom/facebook/biddingkit/b/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public notifyBidderWinner(Ljava/lang/String;Lcom/facebook/biddingkit/f/a;)V
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/biddingkit/f/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    .line 2083
    invoke-interface {p2}, Lcom/facebook/biddingkit/f/a;->a()Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/biddingkit/f/b;

    .line 2085
    invoke-interface {v3}, Lcom/facebook/biddingkit/f/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/biddingkit/c/e;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2089
    aget-object v4, v0, v2

    if-nez v4, :cond_1

    aput-object v3, v0, v2

    goto :goto_0

    .line 2092
    :cond_1
    aget-object v4, v0, v2

    invoke-interface {v4}, Lcom/facebook/biddingkit/f/b;->a()D

    move-result-wide v4

    invoke-interface {v3}, Lcom/facebook/biddingkit/f/b;->a()D

    move-result-wide v6

    cmpg-double v8, v4, v6

    if-gez v8, :cond_2

    .line 2093
    aget-object v4, v0, v2

    aput-object v4, v0, v1

    aput-object v3, v0, v2

    goto :goto_0

    .line 2095
    :cond_2
    aget-object v4, v0, v1

    if-nez v4, :cond_3

    aput-object v3, v0, v1

    goto :goto_0

    .line 2097
    :cond_3
    aget-object v4, v0, v1

    invoke-interface {v4}, Lcom/facebook/biddingkit/f/b;->a()D

    move-result-wide v4

    invoke-interface {v3}, Lcom/facebook/biddingkit/f/b;->a()D

    move-result-wide v6

    cmpg-double v8, v4, v6

    if-gez v8, :cond_0

    aput-object v3, v0, v1

    goto :goto_0

    .line 80
    :cond_4
    aget-object p2, v0, v2

    .line 82
    invoke-static {p2}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->getEntryName(Lcom/facebook/biddingkit/f/b;)Ljava/lang/String;

    move-result-object p2

    aget-object v3, v0, v2

    aget-object v0, v0, v1

    .line 83
    invoke-static {v3, v0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->getCPMCents(Lcom/facebook/biddingkit/f/b;Lcom/facebook/biddingkit/f/b;)Ljava/lang/Double;

    move-result-object v0

    .line 80
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->notifyWinner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Z)V

    return-void
.end method

.method public notifyDisplayWinner(Ljava/lang/String;Lcom/facebook/biddingkit/f/b;)V
    .locals 3

    .line 109
    invoke-static {p2}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->getEntryName(Lcom/facebook/biddingkit/f/b;)Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    .line 110
    :cond_0
    invoke-interface {p2}, Lcom/facebook/biddingkit/f/b;->a()D

    move-result-wide v1

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 v1, 0x1

    .line 108
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->notifyWinner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Z)V

    return-void
.end method

.method protected notifyWinner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Z)V
    .locals 1

    .line 121
    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->processUrl(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-direct {p0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->getTimeout()I

    move-result p2

    .line 3051
    invoke-static {}, Lcom/facebook/biddingkit/http/a/b;->a()Lcom/facebook/biddingkit/http/client/a;

    move-result-object p3

    .line 3052
    invoke-virtual {p3, p2}, Lcom/facebook/biddingkit/http/client/a;->a(I)V

    .line 3134
    new-instance p2, Lcom/facebook/biddingkit/http/client/b;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/facebook/biddingkit/http/client/b;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p3, p2}, Lcom/facebook/biddingkit/http/client/a;->a(Lcom/facebook/biddingkit/http/client/e;)Lcom/facebook/biddingkit/http/client/f;

    move-result-object p1

    const-string p2, "null"

    if-eqz p4, :cond_1

    .line 124
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Facebook display winner notified with http status "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 4052
    :cond_0
    iget p1, p1, Lcom/facebook/biddingkit/http/client/f;->a:I

    .line 127
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 129
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Facebook bidder winner notified with http status "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_2

    goto :goto_1

    .line 5052
    :cond_2
    iget p1, p1, Lcom/facebook/biddingkit/http/client/f;->a:I

    .line 132
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected processUrl(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/String;
    .locals 10

    .line 143
    invoke-direct {p0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mBidderData:Lcom/facebook/biddingkit/facebook/bidder/b$a;

    .line 5273
    iget-object v0, v0, Lcom/facebook/biddingkit/facebook/bidder/b$a;->b:Ljava/lang/String;

    const-string v2, "_"

    const/4 v3, 0x2

    .line 146
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 147
    array-length v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, ""

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    .line 148
    :try_start_1
    aget-object v0, v0, v2

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v9

    .line 153
    :goto_0
    new-instance v0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;

    move-object v2, v0

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier$1;-><init>(Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Z)V

    .line 168
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 169
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v3, v9

    .line 171
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v2, "FacebookNotifier"

    const-string v3, "Failed processing the Url"

    .line 174
    invoke-static {v2, v3, v0}, Lcom/facebook/biddingkit/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-object v1
.end method

.method protected setFacebookBid(Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mFacebookBid:Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;

    return-void
.end method

.method protected setIdfa(Ljava/lang/String;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mIdfa:Ljava/lang/String;

    return-void
.end method

.method protected setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->mPackageName:Ljava/lang/String;

    return-void
.end method
