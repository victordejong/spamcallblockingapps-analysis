.class public Ly71;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly71$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "y71"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ll81;)Ljava/lang/String;
    .locals 7

    invoke-static {}, Ly71$a;->values()[Ly71$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Ly71$a;->a:Ly71$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lw71$c;->f:Lw71$c;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v1, Ly71$a;->b:Ly71$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p0, Ll81;->h:Ljava/lang/String;

    const-string v3, "\""

    const-string v4, "\\\""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v1, Ly71$a;->c:Ly71$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p0, Ll81;->m:Li91;

    invoke-virtual {v2}, Li91;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v1, Ly71$a;->d:Ly71$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p0, Ll81;->o:Ljava/util/EnumSet;

    invoke-static {v2}, Lq71$e;->a(Ljava/util/EnumSet;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v1, Ly71$a;->f:Ly71$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p0}, Ll81;->d0()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v1, Ly71$a;->g:Ly71$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p0, Ll81;->l:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    aput-object v2, v0, v1

    sget-object v1, Ly71$a;->h:Ly71$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p0, Ll81;->p:Ln91$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v1, Ly71$a;->j:Ly71$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-wide v4, p0, Ll81;->s:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v1, Ly71$a;->k:Ly71$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p0, Ll81;->z:Ljava/lang/String;

    aput-object v2, v0, v1

    sget-object v1, Ly71$a;->l:Ly71$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-wide v4, p0, Ll81;->w:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v1, Ly71$a;->m:Ly71$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-wide v4, p0, Ll81;->u:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v1, Ly71$a;->n:Ly71$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-wide v4, p0, Ll81;->f:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lt81;

    invoke-direct {v2}, Lt81;-><init>()V

    iget-wide v4, p0, Ll81;->d:J

    invoke-virtual {v2, v4, v5}, Lt81;->F(J)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    :cond_1
    new-instance v2, Lt81;

    invoke-direct {v2}, Lt81;-><init>()V

    invoke-virtual {v2, p0}, Lt81;->E(Landroid/database/Cursor;)Lt81;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v2

    sget-object v4, Ly71;->a:Ljava/lang/String;

    const-string v5, "Error creating MMS parts"

    invoke-static {v4, v5, v2}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    sget-object p0, Ly71$a;->o:Ly71$a;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {v1}, Lka1;->m(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\""

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"\r\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b([Ljava/lang/String;)Z
    .locals 12

    new-instance v0, Ll81;

    invoke-direct {v0}, Ll81;-><init>()V

    sget-object v1, Ly71$a;->b:Ly71$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v1, p0, v1

    iput-object v1, v0, Ll81;->h:Ljava/lang/String;

    sget-object v1, Ly71$a;->c:Ly71$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v1, p0, v1

    invoke-static {v1}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object v1

    iput-object v1, v0, Ll81;->m:Li91;

    sget-object v1, Lq71$e;->d:Lq71$e;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    iput-object v2, v0, Ll81;->o:Ljava/util/EnumSet;

    sget-object v2, Ly71$a;->g:Ly71$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v2, p0, v2

    iput-object v2, v0, Ll81;->l:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, v0, Ll81;->j:Z

    sget-object v3, Ly71$a;->h:Ly71$a;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v3, p0, v3

    invoke-static {v3}, Ln91$a;->valueOf(Ljava/lang/String;)Ln91$a;

    move-result-object v3

    iput-object v3, v0, Ll81;->p:Ln91$a;

    sget-object v3, Ly71$a;->j:Ly71$a;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v3, p0, v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v0, Ll81;->s:J

    sget-object v3, Ly71$a;->k:Ly71$a;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v3, p0, v3

    iput-object v3, v0, Ll81;->z:Ljava/lang/String;

    sget-object v3, Ly71$a;->l:Ly71$a;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v3, p0, v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v0, Ll81;->w:J

    sget-object v3, Ly71$a;->m:Ly71$a;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v3, p0, v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v0, Ll81;->u:J

    sget-object v3, Ly71$a;->n:Ly71$a;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v3, p0, v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v0, Ll81;->f:J

    iput v2, v0, Ll81;->n:I

    const-wide/16 v3, -0x1

    iput-wide v3, v0, Ll81;->d:J

    invoke-virtual {v0}, Ll81;->z0()Ll81;

    new-instance v5, Ll81;

    invoke-direct {v5}, Ll81;-><init>()V

    iget-object v6, v0, Ll81;->m:Li91;

    iget-wide v7, v0, Ll81;->s:J

    iget-object v10, v0, Ll81;->l:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v11

    const/4 v9, 0x1

    invoke-virtual/range {v5 .. v11}, Ll81;->Y(Li91;JZLjava/lang/String;Ljava/util/EnumSet;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v2

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-virtual {v0}, Lv71;->z()Z

    const/4 v1, 0x0

    :try_start_0
    sget-object v3, Ly71$a;->o:Ly71$a;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object p0, p0, v3

    invoke-static {p0}, Lka1;->r(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p0

    goto :goto_0

    :catchall_0
    nop

    :goto_0
    if-nez v1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    iput p0, v0, Ll81;->v:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt81;

    invoke-virtual {v1}, Lt81;->L()V

    iget-wide v3, v0, Ll81;->d:J

    iput-wide v3, v1, Lt81;->f:J

    invoke-virtual {v1}, Lv71;->z()Z

    goto :goto_1

    :cond_3
    return v2
.end method
