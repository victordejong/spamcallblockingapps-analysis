.class final Lcom/google/android/gms/internal/ads/jr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ys;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/ys",
        "<",
        "Lcom/google/android/gms/internal/ads/jc;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/iq;

.field private final synthetic b:Ljava/lang/Object;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/yo;

.field private final synthetic d:Lcom/google/android/gms/internal/ads/jo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/jo;Lcom/google/android/gms/internal/ads/iq;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/yo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jr;->d:Lcom/google/android/gms/internal/ads/jo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/jr;->a:Lcom/google/android/gms/internal/ads/iq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/jr;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/jr;->c:Lcom/google/android/gms/internal/ads/yo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/jc;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jr;->d:Lcom/google/android/gms/internal/ads/jo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jr;->a:Lcom/google/android/gms/internal/ads/iq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/jr;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/jr;->c:Lcom/google/android/gms/internal/ads/yo;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/jo;->a(Lcom/google/android/gms/internal/ads/jo;Lcom/google/android/gms/internal/ads/iq;Lcom/google/android/gms/internal/ads/jc;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/yo;)V

    .line 4
    return-void
.end method
