.class public final Ljv;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Landroidx/media2/common/VideoSize;


# direct methods
.method public constructor <init>(Landroidx/media2/common/VideoSize;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljv;->a:Landroidx/media2/common/VideoSize;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    instance-of v1, p1, Ljv;

    if-eqz v1, :cond_2

    check-cast p1, Ljv;

    iget-object v0, p0, Ljv;->a:Landroidx/media2/common/VideoSize;

    iget-object p1, p1, Ljv;->a:Landroidx/media2/common/VideoSize;

    invoke-virtual {v0, p1}, Landroidx/media2/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ljv;->a:Landroidx/media2/common/VideoSize;

    invoke-virtual {v0}, Landroidx/media2/common/VideoSize;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljv;->a:Landroidx/media2/common/VideoSize;

    invoke-virtual {v0}, Landroidx/media2/common/VideoSize;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
