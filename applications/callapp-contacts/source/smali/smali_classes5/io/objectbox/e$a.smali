.class public final Lio/objectbox/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/objectbox/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/Integer;

.field e:Ljava/lang/Long;

.field f:Ljava/lang/Integer;

.field g:Ljava/lang/Integer;

.field h:Ljava/lang/Long;

.field i:Lio/objectbox/e$b;

.field j:Z

.field final synthetic k:Lio/objectbox/e;


# direct methods
.method constructor <init>(Lio/objectbox/e;Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lio/objectbox/e$a;->k:Lio/objectbox/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/objectbox/e$a;->b:Ljava/util/List;

    .line 149
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/objectbox/e$a;->c:Ljava/util/List;

    .line 160
    iput-object p2, p0, Lio/objectbox/e$a;->a:Ljava/lang/String;

    return-void
.end method

.method private c()V
    .locals 2

    .line 183
    iget-boolean v0, p0, Lio/objectbox/e$a;->j:Z

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already finished"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d()V
    .locals 2

    .line 205
    iget-object v0, p0, Lio/objectbox/e$a;->i:Lio/objectbox/e$b;

    if-eqz v0, :cond_0

    .line 206
    iget-object v1, p0, Lio/objectbox/e$a;->b:Ljava/util/List;

    invoke-virtual {v0}, Lio/objectbox/e$b;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 207
    iput-object v0, p0, Lio/objectbox/e$a;->i:Lio/objectbox/e$b;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lio/objectbox/e$a;
    .locals 1

    const/4 v0, 0x1

    .line 178
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/objectbox/e$a;->f:Ljava/lang/Integer;

    return-object p0
.end method

.method public final a(IJ)Lio/objectbox/e$a;
    .locals 0

    .line 164
    invoke-direct {p0}, Lio/objectbox/e$a;->c()V

    .line 165
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lio/objectbox/e$a;->d:Ljava/lang/Integer;

    .line 166
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/objectbox/e$a;->e:Ljava/lang/Long;

    return-object p0
.end method

.method public final a(Ljava/lang/String;I)Lio/objectbox/e$b;
    .locals 1

    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0, p1, v0, v0, p2}, Lio/objectbox/e$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lio/objectbox/e$b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lio/objectbox/e$b;
    .locals 7

    .line 198
    invoke-direct {p0}, Lio/objectbox/e$a;->c()V

    .line 199
    invoke-direct {p0}, Lio/objectbox/e$a;->d()V

    .line 200
    new-instance v6, Lio/objectbox/e$b;

    iget-object v1, p0, Lio/objectbox/e$a;->k:Lio/objectbox/e;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/objectbox/e$b;-><init>(Lio/objectbox/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v6, p0, Lio/objectbox/e$a;->i:Lio/objectbox/e$b;

    return-object v6
.end method

.method public final b(IJ)Lio/objectbox/e$a;
    .locals 0

    .line 171
    invoke-direct {p0}, Lio/objectbox/e$a;->c()V

    .line 172
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lio/objectbox/e$a;->g:Ljava/lang/Integer;

    .line 173
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/objectbox/e$a;->h:Ljava/lang/Long;

    return-object p0
.end method

.method public final b()Lio/objectbox/e;
    .locals 5

    .line 230
    invoke-direct {p0}, Lio/objectbox/e$a;->c()V

    .line 231
    invoke-direct {p0}, Lio/objectbox/e$a;->d()V

    const/4 v0, 0x1

    .line 232
    iput-boolean v0, p0, Lio/objectbox/e$a;->j:Z

    .line 233
    iget-object v0, p0, Lio/objectbox/e$a;->k:Lio/objectbox/e;

    iget-object v0, v0, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    iget-object v1, p0, Lio/objectbox/e$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/flatbuffers/d;->a(Ljava/lang/CharSequence;)I

    move-result v0

    .line 234
    iget-object v1, p0, Lio/objectbox/e$a;->k:Lio/objectbox/e;

    iget-object v2, p0, Lio/objectbox/e$a;->b:Ljava/util/List;

    invoke-virtual {v1, v2}, Lio/objectbox/e;->a(Ljava/util/List;)I

    move-result v1

    .line 235
    iget-object v2, p0, Lio/objectbox/e$a;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lio/objectbox/e$a;->k:Lio/objectbox/e;

    iget-object v3, p0, Lio/objectbox/e$a;->c:Ljava/util/List;

    invoke-virtual {v2, v3}, Lio/objectbox/e;->a(Ljava/util/List;)I

    move-result v2

    .line 237
    :goto_0
    iget-object v3, p0, Lio/objectbox/e$a;->k:Lio/objectbox/e;

    iget-object v3, v3, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    invoke-static {v3}, Lio/objectbox/model/ModelEntity;->startModelEntity(Lcom/google/flatbuffers/d;)V

    .line 238
    iget-object v3, p0, Lio/objectbox/e$a;->k:Lio/objectbox/e;

    iget-object v3, v3, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    invoke-static {v3, v0}, Lio/objectbox/model/ModelEntity;->addName(Lcom/google/flatbuffers/d;I)V

    .line 239
    iget-object v0, p0, Lio/objectbox/e$a;->k:Lio/objectbox/e;

    iget-object v0, v0, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    invoke-static {v0, v1}, Lio/objectbox/model/ModelEntity;->addProperties(Lcom/google/flatbuffers/d;I)V

    if-eqz v2, :cond_1

    .line 240
    iget-object v0, p0, Lio/objectbox/e$a;->k:Lio/objectbox/e;

    iget-object v0, v0, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    invoke-static {v0, v2}, Lio/objectbox/model/ModelEntity;->addRelations(Lcom/google/flatbuffers/d;I)V

    .line 241
    :cond_1
    iget-object v0, p0, Lio/objectbox/e$a;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/objectbox/e$a;->e:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lio/objectbox/e$a;->k:Lio/objectbox/e;

    iget-object v0, v0, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    iget-object v1, p0, Lio/objectbox/e$a;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lio/objectbox/e$a;->e:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lio/objectbox/model/IdUid;->createIdUid(Lcom/google/flatbuffers/d;JJ)I

    move-result v0

    .line 243
    iget-object v1, p0, Lio/objectbox/e$a;->k:Lio/objectbox/e;

    iget-object v1, v1, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    invoke-static {v1, v0}, Lio/objectbox/model/ModelEntity;->addId(Lcom/google/flatbuffers/d;I)V

    .line 245
    :cond_2
    iget-object v0, p0, Lio/objectbox/e$a;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 246
    iget-object v0, p0, Lio/objectbox/e$a;->k:Lio/objectbox/e;

    iget-object v0, v0, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    iget-object v1, p0, Lio/objectbox/e$a;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lio/objectbox/e$a;->h:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lio/objectbox/model/IdUid;->createIdUid(Lcom/google/flatbuffers/d;JJ)I

    move-result v0

    .line 247
    iget-object v1, p0, Lio/objectbox/e$a;->k:Lio/objectbox/e;

    iget-object v1, v1, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    invoke-static {v1, v0}, Lio/objectbox/model/ModelEntity;->addLastPropertyId(Lcom/google/flatbuffers/d;I)V

    .line 249
    :cond_3
    iget-object v0, p0, Lio/objectbox/e$a;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 250
    iget-object v0, p0, Lio/objectbox/e$a;->k:Lio/objectbox/e;

    iget-object v0, v0, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    iget-object v1, p0, Lio/objectbox/e$a;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lio/objectbox/model/ModelEntity;->addFlags(Lcom/google/flatbuffers/d;J)V

    .line 252
    :cond_4
    iget-object v0, p0, Lio/objectbox/e$a;->k:Lio/objectbox/e;

    iget-object v0, v0, Lio/objectbox/e;->b:Ljava/util/List;

    iget-object v1, p0, Lio/objectbox/e$a;->k:Lio/objectbox/e;

    iget-object v1, v1, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    invoke-static {v1}, Lio/objectbox/model/ModelEntity;->endModelEntity(Lcom/google/flatbuffers/d;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v0, p0, Lio/objectbox/e$a;->k:Lio/objectbox/e;

    return-object v0
.end method
