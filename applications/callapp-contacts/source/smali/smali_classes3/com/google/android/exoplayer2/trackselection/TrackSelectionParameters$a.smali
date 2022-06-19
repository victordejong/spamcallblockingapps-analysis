.class public Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field c:Lcom/google/common/collect/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/v<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field e:Lcom/google/common/collect/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/v<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field f:I

.field g:Z

.field h:I


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {}, Lcom/google/common/collect/v;->g()Lcom/google/common/collect/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$a;->c:Lcom/google/common/collect/v;

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$a;->d:I

    .line 68
    invoke-static {}, Lcom/google/common/collect/v;->g()Lcom/google/common/collect/v;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$a;->e:Lcom/google/common/collect/v;

    .line 69
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$a;->f:I

    .line 70
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$a;->g:Z

    .line 71
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$a;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$a;-><init>()V

    .line 57
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$a;->a(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$a;

    return-void
.end method

.method constructor <init>(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iget-object v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredAudioLanguages:Lcom/google/common/collect/v;

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$a;->c:Lcom/google/common/collect/v;

    .line 80
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredAudioRoleFlags:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$a;->d:I

    .line 81
    iget-object v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredTextLanguages:Lcom/google/common/collect/v;

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$a;->e:Lcom/google/common/collect/v;

    .line 82
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredTextRoleFlags:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$a;->f:I

    .line 83
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->selectUndeterminedTextLanguage:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$a;->g:Z

    .line 84
    iget p1, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->disabledTextTrackSelectionFlags:I

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$a;->h:I

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$a;
    .locals 2

    .line 139
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 1229
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "captioning"

    .line 1235
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    if-eqz p1, :cond_2

    .line 1236
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x440

    .line 1239
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$a;->f:I

    .line 1240
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1242
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/v;->a(Ljava/lang/Object;)Lcom/google/common/collect/v;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$a;->e:Lcom/google/common/collect/v;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public b()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .locals 8

    .line 215
    new-instance v7, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$a;->c:Lcom/google/common/collect/v;

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$a;->d:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$a;->e:Lcom/google/common/collect/v;

    iget v4, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$a;->f:I

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$a;->g:Z

    iget v6, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$a;->h:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;-><init>(Lcom/google/common/collect/v;ILcom/google/common/collect/v;IZI)V

    return-object v7
.end method
