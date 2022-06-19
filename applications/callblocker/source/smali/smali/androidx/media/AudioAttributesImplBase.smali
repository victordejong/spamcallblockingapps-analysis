.class public Landroidx/media/AudioAttributesImplBase;
.super Ljava/lang/Object;
.source "AudioAttributesImplBase.java"

# interfaces
.implements Landroidx/media/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media/AudioAttributesImplBase$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->a:I

    .line 60
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->b:I

    .line 64
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->c:I

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->d:I

    .line 75
    return-void
.end method

.method constructor <init>(IIII)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->a:I

    .line 60
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->b:I

    .line 64
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->c:I

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->d:I

    .line 78
    iput p1, p0, Landroidx/media/AudioAttributesImplBase;->b:I

    .line 79
    iput p2, p0, Landroidx/media/AudioAttributesImplBase;->c:I

    .line 80
    iput p3, p0, Landroidx/media/AudioAttributesImplBase;->a:I

    .line 81
    iput p4, p0, Landroidx/media/AudioAttributesImplBase;->d:I

    .line 82
    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .prologue
    .line 96
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 97
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->d:I

    .line 99
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->c:I

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->a:I

    invoke-static {v0, v1, v2}, Landroidx/media/AudioAttributesCompat;->a(ZII)I

    move-result v0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->a:I

    return v0
.end method

.method public d()I
    .locals 3

    .prologue
    .line 119
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->c:I

    .line 120
    invoke-virtual {p0}, Landroidx/media/AudioAttributesImplBase;->a()I

    move-result v1

    .line 121
    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 122
    or-int/lit8 v0, v0, 0x4

    .line 126
    :cond_0
    :goto_0
    and-int/lit16 v0, v0, 0x111

    return v0

    .line 123
    :cond_1
    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 124
    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 139
    instance-of v1, p1, Landroidx/media/AudioAttributesImplBase;

    if-nez v1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    check-cast p1, Landroidx/media/AudioAttributesImplBase;

    .line 143
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->b:I

    invoke-virtual {p1}, Landroidx/media/AudioAttributesImplBase;->b()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->c:I

    .line 144
    invoke-virtual {p1}, Landroidx/media/AudioAttributesImplBase;->d()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->a:I

    .line 145
    invoke-virtual {p1}, Landroidx/media/AudioAttributesImplBase;->c()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->d:I

    iget v2, p1, Landroidx/media/AudioAttributesImplBase;->d:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 134
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AudioAttributesCompat:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->d:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 153
    const-string/jumbo v1, " stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    const-string/jumbo v1, " derived"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_0
    const-string/jumbo v1, " usage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->a:I

    .line 157
    invoke-static {v2}, Landroidx/media/AudioAttributesCompat;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " content="

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->b:I

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " flags=0x"

    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/media/AudioAttributesImplBase;->c:I

    .line 161
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
