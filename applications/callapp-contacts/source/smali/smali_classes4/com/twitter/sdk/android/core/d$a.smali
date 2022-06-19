.class public final Lcom/twitter/sdk/android/core/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twitter/sdk/android/core/internal/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/sdk/android/core/internal/b/d<",
        "Lcom/twitter/sdk/android/core/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/gson/f;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/google/gson/g;

    invoke-direct {v0}, Lcom/google/gson/g;-><init>()V

    const-class v1, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;

    new-instance v2, Lcom/twitter/sdk/android/core/AuthTokenAdapter;

    invoke-direct {v2}, Lcom/twitter/sdk/android/core/AuthTokenAdapter;-><init>()V

    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/g;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/g;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/google/gson/g;->a()Lcom/google/gson/f;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/d$a;->a:Lcom/google/gson/f;

    return-void
.end method

.method private a(Lcom/twitter/sdk/android/core/d;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    .line 1042
    iget-object v0, p1, Lcom/twitter/sdk/android/core/l;->a:Lcom/twitter/sdk/android/core/a;

    if-eqz v0, :cond_0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/d$a;->a:Lcom/google/gson/f;

    invoke-virtual {v0, p1}, Lcom/google/gson/f;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 55
    invoke-static {}, Lcom/twitter/sdk/android/core/n;->c()Lcom/twitter/sdk/android/core/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to serialize session "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Twitter"

    .line 55
    invoke-interface {v0, v1, p1}, Lcom/twitter/sdk/android/core/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private b(Ljava/lang/String;)Lcom/twitter/sdk/android/core/d;
    .locals 3

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/d$a;->a:Lcom/google/gson/f;

    const-class v1, Lcom/twitter/sdk/android/core/d;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/twitter/sdk/android/core/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 68
    invoke-static {}, Lcom/twitter/sdk/android/core/n;->c()Lcom/twitter/sdk/android/core/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to deserialize session "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Twitter"

    .line 68
    invoke-interface {v0, v1, p1}, Lcom/twitter/sdk/android/core/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/d$a;->b(Ljava/lang/String;)Lcom/twitter/sdk/android/core/d;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 39
    check-cast p1, Lcom/twitter/sdk/android/core/d;

    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/d$a;->a(Lcom/twitter/sdk/android/core/d;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
