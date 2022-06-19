.class final Landroidx/media2/exoplayer/external/source/af$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation


# instance fields
.field public final a:I

.field public final b:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 1139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1140
    iput p1, p0, Landroidx/media2/exoplayer/external/source/af$f;->a:I

    .line 1141
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/source/af$f;->b:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1149
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 1152
    :cond_1
    check-cast p1, Landroidx/media2/exoplayer/external/source/af$f;

    .line 1153
    iget v2, p0, Landroidx/media2/exoplayer/external/source/af$f;->a:I

    iget v3, p1, Landroidx/media2/exoplayer/external/source/af$f;->a:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/source/af$f;->b:Z

    iget-boolean p1, p1, Landroidx/media2/exoplayer/external/source/af$f;->b:Z

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1158
    iget v0, p0, Landroidx/media2/exoplayer/external/source/af$f;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/source/af$f;->b:Z

    add-int/2addr v0, v1

    return v0
.end method
