.class final Lcom/google/android/gms/internal/ads/ex;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/js0;


# instance fields
.field private final a:Ljava/lang/Long;

.field private final b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/internal/ads/fx;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/fx;Ljava/lang/Long;Ljava/lang/String;Lcom/google/android/gms/internal/ads/gw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ex;->c:Lcom/google/android/gms/internal/ads/fx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ex;->a:Ljava/lang/Long;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ex;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/internal/ads/xs0;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ex;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ex;->c:Lcom/google/android/gms/internal/ads/fx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/fx;->a(Lcom/google/android/gms/internal/ads/fx;)Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ex;->c:Lcom/google/android/gms/internal/ads/fx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/fx;->c(Lcom/google/android/gms/internal/ads/fx;)Lcom/google/android/gms/internal/ads/ms0;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ex;->c:Lcom/google/android/gms/internal/ads/fx;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/fx;->g:Lcom/google/android/gms/internal/ads/sx;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/ex;->b:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/ys0;->a(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/ms0;Lcom/google/android/gms/internal/ads/fv;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/xs0;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/ts0;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ex;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ex;->c:Lcom/google/android/gms/internal/ads/fx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/fx;->a(Lcom/google/android/gms/internal/ads/fx;)Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ex;->c:Lcom/google/android/gms/internal/ads/fx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/fx;->c(Lcom/google/android/gms/internal/ads/fx;)Lcom/google/android/gms/internal/ads/ms0;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ex;->c:Lcom/google/android/gms/internal/ads/fx;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/fx;->g:Lcom/google/android/gms/internal/ads/sx;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/ex;->b:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/us0;->a(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/ms0;Lcom/google/android/gms/internal/ads/fv;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ts0;

    move-result-object v0

    return-object v0
.end method
