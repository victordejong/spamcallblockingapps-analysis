.class final Lcom/google/android/exoplayer2/upstream/cache/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/cache/h$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field final c:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/google/android/exoplayer2/upstream/cache/o;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/upstream/cache/h$a;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/google/android/exoplayer2/upstream/cache/l;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 55
    sget-object v0, Lcom/google/android/exoplayer2/upstream/cache/l;->a:Lcom/google/android/exoplayer2/upstream/cache/l;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/cache/h;-><init>(ILjava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/l;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/l;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/cache/h;->a:I

    .line 60
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/h;->b:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/h;->e:Lcom/google/android/exoplayer2/upstream/cache/l;

    .line 62
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/h;->c:Ljava/util/TreeSet;

    .line 63
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/h;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/upstream/cache/o;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/h;->c:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(JJ)Z
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 95
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 96
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/h$a;

    .line 1300
    iget-wide v3, v2, Lcom/google/android/exoplayer2/upstream/cache/h$a;->b:J

    const-wide/16 v5, -0x1

    const/4 v7, 0x1

    cmp-long v8, v3, v5

    if-nez v8, :cond_0

    .line 1301
    iget-wide v2, v2, Lcom/google/android/exoplayer2/upstream/cache/h$a;->a:J

    cmp-long v4, p1, v2

    if-ltz v4, :cond_1

    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    :cond_0
    cmp-long v3, p3, v5

    if-eqz v3, :cond_1

    .line 1305
    iget-wide v3, v2, Lcom/google/android/exoplayer2/upstream/cache/h$a;->a:J

    cmp-long v5, v3, p1

    if-gtz v5, :cond_1

    add-long v3, p1, p3

    iget-wide v5, v2, Lcom/google/android/exoplayer2/upstream/cache/h$a;->a:J

    iget-wide v8, v2, Lcom/google/android/exoplayer2/upstream/cache/h$a;->b:J

    add-long/2addr v5, v8

    cmp-long v2, v3, v5

    if-gtz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_2

    return v7

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public final a(Lcom/google/android/exoplayer2/upstream/cache/g;)Z
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/h;->c:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/cache/g;->e:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 249
    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/cache/g;->e:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 269
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 272
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/upstream/cache/h;

    .line 273
    iget v2, p0, Lcom/google/android/exoplayer2/upstream/cache/h;->a:I

    iget v3, p1, Lcom/google/android/exoplayer2/upstream/cache/h;->a:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/h;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/upstream/cache/h;->b:Ljava/lang/String;

    .line 274
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/h;->c:Ljava/util/TreeSet;

    iget-object v3, p1, Lcom/google/android/exoplayer2/upstream/cache/h;->c:Ljava/util/TreeSet;

    .line 275
    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/h;->e:Lcom/google/android/exoplayer2/upstream/cache/l;

    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/cache/h;->e:Lcom/google/android/exoplayer2/upstream/cache/l;

    .line 276
    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/upstream/cache/l;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 258
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/cache/h;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 259
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/h;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 260
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/h;->e:Lcom/google/android/exoplayer2/upstream/cache/l;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/cache/l;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
