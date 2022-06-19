.class public final Landroidx/media2/session/ThumbRating;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/common/Rating;


# instance fields
.field a:Z

.field b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Landroidx/media2/session/ThumbRating;->a:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean p1, p0, Landroidx/media2/session/ThumbRating;->b:Z

    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Landroidx/media2/session/ThumbRating;->a:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Landroidx/media2/session/ThumbRating;->a:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 66
    instance-of v0, p1, Landroidx/media2/session/ThumbRating;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 69
    :cond_0
    check-cast p1, Landroidx/media2/session/ThumbRating;

    .line 70
    iget-boolean v0, p0, Landroidx/media2/session/ThumbRating;->b:Z

    iget-boolean v2, p1, Landroidx/media2/session/ThumbRating;->b:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Landroidx/media2/session/ThumbRating;->a:Z

    iget-boolean p1, p1, Landroidx/media2/session/ThumbRating;->a:Z

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 61
    iget-boolean v1, p0, Landroidx/media2/session/ThumbRating;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroidx/media2/session/ThumbRating;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/core/e/a;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ThumbRating: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/media2/session/ThumbRating;->a:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isThumbUp="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroidx/media2/session/ThumbRating;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "unrated"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
