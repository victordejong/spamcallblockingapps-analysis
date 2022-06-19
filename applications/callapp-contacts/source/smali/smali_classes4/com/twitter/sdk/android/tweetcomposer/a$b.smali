.class final Lcom/twitter/sdk/android/tweetcomposer/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twitter/sdk/android/tweetcomposer/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetcomposer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/tweetcomposer/a;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/a;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/a$b;->a:Lcom/twitter/sdk/android/tweetcomposer/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/a$b;->a:Lcom/twitter/sdk/android/tweetcomposer/a;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetcomposer/a;->a()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6

    .line 109
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/a$b;->a:Lcom/twitter/sdk/android/tweetcomposer/a;

    .line 1143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1147
    :cond_0
    iget-object v0, v0, Lcom/twitter/sdk/android/tweetcomposer/a;->e:Lcom/twitter/sdk/android/tweetcomposer/a$c;

    .line 1185
    iget-object v0, v0, Lcom/twitter/sdk/android/tweetcomposer/a$c;->a:Lcom/twitter/d;

    .line 1147
    invoke-virtual {v0, p1}, Lcom/twitter/d;->a(Ljava/lang/String;)I

    move-result p1

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/a$b;->a:Lcom/twitter/sdk/android/tweetcomposer/a;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetcomposer/a;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    rsub-int v1, p1, 0x8c

    .line 3153
    iget-object v0, v0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->d:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    const-string v1, "%d"

    invoke-static {v3, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8c

    if-le p1, v0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 113
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/a$b;->a:Lcom/twitter/sdk/android/tweetcomposer/a;

    iget-object v1, v1, Lcom/twitter/sdk/android/tweetcomposer/a;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    sget v3, Lcom/twitter/sdk/android/tweetcomposer/c$d;->tw__ComposerCharCountOverflow:I

    invoke-virtual {v1, v3}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->a(I)V

    goto :goto_2

    .line 115
    :cond_2
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/a$b;->a:Lcom/twitter/sdk/android/tweetcomposer/a;

    iget-object v1, v1, Lcom/twitter/sdk/android/tweetcomposer/a;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    sget v3, Lcom/twitter/sdk/android/tweetcomposer/c$d;->tw__ComposerCharCount:I

    invoke-virtual {v1, v3}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->a(I)V

    .line 118
    :goto_2
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/a$b;->a:Lcom/twitter/sdk/android/tweetcomposer/a;

    iget-object v1, v1, Lcom/twitter/sdk/android/tweetcomposer/a;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    if-lez p1, :cond_3

    if-gt p1, v0, :cond_3

    const/4 v2, 0x1

    .line 5161
    :cond_3
    iget-object p1, v1, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->e:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .line 123
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/a$b;->a:Lcom/twitter/sdk/android/tweetcomposer/a;

    iget-object v1, v1, Lcom/twitter/sdk/android/tweetcomposer/a;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/a$b;->a:Lcom/twitter/sdk/android/tweetcomposer/a;

    iget-object v1, v1, Lcom/twitter/sdk/android/tweetcomposer/a;->b:Lcom/twitter/sdk/android/core/t;

    .line 6042
    iget-object v1, v1, Lcom/twitter/sdk/android/core/l;->a:Lcom/twitter/sdk/android/core/a;

    .line 124
    check-cast v1, Landroid/os/Parcelable;

    const-string v2, "EXTRA_USER_TOKEN"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "EXTRA_TWEET_TEXT"

    .line 125
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/a$b;->a:Lcom/twitter/sdk/android/tweetcomposer/a;

    iget-object p1, p1, Lcom/twitter/sdk/android/tweetcomposer/a;->c:Landroid/net/Uri;

    const-string v1, "EXTRA_IMAGE_URI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 127
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/a$b;->a:Lcom/twitter/sdk/android/tweetcomposer/a;

    iget-object p1, p1, Lcom/twitter/sdk/android/tweetcomposer/a;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 128
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/a$b;->a:Lcom/twitter/sdk/android/tweetcomposer/a;

    iget-object p1, p1, Lcom/twitter/sdk/android/tweetcomposer/a;->d:Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$a;

    invoke-interface {p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$a;->a()V

    return-void
.end method
