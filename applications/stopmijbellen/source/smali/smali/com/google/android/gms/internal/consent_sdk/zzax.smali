.class final Lcom/google/android/gms/internal/consent_sdk/zzax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls4/g;
.implements Ls4/f;


# instance fields
.field private final zza:Ls4/g;

.field private final zzb:Ls4/f;


# direct methods
.method public synthetic constructor <init>(Ls4/g;Ls4/f;Lcom/google/android/gms/internal/consent_sdk/zzav;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzax;->zza:Ls4/g;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzax;->zzb:Ls4/f;

    return-void
.end method


# virtual methods
.method public final onConsentFormLoadFailure(Ls4/e;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzax;->zzb:Ls4/f;

    .line 1
    invoke-interface {v0, p1}, Ls4/f;->onConsentFormLoadFailure(Ls4/e;)V

    return-void
.end method

.method public final onConsentFormLoadSuccess(Ls4/b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzax;->zza:Ls4/g;

    .line 1
    invoke-interface {v0, p1}, Ls4/g;->onConsentFormLoadSuccess(Ls4/b;)V

    return-void
.end method
