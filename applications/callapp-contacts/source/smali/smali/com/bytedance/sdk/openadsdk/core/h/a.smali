.class public Lcom/bytedance/sdk/openadsdk/core/h/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public z:I


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->b:I

    .line 28
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->c:I

    const/4 v1, 0x2

    .line 29
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->d:I

    .line 30
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->e:I

    const/16 v2, 0x64

    .line 32
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->f:I

    const/4 v2, 0x0

    .line 33
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->g:I

    .line 34
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->h:I

    .line 35
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->i:I

    const/4 v3, 0x3

    .line 36
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->j:I

    const/4 v3, -0x1

    .line 37
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->k:I

    .line 38
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->l:I

    .line 39
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->m:I

    .line 40
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->n:I

    .line 41
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->o:I

    .line 42
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->p:I

    const/16 v0, 0x5dc

    .line 43
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->q:I

    .line 44
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->r:I

    .line 45
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->s:I

    const/16 v0, 0x14

    .line 46
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->t:I

    .line 47
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->u:I

    .line 48
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->v:I

    const/4 v0, 0x5

    .line 49
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->w:I

    .line 50
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->x:I

    .line 52
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->z:I

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/core/h/a;
    .locals 1

    .line 19
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/h/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/h/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .locals 0

    .line 55
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->u:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lorg/json/JSONArray;)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .locals 3

    if-eqz p1, :cond_1

    .line 183
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 186
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->y:Ljava/util/List;

    const/4 v0, 0x0

    .line 188
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->y:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    :goto_1
    return-object p0
.end method

.method public b(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .locals 0

    .line 60
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->v:I

    return-object p0
.end method

.method public c(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .locals 0

    .line 65
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->x:I

    return-object p0
.end method

.method public d(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .locals 0

    .line 70
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->t:I

    return-object p0
.end method

.method public e(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .locals 0

    .line 76
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->s:I

    return-object p0
.end method

.method public f(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .locals 0

    .line 81
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->p:I

    return-object p0
.end method

.method public g(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .locals 0

    .line 86
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->q:I

    return-object p0
.end method

.method public h(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .locals 0

    .line 91
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->r:I

    return-object p0
.end method

.method public i(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .locals 0

    .line 96
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->n:I

    return-object p0
.end method

.method public j(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .locals 0

    .line 102
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->l:I

    return-object p0
.end method

.method public k(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .locals 0

    .line 107
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->m:I

    return-object p0
.end method

.method public l(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .locals 0

    .line 112
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->k:I

    return-object p0
.end method

.method public m(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .locals 0

    .line 117
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->j:I

    return-object p0
.end method

.method public n(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .locals 0

    .line 127
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->b:I

    return-object p0
.end method

.method public o(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .locals 0

    .line 132
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->c:I

    return-object p0
.end method

.method public p(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .locals 0

    .line 137
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->d:I

    return-object p0
.end method

.method public q(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .locals 0

    .line 142
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->e:I

    return-object p0
.end method

.method public r(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .locals 0

    .line 152
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->f:I

    return-object p0
.end method

.method public s(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .locals 0

    .line 157
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->g:I

    return-object p0
.end method

.method public t(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .locals 0

    .line 162
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->h:I

    return-object p0
.end method

.method public u(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .locals 0

    .line 167
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->i:I

    return-object p0
.end method

.method public v(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .locals 0

    .line 172
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->o:I

    return-object p0
.end method

.method public w(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .locals 0

    .line 177
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->z:I

    return-object p0
.end method

.method public x(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .locals 0

    .line 197
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->w:I

    return-object p0
.end method
