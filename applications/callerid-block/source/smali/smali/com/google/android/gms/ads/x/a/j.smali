.class final synthetic Lcom/google/android/gms/ads/x/a/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/uy1;


# instance fields
.field private final a:Lcom/google/android/gms/ads/x/a/t;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/x/a/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/x/a/j;->a:Lcom/google/android/gms/ads/x/a/t;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/x/a/j;->a:Lcom/google/android/gms/ads/x/a/t;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/x/a/t;->D6(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    return-object p1
.end method
