.class final synthetic Lcom/google/android/gms/internal/ads/apw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/atg;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/apw;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/apw;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/apw;->a:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/apw;->b:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/ads/apu;

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/apu;->a(ILjava/lang/String;)V

    .line 3
    return-void
.end method
