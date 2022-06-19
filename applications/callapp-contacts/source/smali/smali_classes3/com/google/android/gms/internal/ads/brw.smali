.class final synthetic Lcom/google/android/gms/internal/ads/brw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/css;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/brs;

.field private final b:Lcom/google/android/gms/internal/ads/zc;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/brs;Lcom/google/android/gms/internal/ads/zc;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/brw;->a:Lcom/google/android/gms/internal/ads/brs;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/brw;->b:Lcom/google/android/gms/internal/ads/zc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/brw;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/brw;->a:Lcom/google/android/gms/internal/ads/brs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/brw;->b:Lcom/google/android/gms/internal/ads/zc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/brw;->c:Ljava/lang/String;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 1074
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/brs;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gms/internal/ads/zc;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
