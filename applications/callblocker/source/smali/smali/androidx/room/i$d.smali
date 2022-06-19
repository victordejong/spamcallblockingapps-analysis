.class public Landroidx/room/i$d;
.super Ljava/lang/Object;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroidx/room/a/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 963
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/room/i$d;->a:Ljava/util/HashMap;

    return-void
.end method

.method private a(Ljava/util/List;ZII)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/room/a/a;",
            ">;ZII)",
            "Ljava/util/List",
            "<",
            "Landroidx/room/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1014
    move v6, p3

    :goto_0
    if-eqz p2, :cond_1

    if-ge v6, p4, :cond_0

    .line 1015
    :goto_1
    iget-object v0, p0, Landroidx/room/i$d;->a:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    .line 1016
    if-nez v0, :cond_2

    move-object p1, v4

    .line 1045
    :cond_0
    :goto_2
    return-object p1

    .line 1014
    :cond_1
    if-le v6, p4, :cond_0

    goto :goto_1

    .line 1021
    :cond_2
    if-eqz p2, :cond_4

    .line 1022
    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v1

    .line 1027
    :goto_3
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1029
    if-eqz p2, :cond_6

    .line 1030
    if-gt v5, p4, :cond_5

    if-le v5, v6, :cond_5

    move v1, v2

    .line 1034
    :goto_4
    if-eqz v1, :cond_3

    .line 1035
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v2

    move v1, v5

    .line 1041
    :goto_5
    if-nez v0, :cond_8

    move-object p1, v4

    .line 1042
    goto :goto_2

    .line 1024
    :cond_4
    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_3

    :cond_5
    move v1, v3

    .line 1030
    goto :goto_4

    .line 1032
    :cond_6
    if-lt v5, p4, :cond_7

    if-ge v5, v6, :cond_7

    move v1, v2

    goto :goto_4

    :cond_7
    move v1, v3

    goto :goto_4

    :cond_8
    move v6, v1

    .line 1044
    goto :goto_0

    :cond_9
    move v0, v3

    move v1, v6

    goto :goto_5
.end method

.method private a(Landroidx/room/a/a;)V
    .locals 6

    .prologue
    .line 978
    iget v1, p1, Landroidx/room/a/a;->a:I

    .line 979
    iget v2, p1, Landroidx/room/a/a;->b:I

    .line 980
    iget-object v0, p0, Landroidx/room/i$d;->a:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    .line 981
    if-nez v0, :cond_1

    .line 982
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 983
    iget-object v3, p0, Landroidx/room/i$d;->a:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 985
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/room/a/a;

    .line 986
    if-eqz v0, :cond_0

    .line 987
    const-string/jumbo v3, "ROOM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Overriding migration "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " with "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    return-void

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public a(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroidx/room/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1004
    if-ne p1, p2, :cond_0

    .line 1005
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1009
    :goto_0
    return-object v0

    .line 1007
    :cond_0
    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    .line 1008
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1009
    invoke-direct {p0, v1, v0, p1, p2}, Landroidx/room/i$d;->a(Ljava/util/List;ZII)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1007
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public varargs a([Landroidx/room/a/a;)V
    .locals 3

    .prologue
    .line 972
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 973
    invoke-direct {p0, v2}, Landroidx/room/i$d;->a(Landroidx/room/a/a;)V

    .line 972
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 975
    :cond_0
    return-void
.end method
