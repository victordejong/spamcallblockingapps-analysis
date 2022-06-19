.class final synthetic Lcom/google/android/gms/internal/ads/boq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bon;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/boq;->a:Lcom/google/android/gms/internal/ads/bon;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/boq;->a:Lcom/google/android/gms/internal/ads/bon;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bok;->b()V

    return-void
.end method
