.class final synthetic Lcom/google/android/gms/internal/ads/sk3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/vk3;

.field private final e:Lcom/google/android/gms/internal/ads/wk3;

.field private final f:Lcom/google/android/gms/internal/ads/dk3;

.field private final g:Lcom/google/android/gms/internal/ads/jk3;

.field private final h:Ljava/io/IOException;

.field private final i:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/vk3;Lcom/google/android/gms/internal/ads/wk3;Lcom/google/android/gms/internal/ads/dk3;Lcom/google/android/gms/internal/ads/jk3;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sk3;->d:Lcom/google/android/gms/internal/ads/vk3;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/sk3;->e:Lcom/google/android/gms/internal/ads/wk3;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/sk3;->f:Lcom/google/android/gms/internal/ads/dk3;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/sk3;->g:Lcom/google/android/gms/internal/ads/jk3;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/sk3;->h:Ljava/io/IOException;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/sk3;->i:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sk3;->d:Lcom/google/android/gms/internal/ads/vk3;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sk3;->e:Lcom/google/android/gms/internal/ads/wk3;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/sk3;->f:Lcom/google/android/gms/internal/ads/dk3;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/sk3;->g:Lcom/google/android/gms/internal/ads/jk3;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/sk3;->h:Ljava/io/IOException;

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/sk3;->i:Z

    iget v2, v0, Lcom/google/android/gms/internal/ads/vk3;->a:I

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/vk3;->b:Lcom/google/android/gms/internal/ads/mk3;

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/wk3;->r(ILcom/google/android/gms/internal/ads/mk3;Lcom/google/android/gms/internal/ads/dk3;Lcom/google/android/gms/internal/ads/jk3;Ljava/io/IOException;Z)V

    return-void
.end method
