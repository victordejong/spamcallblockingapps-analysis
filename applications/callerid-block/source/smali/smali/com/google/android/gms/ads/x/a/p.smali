.class final synthetic Lcom/google/android/gms/ads/x/a/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/ads/x/a/t;

.field private final c:[Lcom/google/android/gms/internal/ads/mn0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/x/a/t;[Lcom/google/android/gms/internal/ads/mn0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/x/a/p;->b:Lcom/google/android/gms/ads/x/a/t;

    iput-object p2, p0, Lcom/google/android/gms/ads/x/a/p;->c:[Lcom/google/android/gms/internal/ads/mn0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/x/a/p;->b:Lcom/google/android/gms/ads/x/a/t;

    iget-object v1, p0, Lcom/google/android/gms/ads/x/a/p;->c:[Lcom/google/android/gms/internal/ads/mn0;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/x/a/t;->B6([Lcom/google/android/gms/internal/ads/mn0;)V

    return-void
.end method
