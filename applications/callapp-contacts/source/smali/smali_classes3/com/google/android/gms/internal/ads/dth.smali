.class final Lcom/google/android/gms/internal/ads/dth;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:Z

.field private final synthetic c:Lcom/google/android/gms/internal/ads/dtg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dtg;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dth;->c:Lcom/google/android/gms/internal/ads/dtg;

    iput p2, p0, Lcom/google/android/gms/internal/ads/dth;->a:I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/dth;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dth;->c:Lcom/google/android/gms/internal/ads/dtg;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dth;->a:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/dth;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dtg;->b(IZ)Lcom/google/android/gms/internal/ads/beb$a;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dth;->c:Lcom/google/android/gms/internal/ads/dtg;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dtg;->a(Lcom/google/android/gms/internal/ads/dtg;Lcom/google/android/gms/internal/ads/beb$a;)Lcom/google/android/gms/internal/ads/beb$a;

    .line 4
    iget v1, p0, Lcom/google/android/gms/internal/ads/dth;->a:I

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dtg;->a(ILcom/google/android/gms/internal/ads/beb$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dth;->c:Lcom/google/android/gms/internal/ads/dtg;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dth;->a:I

    add-int/lit8 v1, v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/dth;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dtg;->a(IZ)V

    :cond_0
    return-void
.end method
