.class public interface abstract Lcom/google/android/gms/wearable/Channel;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract addListener(Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/wearable/f$a;)Lcom/google/android/gms/common/api/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/g;",
            "Lcom/google/android/gms/wearable/f$a;",
            ")",
            "Lcom/google/android/gms/common/api/j<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end method

.method public abstract close(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/g;",
            ")",
            "Lcom/google/android/gms/common/api/j<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end method

.method public abstract close(Lcom/google/android/gms/common/api/g;I)Lcom/google/android/gms/common/api/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/g;",
            "I)",
            "Lcom/google/android/gms/common/api/j<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInputStream(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/g;",
            ")",
            "Lcom/google/android/gms/common/api/j<",
            "Lcom/google/android/gms/wearable/d;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNodeId()Ljava/lang/String;
.end method

.method public abstract getOutputStream(Lcom/google/android/gms/common/api/g;)Lcom/google/android/gms/common/api/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/g;",
            ")",
            "Lcom/google/android/gms/common/api/j<",
            "Lcom/google/android/gms/wearable/e;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract receiveFile(Lcom/google/android/gms/common/api/g;Landroid/net/Uri;Z)Lcom/google/android/gms/common/api/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/g;",
            "Landroid/net/Uri;",
            "Z)",
            "Lcom/google/android/gms/common/api/j<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeListener(Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/wearable/f$a;)Lcom/google/android/gms/common/api/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/g;",
            "Lcom/google/android/gms/wearable/f$a;",
            ")",
            "Lcom/google/android/gms/common/api/j<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end method

.method public abstract sendFile(Lcom/google/android/gms/common/api/g;Landroid/net/Uri;)Lcom/google/android/gms/common/api/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/g;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/android/gms/common/api/j<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end method

.method public abstract sendFile(Lcom/google/android/gms/common/api/g;Landroid/net/Uri;JJ)Lcom/google/android/gms/common/api/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/g;",
            "Landroid/net/Uri;",
            "JJ)",
            "Lcom/google/android/gms/common/api/j<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end method
