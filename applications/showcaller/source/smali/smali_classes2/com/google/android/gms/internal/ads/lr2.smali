.class final synthetic Lcom/google/android/gms/internal/ads/lr2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/tasks/a;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/u04;

.field private final b:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/u04;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lr2;->a:Lcom/google/android/gms/internal/ads/u04;

    iput p2, p0, Lcom/google/android/gms/internal/ads/lr2;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/g;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lr2;->a:Lcom/google/android/gms/internal/ads/u04;

    iget v1, p0, Lcom/google/android/gms/internal/ads/lr2;->b:I

    sget v2, Lcom/google/android/gms/internal/ads/mr2;->b:I

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/g;->q()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/g;->m()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/jt2;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/y04;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tc3;->K()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/jt2;->a([B)Lcom/google/android/gms/internal/ads/ht2;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/ht2;->c(I)Lcom/google/android/gms/internal/ads/ht2;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ht2;->a()V

    .line 7
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 8
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1
.end method
