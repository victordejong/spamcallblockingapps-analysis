.class final synthetic Lcom/google/android/gms/internal/ads/xv1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cn2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ii0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ii0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xv1;->a:Lcom/google/android/gms/internal/ads/ii0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xv1;->a:Lcom/google/android/gms/internal/ads/ii0;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dw1;->u(Lcom/google/android/gms/internal/ads/ii0;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    const/4 p1, 0x0

    return-object p1
.end method
