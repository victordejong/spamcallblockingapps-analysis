.class public final Lcom/dropbox/core/v2/files/q;
.super Lcom/dropbox/core/v2/files/al;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/q$a;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Ljava/util/Date;

.field protected final c:Ljava/util/Date;

.field protected final d:Ljava/lang/String;

.field protected final e:J

.field protected final f:Lcom/dropbox/core/v2/files/aj;

.field protected final g:Lcom/dropbox/core/v2/files/ax;

.field protected final h:Lcom/dropbox/core/v2/files/s;

.field protected final i:Z

.field protected final j:Lcom/dropbox/core/v2/files/m;

.field protected final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/fileproperties/j;",
            ">;"
        }
    .end annotation
.end field

.field protected final l:Ljava/lang/Boolean;

.field protected final m:Ljava/lang/String;

.field protected final n:Lcom/dropbox/core/v2/files/p;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;J)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 193
    invoke-direct/range {v0 .. v19}, Lcom/dropbox/core/v2/files/q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/files/aj;Lcom/dropbox/core/v2/files/ax;Lcom/dropbox/core/v2/files/s;ZLcom/dropbox/core/v2/files/m;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Lcom/dropbox/core/v2/files/p;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/files/aj;Lcom/dropbox/core/v2/files/ax;Lcom/dropbox/core/v2/files/s;ZLcom/dropbox/core/v2/files/m;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Lcom/dropbox/core/v2/files/p;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v2/files/aj;",
            "Lcom/dropbox/core/v2/files/ax;",
            "Lcom/dropbox/core/v2/files/s;",
            "Z",
            "Lcom/dropbox/core/v2/files/m;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/v2/fileproperties/j;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v2/files/p;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p5

    move-object/from16 v3, p16

    move-object/from16 v4, p18

    move-object v5, p1

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    .line 113
    invoke-direct {p0, p1, v6, v7, v8}, Lcom/dropbox/core/v2/files/al;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_b

    .line 117
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_a

    .line 120
    iput-object v1, v0, Lcom/dropbox/core/v2/files/q;->a:Ljava/lang/String;

    if-eqz p3, :cond_9

    .line 124
    invoke-static {p3}, Lcom/dropbox/core/util/d;->a(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/dropbox/core/v2/files/q;->b:Ljava/util/Date;

    if-eqz p4, :cond_8

    .line 128
    invoke-static {p4}, Lcom/dropbox/core/util/d;->a(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/dropbox/core/v2/files/q;->c:Ljava/util/Date;

    if-eqz v2, :cond_7

    .line 132
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v5, 0x9

    if-lt v1, v5, :cond_6

    const-string v1, "[0-9a-f]+"

    .line 135
    invoke-static {v1, p5}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 138
    iput-object v2, v0, Lcom/dropbox/core/v2/files/q;->d:Ljava/lang/String;

    move-wide v1, p6

    .line 139
    iput-wide v1, v0, Lcom/dropbox/core/v2/files/q;->e:J

    move-object/from16 v1, p11

    .line 140
    iput-object v1, v0, Lcom/dropbox/core/v2/files/q;->f:Lcom/dropbox/core/v2/files/aj;

    move-object/from16 v1, p12

    .line 141
    iput-object v1, v0, Lcom/dropbox/core/v2/files/q;->g:Lcom/dropbox/core/v2/files/ax;

    move-object/from16 v1, p13

    .line 142
    iput-object v1, v0, Lcom/dropbox/core/v2/files/q;->h:Lcom/dropbox/core/v2/files/s;

    move/from16 v1, p14

    .line 143
    iput-boolean v1, v0, Lcom/dropbox/core/v2/files/q;->i:Z

    move-object/from16 v1, p15

    .line 144
    iput-object v1, v0, Lcom/dropbox/core/v2/files/q;->j:Lcom/dropbox/core/v2/files/m;

    if-eqz v3, :cond_1

    .line 146
    invoke-interface/range {p16 .. p16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dropbox/core/v2/fileproperties/j;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'propertyGroups\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_1
    iput-object v3, v0, Lcom/dropbox/core/v2/files/q;->k:Ljava/util/List;

    move-object/from16 v1, p17

    .line 153
    iput-object v1, v0, Lcom/dropbox/core/v2/files/q;->l:Ljava/lang/Boolean;

    if-eqz v4, :cond_4

    .line 155
    invoke-virtual/range {p18 .. p18}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-lt v1, v2, :cond_3

    .line 158
    invoke-virtual/range {p18 .. p18}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v2, :cond_2

    goto :goto_1

    .line 159
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'contentHash\' is longer than 64"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'contentHash\' is shorter than 64"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_4
    :goto_1
    iput-object v4, v0, Lcom/dropbox/core/v2/files/q;->m:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 163
    iput-object v1, v0, Lcom/dropbox/core/v2/files/q;->n:Lcom/dropbox/core/v2/files/p;

    return-void

    .line 136
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'rev\' does not match pattern"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'rev\' is shorter than 9"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'rev\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'serverModified\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'clientModified\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'id\' is shorter than 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'id\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/dropbox/core/v2/files/q;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/dropbox/core/v2/files/q;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .line 771
    sget-object v0, Lcom/dropbox/core/v2/files/q$a;->a:Lcom/dropbox/core/v2/files/q$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/q$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 730
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 731
    check-cast p1, Lcom/dropbox/core/v2/files/q;

    .line 732
    iget-object v2, p0, Lcom/dropbox/core/v2/files/q;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/q;->o:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/files/q;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/q;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/files/q;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/q;->a:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    .line 733
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/files/q;->b:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/q;->b:Ljava/util/Date;

    if-eq v2, v3, :cond_4

    .line 734
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/files/q;->c:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/q;->c:Ljava/util/Date;

    if-eq v2, v3, :cond_5

    .line 735
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/files/q;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/q;->d:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    .line 736
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_6
    iget-wide v2, p0, Lcom/dropbox/core/v2/files/q;->e:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/files/q;->e:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_12

    iget-object v2, p0, Lcom/dropbox/core/v2/files/q;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/q;->p:Ljava/lang/String;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/files/q;->p:Ljava/lang/String;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/dropbox/core/v2/files/q;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/q;->p:Ljava/lang/String;

    .line 738
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/files/q;->q:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/q;->q:Ljava/lang/String;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/files/q;->q:Ljava/lang/String;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/dropbox/core/v2/files/q;->q:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/q;->q:Ljava/lang/String;

    .line 739
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_8
    iget-object v2, p0, Lcom/dropbox/core/v2/files/q;->r:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/q;->r:Ljava/lang/String;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/files/q;->r:Ljava/lang/String;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/dropbox/core/v2/files/q;->r:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/q;->r:Ljava/lang/String;

    .line 740
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_9
    iget-object v2, p0, Lcom/dropbox/core/v2/files/q;->f:Lcom/dropbox/core/v2/files/aj;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/q;->f:Lcom/dropbox/core/v2/files/aj;

    if-eq v2, v3, :cond_a

    if-eqz v2, :cond_12

    .line 741
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/aj;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_a
    iget-object v2, p0, Lcom/dropbox/core/v2/files/q;->g:Lcom/dropbox/core/v2/files/ax;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/q;->g:Lcom/dropbox/core/v2/files/ax;

    if-eq v2, v3, :cond_b

    if-eqz v2, :cond_12

    .line 742
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/ax;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_b
    iget-object v2, p0, Lcom/dropbox/core/v2/files/q;->h:Lcom/dropbox/core/v2/files/s;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/q;->h:Lcom/dropbox/core/v2/files/s;

    if-eq v2, v3, :cond_c

    if-eqz v2, :cond_12

    .line 743
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/s;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_c
    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/q;->i:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/q;->i:Z

    if-ne v2, v3, :cond_12

    iget-object v2, p0, Lcom/dropbox/core/v2/files/q;->j:Lcom/dropbox/core/v2/files/m;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/q;->j:Lcom/dropbox/core/v2/files/m;

    if-eq v2, v3, :cond_d

    if-eqz v2, :cond_12

    .line 745
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/m;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_d
    iget-object v2, p0, Lcom/dropbox/core/v2/files/q;->k:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/q;->k:Ljava/util/List;

    if-eq v2, v3, :cond_e

    if-eqz v2, :cond_12

    .line 746
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_e
    iget-object v2, p0, Lcom/dropbox/core/v2/files/q;->l:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/q;->l:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_f

    if-eqz v2, :cond_12

    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_f
    iget-object v2, p0, Lcom/dropbox/core/v2/files/q;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/q;->m:Ljava/lang/String;

    if-eq v2, v3, :cond_10

    if-eqz v2, :cond_12

    .line 748
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_10
    iget-object v2, p0, Lcom/dropbox/core/v2/files/q;->n:Lcom/dropbox/core/v2/files/p;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/q;->n:Lcom/dropbox/core/v2/files/p;

    if-eq v2, p1, :cond_11

    if-eqz v2, :cond_12

    .line 749
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/p;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    :cond_11
    return v0

    :cond_12
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    .line 701
    iget-object v1, p0, Lcom/dropbox/core/v2/files/q;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/q;->b:Ljava/util/Date;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/q;->c:Ljava/util/Date;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/q;->d:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/dropbox/core/v2/files/q;->e:J

    .line 706
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/q;->f:Lcom/dropbox/core/v2/files/aj;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/q;->g:Lcom/dropbox/core/v2/files/ax;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/q;->h:Lcom/dropbox/core/v2/files/s;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/files/q;->i:Z

    .line 710
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/q;->j:Lcom/dropbox/core/v2/files/m;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/q;->k:Ljava/util/List;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/q;->l:Ljava/lang/Boolean;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/q;->m:Ljava/lang/String;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/q;->n:Lcom/dropbox/core/v2/files/p;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 701
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 717
    invoke-super {p0}, Lcom/dropbox/core/v2/files/al;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 759
    sget-object v0, Lcom/dropbox/core/v2/files/q$a;->a:Lcom/dropbox/core/v2/files/q$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/q$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
