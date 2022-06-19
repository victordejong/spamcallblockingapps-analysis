.class final Lcom/dropbox/core/android/AuthActivity$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/android/AuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/dropbox/core/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dropbox/core/android/AuthActivity;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/dropbox/core/android/AuthActivity;Ljava/lang/String;)V
    .locals 0

    .line 770
    iput-object p1, p0, Lcom/dropbox/core/android/AuthActivity$b;->a:Lcom/dropbox/core/android/AuthActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 771
    iput-object p2, p0, Lcom/dropbox/core/android/AuthActivity$b;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/core/android/AuthActivity;Ljava/lang/String;Lcom/dropbox/core/android/AuthActivity$1;)V
    .locals 0

    .line 767
    invoke-direct {p0, p1, p2}, Lcom/dropbox/core/android/AuthActivity$b;-><init>(Lcom/dropbox/core/android/AuthActivity;Ljava/lang/String;)V

    return-void
.end method

.method private varargs a()Lcom/dropbox/core/c;
    .locals 9

    .line 778
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/android/AuthActivity$b;->a:Lcom/dropbox/core/android/AuthActivity;

    invoke-static {v0}, Lcom/dropbox/core/android/AuthActivity;->d(Lcom/dropbox/core/android/AuthActivity;)Lcom/dropbox/core/g;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/android/AuthActivity$b;->a:Lcom/dropbox/core/android/AuthActivity;

    invoke-static {v1}, Lcom/dropbox/core/android/AuthActivity;->a(Lcom/dropbox/core/android/AuthActivity;)Lcom/dropbox/core/h;

    move-result-object v2

    iget-object v1, p0, Lcom/dropbox/core/android/AuthActivity$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/android/AuthActivity$b;->a:Lcom/dropbox/core/android/AuthActivity;

    invoke-static {v3}, Lcom/dropbox/core/android/AuthActivity;->b(Lcom/dropbox/core/android/AuthActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/dropbox/core/android/AuthActivity$b;->a:Lcom/dropbox/core/android/AuthActivity;

    invoke-static {v4}, Lcom/dropbox/core/android/AuthActivity;->c(Lcom/dropbox/core/android/AuthActivity;)Lcom/dropbox/core/e;

    move-result-object v4

    .line 1104
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "grant_type"

    const-string v7, "authorization_code"

    .line 1105
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "code"

    .line 1106
    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "locale"

    .line 2110
    iget-object v6, v2, Lcom/dropbox/core/h;->b:Ljava/lang/String;

    .line 1107
    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "client_id"

    .line 1108
    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "code_verifier"

    .line 1109
    iget-object v3, v0, Lcom/dropbox/core/g;->a:Ljava/lang/String;

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "OfficialDropboxJavaSDKv2"

    .line 3057
    iget-object v4, v4, Lcom/dropbox/core/e;->b:Ljava/lang/String;

    const-string v1, "oauth2/token"

    .line 1120
    invoke-static {v5}, Lcom/dropbox/core/i;->a(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v8, Lcom/dropbox/core/g$1;

    invoke-direct {v8, v0}, Lcom/dropbox/core/g$1;-><init>(Lcom/dropbox/core/g;)V

    move-object v5, v1

    .line 1115
    invoke-static/range {v2 .. v8}, Lcom/dropbox/core/i;->a(Lcom/dropbox/core/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/dropbox/core/i$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/c;
    :try_end_0
    .catch Lcom/dropbox/core/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 780
    invoke-static {}, Lcom/dropbox/core/android/AuthActivity;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Token Request Failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/dropbox/core/DbxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 767
    invoke-direct {p0}, Lcom/dropbox/core/android/AuthActivity$b;->a()Lcom/dropbox/core/c;

    move-result-object p1

    return-object p1
.end method
