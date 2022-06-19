.class final synthetic Lcom/google/android/gms/ads/internal/util/q;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final d:Lcom/google/android/gms/ads/internal/util/w;

.field private final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final f:I

.field private final g:I

.field private final h:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/w;Ljava/util/concurrent/atomic/AtomicInteger;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/q;->d:Lcom/google/android/gms/ads/internal/util/w;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/q;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p3, p0, Lcom/google/android/gms/ads/internal/util/q;->f:I

    iput p4, p0, Lcom/google/android/gms/ads/internal/util/q;->g:I

    iput p5, p0, Lcom/google/android/gms/ads/internal/util/q;->h:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/q;->d:Lcom/google/android/gms/ads/internal/util/w;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/q;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v2, p0, Lcom/google/android/gms/ads/internal/util/q;->f:I

    iget v3, p0, Lcom/google/android/gms/ads/internal/util/q;->g:I

    iget v4, p0, Lcom/google/android/gms/ads/internal/util/q;->h:I

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/util/w;->p(Ljava/util/concurrent/atomic/AtomicInteger;IIILandroid/content/DialogInterface;I)V

    return-void
.end method
