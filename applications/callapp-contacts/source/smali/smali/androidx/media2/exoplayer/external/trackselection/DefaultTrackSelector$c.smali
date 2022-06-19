.class public final Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Z

.field private final b:Z

.field private final c:Z

.field private final d:Z

.field private final e:I

.field private final f:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;ILjava/lang/String;)V
    .locals 4

    .line 2706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2708
    invoke-static {p3, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->b:Z

    .line 2709
    iget p3, p1, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    iget v1, p2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->disabledTextTrackSelectionFlags:I

    not-int v1, v1

    and-int/2addr p3, v1

    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2711
    :goto_0
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->c:Z

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    .line 2713
    :goto_1
    iget-object v3, p2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    iget-boolean p2, p2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->selectUndeterminedTextLanguage:Z

    .line 2714
    invoke-static {p1, v3, p2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;Z)I

    move-result p2

    iput p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->e:I

    if-lez p2, :cond_2

    if-eqz p3, :cond_3

    :cond_2
    if-nez p2, :cond_4

    if-eqz p3, :cond_4

    :cond_3
    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 2719
    :goto_2
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->d:Z

    .line 2722
    invoke-static {p4}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    .line 2724
    :goto_3
    invoke-static {p1, p4, v3}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;Z)I

    move-result p1

    iput p1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->f:I

    if-gtz p2, :cond_6

    if-nez v1, :cond_6

    if-eqz p3, :cond_7

    if-lez p1, :cond_7

    :cond_6
    const/4 v0, 0x1

    .line 2725
    :cond_7
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;)I
    .locals 4

    .line 2738
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->b:Z

    iget-boolean v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->b:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v3

    .line 2741
    :cond_1
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->e:I

    iget v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->e:I

    if-eq v0, v1, :cond_2

    .line 2742
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(II)I

    move-result p1

    return p1

    .line 2744
    :cond_2
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->c:Z

    iget-boolean v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->c:Z

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_3

    return v2

    :cond_3
    return v3

    .line 2747
    :cond_4
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->d:Z

    iget-boolean v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->d:Z

    if-eq v0, v1, :cond_6

    if-eqz v0, :cond_5

    return v2

    :cond_5
    return v3

    .line 2750
    :cond_6
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->f:I

    iget p1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->f:I

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(II)I

    move-result p1

    return p1
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2688
    check-cast p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->a(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;)I

    move-result p1

    return p1
.end method
