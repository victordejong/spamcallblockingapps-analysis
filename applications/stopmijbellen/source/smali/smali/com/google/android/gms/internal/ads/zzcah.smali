.class final Lcom/google/android/gms/internal/ads/zzcah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcai;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcai;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcah;->zza:Lcom/google/android/gms/internal/ads/zzcai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcah;->zza:Lcom/google/android/gms/internal/ads/zzcai;

    const-string p2, "Operation denied by user."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcaq;->zzg(Ljava/lang/String;)V

    return-void
.end method
