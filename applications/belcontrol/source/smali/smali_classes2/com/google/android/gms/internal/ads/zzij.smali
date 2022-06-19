.class public interface abstract Lcom/google/android/gms/internal/ads/zzij;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final zzajc:Ljava/nio/ByteBuffer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzij;->zzajc:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public abstract flush()V
.end method

.method public abstract isActive()Z
.end method

.method public abstract reset()V
.end method

.method public abstract zzb(III)Z
.end method

.method public abstract zzfe()Z
.end method

.method public abstract zzfj()I
.end method

.method public abstract zzfk()I
.end method

.method public abstract zzfl()V
.end method

.method public abstract zzfm()Ljava/nio/ByteBuffer;
.end method

.method public abstract zzn(Ljava/nio/ByteBuffer;)V
.end method
