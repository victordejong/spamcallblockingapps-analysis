.class final synthetic Lcom/google/android/gms/internal/ads/rv1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cn2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/vv1;

.field private final b:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/vv1;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rv1;->a:Lcom/google/android/gms/internal/ads/vv1;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/rv1;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rv1;->a:Lcom/google/android/gms/internal/ads/vv1;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/rv1;->b:Z

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/vv1;->b(ZLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    const/4 p1, 0x0

    return-object p1
.end method
