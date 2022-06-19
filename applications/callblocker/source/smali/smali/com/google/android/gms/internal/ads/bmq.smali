.class final synthetic Lcom/google/android/gms/internal/ads/bmq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ckg;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bmr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bmr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bmq;->a:Lcom/google/android/gms/internal/ads/bmr;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bmq;->a:Lcom/google/android/gms/internal/ads/bmr;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bmr;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
