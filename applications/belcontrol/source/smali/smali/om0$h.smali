.class public final Lom0$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lom0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lom0$h;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/io/File;

.field public final b:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lom0$h;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lom0$h;->b:J

    return-void
.end method


# virtual methods
.method public a(Lom0$h;)I
    .locals 5

    invoke-virtual {p0}, Lom0$h;->c()J

    move-result-wide v0

    invoke-virtual {p1}, Lom0$h;->c()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Lom0$h;->c()J

    move-result-wide v0

    invoke-virtual {p1}, Lom0$h;->c()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {p0}, Lom0$h;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Lom0$h;->b()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result p1

    return p1
.end method

.method public b()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lom0$h;->a:Ljava/io/File;

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lom0$h;->b:J

    return-wide v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lom0$h;

    invoke-virtual {p0, p1}, Lom0$h;->a(Lom0$h;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lom0$h;

    if-eqz v0, :cond_0

    check-cast p1, Lom0$h;

    invoke-virtual {p0, p1}, Lom0$h;->a(Lom0$h;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lom0$h;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    const/16 v1, 0x431

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget-wide v2, p0, Lom0$h;->b:J

    const-wide/32 v4, 0x7fffffff

    rem-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method
