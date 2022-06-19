.class public final Lcom/google/android/gms/ads/mediation/f$a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/mediation/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5
    const-string/jumbo v1, "capabilities"

    iget v2, p0, Lcom/google/android/gms/ads/mediation/f$a;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    return-object v0
.end method

.method public final a(I)Lcom/google/android/gms/ads/mediation/f$a;
    .locals 1

    .prologue
    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/ads/mediation/f$a;->a:I

    .line 3
    return-object p0
.end method
