.class public final Lcom/twitter/sdk/android/core/internal/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twitter/sdk/android/core/internal/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/internal/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/sdk/android/core/internal/e<",
        "Lcom/twitter/sdk/android/core/t;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/sdk/android/core/internal/h$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/twitter/sdk/android/core/internal/h$a;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/h$a;-><init>()V

    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/core/internal/h;-><init>(Lcom/twitter/sdk/android/core/internal/h$a;)V

    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/core/internal/h$a;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/h;->a:Lcom/twitter/sdk/android/core/internal/h$a;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/twitter/sdk/android/core/l;)V
    .locals 2

    .line 26
    check-cast p1, Lcom/twitter/sdk/android/core/t;

    .line 1059
    new-instance v0, Lcom/twitter/sdk/android/core/o;

    invoke-direct {v0, p1}, Lcom/twitter/sdk/android/core/o;-><init>(Lcom/twitter/sdk/android/core/t;)V

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/o;->getAccountService()Lcom/twitter/sdk/android/core/services/AccountService;

    move-result-object p1

    .line 1045
    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1, v1}, Lcom/twitter/sdk/android/core/services/AccountService;->verifyCredentials(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->a()Lretrofit2/Response;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
