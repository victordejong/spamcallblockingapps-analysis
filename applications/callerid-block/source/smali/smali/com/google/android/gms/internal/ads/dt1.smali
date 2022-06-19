.class final synthetic Lcom/google/android/gms/internal/ads/dt1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/a;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/n80;

.field private final b:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/n80;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dt1;->a:Lcom/google/android/gms/internal/ads/n80;

    iput p2, p0, Lcom/google/android/gms/internal/ads/dt1;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/g;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dt1;->a:Lcom/google/android/gms/internal/ads/n80;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dt1;->b:I

    sget v2, Lcom/google/android/gms/internal/ads/et1;->f:I

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/g;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/g;->k()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/dv1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lc2;->m()Lcom/google/android/gms/internal/ads/oc2;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/se0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/db2;->A()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/dv1;->a([B)Lcom/google/android/gms/internal/ads/bv1;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/bv1;->c(I)Lcom/google/android/gms/internal/ads/bv1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bv1;->a()V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1
.end method
