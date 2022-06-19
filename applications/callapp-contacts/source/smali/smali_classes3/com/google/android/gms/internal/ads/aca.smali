.class final synthetic Lcom/google/android/gms/internal/ads/aca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ecd;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/abw;

.field private final b:Ljava/lang/String;

.field private final c:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/abw;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aca;->a:Lcom/google/android/gms/internal/ads/abw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aca;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/aca;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/ecb;
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aca;->a:Lcom/google/android/gms/internal/ads/abw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aca;->b:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/aca;->c:Z

    .line 1245
    new-instance v9, Lcom/google/android/gms/internal/ads/ech;

    if-eqz v1, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v4, v1

    .line 1246
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/abw;->f:Lcom/google/android/gms/internal/ads/aay;

    iget v5, v1, Lcom/google/android/gms/internal/ads/aay;->d:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/abw;->f:Lcom/google/android/gms/internal/ads/aay;

    iget v6, v0, Lcom/google/android/gms/internal/ads/aay;->e:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/ech;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/eda;Lcom/google/android/gms/internal/ads/ecp;IIZLcom/google/android/gms/internal/ads/ecj;)V

    return-object v9
.end method
