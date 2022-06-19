.class final Lcom/twitter/sdk/android/tweetcomposer/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetcomposer/a$c;,
        Lcom/twitter/sdk/android/tweetcomposer/a$b;,
        Lcom/twitter/sdk/android/tweetcomposer/a$a;
    }
.end annotation


# instance fields
.field final a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

.field final b:Lcom/twitter/sdk/android/core/t;

.field final c:Landroid/net/Uri;

.field final d:Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$a;

.field final e:Lcom/twitter/sdk/android/tweetcomposer/a$c;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;Lcom/twitter/sdk/android/core/t;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$a;)V
    .locals 8

    .line 44
    new-instance v7, Lcom/twitter/sdk/android/tweetcomposer/a$c;

    invoke-direct {v7}, Lcom/twitter/sdk/android/tweetcomposer/a$c;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/twitter/sdk/android/tweetcomposer/a;-><init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;Lcom/twitter/sdk/android/core/t;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$a;Lcom/twitter/sdk/android/tweetcomposer/a$c;)V

    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;Lcom/twitter/sdk/android/core/t;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$a;Lcom/twitter/sdk/android/tweetcomposer/a$c;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/a;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    .line 52
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetcomposer/a;->b:Lcom/twitter/sdk/android/core/t;

    .line 53
    iput-object p3, p0, Lcom/twitter/sdk/android/tweetcomposer/a;->c:Landroid/net/Uri;

    .line 54
    iput-object p6, p0, Lcom/twitter/sdk/android/tweetcomposer/a;->d:Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$a;

    .line 55
    iput-object p7, p0, Lcom/twitter/sdk/android/tweetcomposer/a;->e:Lcom/twitter/sdk/android/tweetcomposer/a$c;

    .line 57
    new-instance p6, Lcom/twitter/sdk/android/tweetcomposer/a$b;

    invoke-direct {p6, p0}, Lcom/twitter/sdk/android/tweetcomposer/a$b;-><init>(Lcom/twitter/sdk/android/tweetcomposer/a;)V

    .line 1128
    iput-object p6, p1, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->j:Lcom/twitter/sdk/android/tweetcomposer/a$a;

    .line 2064
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2065
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p7

    if-nez p7, :cond_0

    .line 2066
    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2068
    :cond_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 2069
    invoke-virtual {p6}, Ljava/lang/StringBuilder;->length()I

    move-result p4

    if-lez p4, :cond_1

    const-string p4, " "

    .line 2070
    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2072
    :cond_1
    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2074
    :cond_2
    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 2149
    iget-object p5, p1, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->c:Landroid/widget/EditText;

    invoke-virtual {p5, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3181
    invoke-static {}, Lcom/twitter/sdk/android/core/r;->a()Lcom/twitter/sdk/android/core/r;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/twitter/sdk/android/core/r;->a(Lcom/twitter/sdk/android/core/t;)Lcom/twitter/sdk/android/core/o;

    move-result-object p2

    .line 3078
    invoke-virtual {p2}, Lcom/twitter/sdk/android/core/o;->getAccountService()Lcom/twitter/sdk/android/core/services/AccountService;

    move-result-object p2

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 3079
    sget-object p5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object p6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p4, p5, p6}, Lcom/twitter/sdk/android/core/services/AccountService;->verifyCredentials(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lretrofit2/Call;

    move-result-object p2

    new-instance p4, Lcom/twitter/sdk/android/tweetcomposer/a$1;

    invoke-direct {p4, p0}, Lcom/twitter/sdk/android/tweetcomposer/a$1;-><init>(Lcom/twitter/sdk/android/tweetcomposer/a;)V

    invoke-interface {p2, p4}, Lretrofit2/Call;->a(Lretrofit2/c;)V

    if-eqz p3, :cond_3

    .line 4165
    iget-object p2, p1, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->k:Lcom/squareup/picasso/Picasso;

    if-eqz p2, :cond_3

    .line 4166
    iget-object p2, p1, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->i:Landroid/widget/ImageView;

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4167
    iget-object p2, p1, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->k:Lcom/squareup/picasso/Picasso;

    invoke-virtual {p2, p3}, Lcom/squareup/picasso/Picasso;->load(Landroid/net/Uri;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    iget-object p1, p1, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->i:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    :cond_3
    return-void
.end method

.method private b()V
    .locals 2

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.twitter.sdk.android.tweetcomposer.TWEET_COMPOSE_CANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/a;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/a;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .line 138
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetcomposer/a;->b()V

    .line 139
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/a;->d:Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$a;

    invoke-interface {v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$a;->a()V

    return-void
.end method
