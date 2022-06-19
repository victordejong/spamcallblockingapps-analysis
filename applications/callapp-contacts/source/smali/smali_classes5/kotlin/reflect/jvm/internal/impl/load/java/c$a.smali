.class public final Lkotlin/reflect/jvm/internal/impl/load/java/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

.field private final b:I


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;I)V
    .locals 1

    const-string v0, "typeQualifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/c$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    .line 37
    iput p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/c$a;->b:I

    return-void
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/load/java/a;)Z
    .locals 2

    .line 53
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/c$a;->b:I

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/a;->ordinal()I

    move-result p1

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/a;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/a;->values()[Lkotlin/reflect/jvm/internal/impl/load/java/a;

    move-result-object v0

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 186
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    .line 1043
    invoke-direct {p0, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/c$a;->a(Lkotlin/reflect/jvm/internal/impl/load/java/a;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    goto :goto_1

    .line 1048
    :cond_0
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/a;->TYPE_USE:Lkotlin/reflect/jvm/internal/impl/load/java/a;

    invoke-direct {p0, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/c$a;->a(Lkotlin/reflect/jvm/internal/impl/load/java/a;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1049
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/a;->TYPE_PARAMETER_BOUNDS:Lkotlin/reflect/jvm/internal/impl/load/java/a;

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_2

    .line 40
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 187
    :cond_3
    check-cast v1, Ljava/util/List;

    return-object v1
.end method
