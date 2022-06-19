.class public final Landroidx/media2/session/SessionCommandGroup$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/SessionCommandGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/media2/session/SessionCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/media2/session/SessionCommandGroup$a;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroidx/media2/session/SessionCommandGroup;)V
    .locals 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "commandGroup shouldn\'t be null"

    .line 139
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    invoke-virtual {p1}, Landroidx/media2/session/SessionCommandGroup;->a()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/session/SessionCommandGroup$a;->a:Ljava/util/Set;

    return-void
.end method

.method private a(ILandroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 236
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 237
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    if-gt v1, p1, :cond_1

    .line 240
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 241
    new-instance v3, Landroidx/media2/session/SessionCommand;

    invoke-direct {v3, v2}, Landroidx/media2/session/SessionCommand;-><init>(I)V

    invoke-virtual {p0, v3}, Landroidx/media2/session/SessionCommandGroup$a;->a(Landroidx/media2/session/SessionCommand;)Landroidx/media2/session/SessionCommandGroup$a;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private g(I)Landroidx/media2/session/SessionCommandGroup$a;
    .locals 1

    .line 231
    sget-object v0, Landroidx/media2/session/SessionCommand;->e:Landroid/util/SparseArray;

    invoke-direct {p0, p1, v0}, Landroidx/media2/session/SessionCommandGroup$a;->a(ILandroid/util/SparseArray;)V

    return-object p0
.end method


# virtual methods
.method public final a(I)Landroidx/media2/session/SessionCommandGroup$a;
    .locals 2

    if-lez p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 177
    invoke-virtual {p0, p1}, Landroidx/media2/session/SessionCommandGroup$a;->b(I)Landroidx/media2/session/SessionCommandGroup$a;

    .line 178
    invoke-virtual {p0, p1}, Landroidx/media2/session/SessionCommandGroup$a;->e(I)Landroidx/media2/session/SessionCommandGroup$a;

    .line 179
    invoke-virtual {p0, p1}, Landroidx/media2/session/SessionCommandGroup$a;->f(I)Landroidx/media2/session/SessionCommandGroup$a;

    .line 180
    invoke-direct {p0, p1}, Landroidx/media2/session/SessionCommandGroup$a;->g(I)Landroidx/media2/session/SessionCommandGroup$a;

    return-object p0

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unknown command version "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Landroidx/media2/session/SessionCommand;)Landroidx/media2/session/SessionCommandGroup$a;
    .locals 1

    .line 154
    iget-object v0, p0, Landroidx/media2/session/SessionCommandGroup$a;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a()Landroidx/media2/session/SessionCommandGroup;
    .locals 2

    .line 253
    new-instance v0, Landroidx/media2/session/SessionCommandGroup;

    iget-object v1, p0, Landroidx/media2/session/SessionCommandGroup$a;->a:Ljava/util/Set;

    invoke-direct {v0, v1}, Landroidx/media2/session/SessionCommandGroup;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method final b(I)Landroidx/media2/session/SessionCommandGroup$a;
    .locals 0

    .line 200
    invoke-virtual {p0, p1}, Landroidx/media2/session/SessionCommandGroup$a;->c(I)Landroidx/media2/session/SessionCommandGroup$a;

    .line 201
    invoke-virtual {p0, p1}, Landroidx/media2/session/SessionCommandGroup$a;->d(I)Landroidx/media2/session/SessionCommandGroup$a;

    return-object p0
.end method

.method public final b(Landroidx/media2/session/SessionCommand;)Landroidx/media2/session/SessionCommandGroup$a;
    .locals 1

    .line 194
    iget-object v0, p0, Landroidx/media2/session/SessionCommandGroup$a;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method final c(I)Landroidx/media2/session/SessionCommandGroup$a;
    .locals 1

    .line 207
    sget-object v0, Landroidx/media2/session/SessionCommand;->a:Landroid/util/SparseArray;

    invoke-direct {p0, p1, v0}, Landroidx/media2/session/SessionCommandGroup$a;->a(ILandroid/util/SparseArray;)V

    return-object p0
.end method

.method final d(I)Landroidx/media2/session/SessionCommandGroup$a;
    .locals 1

    .line 213
    sget-object v0, Landroidx/media2/session/SessionCommand;->b:Landroid/util/SparseArray;

    invoke-direct {p0, p1, v0}, Landroidx/media2/session/SessionCommandGroup$a;->a(ILandroid/util/SparseArray;)V

    return-object p0
.end method

.method final e(I)Landroidx/media2/session/SessionCommandGroup$a;
    .locals 1

    .line 219
    sget-object v0, Landroidx/media2/session/SessionCommand;->c:Landroid/util/SparseArray;

    invoke-direct {p0, p1, v0}, Landroidx/media2/session/SessionCommandGroup$a;->a(ILandroid/util/SparseArray;)V

    return-object p0
.end method

.method final f(I)Landroidx/media2/session/SessionCommandGroup$a;
    .locals 1

    .line 225
    sget-object v0, Landroidx/media2/session/SessionCommand;->d:Landroid/util/SparseArray;

    invoke-direct {p0, p1, v0}, Landroidx/media2/session/SessionCommandGroup$a;->a(ILandroid/util/SparseArray;)V

    return-object p0
.end method
