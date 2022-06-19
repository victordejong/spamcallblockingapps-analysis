.class final synthetic Lcom/google/android/gms/internal/ads/bip;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bij;

.field private final b:Lcom/google/android/gms/internal/ads/chs;

.field private final c:Lcom/google/android/gms/internal/ads/gd;

.field private final d:Ljava/util/List;

.field private final e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bij;Lcom/google/android/gms/internal/ads/chs;Lcom/google/android/gms/internal/ads/gd;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bip;->a:Lcom/google/android/gms/internal/ads/bij;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bip;->b:Lcom/google/android/gms/internal/ads/chs;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bip;->c:Lcom/google/android/gms/internal/ads/gd;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bip;->d:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bip;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bip;->a:Lcom/google/android/gms/internal/ads/bij;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bip;->b:Lcom/google/android/gms/internal/ads/chs;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bip;->c:Lcom/google/android/gms/internal/ads/gd;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bip;->d:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bip;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/bij;->a(Lcom/google/android/gms/internal/ads/chs;Lcom/google/android/gms/internal/ads/gd;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
