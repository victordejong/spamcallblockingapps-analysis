.class public final Lio/opencensus/trace/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/s$a;
    }
.end annotation


# static fields
.field public static final a:Lio/opencensus/trace/s;

.field public static final b:Lio/opencensus/trace/s;

.field public static final c:Lio/opencensus/trace/s;

.field public static final d:Lio/opencensus/trace/s;

.field public static final e:Lio/opencensus/trace/s;

.field public static final f:Lio/opencensus/trace/s;

.field public static final g:Lio/opencensus/trace/s;

.field public static final h:Lio/opencensus/trace/s;

.field public static final i:Lio/opencensus/trace/s;

.field public static final j:Lio/opencensus/trace/s;

.field public static final k:Lio/opencensus/trace/s;

.field public static final l:Lio/opencensus/trace/s;

.field public static final m:Lio/opencensus/trace/s;

.field public static final n:Lio/opencensus/trace/s;

.field public static final o:Lio/opencensus/trace/s;

.field public static final p:Lio/opencensus/trace/s;

.field public static final q:Lio/opencensus/trace/s;

.field private static final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/opencensus/trace/s;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final s:Lio/opencensus/trace/s$a;

.field private final t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1239
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 1240
    invoke-static {}, Lio/opencensus/trace/s$a;->values()[Lio/opencensus/trace/s$a;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1241
    invoke-virtual {v4}, Lio/opencensus/trace/s$a;->value()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lio/opencensus/trace/s;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Lio/opencensus/trace/s;-><init>(Lio/opencensus/trace/s$a;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/opencensus/trace/s;

    if-nez v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1243
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Code value duplication between "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1410
    iget-object v2, v5, Lio/opencensus/trace/s;->s:Lio/opencensus/trace/s$a;

    .line 1245
    invoke-virtual {v2}, Lio/opencensus/trace/s$a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " & "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1247
    invoke-virtual {v4}, Lio/opencensus/trace/s$a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1250
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 236
    sput-object v0, Lio/opencensus/trace/s;->r:Ljava/util/List;

    .line 260
    sget-object v0, Lio/opencensus/trace/s$a;->OK:Lio/opencensus/trace/s$a;

    invoke-virtual {v0}, Lio/opencensus/trace/s$a;->toStatus()Lio/opencensus/trace/s;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/s;->a:Lio/opencensus/trace/s;

    .line 267
    sget-object v0, Lio/opencensus/trace/s$a;->CANCELLED:Lio/opencensus/trace/s$a;

    invoke-virtual {v0}, Lio/opencensus/trace/s$a;->toStatus()Lio/opencensus/trace/s;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/s;->b:Lio/opencensus/trace/s;

    .line 274
    sget-object v0, Lio/opencensus/trace/s$a;->UNKNOWN:Lio/opencensus/trace/s$a;

    invoke-virtual {v0}, Lio/opencensus/trace/s$a;->toStatus()Lio/opencensus/trace/s;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/s;->c:Lio/opencensus/trace/s;

    .line 281
    sget-object v0, Lio/opencensus/trace/s$a;->INVALID_ARGUMENT:Lio/opencensus/trace/s$a;

    invoke-virtual {v0}, Lio/opencensus/trace/s$a;->toStatus()Lio/opencensus/trace/s;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/s;->d:Lio/opencensus/trace/s;

    .line 288
    sget-object v0, Lio/opencensus/trace/s$a;->DEADLINE_EXCEEDED:Lio/opencensus/trace/s$a;

    invoke-virtual {v0}, Lio/opencensus/trace/s$a;->toStatus()Lio/opencensus/trace/s;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/s;->e:Lio/opencensus/trace/s;

    .line 295
    sget-object v0, Lio/opencensus/trace/s$a;->NOT_FOUND:Lio/opencensus/trace/s$a;

    invoke-virtual {v0}, Lio/opencensus/trace/s$a;->toStatus()Lio/opencensus/trace/s;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/s;->f:Lio/opencensus/trace/s;

    .line 302
    sget-object v0, Lio/opencensus/trace/s$a;->ALREADY_EXISTS:Lio/opencensus/trace/s$a;

    invoke-virtual {v0}, Lio/opencensus/trace/s$a;->toStatus()Lio/opencensus/trace/s;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/s;->g:Lio/opencensus/trace/s;

    .line 310
    sget-object v0, Lio/opencensus/trace/s$a;->PERMISSION_DENIED:Lio/opencensus/trace/s$a;

    invoke-virtual {v0}, Lio/opencensus/trace/s$a;->toStatus()Lio/opencensus/trace/s;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/s;->h:Lio/opencensus/trace/s;

    .line 317
    sget-object v0, Lio/opencensus/trace/s$a;->UNAUTHENTICATED:Lio/opencensus/trace/s$a;

    invoke-virtual {v0}, Lio/opencensus/trace/s$a;->toStatus()Lio/opencensus/trace/s;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/s;->i:Lio/opencensus/trace/s;

    .line 325
    sget-object v0, Lio/opencensus/trace/s$a;->RESOURCE_EXHAUSTED:Lio/opencensus/trace/s$a;

    invoke-virtual {v0}, Lio/opencensus/trace/s$a;->toStatus()Lio/opencensus/trace/s;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/s;->j:Lio/opencensus/trace/s;

    .line 333
    sget-object v0, Lio/opencensus/trace/s$a;->FAILED_PRECONDITION:Lio/opencensus/trace/s$a;

    invoke-virtual {v0}, Lio/opencensus/trace/s$a;->toStatus()Lio/opencensus/trace/s;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/s;->k:Lio/opencensus/trace/s;

    .line 341
    sget-object v0, Lio/opencensus/trace/s$a;->ABORTED:Lio/opencensus/trace/s$a;

    invoke-virtual {v0}, Lio/opencensus/trace/s$a;->toStatus()Lio/opencensus/trace/s;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/s;->l:Lio/opencensus/trace/s;

    .line 348
    sget-object v0, Lio/opencensus/trace/s$a;->OUT_OF_RANGE:Lio/opencensus/trace/s$a;

    invoke-virtual {v0}, Lio/opencensus/trace/s$a;->toStatus()Lio/opencensus/trace/s;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/s;->m:Lio/opencensus/trace/s;

    .line 355
    sget-object v0, Lio/opencensus/trace/s$a;->UNIMPLEMENTED:Lio/opencensus/trace/s$a;

    invoke-virtual {v0}, Lio/opencensus/trace/s$a;->toStatus()Lio/opencensus/trace/s;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/s;->n:Lio/opencensus/trace/s;

    .line 362
    sget-object v0, Lio/opencensus/trace/s$a;->INTERNAL:Lio/opencensus/trace/s$a;

    invoke-virtual {v0}, Lio/opencensus/trace/s$a;->toStatus()Lio/opencensus/trace/s;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/s;->o:Lio/opencensus/trace/s;

    .line 369
    sget-object v0, Lio/opencensus/trace/s$a;->UNAVAILABLE:Lio/opencensus/trace/s$a;

    invoke-virtual {v0}, Lio/opencensus/trace/s$a;->toStatus()Lio/opencensus/trace/s;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/s;->p:Lio/opencensus/trace/s;

    .line 376
    sget-object v0, Lio/opencensus/trace/s$a;->DATA_LOSS:Lio/opencensus/trace/s$a;

    invoke-virtual {v0}, Lio/opencensus/trace/s$a;->toStatus()Lio/opencensus/trace/s;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/s;->q:Lio/opencensus/trace/s;

    return-void
.end method

.method private constructor <init>(Lio/opencensus/trace/s$a;Ljava/lang/String;)V
    .locals 1

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "canonicalCode"

    .line 385
    invoke-static {p1, v0}, Lio/opencensus/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/opencensus/trace/s$a;

    iput-object p1, p0, Lio/opencensus/trace/s;->s:Lio/opencensus/trace/s$a;

    .line 386
    iput-object p2, p0, Lio/opencensus/trace/s;->t:Ljava/lang/String;

    return-void
.end method

.method static synthetic a()Ljava/util/List;
    .locals 1

    .line 42
    sget-object v0, Lio/opencensus/trace/s;->r:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 446
    :cond_0
    instance-of v1, p1, Lio/opencensus/trace/s;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 450
    :cond_1
    check-cast p1, Lio/opencensus/trace/s;

    .line 451
    iget-object v1, p0, Lio/opencensus/trace/s;->s:Lio/opencensus/trace/s$a;

    iget-object v3, p1, Lio/opencensus/trace/s;->s:Lio/opencensus/trace/s$a;

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lio/opencensus/trace/s;->t:Ljava/lang/String;

    iget-object p1, p1, Lio/opencensus/trace/s;->t:Ljava/lang/String;

    if-nez v1, :cond_3

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_0

    .line 1158
    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_4

    return v0

    :cond_4
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 462
    iget-object v1, p0, Lio/opencensus/trace/s;->s:Lio/opencensus/trace/s$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/opencensus/trace/s;->t:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Status{canonicalCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/opencensus/trace/s;->s:Lio/opencensus/trace/s$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/trace/s;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
