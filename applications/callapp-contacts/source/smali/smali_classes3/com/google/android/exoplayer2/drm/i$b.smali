.class public final Lcom/google/android/exoplayer2/drm/i$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field final a:[B

.field final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 1

    const/high16 v0, -0x80000000

    .line 270
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/drm/i$b;-><init>([BLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;I)V
    .locals 0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/i$b;->a:[B

    .line 282
    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/i$b;->b:Ljava/lang/String;

    .line 283
    iput p3, p0, Lcom/google/android/exoplayer2/drm/i$b;->c:I

    return-void
.end method
