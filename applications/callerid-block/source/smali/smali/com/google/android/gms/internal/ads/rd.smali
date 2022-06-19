.class final synthetic Lcom/google/android/gms/internal/ads/rd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/fw1;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/internal/ads/h9;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rd;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rd;->b:Lcom/google/android/gms/internal/ads/h9;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rd;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rd;->b:Lcom/google/android/gms/internal/ads/h9;

    check-cast p1, Lcom/google/android/gms/internal/ads/wc;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/wc;->l0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/h9;)V

    return-object p1
.end method
