.class public interface abstract Landroidx/media2/exoplayer/external/upstream/HttpDataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;,
        Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidContentTypeException;,
        Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;,
        Landroidx/media2/exoplayer/external/upstream/HttpDataSource$a;,
        Landroidx/media2/exoplayer/external/upstream/HttpDataSource$b;
    }
.end annotation


# static fields
.field public static final a:Landroidx/media2/exoplayer/external/util/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/util/r<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 226
    sget-object v0, Landroidx/media2/exoplayer/external/upstream/r;->a:Landroidx/media2/exoplayer/external/util/r;

    sput-object v0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource;->a:Landroidx/media2/exoplayer/external/util/r;

    return-void
.end method
