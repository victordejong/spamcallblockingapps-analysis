.class final Landroidx/media2/exoplayer/external/source/h$a;
.super Landroidx/media2/exoplayer/external/source/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final b:I

.field private final c:I

.field private final d:[I

.field private final e:[I

.field private final f:[Landroidx/media2/exoplayer/external/al;

.field private final g:[Ljava/lang/Object;

.field private final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;Landroidx/media2/exoplayer/external/source/an;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/media2/exoplayer/external/source/h$d;",
            ">;",
            "Landroidx/media2/exoplayer/external/source/an;",
            "Z)V"
        }
    .end annotation

    .line 903
    invoke-direct {p0, p3, p2}, Landroidx/media2/exoplayer/external/source/a;-><init>(ZLandroidx/media2/exoplayer/external/source/an;)V

    .line 904
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    .line 905
    new-array p3, p2, [I

    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/h$a;->d:[I

    .line 906
    new-array p3, p2, [I

    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/h$a;->e:[I

    .line 907
    new-array p3, p2, [Landroidx/media2/exoplayer/external/al;

    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/h$a;->f:[Landroidx/media2/exoplayer/external/al;

    .line 908
    new-array p2, p2, [Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/h$a;->g:[Ljava/lang/Object;

    .line 909
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/h$a;->h:Ljava/util/HashMap;

    .line 913
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/h$d;

    .line 914
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/h$a;->f:[Landroidx/media2/exoplayer/external/al;

    iget-object v3, v1, Landroidx/media2/exoplayer/external/source/h$d;->a:Landroidx/media2/exoplayer/external/source/r;

    .line 1070
    iget-object v3, v3, Landroidx/media2/exoplayer/external/source/r;->a:Landroidx/media2/exoplayer/external/source/r$b;

    .line 914
    aput-object v3, v2, v0

    .line 915
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/h$a;->e:[I

    aput p2, v2, v0

    .line 916
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/h$a;->d:[I

    aput p3, v2, v0

    .line 917
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/h$a;->f:[Landroidx/media2/exoplayer/external/al;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/al;->b()I

    move-result v2

    add-int/2addr p2, v2

    .line 918
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/h$a;->f:[Landroidx/media2/exoplayer/external/al;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/al;->c()I

    move-result v2

    add-int/2addr p3, v2

    .line 919
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/h$a;->g:[Ljava/lang/Object;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/h$d;->b:Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 920
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/h$a;->h:Ljava/util/HashMap;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/h$a;->g:[Ljava/lang/Object;

    aget-object v2, v2, v0

    add-int/lit8 v3, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    goto :goto_0

    .line 922
    :cond_0
    iput p2, p0, Landroidx/media2/exoplayer/external/source/h$a;->b:I

    .line 923
    iput p3, p0, Landroidx/media2/exoplayer/external/source/h$a;->c:I

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 964
    iget v0, p0, Landroidx/media2/exoplayer/external/source/h$a;->b:I

    return v0
.end method

.method protected final b(I)I
    .locals 1

    .line 928
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/h$a;->d:[I

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/util/ac;->a([II)I

    move-result p1

    return p1
.end method

.method public final c()I
    .locals 1

    .line 969
    iget v0, p0, Landroidx/media2/exoplayer/external/source/h$a;->c:I

    return v0
.end method

.method protected final c(I)I
    .locals 1

    .line 933
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/h$a;->e:[I

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/util/ac;->a([II)I

    move-result p1

    return p1
.end method

.method protected final d(Ljava/lang/Object;)I
    .locals 1

    .line 938
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/h$a;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 939
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected final d(I)Landroidx/media2/exoplayer/external/al;
    .locals 1

    .line 944
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/h$a;->f:[Landroidx/media2/exoplayer/external/al;

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected final e(I)I
    .locals 1

    .line 949
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/h$a;->d:[I

    aget p1, v0, p1

    return p1
.end method

.method protected final f(I)I
    .locals 1

    .line 954
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/h$a;->e:[I

    aget p1, v0, p1

    return p1
.end method

.method protected final g(I)Ljava/lang/Object;
    .locals 1

    .line 959
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/h$a;->g:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
