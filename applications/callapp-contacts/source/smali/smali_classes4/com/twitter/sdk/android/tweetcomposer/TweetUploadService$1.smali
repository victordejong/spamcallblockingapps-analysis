.class final Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$1;
.super Lcom/twitter/sdk/android/core/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/b<",
        "Lcom/twitter/sdk/android/core/models/Media;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/core/t;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;Lcom/twitter/sdk/android/core/t;Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$1;->c:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    iput-object p2, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$1;->a:Lcom/twitter/sdk/android/core/t;

    iput-object p3, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$1;->c:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->a(Lcom/twitter/sdk/android/core/TwitterException;)V

    return-void
.end method

.method public final a(Lcom/twitter/sdk/android/core/k;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/k<",
            "Lcom/twitter/sdk/android/core/models/Media;",
            ">;)V"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$1;->c:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$1;->a:Lcom/twitter/sdk/android/core/t;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$1;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/k;->a:Ljava/lang/Object;

    check-cast p1, Lcom/twitter/sdk/android/core/models/Media;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/Media;->mediaIdString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->a(Lcom/twitter/sdk/android/core/t;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
