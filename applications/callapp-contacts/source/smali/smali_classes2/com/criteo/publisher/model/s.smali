.class public Lcom/criteo/publisher/model/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/model/s$a;
    }
.end annotation


# static fields
.field public static final n:Lcom/criteo/publisher/model/s$a;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Lkotlin/Lazy;

.field private final c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "impId"
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "placementId"
    .end annotation
.end field

.field private final e:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "zoneId"
    .end annotation
.end field

.field private final f:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "cpm"
    .end annotation
.end field

.field private final g:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "currency"
    .end annotation
.end field

.field private final h:I
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "width"
    .end annotation
.end field

.field private final i:I
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "height"
    .end annotation
.end field

.field private final j:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "displayUrl"
    .end annotation
.end field

.field private final k:Lcom/criteo/publisher/model/b0/n;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "native"
    .end annotation
.end field

.field private l:I
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "ttl"
    .end annotation
.end field

.field private m:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/criteo/publisher/model/s$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/criteo/publisher/model/s$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/criteo/publisher/model/s;->n:Lcom/criteo/publisher/model/s$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 15

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/16 v13, 0x7ff

    const/4 v14, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/criteo/publisher/model/s;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/criteo/publisher/model/b0/n;IJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/criteo/publisher/model/b0/n;IJ)V
    .locals 1

    const-string v0, "cpm"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/model/s;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/criteo/publisher/model/s;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/criteo/publisher/model/s;->e:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/criteo/publisher/model/s;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/criteo/publisher/model/s;->g:Ljava/lang/String;

    iput p6, p0, Lcom/criteo/publisher/model/s;->h:I

    iput p7, p0, Lcom/criteo/publisher/model/s;->i:I

    iput-object p8, p0, Lcom/criteo/publisher/model/s;->j:Ljava/lang/String;

    iput-object p9, p0, Lcom/criteo/publisher/model/s;->k:Lcom/criteo/publisher/model/b0/n;

    iput p10, p0, Lcom/criteo/publisher/model/s;->l:I

    iput-wide p11, p0, Lcom/criteo/publisher/model/s;->m:J

    .line 63
    new-instance p1, Lcom/criteo/publisher/model/s$b;

    invoke-direct {p1, p0}, Lcom/criteo/publisher/model/s$b;-><init>(Lcom/criteo/publisher/model/s;)V

    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/criteo/publisher/model/s;->a:Lkotlin/Lazy;

    .line 64
    new-instance p1, Lcom/criteo/publisher/model/s$c;

    invoke-direct {p1, p0}, Lcom/criteo/publisher/model/s$c;-><init>(Lcom/criteo/publisher/model/s;)V

    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/criteo/publisher/model/s;->b:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/criteo/publisher/model/b0/n;IJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    const-string v5, "0.0"

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    move-object v6, v2

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    const/4 v8, 0x0

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    goto :goto_6

    :cond_6
    move/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    move-object v10, v2

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    goto :goto_8

    :cond_8
    move-object/from16 v2, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    goto :goto_9

    :cond_9
    move/from16 v8, p10

    :goto_9
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    const-wide/16 v11, 0x0

    goto :goto_a

    :cond_a
    move-wide/from16 v11, p11

    :goto_a
    move-object p1, p0

    move-object p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move/from16 p7, v7

    move/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v2

    move/from16 p11, v8

    move-wide/from16 p12, v11

    .line 45
    invoke-direct/range {p1 .. p13}, Lcom/criteo/publisher/model/s;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/criteo/publisher/model/b0/n;IJ)V

    return-void
.end method

.method public static final a(Lorg/json/JSONObject;)Lcom/criteo/publisher/model/s;
    .locals 1

    sget-object v0, Lcom/criteo/publisher/model/s;->n:Lcom/criteo/publisher/model/s$a;

    invoke-virtual {v0, p0}, Lcom/criteo/publisher/model/s$a;->a(Lorg/json/JSONObject;)Lcom/criteo/publisher/model/s;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/criteo/publisher/model/s;->f:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/criteo/publisher/model/s;->l:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/criteo/publisher/model/s;->m:J

    return-void
.end method

.method public a(Lcom/criteo/publisher/h;)Z
    .locals 4

    const-string v0, "clock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->j()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->i()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 80
    invoke-interface {p1}, Lcom/criteo/publisher/h;->a()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/criteo/publisher/model/s;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/criteo/publisher/model/s;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/criteo/publisher/model/s;->j:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/criteo/publisher/model/s;->i:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/criteo/publisher/model/s;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/criteo/publisher/model/s;

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->l()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->l()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->k()I

    move-result v0

    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->k()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->e()I

    move-result v0

    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->e()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->g()Lcom/criteo/publisher/model/b0/n;

    move-result-object v0

    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->g()Lcom/criteo/publisher/model/b0/n;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->j()I

    move-result v0

    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->j()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->i()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->i()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/criteo/publisher/model/s;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lcom/criteo/publisher/model/b0/n;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/criteo/publisher/model/s;->k:Lcom/criteo/publisher/model/b0/n;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/criteo/publisher/model/s;->d:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->l()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->k()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->e()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->g()Lcom/criteo/publisher/model/b0/n;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->j()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->i()J

    move-result-wide v1

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public i()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/criteo/publisher/model/s;->m:J

    return-wide v0
.end method

.method public j()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/criteo/publisher/model/s;->l:I

    return v0
.end method

.method public k()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/criteo/publisher/model/s;->h:I

    return v0
.end method

.method public l()Ljava/lang/Integer;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/criteo/publisher/model/s;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Lcom/criteo/publisher/model/s;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 7

    .line 67
    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->b()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_0
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmpg-double v6, v0, v2

    if-gez v6, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 68
    :goto_1
    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->b()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Double;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->j()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 69
    :goto_2
    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->b()Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Double;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->j()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    if-nez v0, :cond_6

    if-nez v1, :cond_6

    if-eqz v2, :cond_5

    :cond_4
    :goto_4
    const/4 v4, 0x1

    goto :goto_5

    .line 74
    :cond_5
    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->m()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/criteo/publisher/m0/t;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    :goto_5
    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CdbResponseSlot(impressionId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", placementId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", zoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->l()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cpm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", displayUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nativeAssets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->g()Lcom/criteo/publisher/model/b0/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ttlInSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeOfDownload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/criteo/publisher/model/s;->i()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
