.class final Lcom/google/android/gms/internal/ads/nm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/nj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/nj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nm;->c:Lcom/google/android/gms/internal/ads/nj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/nm;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/nm;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nm;->c:Lcom/google/android/gms/internal/ads/nj;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/nj;->a(Lcom/google/android/gms/internal/ads/nj;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nm;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/nm;->b:Ljava/lang/String;

    .line 5
    new-instance v3, Landroid/app/DownloadManager$Request;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 6
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    .line 8
    invoke-virtual {v3}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 9
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 12
    invoke-virtual {v0, v3}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :goto_0
    return-void

    .line 15
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nm;->c:Lcom/google/android/gms/internal/ads/nj;

    const-string/jumbo v1, "Could not store picture."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/nt;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
