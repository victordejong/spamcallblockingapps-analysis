.class public final Lcom/google/android/gms/internal/ads/cpl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.1.0"


# direct methods
.method public static a(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1
    const-string/jumbo v0, "initialArraySize"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/cow;->a(ILjava/lang/String;)I

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method
