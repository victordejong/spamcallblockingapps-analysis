.class final synthetic Lcom/google/android/gms/internal/ads/brt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/ads/zc;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/brt;->a:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/brt;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/brt;->c:Lcom/google/android/gms/internal/ads/zc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/brt;->a:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/brt;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/brt;->c:Lcom/google/android/gms/internal/ads/zc;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/brs;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zc;)V

    return-void
.end method
