.class public final synthetic Lcom/twitter/sdk/android/core/internal/oauth/-$$Lambda$d$gk1xLIV8KoOOOd-2JRTYWkaVDBM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public final synthetic f$0:Lcom/twitter/sdk/android/core/internal/oauth/d;


# direct methods
.method public synthetic constructor <init>(Lcom/twitter/sdk/android/core/internal/oauth/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/-$$Lambda$d$gk1xLIV8KoOOOd-2JRTYWkaVDBM;->f$0:Lcom/twitter/sdk/android/core/internal/oauth/d;

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/-$$Lambda$d$gk1xLIV8KoOOOd-2JRTYWkaVDBM;->f$0:Lcom/twitter/sdk/android/core/internal/oauth/d;

    invoke-static {v0, p1}, Lcom/twitter/sdk/android/core/internal/oauth/d;->lambda$gk1xLIV8KoOOOd-2JRTYWkaVDBM(Lcom/twitter/sdk/android/core/internal/oauth/d;Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
