.class final Lcom/google/android/gms/internal/ads/nf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/nd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/nd;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nf;->a:Lcom/google/android/gms/internal/ads/nd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nf;->a:Lcom/google/android/gms/internal/ads/nd;

    const-string/jumbo v1, "Operation denied by user."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/nt;->a(Ljava/lang/String;)V

    .line 3
    return-void
.end method
