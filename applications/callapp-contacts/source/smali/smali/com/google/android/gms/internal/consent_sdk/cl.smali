.class final synthetic Lcom/google/android/gms/internal/consent_sdk/cl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/c/c$a;

.field private final b:Lcom/google/android/gms/internal/consent_sdk/zzk;


# direct methods
.method constructor <init>(Lcom/google/android/c/c$a;Lcom/google/android/gms/internal/consent_sdk/zzk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/cl;->a:Lcom/google/android/c/c$a;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/cl;->b:Lcom/google/android/gms/internal/consent_sdk/zzk;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/cl;->a:Lcom/google/android/c/c$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/cl;->b:Lcom/google/android/gms/internal/consent_sdk/zzk;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/consent_sdk/zzk;->a()Lcom/google/android/c/e;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/c/c$a;->a(Lcom/google/android/c/e;)V

    return-void
.end method
