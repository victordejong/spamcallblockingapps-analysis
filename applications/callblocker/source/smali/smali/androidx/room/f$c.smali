.class Landroidx/room/f$c;
.super Ljava/lang/Object;
.source "InvalidationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field final a:[I

.field final b:Landroidx/room/f$b;

.field private final c:[Ljava/lang/String;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/room/f$b;[I[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    iput-object p1, p0, Landroidx/room/f$c;->b:Landroidx/room/f$b;

    .line 600
    iput-object p2, p0, Landroidx/room/f$c;->a:[I

    .line 601
    iput-object p3, p0, Landroidx/room/f$c;->c:[Ljava/lang/String;

    .line 602
    array-length v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 603
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 604
    iget-object v1, p0, Landroidx/room/f$c;->c:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 605
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/f$c;->d:Ljava/util/Set;

    .line 609
    :goto_0
    return-void

    .line 607
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/room/f$c;->d:Ljava/util/Set;

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 618
    const/4 v0, 0x0

    .line 619
    iget-object v1, p0, Landroidx/room/f$c;->a:[I

    array-length v2, v1

    .line 620
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    .line 621
    iget-object v3, p0, Landroidx/room/f$c;->a:[I

    aget v3, v3, v1

    .line 622
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 623
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 625
    iget-object v0, p0, Landroidx/room/f$c;->d:Ljava/util/Set;

    .line 620
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 627
    :cond_1
    if-nez v0, :cond_2

    .line 628
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 630
    :cond_2
    iget-object v3, p0, Landroidx/room/f$c;->c:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 634
    :cond_3
    if-eqz v0, :cond_4

    .line 635
    iget-object v1, p0, Landroidx/room/f$c;->b:Landroidx/room/f$b;

    invoke-virtual {v1, v0}, Landroidx/room/f$b;->a(Ljava/util/Set;)V

    .line 637
    :cond_4
    return-void
.end method

.method a([Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 646
    const/4 v0, 0x0

    .line 647
    iget-object v1, p0, Landroidx/room/f$c;->c:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 648
    array-length v2, p1

    move v1, v3

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, p1, v1

    .line 649
    iget-object v5, p0, Landroidx/room/f$c;->c:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 651
    iget-object v0, p0, Landroidx/room/f$c;->d:Ljava/util/Set;

    .line 669
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 670
    iget-object v1, p0, Landroidx/room/f$c;->b:Landroidx/room/f$b;

    invoke-virtual {v1, v0}, Landroidx/room/f$b;->a(Ljava/util/Set;)V

    .line 672
    :cond_1
    return-void

    .line 648
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 656
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 657
    array-length v5, p1

    move v4, v3

    :goto_2
    if-ge v4, v5, :cond_6

    aget-object v6, p1, v4

    .line 658
    iget-object v7, p0, Landroidx/room/f$c;->c:[Ljava/lang/String;

    array-length v8, v7

    move v2, v3

    :goto_3
    if-ge v2, v8, :cond_4

    aget-object v9, v7, v2

    .line 659
    invoke-virtual {v9, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 660
    invoke-virtual {v1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 657
    :cond_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    .line 658
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 665
    :cond_6
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_0

    move-object v0, v1

    .line 666
    goto :goto_1
.end method
