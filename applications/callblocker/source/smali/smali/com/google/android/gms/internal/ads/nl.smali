.class final Lcom/google/android/gms/internal/ads/nl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/nj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/nj;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nl;->a:Lcom/google/android/gms/internal/ads/nj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nl;->a:Lcom/google/android/gms/internal/ads/nj;

    const-string/jumbo v1, "User canceled the download."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/nt;->a(Ljava/lang/String;)V

    .line 3
    return-void
.end method
