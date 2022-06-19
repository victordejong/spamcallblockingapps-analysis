.class final synthetic Lcom/google/android/gms/internal/consent_sdk/cj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/consent_sdk/ch;

.field private final b:Lcom/google/android/c/c$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/consent_sdk/ch;Lcom/google/android/c/c$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/cj;->a:Lcom/google/android/gms/internal/consent_sdk/ch;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/cj;->b:Lcom/google/android/c/c$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/cj;->a:Lcom/google/android/gms/internal/consent_sdk/ch;

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/cj;->b:Lcom/google/android/c/c$b;

    .line 1203
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/ch;->b:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2000
    new-instance v2, Lcom/google/android/gms/internal/consent_sdk/cm;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/consent_sdk/cm;-><init>(Lcom/google/android/c/c$b;)V

    .line 1203
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
