.class public final Lcom/google/android/exoplayer2/drm/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/h;


# static fields
.field public static final a:Z


# instance fields
.field public final b:Ljava/util/UUID;

.field public final c:[B

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    sget-object v0, Lcom/google/android/exoplayer2/util/af;->c:Ljava/lang/String;

    const-string v1, "Amazon"

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/exoplayer2/util/af;->d:Ljava/lang/String;

    const-string v1, "AFTM"

    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/exoplayer2/util/af;->d:Ljava/lang/String;

    const-string v1, "AFTB"

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/android/exoplayer2/drm/j;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;[BZ)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/j;->b:Ljava/util/UUID;

    .line 56
    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/j;->c:[B

    .line 57
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/drm/j;->d:Z

    return-void
.end method
