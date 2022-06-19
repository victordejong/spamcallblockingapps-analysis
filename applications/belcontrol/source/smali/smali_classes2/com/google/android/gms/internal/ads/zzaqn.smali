.class public final Lcom/google/android/gms/internal/ads/zzaqn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic zzdqa:Lcom/google/android/gms/internal/ads/zzaql;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaql;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzdqa:Lcom/google/android/gms/internal/ads/zzaql;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqn;->zzdqa:Lcom/google/android/gms/internal/ads/zzaql;

    const-string p2, "User canceled the download."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaqq;->zzds(Ljava/lang/String;)V

    return-void
.end method
