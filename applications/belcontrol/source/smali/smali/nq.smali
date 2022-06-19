.class public interface abstract Lnq;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnq$a;
    }
.end annotation


# static fields
.field public static final a:Lnq;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkq;

    invoke-direct {v0}, Lkq;-><init>()V

    sput-object v0, Lnq;->a:Lnq;

    return-void
.end method


# virtual methods
.method public abstract a(Lak;Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;Lju;Ljava/util/Map;Lbk;)Lnq$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lak;",
            "Landroid/net/Uri;",
            "Landroidx/media2/exoplayer/external/Format;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "Lju;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lbk;",
            ")",
            "Lnq$a;"
        }
    .end annotation
.end method
