.class final synthetic Lcom/google/android/gms/internal/consent_sdk/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/consent_sdk/ak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/consent_sdk/ak;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/am;->a:Lcom/google/android/gms/internal/consent_sdk/ak;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/am;->a:Lcom/google/android/gms/internal/consent_sdk/ak;

    .line 1086
    iget-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/ak;->a:Landroid/app/Application;

    invoke-static {v1}, Lcom/google/android/gms/internal/consent_sdk/ak;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1087
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/ak;->b:Lcom/google/android/gms/internal/consent_sdk/u;

    .line 2027
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/u;->e:Lcom/google/android/gms/internal/consent_sdk/zzbe;

    .line 3006
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UMP_configureFormWithAppAssets"

    .line 3008
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3010
    iget-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/consent_sdk/af;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/internal/consent_sdk/af;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzbe;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
