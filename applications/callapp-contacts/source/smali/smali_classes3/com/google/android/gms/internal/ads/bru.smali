.class final synthetic Lcom/google/android/gms/internal/ads/bru;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/css;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bru;->a:Lcom/google/android/gms/internal/ads/zc;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bru;->a:Lcom/google/android/gms/internal/ads/zc;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/brs;->a(Lcom/google/android/gms/internal/ads/zc;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
