.class final synthetic Lcom/google/android/gms/internal/ads/fz0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/uo1;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/jz0;

.field private final b:Lcom/google/android/gms/internal/ads/to;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/jz0;Lcom/google/android/gms/internal/ads/to;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fz0;->a:Lcom/google/android/gms/internal/ads/jz0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fz0;->b:Lcom/google/android/gms/internal/ads/to;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/fz0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fz0;->a:Lcom/google/android/gms/internal/ads/jz0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fz0;->b:Lcom/google/android/gms/internal/ads/to;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fz0;->c:Ljava/lang/String;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/jz0;->p(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gms/internal/ads/to;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
