.class final Lcom/google/android/gms/internal/ads/bns;
.super Lcom/google/android/gms/internal/ads/ma;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/bmx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/bmx",
            "<",
            "Lcom/google/android/gms/internal/ads/mn;",
            "Lcom/google/android/gms/internal/ads/bof;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic b:Lcom/google/android/gms/internal/ads/bnr;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/bnr;Lcom/google/android/gms/internal/ads/bmx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/bmx",
            "<",
            "Lcom/google/android/gms/internal/ads/mn;",
            "Lcom/google/android/gms/internal/ads/bof;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bns;->b:Lcom/google/android/gms/internal/ads/bnr;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ma;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bns;->a:Lcom/google/android/gms/internal/ads/bmx;

    .line 3
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/bnr;Lcom/google/android/gms/internal/ads/bmx;Lcom/google/android/gms/internal/ads/bnt;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/bns;-><init>(Lcom/google/android/gms/internal/ads/bnr;Lcom/google/android/gms/internal/ads/bmx;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/dynamic/a;)V
    .locals 2

    .prologue
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bns;->b:Lcom/google/android/gms/internal/ads/bnr;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/bnr;->a(Lcom/google/android/gms/internal/ads/bnr;Landroid/view/View;)Landroid/view/View;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bns;->a:Lcom/google/android/gms/internal/ads/bmx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bmx;->c:Lcom/google/android/gms/internal/ads/aqz;

    check-cast v0, Lcom/google/android/gms/internal/ads/bof;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bof;->e()V

    .line 6
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bns;->a:Lcom/google/android/gms/internal/ads/bmx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bmx;->c:Lcom/google/android/gms/internal/ads/aqz;

    check-cast v0, Lcom/google/android/gms/internal/ads/bof;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/bof;->a(ILjava/lang/String;)V

    .line 8
    return-void
.end method
