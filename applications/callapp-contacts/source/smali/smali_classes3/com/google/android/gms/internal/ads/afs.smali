.class public final Lcom/google/android/gms/internal/ads/afs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/afp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/afp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/afs;->a:Lcom/google/android/gms/internal/ads/afp;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/afp;)Landroid/content/Context;
    .locals 0

    .line 1006
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/afp;->b:Landroid/content/Context;

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dso;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/afs;->a:Lcom/google/android/gms/internal/ads/afp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/afs;->a(Lcom/google/android/gms/internal/ads/afp;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
