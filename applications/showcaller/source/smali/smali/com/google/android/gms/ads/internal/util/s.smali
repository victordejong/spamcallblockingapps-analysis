.class final synthetic Lcom/google/android/gms/ads/internal/util/s;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final d:Lcom/google/android/gms/ads/internal/util/w;

.field private final e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/w;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/s;->d:Lcom/google/android/gms/ads/internal/util/w;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/s;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/s;->d:Lcom/google/android/gms/ads/internal/util/w;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/s;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/ads/internal/util/w;->o(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
