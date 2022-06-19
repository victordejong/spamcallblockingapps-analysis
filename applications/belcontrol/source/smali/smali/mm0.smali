.class public final Lmm0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmm0$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:I

.field public e:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Ldn0;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmm0$a;",
            ">;>;"
        }
    .end annotation
.end field

.field public g:Z

.field public h:Lhm0;

.field public i:Z

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:Lorg/json/JSONArray;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;ZILjava/util/EnumSet;Ljava/util/Map;ZLhm0;Ljava/lang/String;Ljava/lang/String;ZZLorg/json/JSONArray;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/EnumSet<",
            "Ldn0;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmm0$a;",
            ">;>;Z",
            "Lhm0;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput-boolean v1, v0, Lmm0;->a:Z

    move-object v1, p2

    iput-object v1, v0, Lmm0;->b:Ljava/lang/String;

    move v1, p3

    iput-boolean v1, v0, Lmm0;->c:Z

    move-object v1, p6

    iput-object v1, v0, Lmm0;->f:Ljava/util/Map;

    move-object v1, p8

    iput-object v1, v0, Lmm0;->h:Lhm0;

    move v1, p4

    iput v1, v0, Lmm0;->d:I

    move v1, p7

    iput-boolean v1, v0, Lmm0;->g:Z

    move-object v1, p5

    iput-object v1, v0, Lmm0;->e:Ljava/util/EnumSet;

    move v1, p11

    iput-boolean v1, v0, Lmm0;->i:Z

    move v1, p12

    iput-boolean v1, v0, Lmm0;->j:Z

    move-object v1, p13

    iput-object v1, v0, Lmm0;->l:Lorg/json/JSONArray;

    move-object/from16 v1, p14

    iput-object v1, v0, Lmm0;->k:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lmm0;->m:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lmm0;->n:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lmm0;->o:Ljava/lang/String;

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmm0$a;
    .locals 2

    invoke-static {p1}, Lfn0;->Q(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p2}, Lfn0;->Q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lnm0;->j(Ljava/lang/String;)Lmm0;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lmm0;->c()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_1

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmm0$a;

    return-object p0

    :cond_1
    :goto_0
    return-object v1
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lmm0;->g:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lmm0;->j:Z

    return v0
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmm0$a;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lmm0;->f:Ljava/util/Map;

    return-object v0
.end method

.method public e()Lhm0;
    .locals 1

    iget-object v0, p0, Lmm0;->h:Lhm0;

    return-object v0
.end method

.method public f()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lmm0;->l:Lorg/json/JSONArray;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lmm0;->i:Z

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lmm0;->c:Z

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm0;->m:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm0;->o:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm0;->k:Ljava/lang/String;

    return-object v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lmm0;->d:I

    return v0
.end method

.method public n()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Ldn0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmm0;->e:Ljava/util/EnumSet;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmm0;->n:Ljava/lang/String;

    return-object v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lmm0;->a:Z

    return v0
.end method
