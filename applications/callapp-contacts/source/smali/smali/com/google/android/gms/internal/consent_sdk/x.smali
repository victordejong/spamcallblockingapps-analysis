.class public final synthetic Lcom/google/android/gms/internal/consent_sdk/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/consent_sdk/u;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/consent_sdk/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/x;->a:Lcom/google/android/gms/internal/consent_sdk/u;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/x;->a:Lcom/google/android/gms/internal/consent_sdk/u;

    .line 1085
    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzk;

    const/4 v2, 0x4

    const-string v3, "Web view timed out."

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/consent_sdk/zzk;-><init>(ILjava/lang/String;)V

    .line 1086
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/consent_sdk/u;->a(Lcom/google/android/gms/internal/consent_sdk/zzk;)V

    return-void
.end method
