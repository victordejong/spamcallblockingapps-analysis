.class public interface abstract Lcom/google/android/exoplayer2/drm/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lcom/google/android/exoplayer2/drm/d;

.field public static final f:Lcom/google/android/exoplayer2/drm/d;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/google/android/exoplayer2/drm/d$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/d$1;-><init>()V

    .line 57
    sput-object v0, Lcom/google/android/exoplayer2/drm/d;->e:Lcom/google/android/exoplayer2/drm/d;

    sput-object v0, Lcom/google/android/exoplayer2/drm/d;->f:Lcom/google/android/exoplayer2/drm/d;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/c$a;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/drm/DrmSession;
.end method

.method public abstract a(Lcom/google/android/exoplayer2/Format;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Format;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/drm/h;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a()V
.end method

.method public abstract b()V
.end method
