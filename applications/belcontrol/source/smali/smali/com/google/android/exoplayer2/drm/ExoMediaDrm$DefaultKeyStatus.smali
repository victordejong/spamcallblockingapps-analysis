.class public final Lcom/google/android/exoplayer2/drm/ExoMediaDrm$DefaultKeyStatus;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/ExoMediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultKeyStatus"
.end annotation


# instance fields
.field private final keyId:[B

.field private final statusCode:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$DefaultKeyStatus;->statusCode:I

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$DefaultKeyStatus;->keyId:[B

    return-void
.end method


# virtual methods
.method public getKeyId()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$DefaultKeyStatus;->keyId:[B

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$DefaultKeyStatus;->statusCode:I

    return v0
.end method
