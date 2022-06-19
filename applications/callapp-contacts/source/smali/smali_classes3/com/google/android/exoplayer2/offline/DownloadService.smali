.class public abstract Lcom/google/android/exoplayer2/offline/DownloadService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/offline/DownloadService$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/offline/DownloadService;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/google/android/exoplayer2/offline/DownloadService$a;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/offline/DownloadService;->a:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 203
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadService;-><init>(IJ)V

    return-void
.end method

.method protected constructor <init>(IJ)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .line 217
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/offline/DownloadService;-><init>(IJLjava/lang/String;II)V

    return-void
.end method

.method protected constructor <init>(IJLjava/lang/String;I)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    .line 232
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/offline/DownloadService;-><init>(IJLjava/lang/String;II)V

    return-void
.end method

.method protected constructor <init>(IJLjava/lang/String;II)V
    .locals 1

    .line 267
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 269
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->b:Lcom/google/android/exoplayer2/offline/DownloadService$a;

    .line 270
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 271
    iput p1, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->d:I

    .line 272
    iput p1, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->e:I

    return-void

    .line 274
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/offline/DownloadService$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/offline/DownloadService$a;-><init>(Lcom/google/android/exoplayer2/offline/DownloadService;IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->b:Lcom/google/android/exoplayer2/offline/DownloadService$a;

    .line 277
    iput-object p4, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->c:Ljava/lang/String;

    .line 278
    iput p5, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->d:I

    .line 279
    iput p6, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->e:I

    return-void
.end method
