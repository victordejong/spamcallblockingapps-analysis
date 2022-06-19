.class public final Lcom/google/android/gms/internal/ads/zzflh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzfjx;->zza:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    :cond_0
    return-void
.end method
