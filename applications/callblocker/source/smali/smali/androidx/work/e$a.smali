.class public final Landroidx/work/e$a;
.super Ljava/lang/Object;
.source "Data.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/work/e$a;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Landroidx/work/e;)Landroidx/work/e$a;
    .locals 1

    .prologue
    .line 762
    iget-object v0, p1, Landroidx/work/e;->b:Ljava/util/Map;

    invoke-virtual {p0, v0}, Landroidx/work/e$a;->a(Ljava/util/Map;)Landroidx/work/e$a;

    .line 763
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Landroidx/work/e$a;
    .locals 5

    .prologue
    .line 796
    if-nez p2, :cond_0

    .line 797
    iget-object v0, p0, Landroidx/work/e$a;->a:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    :goto_0
    return-object p0

    .line 799
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 800
    const-class v1, Ljava/lang/Boolean;

    if-eq v0, v1, :cond_1

    const-class v1, Ljava/lang/Byte;

    if-eq v0, v1, :cond_1

    const-class v1, Ljava/lang/Integer;

    if-eq v0, v1, :cond_1

    const-class v1, Ljava/lang/Long;

    if-eq v0, v1, :cond_1

    const-class v1, Ljava/lang/Float;

    if-eq v0, v1, :cond_1

    const-class v1, Ljava/lang/Double;

    if-eq v0, v1, :cond_1

    const-class v1, Ljava/lang/String;

    if-eq v0, v1, :cond_1

    const-class v1, [Ljava/lang/Boolean;

    if-eq v0, v1, :cond_1

    const-class v1, [Ljava/lang/Byte;

    if-eq v0, v1, :cond_1

    const-class v1, [Ljava/lang/Integer;

    if-eq v0, v1, :cond_1

    const-class v1, [Ljava/lang/Long;

    if-eq v0, v1, :cond_1

    const-class v1, [Ljava/lang/Float;

    if-eq v0, v1, :cond_1

    const-class v1, [Ljava/lang/Double;

    if-eq v0, v1, :cond_1

    const-class v1, [Ljava/lang/String;

    if-ne v0, v1, :cond_2

    .line 814
    :cond_1
    iget-object v0, p0, Landroidx/work/e$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 815
    :cond_2
    const-class v1, [Z

    if-ne v0, v1, :cond_3

    .line 816
    iget-object v0, p0, Landroidx/work/e$a;->a:Ljava/util/Map;

    check-cast p2, [Z

    check-cast p2, [Z

    invoke-static {p2}, Landroidx/work/e;->a([Z)[Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 817
    :cond_3
    const-class v1, [B

    if-ne v0, v1, :cond_4

    .line 818
    iget-object v0, p0, Landroidx/work/e$a;->a:Ljava/util/Map;

    check-cast p2, [B

    check-cast p2, [B

    invoke-static {p2}, Landroidx/work/e;->b([B)[Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 819
    :cond_4
    const-class v1, [I

    if-ne v0, v1, :cond_5

    .line 820
    iget-object v0, p0, Landroidx/work/e$a;->a:Ljava/util/Map;

    check-cast p2, [I

    check-cast p2, [I

    invoke-static {p2}, Landroidx/work/e;->a([I)[Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 821
    :cond_5
    const-class v1, [J

    if-ne v0, v1, :cond_6

    .line 822
    iget-object v0, p0, Landroidx/work/e$a;->a:Ljava/util/Map;

    check-cast p2, [J

    check-cast p2, [J

    invoke-static {p2}, Landroidx/work/e;->a([J)[Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 823
    :cond_6
    const-class v1, [F

    if-ne v0, v1, :cond_7

    .line 824
    iget-object v0, p0, Landroidx/work/e$a;->a:Ljava/util/Map;

    check-cast p2, [F

    check-cast p2, [F

    invoke-static {p2}, Landroidx/work/e;->a([F)[Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 825
    :cond_7
    const-class v1, [D

    if-ne v0, v1, :cond_8

    .line 826
    iget-object v0, p0, Landroidx/work/e$a;->a:Ljava/util/Map;

    check-cast p2, [D

    check-cast p2, [D

    invoke-static {p2}, Landroidx/work/e;->a([D)[Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 828
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Key %s has invalid type %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 829
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/e$a;
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Landroidx/work/e$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    return-object p0
.end method

.method public a(Ljava/util/Map;)Landroidx/work/e$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/work/e$a;"
        }
    .end annotation

    .prologue
    .line 776
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 777
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 778
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 779
    invoke-virtual {p0, v1, v0}, Landroidx/work/e$a;->a(Ljava/lang/String;Ljava/lang/Object;)Landroidx/work/e$a;

    goto :goto_0

    .line 781
    :cond_0
    return-object p0
.end method

.method public a()Landroidx/work/e;
    .locals 2

    .prologue
    .line 842
    new-instance v0, Landroidx/work/e;

    iget-object v1, p0, Landroidx/work/e$a;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Landroidx/work/e;-><init>(Ljava/util/Map;)V

    .line 845
    invoke-static {v0}, Landroidx/work/e;->a(Landroidx/work/e;)[B

    .line 846
    return-object v0
.end method
