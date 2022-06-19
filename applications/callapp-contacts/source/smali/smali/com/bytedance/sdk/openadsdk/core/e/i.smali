.class public Lcom/bytedance/sdk/openadsdk/core/e/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/e/i$a;
    }
.end annotation


# instance fields
.field private A:Lcom/bytedance/sdk/openadsdk/core/e/o;

.field private B:Z

.field private C:Z

.field private D:I

.field private E:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private F:Lcom/bytedance/sdk/openadsdk/core/e/i$a;

.field private G:Z

.field private H:I

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Lcom/bytedance/sdk/openadsdk/core/e/c;

.field private L:I

.field private M:I

.field private N:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private O:I

.field private P:I

.field private Q:Ljava/lang/String;

.field private R:I

.field private S:I

.field private T:I

.field private U:Lorg/json/JSONObject;

.field private V:I

.field private W:I

.field private X:Ljava/lang/String;

.field private Y:Ljava/lang/String;

.field private Z:Lcom/bytedance/sdk/openadsdk/core/e/f;

.field private a:I

.field private b:Lcom/bytedance/sdk/openadsdk/core/e/h;

.field private c:Lcom/bytedance/sdk/openadsdk/core/e/h;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/e/h;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Lcom/bytedance/sdk/openadsdk/core/e/b;

.field private o:Lcom/bytedance/sdk/openadsdk/core/e/e;

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:I

.field private u:I

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;"
        }
    .end annotation
.end field

.field private w:I

.field private x:J

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->e:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->g:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->h:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->i:Ljava/util/List;

    const-string v0, "0"

    .line 44
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->m:Ljava/lang/String;

    const-string v0, ""

    .line 51
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->s:Ljava/lang/String;

    const/4 v1, 0x0

    .line 52
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->t:I

    const/4 v2, 0x2

    .line 54
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->u:I

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->v:Ljava/util/List;

    .line 57
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->w:I

    .line 90
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->J:Ljava/lang/String;

    .line 94
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/e/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/e/c;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->K:Lcom/bytedance/sdk/openadsdk/core/e/c;

    const/16 v0, -0xc8

    .line 96
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->L:I

    .line 98
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->M:I

    const/4 v0, 0x1

    .line 104
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->P:I

    .line 108
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->R:I

    .line 110
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->S:I

    .line 112
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->T:I

    .line 116
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->V:I

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/e/i;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->w()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/e/i;ZZ)Z
    .locals 2

    const-string v0, "MaterialMeta"

    if-eqz p0, :cond_0

    .line 963
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->A:Lcom/bytedance/sdk/openadsdk/core/e/o;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/o;->a()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const-string p0, "can show end card follow js"

    .line 964
    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p2

    :cond_0
    const-string p0, "can show end card follow js WebViewClient"

    .line 967
    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/FilterWord;)Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 914
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 915
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    .line 916
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "name"

    .line 917
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "is_selected"

    .line 918
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getIsSelected()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 920
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->hasSecondOptions()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 921
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 922
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getOptions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/FilterWord;

    .line 923
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/e/i;->b(Lcom/bytedance/sdk/openadsdk/FilterWord;)Lorg/json/JSONObject;

    move-result-object v3

    .line 924
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 927
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_2

    const-string p1, "options"

    .line 928
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-object v1

    :catchall_0
    :cond_3
    return-object v0
.end method

.method public static b(Lcom/bytedance/sdk/openadsdk/core/e/i;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 941
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->f()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Lcom/bytedance/sdk/openadsdk/core/e/i;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 948
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->f()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Lcom/bytedance/sdk/openadsdk/core/e/i;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1042
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->T()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->T()I

    move-result v1

    const/16 v2, 0xf

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->T()I

    move-result p0

    const/16 v1, 0x32

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public A()I
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->Z:Lcom/bytedance/sdk/openadsdk/core/e/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/f;->a()I

    move-result v0

    return v0
.end method

.method public B()Lcom/bytedance/sdk/openadsdk/core/e/o;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->A:Lcom/bytedance/sdk/openadsdk/core/e/o;

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->q:Ljava/lang/String;

    return-object v0
.end method

.method public D()I
    .locals 1

    .line 388
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->a:I

    return v0
.end method

.method public E()Lcom/bytedance/sdk/openadsdk/core/e/h;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->b:Lcom/bytedance/sdk/openadsdk/core/e/h;

    return-object v0
.end method

.method public F()Lcom/bytedance/sdk/openadsdk/core/e/h;
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->c:Lcom/bytedance/sdk/openadsdk/core/e/h;

    return-object v0
.end method

.method public G()Ljava/lang/String;
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method public H()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/e/h;",
            ">;"
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->e:Ljava/util/List;

    return-object v0
.end method

.method public I()Ljava/lang/String;
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->f:Ljava/lang/String;

    return-object v0
.end method

.method public J()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->g:Ljava/util/List;

    return-object v0
.end method

.method public K()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->h:Ljava/util/List;

    return-object v0
.end method

.method public L()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->i:Ljava/util/List;

    return-object v0
.end method

.method public M()Ljava/lang/String;
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->j:Ljava/lang/String;

    return-object v0
.end method

.method public N()Ljava/lang/String;
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->k:Ljava/lang/String;

    return-object v0
.end method

.method public O()Ljava/lang/String;
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->l:Ljava/lang/String;

    return-object v0
.end method

.method public P()Ljava/lang/String;
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->m:Ljava/lang/String;

    return-object v0
.end method

.method public Q()Lcom/bytedance/sdk/openadsdk/core/e/b;
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->n:Lcom/bytedance/sdk/openadsdk/core/e/b;

    return-object v0
.end method

.method public R()Lcom/bytedance/sdk/openadsdk/core/e/e;
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->o:Lcom/bytedance/sdk/openadsdk/core/e/e;

    return-object v0
.end method

.method public S()Ljava/lang/String;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->r:Ljava/lang/String;

    return-object v0
.end method

.method public T()I
    .locals 1

    .line 512
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->p:I

    return v0
.end method

.method public U()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;"
        }
    .end annotation

    .line 520
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->v:Ljava/util/List;

    return-object v0
.end method

.method public V()Ljava/lang/String;
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->Y:Ljava/lang/String;

    return-object v0
.end method

.method public W()J
    .locals 2

    .line 544
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->x:J

    return-wide v0
.end method

.method public X()I
    .locals 1

    .line 552
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->y:I

    return v0
.end method

.method public Y()Z
    .locals 1

    .line 560
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->B:Z

    return v0
.end method

.method public Z()Z
    .locals 1

    .line 568
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->C:Z

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->s:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->t:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 548
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->x:J

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->N:Lcom/bytedance/sdk/openadsdk/AdSlot;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/FilterWord;)V
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/e/b;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->n:Lcom/bytedance/sdk/openadsdk/core/e/b;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/e/c;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->K:Lcom/bytedance/sdk/openadsdk/core/e/c;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/e/e;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->o:Lcom/bytedance/sdk/openadsdk/core/e/e;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/e/f;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->Z:Lcom/bytedance/sdk/openadsdk/core/e/f;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/e/h;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->b:Lcom/bytedance/sdk/openadsdk/core/e/h;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/e/i$a;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->F:Lcom/bytedance/sdk/openadsdk/core/e/i$a;

    .line 355
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/d;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/d;->b()V

    .line 356
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/e/o;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->A:Lcom/bytedance/sdk/openadsdk/core/e/o;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->s:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 588
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->E:Ljava/util/Map;

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->U:Lorg/json/JSONObject;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 336
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->G:Z

    return-void
.end method

.method public aa()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 584
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->E:Ljava/util/Map;

    return-object v0
.end method

.method public ab()Lorg/json/JSONObject;
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->U:Lorg/json/JSONObject;

    return-object v0
.end method

.method public ac()Ljava/lang/String;
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->Q:Ljava/lang/String;

    return-object v0
.end method

.method public ad()Z
    .locals 3

    .line 627
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 630
    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->p:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    return v1

    .line 633
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/e/h;

    .line 634
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/h;->d()Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public ae()Z
    .locals 2

    .line 648
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->af()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public af()I
    .locals 1

    .line 652
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->w:I

    return v0
.end method

.method public ag()Lorg/json/JSONObject;
    .locals 10

    const-string v0, "is_playable"

    .line 680
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "interaction_type"

    .line 682
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->D()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "target_url"

    .line 683
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->G()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ad_id"

    .line 684
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->P()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "source"

    .line 685
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "screenshot"

    .line 686
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->Y()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "dislike_control"

    .line 687
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->af()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "play_bar_show_time"

    .line 688
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->p()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 689
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->w()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "playable_type"

    .line 690
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->f()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "playable_style"

    .line 691
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "play_bar_style"

    .line 692
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->l()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "if_block_lp"

    .line 693
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->d()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "cache_sort"

    .line 694
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->q()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "if_sp_cache"

    .line 695
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->r()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "render_control"

    .line 696
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->c()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 698
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "reward_name"

    .line 699
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "reward_amount"

    .line 700
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->b()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "reward_data"

    .line 701
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 703
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->E()Lcom/bytedance/sdk/openadsdk/core/e/h;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "width"

    const-string v4, "height"

    const-string v5, "url"

    if-eqz v2, :cond_0

    .line 704
    :try_start_1
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/h;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 705
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 706
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/h;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 707
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/h;->c()I

    move-result v7

    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 708
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/h;->b()I

    move-result v2

    invoke-virtual {v6, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "icon"

    .line 710
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 714
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->F()Lcom/bytedance/sdk/openadsdk/core/e/h;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 715
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/h;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 716
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 717
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/h;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 718
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/h;->c()I

    move-result v7

    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 719
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/h;->b()I

    move-result v2

    invoke-virtual {v6, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "cover_image"

    .line 721
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 724
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->ab()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v6, "session_params"

    .line 726
    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 730
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->m()Lcom/bytedance/sdk/openadsdk/core/e/c;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 732
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "click_upper_content_area"

    .line 733
    iget-boolean v8, v2, Lcom/bytedance/sdk/openadsdk/core/e/c;->a:Z

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v7, "click_upper_non_content_area"

    .line 734
    iget-boolean v8, v2, Lcom/bytedance/sdk/openadsdk/core/e/c;->b:Z

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v7, "click_lower_content_area"

    .line 735
    iget-boolean v8, v2, Lcom/bytedance/sdk/openadsdk/core/e/c;->c:Z

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v7, "click_lower_non_content_area"

    .line 736
    iget-boolean v8, v2, Lcom/bytedance/sdk/openadsdk/core/e/c;->d:Z

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v7, "click_button_area"

    .line 737
    iget-boolean v8, v2, Lcom/bytedance/sdk/openadsdk/core/e/c;->e:Z

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v7, "click_video_area"

    .line 738
    iget-boolean v2, v2, Lcom/bytedance/sdk/openadsdk/core/e/c;->f:Z

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "click_area"

    .line 739
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 743
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->n()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 745
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->toJsonObj()Lorg/json/JSONObject;

    move-result-object v2

    const-string v6, "adslot"

    .line 746
    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 751
    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->H()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 753
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 754
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bytedance/sdk/openadsdk/core/e/h;

    .line 755
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 756
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/e/h;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 757
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/e/h;->c()I

    move-result v9

    invoke-virtual {v8, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 758
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/e/h;->b()I

    move-result v7

    invoke-virtual {v8, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 759
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_5
    const-string v2, "image"

    .line 762
    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 766
    :cond_6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->J()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 768
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 769
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 770
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_7
    const-string v2, "show_url"

    .line 773
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 777
    :cond_8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->K()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 779
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 780
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 781
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_9
    const-string v2, "click_url"

    .line 784
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 789
    :cond_a
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->L()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 791
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 792
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 793
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    :cond_b
    const-string v2, "play_start"

    .line 796
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c
    const-string v2, "phone_num"

    .line 799
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->I()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "title"

    .line 800
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->M()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "description"

    .line 801
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->N()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ext"

    .line 802
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->S()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "image_mode"

    .line 803
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->T()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "cover_click_area"

    .line 804
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->s()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 806
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->w()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "intercept_flag"

    .line 807
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->o()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "button_text"

    .line 808
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->O()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ad_logo"

    .line 809
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->k()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "video_adaptation"

    .line 810
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->j()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "feed_video_opentype"

    .line 811
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->h()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 813
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->Q()Lcom/bytedance/sdk/openadsdk/core/e/b;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 815
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "app_name"

    .line 816
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "package_name"

    .line 817
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "download_url"

    .line 818
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "score"

    .line 819
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/b;->d()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "comment_num"

    .line 820
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/b;->e()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "app_size"

    .line 821
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/b;->f()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "app"

    .line 823
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 827
    :cond_d
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->R()Lcom/bytedance/sdk/openadsdk/core/e/e;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 829
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "deeplink_url"

    .line 830
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "fallback_url"

    .line 831
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "fallback_type"

    .line 832
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/e;->c()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "deep_link"

    .line 834
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 838
    :cond_e
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->U()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 840
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 841
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/FilterWord;

    .line 842
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/e/i;->b(Lcom/bytedance/sdk/openadsdk/FilterWord;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 844
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    :cond_10
    const-string v0, "filter_words"

    .line 848
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_11
    const-string v0, "count_down"

    .line 851
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->X()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "expiration_time"

    .line 852
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->W()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 855
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v2, "video"

    .line 857
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/o;->l()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 860
    :cond_12
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "if_send_click"

    .line 861
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->A()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "download_conf"

    .line 862
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 864
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->aa()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 865
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 866
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->aa()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 868
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_13

    .line 869
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 870
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 871
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 872
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    :cond_13
    const-string v2, "media_ext"

    .line 875
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 880
    :cond_14
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->z()Lcom/bytedance/sdk/openadsdk/core/e/i$a;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 882
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "id"

    .line 883
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i$a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "md5"

    .line 884
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i$a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 885
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i$a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "data"

    .line 886
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i$a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "diff_data"

    .line 887
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i$a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "version"

    .line 888
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "dynamic_creative"

    .line 889
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i$a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "tpl_info"

    .line 891
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_15
    const-string v0, "market_url"

    .line 895
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->ac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "auction_price"

    .line 898
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v1
.end method

.method public b()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->t:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 144
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->u:I

    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/e/h;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->c:Lcom/bytedance/sdk/openadsdk/core/e/h;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->I:Ljava/lang/String;

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    .line 668
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->a:I

    const-string v0, "id"

    .line 670
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->m:Ljava/lang/String;

    const-string v0, "source"

    .line 671
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->q:Ljava/lang/String;

    .line 672
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/e/b;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/e/b;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->n:Lcom/bytedance/sdk/openadsdk/core/e/b;

    const-string v1, "pkg_name"

    .line 673
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/b;->c(Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->n:Lcom/bytedance/sdk/openadsdk/core/e/b;

    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/e/b;->b(Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->n:Lcom/bytedance/sdk/openadsdk/core/e/b;

    const-string v1, "download_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/e/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 564
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->B:Z

    return-void
.end method

.method public c()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->u:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 156
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->R:I

    return-void
.end method

.method public c(Lcom/bytedance/sdk/openadsdk/core/e/h;)V
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->X:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->R:I

    return v0
.end method

.method public d(I)V
    .locals 0

    .line 173
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->H:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->q:Ljava/lang/String;

    return-void
.end method

.method public e(I)V
    .locals 0

    .line 189
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->T:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->d:Ljava/lang/String;

    return-void
.end method

.method public e()Z
    .locals 2

    .line 165
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->R:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 611
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 613
    :cond_1
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/e/i;

    .line 615
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/core/e/i;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->r:Ljava/lang/String;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/e/i;->r:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public f()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->H:I

    return v0
.end method

.method public f(I)V
    .locals 0

    .line 205
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->S:I

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->f:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->I:Ljava/lang/String;

    return-object v0
.end method

.method public g(I)V
    .locals 0

    .line 213
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->P:I

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->j:Ljava/lang/String;

    return-void
.end method

.method public h()I
    .locals 1

    .line 185
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->T:I

    return v0
.end method

.method public h(I)V
    .locals 0

    .line 221
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->M:I

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->k:Ljava/lang/String;

    return-void
.end method

.method public hashCode()I
    .locals 2

    .line 621
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 622
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->r:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->X:Ljava/lang/String;

    return-object v0
.end method

.method public i(I)V
    .locals 0

    .line 245
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->O:I

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->l:Ljava/lang/String;

    return-void
.end method

.method public j()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->S:I

    return v0
.end method

.method public j(I)V
    .locals 0

    .line 253
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->L:I

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->m:Ljava/lang/String;

    return-void
.end method

.method public k()I
    .locals 1

    .line 209
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->P:I

    return v0
.end method

.method public k(I)V
    .locals 0

    .line 261
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->V:I

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->r:Ljava/lang/String;

    return-void
.end method

.method public l()I
    .locals 1

    .line 217
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->M:I

    return v0
.end method

.method public l(I)V
    .locals 0

    .line 277
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->W:I

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->Y:Ljava/lang/String;

    return-void
.end method

.method public m()Lcom/bytedance/sdk/openadsdk/core/e/c;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->K:Lcom/bytedance/sdk/openadsdk/core/e/c;

    return-object v0
.end method

.method public m(I)V
    .locals 0

    .line 293
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->z:I

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->Q:Ljava/lang/String;

    return-void
.end method

.method public n()Lcom/bytedance/sdk/openadsdk/AdSlot;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->N:Lcom/bytedance/sdk/openadsdk/AdSlot;

    return-object v0
.end method

.method public n(I)V
    .locals 0

    .line 344
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->D:I

    return-void
.end method

.method public o()I
    .locals 1

    .line 241
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->O:I

    return v0
.end method

.method public o(I)V
    .locals 0

    .line 392
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->a:I

    return-void
.end method

.method public p()I
    .locals 1

    .line 249
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->L:I

    return v0
.end method

.method public p(I)V
    .locals 0

    .line 516
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->p:I

    return-void
.end method

.method public q()I
    .locals 1

    .line 257
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->V:I

    return v0
.end method

.method public q(I)V
    .locals 0

    .line 556
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->y:I

    return-void
.end method

.method public r()I
    .locals 1

    .line 273
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->W:I

    return v0
.end method

.method public r(I)V
    .locals 0

    .line 656
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->w:I

    return-void
.end method

.method public s()I
    .locals 1

    .line 281
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->z:I

    return v0
.end method

.method public t()Z
    .locals 2

    .line 288
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->s()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public u()Z
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->A:Lcom/bytedance/sdk/openadsdk/core/e/o;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/o;->m()I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public v()Z
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->A:Lcom/bytedance/sdk/openadsdk/core/e/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/o;->n()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public w()Z
    .locals 1

    .line 316
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->G:Z

    return v0
.end method

.method public x()Z
    .locals 2

    .line 332
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public y()I
    .locals 1

    .line 340
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->D:I

    return v0
.end method

.method public z()Lcom/bytedance/sdk/openadsdk/core/e/i$a;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/e/i;->F:Lcom/bytedance/sdk/openadsdk/core/e/i$a;

    return-object v0
.end method
