.class public final Lkotlin/reflect/jvm/internal/impl/g/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkotlin/reflect/jvm/internal/impl/c/e;

.field public final b:Lkotlin/h/l;

.field public final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/w;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:[Lkotlin/reflect/jvm/internal/impl/g/b;


# direct methods
.method public constructor <init>(Ljava/util/Collection;[Lkotlin/reflect/jvm/internal/impl/g/b;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;[",
            "Lkotlin/reflect/jvm/internal/impl/g/b;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/w;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "nameList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalChecks"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    array-length v0, p2

    new-array v6, v0, [Lkotlin/reflect/jvm/internal/impl/g/b;

    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/g/d;-><init>(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/h/l;Ljava/util/Collection;Lkotlin/jvm/functions/Function1;[Lkotlin/reflect/jvm/internal/impl/g/b;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Collection;[Lkotlin/reflect/jvm/internal/impl/g/b;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 153
    sget-object p3, Lkotlin/reflect/jvm/internal/impl/g/d$3;->a:Lkotlin/reflect/jvm/internal/impl/g/d$3;

    check-cast p3, Lkotlin/jvm/functions/Function1;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/g/d;-><init>(Ljava/util/Collection;[Lkotlin/reflect/jvm/internal/impl/g/b;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/h/l;[Lkotlin/reflect/jvm/internal/impl/g/b;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/h/l;",
            "[",
            "Lkotlin/reflect/jvm/internal/impl/g/b;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/w;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "regex"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalChecks"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    array-length v0, p2

    new-array v6, v0, [Lkotlin/reflect/jvm/internal/impl/g/b;

    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/g/d;-><init>(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/h/l;Ljava/util/Collection;Lkotlin/jvm/functions/Function1;[Lkotlin/reflect/jvm/internal/impl/g/b;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/h/l;[Lkotlin/reflect/jvm/internal/impl/g/b;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 151
    sget-object p3, Lkotlin/reflect/jvm/internal/impl/g/d$2;->a:Lkotlin/reflect/jvm/internal/impl/g/d$2;

    check-cast p3, Lkotlin/jvm/functions/Function1;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/g/d;-><init>(Lkotlin/h/l;[Lkotlin/reflect/jvm/internal/impl/g/b;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private varargs constructor <init>(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/h/l;Ljava/util/Collection;Lkotlin/jvm/functions/Function1;[Lkotlin/reflect/jvm/internal/impl/g/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Lkotlin/h/l;",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/w;",
            "Ljava/lang/String;",
            ">;[",
            "Lkotlin/reflect/jvm/internal/impl/g/b;",
            ")V"
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/g/d;->a:Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 119
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/g/d;->b:Lkotlin/h/l;

    .line 120
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/g/d;->c:Ljava/util/Collection;

    .line 121
    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/g/d;->d:Lkotlin/jvm/functions/Function1;

    .line 122
    iput-object p5, p0, Lkotlin/reflect/jvm/internal/impl/g/d;->e:[Lkotlin/reflect/jvm/internal/impl/g/b;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/c/e;[Lkotlin/reflect/jvm/internal/impl/g/b;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "[",
            "Lkotlin/reflect/jvm/internal/impl/g/b;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/w;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalChecks"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    array-length v0, p2

    new-array v6, v0, [Lkotlin/reflect/jvm/internal/impl/g/b;

    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/g/d;-><init>(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/h/l;Ljava/util/Collection;Lkotlin/jvm/functions/Function1;[Lkotlin/reflect/jvm/internal/impl/g/b;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/c/e;[Lkotlin/reflect/jvm/internal/impl/g/b;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 149
    sget-object p3, Lkotlin/reflect/jvm/internal/impl/g/d$1;->a:Lkotlin/reflect/jvm/internal/impl/g/d$1;

    check-cast p3, Lkotlin/jvm/functions/Function1;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/g/d;-><init>(Lkotlin/reflect/jvm/internal/impl/c/e;[Lkotlin/reflect/jvm/internal/impl/g/b;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
