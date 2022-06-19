.class public final Landroidx/media2/exoplayer/external/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "a"
.end annotation


# instance fields
.field public final a:Landroidx/media2/exoplayer/external/ae$b;

.field b:Z


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/ae$b;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Landroidx/media2/exoplayer/external/a$a;->a:Landroidx/media2/exoplayer/external/ae$b;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/a$a;->a:Landroidx/media2/exoplayer/external/ae$b;

    check-cast p1, Landroidx/media2/exoplayer/external/a$a;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/a$a;->a:Landroidx/media2/exoplayer/external/ae$b;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 194
    iget-object v0, p0, Landroidx/media2/exoplayer/external/a$a;->a:Landroidx/media2/exoplayer/external/ae$b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
