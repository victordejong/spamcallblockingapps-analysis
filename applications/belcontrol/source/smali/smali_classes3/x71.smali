.class public Lx71;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx71$a;
    }
.end annotation


# direct methods
.method public static a(Ll81;)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lx71$a;->values()[Lx71$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lx71$a;->a:Lx71$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lw71$c;->c:Lw71$c;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v1, Lx71$a;->f:Lx71$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p0}, Ll81;->d0()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v1, Lx71$a;->b:Lx71$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p0, Ll81;->h:Ljava/lang/String;

    const-string v3, "\""

    const-string v4, "\\\""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v1, Lx71$a;->c:Lx71$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p0, Ll81;->m:Li91;

    invoke-virtual {v2}, Li91;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v1, Lx71$a;->d:Lx71$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p0, Ll81;->o:Ljava/util/EnumSet;

    invoke-static {v2}, Lq71$e;->a(Ljava/util/EnumSet;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v1, Lx71$a;->h:Lx71$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p0, Ll81;->p:Ln91$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v1, Lx71$a;->j:Lx71$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-wide v4, p0, Ll81;->f:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v1, Lx71$a;->k:Lx71$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-wide v4, p0, Ll81;->s:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

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
    .locals 11

    new-instance v0, Ll81;

    invoke-direct {v0}, Ll81;-><init>()V

    sget-object v1, Lx71$a;->b:Lx71$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v1, p0, v1

    iput-object v1, v0, Ll81;->h:Ljava/lang/String;

    sget-object v1, Lx71$a;->c:Lx71$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v1, p0, v1

    invoke-static {v1}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object v1

    iput-object v1, v0, Ll81;->m:Li91;

    sget-object v1, Lq71$e;->b:Lq71$e;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    iput-object v2, v0, Ll81;->o:Ljava/util/EnumSet;

    const/4 v2, 0x0

    iput-object v2, v0, Ll81;->l:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, v0, Ll81;->j:Z

    sget-object v3, Lx71$a;->h:Lx71$a;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v3, p0, v3

    invoke-static {v3}, Ln91$a;->valueOf(Ljava/lang/String;)Ln91$a;

    move-result-object v3

    iput-object v3, v0, Ll81;->p:Ln91$a;

    sget-object v3, Lx71$a;->j:Lx71$a;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v3, p0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v0, Ll81;->f:J

    sget-object v3, Lx71$a;->k:Lx71$a;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v0, Ll81;->s:J

    invoke-virtual {v0}, Ll81;->z0()Ll81;

    new-instance v5, Ll81;

    invoke-direct {v5}, Ll81;-><init>()V

    iget-object v6, v0, Ll81;->m:Li91;

    iget-wide v7, v0, Ll81;->s:J

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v10

    const/4 v9, 0x1

    invoke-virtual/range {v5 .. v10}, Ll81;->Z(Li91;JZLjava/util/EnumSet;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v2

    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-virtual {v0}, Lv71;->z()Z

    move-result p0

    return p0
.end method
