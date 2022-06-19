.class final synthetic Lcom/google/android/gms/internal/consent_sdk/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/consent_sdk/zzbe;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzbe;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/af;->a:Lcom/google/android/gms/internal/consent_sdk/zzbe;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/af;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/af;->a:Lcom/google/android/gms/internal/consent_sdk/zzbe;

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/af;->b:Ljava/lang/String;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/consent_sdk/bi;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
