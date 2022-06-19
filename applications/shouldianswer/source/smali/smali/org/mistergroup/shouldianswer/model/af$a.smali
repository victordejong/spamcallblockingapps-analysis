.class public final Lorg/mistergroup/shouldianswer/model/af$a;
.super Ljava/lang/Object;
.source "ProtectionLevel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/model/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/e/b/e;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/model/af$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lorg/mistergroup/shouldianswer/model/af;
    .locals 6

    .line 9
    invoke-static {}, Lorg/mistergroup/shouldianswer/model/af;->values()[Lorg/mistergroup/shouldianswer/model/af;

    move-result-object v0

    .line 12
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 9
    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/af;->a()I

    move-result v5

    if-ne v5, p1, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_2
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "Array contains no element matching the predicate."

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
