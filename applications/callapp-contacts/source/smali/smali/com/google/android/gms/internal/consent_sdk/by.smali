.class final synthetic Lcom/google/android/gms/internal/consent_sdk/by;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/consent_sdk/cb;

.field private final b:Ljava/lang/String;

.field private final c:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/consent_sdk/cb;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/by;->a:Lcom/google/android/gms/internal/consent_sdk/cb;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/by;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/by;->c:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/by;->a:Lcom/google/android/gms/internal/consent_sdk/cb;

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/by;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/by;->c:Lorg/json/JSONObject;

    .line 2
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/consent_sdk/cb;->a(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
