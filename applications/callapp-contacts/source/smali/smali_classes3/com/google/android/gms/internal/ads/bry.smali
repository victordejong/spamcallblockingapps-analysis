.class final synthetic Lcom/google/android/gms/internal/ads/bry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/css;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/brs;

.field private final b:Lcom/google/android/gms/internal/ads/brz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/brs;Lcom/google/android/gms/internal/ads/brz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bry;->a:Lcom/google/android/gms/internal/ads/brs;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bry;->b:Lcom/google/android/gms/internal/ads/brz;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bry;->a:Lcom/google/android/gms/internal/ads/brs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bry;->b:Lcom/google/android/gms/internal/ads/brz;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/brs;->a(Lcom/google/android/gms/internal/ads/brz;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
