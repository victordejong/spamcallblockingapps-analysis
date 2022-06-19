.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;
    }
.end annotation


# instance fields
.field public final a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

.field public final b:Lkotlin/reflect/jvm/internal/impl/b/c/a/f;

.field public final c:[Ljava/lang/String;

.field public final d:[Ljava/lang/String;

.field public final e:[Ljava/lang/String;

.field private final f:Lkotlin/reflect/jvm/internal/impl/b/c/a/c;

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;Lkotlin/reflect/jvm/internal/impl/b/c/a/f;Lkotlin/reflect/jvm/internal/impl/b/c/a/c;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const-string v0, "kind"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadataVersion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bytecodeVersion"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    .line 16
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->b:Lkotlin/reflect/jvm/internal/impl/b/c/a/f;

    .line 17
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->f:Lkotlin/reflect/jvm/internal/impl/b/c/a/c;

    .line 18
    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->c:[Ljava/lang/String;

    .line 19
    iput-object p5, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->d:[Ljava/lang/String;

    .line 20
    iput-object p6, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->e:[Ljava/lang/String;

    .line 21
    iput-object p7, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->g:Ljava/lang/String;

    .line 22
    iput p8, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->h:I

    .line 23
    iput-object p9, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->i:Ljava/lang/String;

    return-void
.end method

.method private static a(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .line 48
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->g:Ljava/lang/String;

    .line 1015
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    .line 48
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->MULTIFILE_CLASS_PART:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Z
    .locals 2

    .line 64
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->h:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->h:I

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->a(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 2

    .line 67
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->h:I

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->h:I

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->a(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 2

    .line 70
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->h:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->a(II)Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->b:Lkotlin/reflect/jvm/internal/impl/b/c/a/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
