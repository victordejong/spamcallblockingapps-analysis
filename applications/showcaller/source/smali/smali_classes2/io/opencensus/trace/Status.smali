.class public final Lio/opencensus/trace/Status;
.super Ljava/lang/Object;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/Status$CanonicalCode;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/opencensus/trace/Status;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lio/opencensus/trace/Status;

.field public static final c:Lio/opencensus/trace/Status;

.field public static final d:Lio/opencensus/trace/Status;

.field public static final e:Lio/opencensus/trace/Status;

.field public static final f:Lio/opencensus/trace/Status;

.field public static final g:Lio/opencensus/trace/Status;

.field public static final h:Lio/opencensus/trace/Status;

.field public static final i:Lio/opencensus/trace/Status;

.field public static final j:Lio/opencensus/trace/Status;

.field public static final k:Lio/opencensus/trace/Status;

.field public static final l:Lio/opencensus/trace/Status;

.field public static final m:Lio/opencensus/trace/Status;

.field public static final n:Lio/opencensus/trace/Status;

.field public static final o:Lio/opencensus/trace/Status;

.field public static final p:Lio/opencensus/trace/Status;

.field public static final q:Lio/opencensus/trace/Status;

.field public static final r:Lio/opencensus/trace/Status;


# instance fields
.field private final s:Lio/opencensus/trace/Status$CanonicalCode;

.field private final t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lio/opencensus/trace/Status;->b()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/Status;->a:Ljava/util/List;

    .line 2
    sget-object v0, Lio/opencensus/trace/Status$CanonicalCode;->d:Lio/opencensus/trace/Status$CanonicalCode;

    invoke-virtual {v0}, Lio/opencensus/trace/Status$CanonicalCode;->toStatus()Lio/opencensus/trace/Status;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/Status;->b:Lio/opencensus/trace/Status;

    .line 3
    sget-object v0, Lio/opencensus/trace/Status$CanonicalCode;->e:Lio/opencensus/trace/Status$CanonicalCode;

    invoke-virtual {v0}, Lio/opencensus/trace/Status$CanonicalCode;->toStatus()Lio/opencensus/trace/Status;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/Status;->c:Lio/opencensus/trace/Status;

    .line 4
    sget-object v0, Lio/opencensus/trace/Status$CanonicalCode;->f:Lio/opencensus/trace/Status$CanonicalCode;

    invoke-virtual {v0}, Lio/opencensus/trace/Status$CanonicalCode;->toStatus()Lio/opencensus/trace/Status;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/Status;->d:Lio/opencensus/trace/Status;

    .line 5
    sget-object v0, Lio/opencensus/trace/Status$CanonicalCode;->g:Lio/opencensus/trace/Status$CanonicalCode;

    invoke-virtual {v0}, Lio/opencensus/trace/Status$CanonicalCode;->toStatus()Lio/opencensus/trace/Status;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/Status;->e:Lio/opencensus/trace/Status;

    .line 6
    sget-object v0, Lio/opencensus/trace/Status$CanonicalCode;->h:Lio/opencensus/trace/Status$CanonicalCode;

    invoke-virtual {v0}, Lio/opencensus/trace/Status$CanonicalCode;->toStatus()Lio/opencensus/trace/Status;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/Status;->f:Lio/opencensus/trace/Status;

    .line 7
    sget-object v0, Lio/opencensus/trace/Status$CanonicalCode;->i:Lio/opencensus/trace/Status$CanonicalCode;

    invoke-virtual {v0}, Lio/opencensus/trace/Status$CanonicalCode;->toStatus()Lio/opencensus/trace/Status;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/Status;->g:Lio/opencensus/trace/Status;

    .line 8
    sget-object v0, Lio/opencensus/trace/Status$CanonicalCode;->j:Lio/opencensus/trace/Status$CanonicalCode;

    invoke-virtual {v0}, Lio/opencensus/trace/Status$CanonicalCode;->toStatus()Lio/opencensus/trace/Status;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/Status;->h:Lio/opencensus/trace/Status;

    .line 9
    sget-object v0, Lio/opencensus/trace/Status$CanonicalCode;->k:Lio/opencensus/trace/Status$CanonicalCode;

    invoke-virtual {v0}, Lio/opencensus/trace/Status$CanonicalCode;->toStatus()Lio/opencensus/trace/Status;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/Status;->i:Lio/opencensus/trace/Status;

    .line 10
    sget-object v0, Lio/opencensus/trace/Status$CanonicalCode;->t:Lio/opencensus/trace/Status$CanonicalCode;

    invoke-virtual {v0}, Lio/opencensus/trace/Status$CanonicalCode;->toStatus()Lio/opencensus/trace/Status;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/Status;->j:Lio/opencensus/trace/Status;

    .line 11
    sget-object v0, Lio/opencensus/trace/Status$CanonicalCode;->l:Lio/opencensus/trace/Status$CanonicalCode;

    invoke-virtual {v0}, Lio/opencensus/trace/Status$CanonicalCode;->toStatus()Lio/opencensus/trace/Status;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/Status;->k:Lio/opencensus/trace/Status;

    .line 12
    sget-object v0, Lio/opencensus/trace/Status$CanonicalCode;->m:Lio/opencensus/trace/Status$CanonicalCode;

    invoke-virtual {v0}, Lio/opencensus/trace/Status$CanonicalCode;->toStatus()Lio/opencensus/trace/Status;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/Status;->l:Lio/opencensus/trace/Status;

    .line 13
    sget-object v0, Lio/opencensus/trace/Status$CanonicalCode;->n:Lio/opencensus/trace/Status$CanonicalCode;

    invoke-virtual {v0}, Lio/opencensus/trace/Status$CanonicalCode;->toStatus()Lio/opencensus/trace/Status;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/Status;->m:Lio/opencensus/trace/Status;

    .line 14
    sget-object v0, Lio/opencensus/trace/Status$CanonicalCode;->o:Lio/opencensus/trace/Status$CanonicalCode;

    invoke-virtual {v0}, Lio/opencensus/trace/Status$CanonicalCode;->toStatus()Lio/opencensus/trace/Status;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/Status;->n:Lio/opencensus/trace/Status;

    .line 15
    sget-object v0, Lio/opencensus/trace/Status$CanonicalCode;->p:Lio/opencensus/trace/Status$CanonicalCode;

    invoke-virtual {v0}, Lio/opencensus/trace/Status$CanonicalCode;->toStatus()Lio/opencensus/trace/Status;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/Status;->o:Lio/opencensus/trace/Status;

    .line 16
    sget-object v0, Lio/opencensus/trace/Status$CanonicalCode;->q:Lio/opencensus/trace/Status$CanonicalCode;

    invoke-virtual {v0}, Lio/opencensus/trace/Status$CanonicalCode;->toStatus()Lio/opencensus/trace/Status;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/Status;->p:Lio/opencensus/trace/Status;

    .line 17
    sget-object v0, Lio/opencensus/trace/Status$CanonicalCode;->r:Lio/opencensus/trace/Status$CanonicalCode;

    invoke-virtual {v0}, Lio/opencensus/trace/Status$CanonicalCode;->toStatus()Lio/opencensus/trace/Status;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/Status;->q:Lio/opencensus/trace/Status;

    .line 18
    sget-object v0, Lio/opencensus/trace/Status$CanonicalCode;->s:Lio/opencensus/trace/Status$CanonicalCode;

    invoke-virtual {v0}, Lio/opencensus/trace/Status$CanonicalCode;->toStatus()Lio/opencensus/trace/Status;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/Status;->r:Lio/opencensus/trace/Status;

    return-void
.end method

.method private constructor <init>(Lio/opencensus/trace/Status$CanonicalCode;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "canonicalCode"

    .line 2
    invoke-static {p1, v0}, Ld/b/b/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/opencensus/trace/Status$CanonicalCode;

    iput-object p1, p0, Lio/opencensus/trace/Status;->s:Lio/opencensus/trace/Status$CanonicalCode;

    .line 3
    iput-object p2, p0, Lio/opencensus/trace/Status;->t:Ljava/lang/String;

    return-void
.end method

.method static synthetic a()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lio/opencensus/trace/Status;->a:Ljava/util/List;

    return-object v0
.end method

.method private static b()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/opencensus/trace/Status;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 2
    invoke-static {}, Lio/opencensus/trace/Status$CanonicalCode;->values()[Lio/opencensus/trace/Status$CanonicalCode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 3
    invoke-virtual {v4}, Lio/opencensus/trace/Status$CanonicalCode;->value()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lio/opencensus/trace/Status;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Lio/opencensus/trace/Status;-><init>(Lio/opencensus/trace/Status$CanonicalCode;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/opencensus/trace/Status;

    if-nez v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Code value duplication between "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v5}, Lio/opencensus/trace/Status;->c()Lio/opencensus/trace/Status$CanonicalCode;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " & "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public c()Lio/opencensus/trace/Status$CanonicalCode;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/opencensus/trace/Status;->s:Lio/opencensus/trace/Status$CanonicalCode;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lio/opencensus/trace/Status;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lio/opencensus/trace/Status;

    .line 3
    iget-object v1, p0, Lio/opencensus/trace/Status;->s:Lio/opencensus/trace/Status$CanonicalCode;

    iget-object v3, p1, Lio/opencensus/trace/Status;->s:Lio/opencensus/trace/Status$CanonicalCode;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lio/opencensus/trace/Status;->t:Ljava/lang/String;

    iget-object p1, p1, Lio/opencensus/trace/Status;->t:Ljava/lang/String;

    .line 4
    invoke-static {v1, p1}, Ld/b/b/b;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lio/opencensus/trace/Status;->s:Lio/opencensus/trace/Status$CanonicalCode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/opencensus/trace/Status;->t:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Status{canonicalCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/trace/Status;->s:Lio/opencensus/trace/Status$CanonicalCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/trace/Status;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
