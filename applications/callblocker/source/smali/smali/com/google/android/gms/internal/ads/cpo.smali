.class public final Lcom/google/android/gms/internal/ads/cpo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.1.0"


# direct methods
.method static a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1
    if-nez p0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "at index "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_0
    return-object p0
.end method
