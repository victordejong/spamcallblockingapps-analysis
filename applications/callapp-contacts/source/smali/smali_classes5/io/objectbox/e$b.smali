.class public final Lio/objectbox/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/objectbox/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lio/objectbox/e;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:J

.field private k:I

.field private l:J

.field private m:I


# direct methods
.method constructor <init>(Lio/objectbox/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 68
    iput-object p1, p0, Lio/objectbox/e$b;->b:Lio/objectbox/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p5, p0, Lio/objectbox/e$b;->c:I

    .line 70
    iget-object p5, p1, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    invoke-virtual {p5, p2}, Lcom/google/flatbuffers/d;->a(Ljava/lang/CharSequence;)I

    move-result p2

    iput p2, p0, Lio/objectbox/e$b;->e:I

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    .line 71
    iget-object p5, p1, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    invoke-virtual {p5, p3}, Lcom/google/flatbuffers/d;->a(Ljava/lang/CharSequence;)I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput p3, p0, Lio/objectbox/e$b;->f:I

    if-eqz p4, :cond_1

    .line 72
    iget-object p1, p1, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    invoke-virtual {p1, p4}, Lcom/google/flatbuffers/d;->a(Ljava/lang/CharSequence;)I

    move-result p2

    :cond_1
    iput p2, p0, Lio/objectbox/e$b;->d:I

    return-void
.end method

.method private b()V
    .locals 2

    .line 108
    iget-boolean v0, p0, Lio/objectbox/e$b;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already finished"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 5

    .line 114
    invoke-direct {p0}, Lio/objectbox/e$b;->b()V

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lio/objectbox/e$b;->a:Z

    .line 116
    iget-object v0, p0, Lio/objectbox/e$b;->b:Lio/objectbox/e;

    iget-object v0, v0, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    invoke-static {v0}, Lio/objectbox/model/ModelProperty;->startModelProperty(Lcom/google/flatbuffers/d;)V

    .line 117
    iget-object v0, p0, Lio/objectbox/e$b;->b:Lio/objectbox/e;

    iget-object v0, v0, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    iget v1, p0, Lio/objectbox/e$b;->e:I

    invoke-static {v0, v1}, Lio/objectbox/model/ModelProperty;->addName(Lcom/google/flatbuffers/d;I)V

    .line 118
    iget v0, p0, Lio/objectbox/e$b;->f:I

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lio/objectbox/e$b;->b:Lio/objectbox/e;

    iget-object v0, v0, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    iget v1, p0, Lio/objectbox/e$b;->f:I

    invoke-static {v0, v1}, Lio/objectbox/model/ModelProperty;->addTargetEntity(Lcom/google/flatbuffers/d;I)V

    .line 121
    :cond_0
    iget v0, p0, Lio/objectbox/e$b;->d:I

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lio/objectbox/e$b;->b:Lio/objectbox/e;

    iget-object v0, v0, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    iget v1, p0, Lio/objectbox/e$b;->d:I

    invoke-static {v0, v1}, Lio/objectbox/model/ModelProperty;->addVirtualTarget(Lcom/google/flatbuffers/d;I)V

    .line 124
    :cond_1
    iget v0, p0, Lio/objectbox/e$b;->g:I

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lio/objectbox/e$b;->b:Lio/objectbox/e;

    iget-object v0, v0, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    iget v1, p0, Lio/objectbox/e$b;->g:I

    invoke-static {v0, v1}, Lio/objectbox/model/ModelProperty;->addNameSecondary(Lcom/google/flatbuffers/d;I)V

    .line 127
    :cond_2
    iget v0, p0, Lio/objectbox/e$b;->i:I

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Lio/objectbox/e$b;->b:Lio/objectbox/e;

    iget-object v0, v0, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    iget v1, p0, Lio/objectbox/e$b;->i:I

    int-to-long v1, v1

    iget-wide v3, p0, Lio/objectbox/e$b;->j:J

    invoke-static {v0, v1, v2, v3, v4}, Lio/objectbox/model/IdUid;->createIdUid(Lcom/google/flatbuffers/d;JJ)I

    move-result v0

    .line 129
    iget-object v1, p0, Lio/objectbox/e$b;->b:Lio/objectbox/e;

    iget-object v1, v1, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    invoke-static {v1, v0}, Lio/objectbox/model/ModelProperty;->addId(Lcom/google/flatbuffers/d;I)V

    .line 131
    :cond_3
    iget v0, p0, Lio/objectbox/e$b;->k:I

    if-eqz v0, :cond_4

    .line 132
    iget-object v0, p0, Lio/objectbox/e$b;->b:Lio/objectbox/e;

    iget-object v0, v0, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    iget v1, p0, Lio/objectbox/e$b;->k:I

    int-to-long v1, v1

    iget-wide v3, p0, Lio/objectbox/e$b;->l:J

    invoke-static {v0, v1, v2, v3, v4}, Lio/objectbox/model/IdUid;->createIdUid(Lcom/google/flatbuffers/d;JJ)I

    move-result v0

    .line 133
    iget-object v1, p0, Lio/objectbox/e$b;->b:Lio/objectbox/e;

    iget-object v1, v1, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    invoke-static {v1, v0}, Lio/objectbox/model/ModelProperty;->addIndexId(Lcom/google/flatbuffers/d;I)V

    .line 135
    :cond_4
    iget v0, p0, Lio/objectbox/e$b;->m:I

    if-lez v0, :cond_5

    .line 136
    iget-object v0, p0, Lio/objectbox/e$b;->b:Lio/objectbox/e;

    iget-object v0, v0, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    iget v1, p0, Lio/objectbox/e$b;->m:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lio/objectbox/model/ModelProperty;->addMaxIndexValueLength(Lcom/google/flatbuffers/d;J)V

    .line 138
    :cond_5
    iget-object v0, p0, Lio/objectbox/e$b;->b:Lio/objectbox/e;

    iget-object v0, v0, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    iget v1, p0, Lio/objectbox/e$b;->c:I

    invoke-static {v0, v1}, Lio/objectbox/model/ModelProperty;->addType(Lcom/google/flatbuffers/d;I)V

    .line 139
    iget v0, p0, Lio/objectbox/e$b;->h:I

    if-eqz v0, :cond_6

    .line 140
    iget-object v0, p0, Lio/objectbox/e$b;->b:Lio/objectbox/e;

    iget-object v0, v0, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    iget v1, p0, Lio/objectbox/e$b;->h:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lio/objectbox/model/ModelProperty;->addFlags(Lcom/google/flatbuffers/d;J)V

    .line 142
    :cond_6
    iget-object v0, p0, Lio/objectbox/e$b;->b:Lio/objectbox/e;

    iget-object v0, v0, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    invoke-static {v0}, Lio/objectbox/model/ModelProperty;->endModelProperty(Lcom/google/flatbuffers/d;)I

    move-result v0

    return v0
.end method

.method public final a(I)Lio/objectbox/e$b;
    .locals 0

    .line 96
    invoke-direct {p0}, Lio/objectbox/e$b;->b()V

    .line 97
    iput p1, p0, Lio/objectbox/e$b;->h:I

    return-object p0
.end method

.method public final a(IJ)Lio/objectbox/e$b;
    .locals 0

    .line 76
    invoke-direct {p0}, Lio/objectbox/e$b;->b()V

    .line 77
    iput p1, p0, Lio/objectbox/e$b;->i:I

    .line 78
    iput-wide p2, p0, Lio/objectbox/e$b;->j:J

    return-object p0
.end method

.method public final b(IJ)Lio/objectbox/e$b;
    .locals 0

    .line 83
    invoke-direct {p0}, Lio/objectbox/e$b;->b()V

    .line 84
    iput p1, p0, Lio/objectbox/e$b;->k:I

    .line 85
    iput-wide p2, p0, Lio/objectbox/e$b;->l:J

    return-object p0
.end method
