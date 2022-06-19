.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/e$a;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/e$a;

.field private static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lkotlin/reflect/jvm/internal/impl/b/c/a/f;

.field private static final f:Lkotlin/reflect/jvm/internal/impl/b/c/a/f;

.field private static final g:Lkotlin/reflect/jvm/internal/impl/b/c/a/f;


# instance fields
.field public b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/e$a;

    .line 131
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->CLASS:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    invoke-static {v0}, Lkotlin/a/ap;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->c:Ljava/util/Set;

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    .line 134
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->FILE_FACADE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->MULTIFILE_CLASS_PART:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/a/ap;->a([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->d:Ljava/util/Set;

    .line 136
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/c/a/f;

    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/c/a/f;-><init>([I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->e:Lkotlin/reflect/jvm/internal/impl/b/c/a/f;

    .line 138
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/c/a/f;

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    invoke-direct {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/c/a/f;-><init>([I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->f:Lkotlin/reflect/jvm/internal/impl/b/c/a/f;

    .line 140
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/c/a/f;

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/c/a/f;-><init>([I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->g:Lkotlin/reflect/jvm/internal/impl/b/c/a/f;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
        0xb
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x1
        0xd
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;Ljava/util/Set;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;",
            "Ljava/util/Set<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 110
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;->a()Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;

    move-result-object p0

    .line 14018
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->c:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 14019
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->d:[Ljava/lang/String;

    :cond_0
    if-eqz v0, :cond_1

    .line 15015
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    .line 111
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final synthetic b()Lkotlin/reflect/jvm/internal/impl/b/c/a/f;
    .locals 1

    .line 33
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->g:Lkotlin/reflect/jvm/internal/impl/b/c/a/f;

    return-object v0
.end method

.method private final b(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/q;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/q<",
            "Lkotlin/reflect/jvm/internal/impl/b/c/a/f;",
            ">;"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;->a()Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;

    move-result-object v0

    .line 10016
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->b:Lkotlin/reflect/jvm/internal/impl/b/c/a/f;

    .line 82
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/q;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;->a()Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;

    move-result-object v1

    .line 11016
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->b:Lkotlin/reflect/jvm/internal/impl/b/c/a/f;

    .line 83
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/b/c/a/f;->b:Lkotlin/reflect/jvm/internal/impl/b/c/a/f;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;->c()Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/c/a;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final c()Z
    .locals 1

    .line 43
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->a()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    move-result-object v0

    .line 1040
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;

    .line 43
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;->getSkipMetadataVersionCheck()Z

    move-result v0

    return v0
.end method

.method private final c(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;)Z
    .locals 2

    .line 91
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->a()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    move-result-object v0

    .line 11040
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;

    .line 91
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;->getReportErrorsOnPreReleaseDependencies()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;->a()Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;->a()Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;

    move-result-object v0

    .line 12016
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->b:Lkotlin/reflect/jvm/internal/impl/b/c/a/f;

    .line 92
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->e:Lkotlin/reflect/jvm/internal/impl/b/c/a/f;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    :cond_0
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->d(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private final d(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;)Z
    .locals 1

    .line 98
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->a()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    move-result-object v0

    .line 12040
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;

    .line 98
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;->getSkipPrereleaseCheck()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;->a()Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;->a()Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;

    move-result-object p1

    .line 13016
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->b:Lkotlin/reflect/jvm/internal/impl/b/c/a/f;

    .line 99
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->f:Lkotlin/reflect/jvm/internal/impl/b/c/a/f;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final e(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/e;
    .locals 1

    .line 103
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->a()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    move-result-object v0

    .line 13040
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;

    .line 103
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;->getAllowUnstableDependencies()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;->a()Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/e;->FIR_UNSTABLE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/e;

    return-object p1

    .line 105
    :cond_0
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;->a()Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/e;->IR_UNSTABLE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/e;

    return-object p1

    .line 106
    :cond_1
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/e;->STABLE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/e;

    return-object p1
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/descriptors/ae;Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;)Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
    .locals 11

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->d:Ljava/util/Set;

    invoke-static {p2, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 64
    :cond_0
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;->a()Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;

    move-result-object v2

    .line 6020
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->e:[Ljava/lang/String;

    if-nez v2, :cond_1

    return-object v1

    .line 66
    :cond_1
    :try_start_0
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->a:Lkotlin/reflect/jvm/internal/impl/b/c/a/h;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->b([Ljava/lang/String;[Ljava/lang/String;)Lkotlin/n;

    move-result-object v0
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 162
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not read data from "

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6033
    :goto_0
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->c()Z

    move-result v2

    if-nez v2, :cond_3

    .line 165
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;->a()Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;

    move-result-object v2

    .line 7016
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->b:Lkotlin/reflect/jvm/internal/impl/b/c/a/f;

    .line 165
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/b/c/a/f;->a()Z

    move-result v2

    if-nez v2, :cond_3

    move-object v0, v1

    :goto_1
    if-nez v0, :cond_2

    return-object v1

    .line 8000
    :cond_2
    iget-object v1, v0, Lkotlin/n;->a:Ljava/lang/Object;

    .line 65
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/b/c/a/g;

    .line 9000
    iget-object v0, v0, Lkotlin/n;->b:Ljava/lang/Object;

    .line 65
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/b/a$k;

    .line 68
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;

    .line 69
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/b/b/c;

    invoke-direct {p0, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->b(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/q;

    move-result-object v6

    invoke-direct {p0, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->c(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;)Z

    move-result v7

    .line 70
    invoke-direct {p0, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->e(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/e;

    move-result-object v8

    move-object v2, v9

    move-object v3, p2

    move-object v4, v0

    move-object v5, v1

    .line 68
    invoke-direct/range {v2 .. v8}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;Lkotlin/reflect/jvm/internal/impl/b/a$k;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/q;ZLkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/e;)V

    .line 72
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/i;

    .line 73
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;->a()Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;

    move-result-object p2

    .line 9016
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->b:Lkotlin/reflect/jvm/internal/impl/b/c/a/f;

    .line 73
    move-object v6, p2

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/b/b/a;

    move-object v7, v9

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->a()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    move-result-object v8

    .line 74
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e$b;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/e$b;

    move-object v9, p2

    check-cast v9, Lkotlin/jvm/functions/Function0;

    move-object v2, v10

    move-object v3, p1

    .line 72
    invoke-direct/range {v2 .. v9}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/i;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ae;Lkotlin/reflect/jvm/internal/impl/b/a$k;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/a;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;Lkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    return-object v10

    .line 166
    :cond_3
    throw v0
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f;
    .locals 6

    const-string v0, "kotlinClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2033
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->c:Ljava/util/Set;

    .line 51
    invoke-static {p1, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 52
    :cond_0
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;->a()Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;

    move-result-object v2

    .line 3020
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->e:[Ljava/lang/String;

    if-nez v2, :cond_1

    return-object v1

    .line 54
    :cond_1
    :try_start_0
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->a:Lkotlin/reflect/jvm/internal/impl/b/c/a/h;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->a([Ljava/lang/String;[Ljava/lang/String;)Lkotlin/n;

    move-result-object v0
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 148
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not read data from "

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3033
    :goto_0
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->c()Z

    move-result v2

    if-nez v2, :cond_3

    .line 151
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;->a()Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;

    move-result-object v2

    .line 4016
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->b:Lkotlin/reflect/jvm/internal/impl/b/c/a/f;

    .line 151
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/b/c/a/f;->a()Z

    move-result v2

    if-nez v2, :cond_3

    move-object v0, v1

    :goto_1
    if-nez v0, :cond_2

    return-object v1

    .line 5000
    :cond_2
    iget-object v1, v0, Lkotlin/n;->a:Ljava/lang/Object;

    .line 53
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/b/c/a/g;

    .line 6000
    iget-object v0, v0, Lkotlin/n;->b:Ljava/lang/Object;

    .line 53
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/b/a$b;

    .line 56
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/q;

    .line 57
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->b(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/q;

    move-result-object v3

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->c(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;)Z

    move-result v4

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->e(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/e;

    move-result-object v5

    .line 56
    invoke-direct {v2, p1, v3, v4, v5}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/q;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/q;ZLkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/e;)V

    .line 59
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/b/b/c;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;->a()Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;

    move-result-object p1

    .line 6016
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->b:Lkotlin/reflect/jvm/internal/impl/b/c/a/f;

    .line 59
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/b/a;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    invoke-direct {v3, v1, v0, p1, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f;-><init>(Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/a$b;Lkotlin/reflect/jvm/internal/impl/b/b/a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V

    return-object v3

    .line 152
    :cond_3
    throw v0
.end method

.method public final a()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;
    .locals 1

    .line 34
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "components"

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
