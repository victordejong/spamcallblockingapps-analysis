.class public interface abstract Landroidx/media2/exoplayer/external/drm/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/media2/exoplayer/external/drm/m;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final e:Landroidx/media2/exoplayer/external/drm/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/k<",
            "Landroidx/media2/exoplayer/external/drm/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Landroidx/media2/exoplayer/external/drm/k$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/drm/k$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/drm/k;->e:Landroidx/media2/exoplayer/external/drm/k;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/os/Looper;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ")",
            "Landroidx/media2/exoplayer/external/drm/DrmSession<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract a(Landroidx/media2/exoplayer/external/drm/DrmInitData;)Z
.end method

.method public abstract b(Landroidx/media2/exoplayer/external/drm/DrmInitData;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media2/exoplayer/external/drm/m;",
            ">;"
        }
    .end annotation
.end method
