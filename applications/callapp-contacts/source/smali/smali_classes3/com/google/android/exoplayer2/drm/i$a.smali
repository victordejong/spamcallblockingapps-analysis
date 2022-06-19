.class public final Lcom/google/android/exoplayer2/drm/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/i$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/drm/i;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/drm/i;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/i$a;->a:Lcom/google/android/exoplayer2/drm/i;

    return-void
.end method


# virtual methods
.method public final acquireExoMediaDrm(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/i;
    .locals 0

    .line 83
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/i$a;->a:Lcom/google/android/exoplayer2/drm/i;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/i;->c()V

    .line 84
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/i$a;->a:Lcom/google/android/exoplayer2/drm/i;

    return-object p1
.end method
