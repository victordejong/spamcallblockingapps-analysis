.class public Lorg/mistergroup/shouldianswer/components/stickyheaders/a;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SectioningAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;,
        Lorg/mistergroup/shouldianswer/components/stickyheaders/a$g;,
        Lorg/mistergroup/shouldianswer/components/stickyheaders/a$h;,
        Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;,
        Lorg/mistergroup/shouldianswer/components/stickyheaders/a$d;,
        Lorg/mistergroup/shouldianswer/components/stickyheaders/a$c;,
        Lorg/mistergroup/shouldianswer/components/stickyheaders/a$b;,
        Lorg/mistergroup/shouldianswer/components/stickyheaders/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lorg/mistergroup/shouldianswer/components/stickyheaders/a$h;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/components/stickyheaders/a$a;


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/util/SparseBooleanArray;

.field private d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/mistergroup/shouldianswer/components/stickyheaders/a$g;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/util/SparseIntArray;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->a:Lorg/mistergroup/shouldianswer/components/stickyheaders/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 34
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->c:Landroid/util/SparseBooleanArray;

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->d:Landroid/util/SparseArray;

    .line 36
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->e:Landroid/util/SparseIntArray;

    return-void
.end method

.method private final a(III)V
    .locals 6

    .line 1052
    invoke-direct {p0, p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->l(I)Lorg/mistergroup/shouldianswer/components/stickyheaders/a$g;

    move-result-object p1

    .line 1053
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$g;->a()Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    const-string v1, "sectionSelectionState.items.clone()"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1054
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$g;->a()Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1057
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 1059
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-gez p3, :cond_0

    if-lt v3, p2, :cond_0

    sub-int v4, p2, p3

    if-ge v3, v4, :cond_0

    goto :goto_2

    :cond_0
    if-lt v3, p2, :cond_1

    add-int v4, v3, p3

    goto :goto_1

    :cond_1
    move v4, v3

    .line 1071
    :goto_1
    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1072
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$g;->a()Landroid/util/SparseBooleanArray;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic a(Lorg/mistergroup/shouldianswer/components/stickyheaders/a;IIILjava/lang/Object;)V
    .locals 1

    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    .line 996
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->g(II)V

    return-void

    .line 0
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateSectionIndices"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lorg/mistergroup/shouldianswer/components/stickyheaders/a;IILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1021
    :cond_0
    invoke-direct {p0, p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->m(I)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateSectionsAdapterPosition"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final b(Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;I)V
    .locals 1

    .line 1013
    invoke-virtual {p0, p2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->b(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->a(Z)V

    .line 1014
    invoke-virtual {p0, p2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->d(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->b(Z)V

    .line 1015
    invoke-virtual {p0, p2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->b(I)V

    .line 1016
    invoke-virtual {p0, p2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->h(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->b()I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->c(I)V

    .line 1017
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->c()I

    move-result p2

    add-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->c(I)V

    .line 1018
    :cond_1
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->e()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->c()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->c(I)V

    :cond_2
    return-void
.end method

.method private final f(II)I
    .locals 2

    .line 359
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->c()V

    :cond_0
    const-string v0, "sectionIndex "

    if-ltz p1, :cond_5

    .line 367
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->b:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_3

    .line 368
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= sections.size ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->b:Ljava/util/ArrayList;

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 371
    :cond_3
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "this.sections!![sectionIndex]"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;

    .line 372
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->a()I

    move-result p1

    add-int/2addr p2, p1

    return p2

    .line 364
    :cond_5
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " < 0"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method private final g(II)V
    .locals 7

    .line 997
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 999
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1000
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->a()I

    move-result v1

    .line 1001
    move-object v2, v0

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lkotlin/a/g;->a(Ljava/util/List;)I

    move-result v2

    if-gt p1, v2, :cond_1

    .line 1002
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "sections[s]"

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;

    .line 1003
    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->c()I

    move-result v4

    :goto_1
    if-ge p2, v4, :cond_0

    .line 1004
    iget-object v5, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->e:Landroid/util/SparseIntArray;

    add-int v6, v1, p2

    invoke-virtual {v5, v6, p1}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    .line 1007
    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->c()I

    move-result v3

    add-int/2addr v1, v3

    if-eq p1, v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final h(II)V
    .locals 7

    .line 1082
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    const-string v1, "collapsedSections.clone()"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1083
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1085
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 1086
    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    if-gez p2, :cond_0

    if-ne v4, p1, :cond_0

    goto :goto_2

    :cond_0
    if-lt v4, p1, :cond_1

    add-int v5, v4, p2

    goto :goto_1

    :cond_1
    move v5, v4

    .line 1096
    :goto_1
    iget-object v6, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    invoke-virtual {v6, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1100
    :cond_2
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    const-string v1, "selectionStateBySection.clone()"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1101
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1103
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_3
    if-ge v2, v1, :cond_5

    .line 1104
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-gez p2, :cond_3

    if-ne v3, p1, :cond_3

    goto :goto_5

    :cond_3
    if-lt v3, p1, :cond_4

    add-int v4, v3, p2

    goto :goto_4

    :cond_4
    move v4, v3

    .line 1115
    :goto_4
    iget-object v5, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method private final l(I)Lorg/mistergroup/shouldianswer/components/stickyheaders/a$g;
    .locals 2

    .line 473
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$g;

    if-eqz v0, :cond_0

    return-object v0

    .line 478
    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$g;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$g;-><init>()V

    .line 479
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method private final m(I)V
    .locals 5

    .line 1022
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-lez p1, :cond_0

    add-int/lit8 v1, p1, -0x1

    .line 1026
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "sections[sectionStartIndex - 1]"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;

    .line 1027
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->a()I

    move-result v2

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->c()I

    move-result v1

    add-int/2addr v1, v2

    .line 1029
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge p1, v2, :cond_1

    .line 1030
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "sections[s]"

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;

    .line 1031
    invoke-virtual {v3, v1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->a(I)V

    .line 1032
    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->c()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1035
    :cond_1
    iput v1, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->f:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(II)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;I)I
    .locals 5

    const-string v0, "section"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1192
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->d()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-ne p2, v4, :cond_1

    :goto_0
    move v1, v4

    goto :goto_2

    .line 1197
    :cond_1
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->c()I

    move-result p1

    sub-int/2addr p1, v4

    if-ne p2, p1, :cond_5

    goto :goto_2

    .line 1202
    :cond_2
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p2, :cond_3

    :goto_1
    move v1, v2

    goto :goto_2

    :cond_3
    if-ne p2, v4, :cond_5

    goto :goto_0

    .line 1210
    :cond_4
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1211
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->c()I

    move-result p1

    sub-int/2addr p1, v4

    if-ne p2, p1, :cond_5

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    return v1
.end method

.method public final a(Landroid/view/ViewGroup;)Lorg/mistergroup/shouldianswer/components/stickyheaders/a$c;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 250
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    new-instance p1, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$c;

    invoke-direct {p1, v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$c;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public a(Landroid/view/ViewGroup;I)Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;
    .locals 0

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lorg/mistergroup/shouldianswer/components/stickyheaders/a$b;II)V
    .locals 0

    const-string p2, "viewHolder"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/components/stickyheaders/a$c;I)V
    .locals 0

    const-string p2, "viewHolder"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/mistergroup/shouldianswer/components/stickyheaders/a$d;II)V
    .locals 0

    const-string p2, "viewHolder"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;III)V
    .locals 0

    const-string p2, "viewHolder"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/mistergroup/shouldianswer/components/stickyheaders/a$h;I)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1238
    invoke-virtual {p0, p2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->f(I)I

    move-result v0

    .line 1241
    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$h;->b(I)V

    .line 1242
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->b()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$h;->c(I)V

    .line 1245
    invoke-virtual {p0, p1, v0, p2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->a(Lorg/mistergroup/shouldianswer/components/stickyheaders/a$h;II)V

    .line 1247
    sget-object v1, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->a:Lorg/mistergroup/shouldianswer/components/stickyheaders/a$a;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$h;->getItemViewType()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$a;->a(I)I

    move-result v1

    .line 1248
    sget-object v2, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->a:Lorg/mistergroup/shouldianswer/components/stickyheaders/a$a;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$h;->getItemViewType()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$a;->b(I)I

    move-result v2

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 p2, 0x3

    if-ne v1, p2, :cond_1

    .line 1259
    check-cast p1, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$b;

    invoke-virtual {p0, p1, v0, v2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->a(Lorg/mistergroup/shouldianswer/components/stickyheaders/a$b;II)V

    goto :goto_1

    .line 1263
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unrecognized viewType: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " does not correspond to TYPE_ITEM, TYPE_HEADER, TYPE_GHOST_HEADER or TYPE_FOOTER"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1253
    :cond_2
    check-cast p1, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;

    .line 1254
    invoke-virtual {p0, v0, p2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->b(II)I

    move-result p2

    .line 1255
    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;->a(I)V

    .line 1256
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->a(Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;III)V

    goto :goto_1

    .line 1261
    :cond_3
    check-cast p1, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$c;

    invoke-virtual {p0, p1, v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->a(Lorg/mistergroup/shouldianswer/components/stickyheaders/a$c;I)V

    goto :goto_1

    .line 1250
    :cond_4
    check-cast p1, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$d;

    invoke-virtual {p0, p1, v0, v2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->a(Lorg/mistergroup/shouldianswer/components/stickyheaders/a$d;II)V

    :goto_1
    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/components/stickyheaders/a$h;II)V
    .locals 0

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1277
    iget-object p2, p1, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$h;->itemView:Landroid/view/View;

    const-string p3, "holder.itemView"

    invoke-static {p2, p3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0a01f8

    .line 1278
    invoke-virtual {p2, p3, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final b(II)I
    .locals 4

    .line 325
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->c()V

    :cond_0
    const-string v0, "sectionIndex "

    if-ltz p1, :cond_7

    .line 333
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->b:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_3

    .line 334
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= sections.size ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->b:Ljava/util/ArrayList;

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 337
    :cond_3
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "this.sections!![sectionIndex]"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;

    .line 338
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->a()I

    move-result v1

    sub-int v1, p2, v1

    .line 339
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->c()I

    move-result v2

    if-gt v1, v2, :cond_6

    .line 343
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    add-int/lit8 v1, v1, -0x2

    :cond_5
    return v1

    .line 340
    :cond_6
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adapterPosition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is beyond sectionIndex: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " length: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->c()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 330
    :cond_7
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " < 0"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public b(Landroid/view/ViewGroup;I)Lorg/mistergroup/shouldianswer/components/stickyheaders/a$d;
    .locals 0

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()V
    .locals 1

    .line 695
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->c()V

    .line 696
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->notifyDataSetChanged()V

    .line 697
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 698
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public b(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final c(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final c(Landroid/view/ViewGroup;I)Lorg/mistergroup/shouldianswer/components/stickyheaders/a$b;
    .locals 0

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final c()V
    .locals 5

    .line 1039
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->a()I

    move-result v0

    .line 1040
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1041
    iput-object v1, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 1043
    new-instance v4, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;

    invoke-direct {v4}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;-><init>()V

    .line 1044
    invoke-direct {p0, v4, v3}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->b(Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;I)V

    .line 1045
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1047
    invoke-static {p0, v2, v1, v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->a(Lorg/mistergroup/shouldianswer/components/stickyheaders/a;IILjava/lang/Object;)V

    const/4 v1, 0x3

    .line 1048
    invoke-static {p0, v2, v2, v1, v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->a(Lorg/mistergroup/shouldianswer/components/stickyheaders/a;IIILjava/lang/Object;)V

    return-void
.end method

.method public final c(II)V
    .locals 3

    .line 812
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 814
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->c()V

    .line 815
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->b()V

    goto :goto_0

    .line 818
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "sections[sectionIndex]"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;

    .line 819
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->b()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 822
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 p2, p2, 0x2

    .line 823
    :cond_1
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->a()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->notifyItemChanged(I)V

    :goto_0
    return-void

    .line 820
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "itemIndex adapterPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " exceeds sectionIndex numberOfItems: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->b()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public d(Landroid/view/ViewGroup;I)Lorg/mistergroup/shouldianswer/components/stickyheaders/a$h;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1224
    sget-object v0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->a:Lorg/mistergroup/shouldianswer/components/stickyheaders/a$a;

    invoke-virtual {v0, p2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$a;->a(I)I

    move-result v0

    .line 1225
    sget-object v1, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->a:Lorg/mistergroup/shouldianswer/components/stickyheaders/a$a;

    invoke-virtual {v1, p2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$a;->b(I)I

    move-result v1

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 1230
    invoke-virtual {p0, p1, v1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->c(Landroid/view/ViewGroup;I)Lorg/mistergroup/shouldianswer/components/stickyheaders/a$b;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    check-cast p1, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$h;

    return-object p1

    .line 1234
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unrecognized viewType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " does not correspond to TYPE_ITEM, TYPE_HEADER or TYPE_FOOTER"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1228
    :cond_2
    invoke-virtual {p0, p1, v1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->a(Landroid/view/ViewGroup;I)Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_3
    check-cast p1, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$h;

    return-object p1

    .line 1231
    :cond_4
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->a(Landroid/view/ViewGroup;)Lorg/mistergroup/shouldianswer/components/stickyheaders/a$c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$h;

    return-object p1

    .line 1229
    :cond_5
    invoke-virtual {p0, p1, v1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->b(Landroid/view/ViewGroup;I)Lorg/mistergroup/shouldianswer/components/stickyheaders/a$d;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_6
    check-cast p1, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$h;

    return-object p1
.end method

.method public final d(II)V
    .locals 5

    .line 835
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->b:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 837
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->c()V

    .line 838
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->b()V

    goto :goto_3

    .line 840
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "sections[sectionIndex]"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;

    .line 841
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->b()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->b(I)V

    .line 842
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->c()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->c(I)V

    .line 843
    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/a/g;->a(Ljava/util/List;)I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 844
    iget v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->f:I

    goto :goto_1

    :cond_1
    add-int/lit8 v3, p1, 0x1

    .line 846
    invoke-static {v0}, Lkotlin/a/g;->a(Ljava/util/List;)I

    move-result v0

    if-gt v3, v0, :cond_2

    .line 847
    :goto_0
    invoke-direct {p0, v3}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->m(I)V

    if-eq v3, v0, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 850
    invoke-static {p0, p1, v0, v4, v3}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->a(Lorg/mistergroup/shouldianswer/components/stickyheaders/a;IIILjava/lang/Object;)V

    .line 851
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p2, 0x2

    goto :goto_2

    :cond_3
    move v0, p2

    .line 852
    :goto_2
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->a()I

    move-result v2

    add-int/2addr v2, v0

    .line 853
    invoke-virtual {p0, v2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->notifyItemInserted(I)V

    .line 855
    :goto_3
    invoke-direct {p0, p1, p2, v1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->a(III)V

    return-void
.end method

.method public d(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final e(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final e(II)V
    .locals 2

    .line 866
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 867
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->c()V

    .line 868
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->b()V

    goto :goto_1

    .line 870
    :cond_0
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->c()V

    .line 871
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "this.sections!![sectionIndex]"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;

    .line 874
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v1, p2, 0x2

    goto :goto_0

    :cond_2
    move v1, p2

    .line 877
    :goto_0
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->a()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->notifyItemRemoved(I)V

    :goto_1
    const/4 v0, -0x1

    .line 879
    invoke-direct {p0, p1, p2, v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->a(III)V

    return-void
.end method

.method public final f(I)I
    .locals 3

    .line 297
    iget v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->f:I

    .line 298
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->b:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 299
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->c()V

    :cond_0
    if-nez v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    if-ltz p1, :cond_2

    if-ge p1, v0, :cond_2

    .line 310
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    return p1

    .line 307
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adapterPosition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not in range of items represented by adapter"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final g(I)I
    .locals 1

    .line 383
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 384
    invoke-direct {p0, p1, v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->f(II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1120
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1121
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->c()V

    .line 1123
    :cond_0
    iget v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->f:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 7

    .line 1127
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1128
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->c()V

    :cond_0
    const-string v0, "adapterPosition ("

    if-ltz p1, :cond_a

    .line 1133
    iget v1, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->f:I

    if-ge p1, v1, :cond_9

    .line 1137
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->f(I)I

    move-result v0

    .line 1138
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->b:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "this.sections!![sectionIndex]"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;

    .line 1139
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->a()I

    move-result v2

    sub-int/2addr p1, v2

    .line 1141
    invoke-virtual {p0, v1, p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->a(Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;I)I

    move-result v2

    const/4 v3, 0x0

    const-string v4, ") must be in range [0,255]"

    const/16 v5, 0xff

    if-eqz v2, :cond_7

    const/4 v6, 0x2

    if-eq v2, v6, :cond_4

    const/4 p1, 0x3

    if-eq v2, p1, :cond_2

    goto :goto_0

    .line 1163
    :cond_2
    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->e(I)I

    move-result v3

    if-ltz v3, :cond_3

    if-gt v3, v5, :cond_3

    goto :goto_0

    .line 1165
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Custom footer view type ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1154
    :cond_4
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    add-int/lit8 p1, p1, -0x2

    .line 1157
    :cond_5
    invoke-virtual {p0, v0, p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->a(II)I

    move-result v3

    if-ltz v3, :cond_6

    if-gt v3, v5, :cond_6

    goto :goto_0

    .line 1159
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Custom item view type ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1147
    :cond_7
    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->c(I)I

    move-result v3

    if-ltz v3, :cond_8

    if-gt v3, v5, :cond_8

    :goto_0
    and-int/lit16 p1, v3, 0xff

    shl-int/lit8 p1, p1, 0x8

    and-int/lit16 v0, v2, 0xff

    or-int/2addr p1, v0

    return p1

    .line 1149
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Custom header view type ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1134
    :cond_9
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")  cannot be > getItemCount() ("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->getItemCount()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1132
    :cond_a
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") cannot be < 0"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public final h(I)Z
    .locals 2

    .line 469
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->c:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    return p1
.end method

.method public final i(I)V
    .locals 4

    .line 888
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 890
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->c()V

    .line 891
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->b()V

    goto :goto_0

    .line 894
    :cond_0
    new-instance v1, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;

    invoke-direct {v1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;-><init>()V

    .line 895
    invoke-direct {p0, v1, p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->b(Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;I)V

    .line 896
    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 897
    invoke-direct {p0, p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->m(I)V

    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 898
    invoke-static {p0, p1, v0, v2, v3}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->a(Lorg/mistergroup/shouldianswer/components/stickyheaders/a;IIILjava/lang/Object;)V

    .line 899
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->a()I

    move-result v0

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->c()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->notifyItemRangeInserted(II)V

    :goto_0
    const/4 v0, 0x1

    .line 902
    invoke-direct {p0, p1, v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->h(II)V

    return-void
.end method

.method public final j(I)V
    .locals 2

    .line 911
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 912
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->c()V

    .line 913
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->b()V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 915
    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "this.sections!![sectionIndex]"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;

    .line 916
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->c()V

    .line 917
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->a()I

    move-result v1

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$f;->c()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->notifyItemRangeRemoved(II)V

    :goto_0
    const/4 v0, -0x1

    .line 920
    invoke-direct {p0, p1, v0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->h(II)V

    return-void
.end method

.method public final k(I)I
    .locals 1

    .line 1180
    sget-object v0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->a:Lorg/mistergroup/shouldianswer/components/stickyheaders/a$a;

    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->getItemViewType(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$a;->a(I)I

    move-result p1

    return p1
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 0

    .line 31
    check-cast p1, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$h;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->a(Lorg/mistergroup/shouldianswer/components/stickyheaders/a$h;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$w;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;->d(Landroid/view/ViewGroup;I)Lorg/mistergroup/shouldianswer/components/stickyheaders/a$h;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$w;

    return-object p1
.end method
