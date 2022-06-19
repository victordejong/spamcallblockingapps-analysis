.class public Lg61;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm91$b;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg61$b;,
        Lg61$c;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lg61$c;

.field public c:Landroid/telecom/Call;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le61;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ln91$b;

.field public g:Li91;

.field public h:Ljava/lang/String;

.field public j:Lx81;

.field public k:Lq81;

.field public l:Lg61$b;

.field public m:J

.field public n:I

.field public o:Z

.field public p:Z


# direct methods
.method public constructor <init>(Landroid/telecom/Call;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg61;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg61;->d:Ljava/util/ArrayList;

    sget-object v0, Lg61$b;->a:Lg61$b;

    iput-object v0, p0, Lg61;->l:Lg61$b;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lg61;->m:J

    const/4 v0, -0x1

    iput v0, p0, Lg61;->n:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg61;->o:Z

    iput-boolean v0, p0, Lg61;->p:Z

    iput-object p1, p0, Lg61;->c:Landroid/telecom/Call;

    invoke-virtual {p0, p1}, Lg61;->g(Landroid/telecom/Call;)V

    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-static {p1}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object p1

    iput-object p1, p0, Lg61;->g:Li91;

    sget-object p1, Lr71$a;->d:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lr71;->m()[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_2

    iget-boolean p1, p0, Lg61;->p:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lg61;->g:Li91;

    invoke-static {p1}, Lo71;->e(Li91;)Ln91$b;

    move-result-object p1

    iput-object p1, p0, Lg61;->f:Ln91$b;

    invoke-virtual {p0}, Lg61;->f()V

    iget-object p1, p0, Lg61;->f:Ln91$b;

    iget-boolean p1, p1, Ln91$b;->b:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lg61;->g:Li91;

    invoke-static {p1}, Lz91;->h(Li91;)V

    :cond_1
    iget-object p1, p0, Lg61;->g:Li91;

    iget-object v0, p0, Lg61;->f:Ln91$b;

    sget-object v1, Lq71$e;->b:Lq71$e;

    invoke-static {p1, v0, v1}, Lz91;->o(Li91;Ln91$b;Lq71$e;)V

    invoke-virtual {p0}, Lg61;->d()V

    :cond_2
    invoke-virtual {p0}, Lg61;->e()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 7

    iget-boolean v0, p0, Lg61;->p:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lg61;->f:Ln91$b;

    if-eqz v0, :cond_6

    iget-object v2, p0, Lg61;->g:Li91;

    invoke-static {v2, v0}, Lba1;->b(Li91;Ln91$b;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lm81;

    invoke-direct {v0}, Lm81;-><init>()V

    iget-object v2, p0, Lg61;->g:Li91;

    invoke-virtual {v0, v2}, Lm81;->H(Li91;)Lm81;

    iget-wide v2, v0, Lm81;->d:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    iget v2, v0, Lm81;->j:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget v2, v0, Lm81;->h:I

    if-lez v2, :cond_2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    sub-long/2addr v2, v4

    iget-wide v4, v0, Lm81;->l:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_4

    :cond_2
    iget v2, v0, Lm81;->j:I

    if-nez v2, :cond_3

    iget v2, v0, Lm81;->h:I

    if-nez v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xdbba0

    sub-long/2addr v2, v4

    iget-wide v4, v0, Lm81;->l:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    sget-object v0, Lm91$c;->g:Lm91$c;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-static {p0, v0, v1}, Lm91;->d(Lm91$b;Ljava/util/EnumSet;[Ljava/lang/Class;)V

    invoke-static {}, Lfa1;->x()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lg61;->o:Z

    if-nez v1, :cond_5

    sget-object v1, Lo91$c;->a:Lo91$c;

    invoke-static {v1}, Lo91;->a(Lo91$c;)V

    :cond_5
    iget-object v1, p0, Lg61;->g:Li91;

    iget-object v2, p0, Lg61;->f:Ln91$b;

    invoke-static {v1, v2}, Lba1;->a(Li91;Ln91$b;)V

    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lg61;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lg61;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lg61;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le61;

    if-eqz v1, :cond_1

    invoke-interface {v1, p0}, Le61;->o(Lg61;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public c()V
    .locals 0

    invoke-static {p0}, Lm91;->e(Lm91$b;)V

    return-void
.end method

.method public final d()V
    .locals 2

    sget-object v0, Lr71$a;->d:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lg61;->b:Lg61$c;

    sget-object v1, Lg61$c;->c:Lg61$c;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lg61;->f:Ln91$b;

    if-eqz v0, :cond_3

    iget-boolean v1, v0, Ln91$b;->b:Z

    if-eqz v1, :cond_3

    sget-object v1, Lg61$a;->a:[I

    iget-object v0, v0, Ln91$b;->c:Lq71$a;

    invoke-virtual {v0}, Lq71$a;->d()Lq71$a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    sget-object v0, Lg61$b;->a:Lg61$b;

    goto :goto_0

    :cond_0
    sget-object v0, Lg61$b;->b:Lg61$b;

    goto :goto_0

    :cond_1
    sget-object v0, Lg61$b;->c:Lg61$b;

    goto :goto_0

    :cond_2
    sget-object v0, Lg61$b;->d:Lg61$b;

    :goto_0
    iput-object v0, p0, Lg61;->l:Lg61$b;

    :cond_3
    return-void
.end method

.method public final e()V
    .locals 6

    const/4 v0, 0x0

    iput-object v0, p0, Lg61;->h:Ljava/lang/String;

    iget-object v1, p0, Lg61;->g:Li91;

    invoke-virtual {v1}, Li91;->s()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lg61;->g:Li91;

    invoke-virtual {v1}, Li91;->q()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lx81;

    invoke-direct {v1}, Lx81;-><init>()V

    iput-object v1, p0, Lg61;->j:Lx81;

    iget-object v2, p0, Lg61;->g:Li91;

    invoke-virtual {v1, v2}, Lx81;->P(Li91;)V

    iget-object v1, p0, Lg61;->j:Lx81;

    iget-wide v1, v1, Lx81;->d:J

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    iput-object v0, p0, Lg61;->j:Lx81;

    :cond_0
    iget-object v1, p0, Lg61;->j:Lx81;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lx81;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lg61;->j:Lx81;

    iget-object v1, v1, Lx81;->f:Ljava/lang/String;

    iput-object v1, p0, Lg61;->h:Ljava/lang/String;

    :cond_1
    new-instance v1, Lq81;

    invoke-direct {v1}, Lq81;-><init>()V

    iput-object v1, p0, Lg61;->k:Lq81;

    iget-object v2, p0, Lg61;->g:Li91;

    invoke-virtual {v1, v2}, Lq81;->W(Li91;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lg61;->k:Lq81;

    invoke-virtual {v2, v1}, Lq81;->Q(Landroid/database/Cursor;)Lq81;

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lg61;->k:Lq81;

    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v1, p0, Lg61;->k:Lq81;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lq81;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lg61;->k:Lq81;

    iget-object v1, v1, Lq81;->f:Ljava/lang/String;

    iput-object v1, p0, Lg61;->h:Ljava/lang/String;

    :cond_4
    iget-object v1, p0, Lg61;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lg61;->f:Ln91$b;

    if-eqz v1, :cond_5

    iget-object v1, v1, Ln91$b;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lg61;->f:Ln91$b;

    iget-object v1, v1, Ln91$b;->f:Ljava/lang/String;

    iput-object v1, p0, Lg61;->h:Ljava/lang/String;

    :cond_5
    iget-object v1, p0, Lg61;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lg61;->g:Li91;

    invoke-virtual {v1}, Li91;->s()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lg61;->g:Li91;

    invoke-virtual {v1}, Li91;->q()Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Lu81;

    invoke-direct {v1}, Lu81;-><init>()V

    iget-object v2, p0, Lg61;->g:Li91;

    invoke-virtual {v1, v2, v0}, Lu81;->F(Li91;Ljava/lang/String;)Lu81;

    iget-object v0, v1, Lu81;->d:Ljava/lang/String;

    iput-object v0, p0, Lg61;->h:Ljava/lang/String;

    :cond_6
    iget-object v0, p0, Lg61;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lg61;->g:Li91;

    invoke-virtual {v0}, Li91;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg61;->h:Ljava/lang/String;

    :cond_8
    return-void
.end method

.method public final f()V
    .locals 5

    iget-object v0, p0, Lg61;->g:Li91;

    invoke-static {v0}, Lo71;->e(Li91;)Ln91$b;

    move-result-object v0

    iput-object v0, p0, Lg61;->f:Ln91$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time to check cache for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg61;->g:Li91;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CACHING"

    invoke-static {v1, v0}, Lj91;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    iget-object v0, p0, Lg61;->f:Ln91$b;

    if-nez v0, :cond_1

    const-string v0, "FILTERING"

    invoke-static {v0}, Lj91;->C(Ljava/lang/String;)V

    iget-object v1, p0, Lg61;->g:Li91;

    sget-object v2, Lq71$e;->b:Lq71$e;

    invoke-static {v1, v2}, Ln91;->a(Li91;Lq71$e;)Ln91$b;

    move-result-object v1

    iput-object v1, p0, Lg61;->f:Ln91$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time to filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lg61;->g:Li91;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lj91;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    iget-object v0, p0, Lg61;->f:Ln91$b;

    iget-object v0, v0, Ln91$b;->a:Ln91$a;

    sget-object v1, Ln91$a;->q:Ln91$a;

    if-eq v0, v1, :cond_1

    sget-object v1, Ln91$a;->y:Ln91$a;

    if-eq v0, v1, :cond_1

    const-string v0, "CACHE_SAVE"

    invoke-static {v0}, Lj91;->C(Ljava/lang/String;)V

    iget-object v1, p0, Lg61;->f:Ln91$b;

    iget-object v2, v1, Ln91$b;->a:Ln91$a;

    sget-object v3, Ln91$a;->p:Ln91$a;

    if-ne v2, v3, :cond_0

    const-wide/32 v2, 0x5265c00

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0x1

    :goto_0
    iget-object v4, p0, Lg61;->g:Li91;

    invoke-static {v4, v1, v2, v3}, Lo71;->h(Li91;Ln91$b;J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time to save "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lg61;->g:Li91;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lj91;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    :cond_1
    iget-object v0, p0, Lg61;->f:Ln91$b;

    iget-object v0, v0, Ln91$b;->a:Ln91$a;

    sget-object v1, Ln91$a;->q:Ln91$a;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lg61;->g:Li91;

    invoke-virtual {v0}, Li91;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu71;->E(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lg61;->g:Li91;

    sget-object v1, Lq71$e;->b:Lq71$e;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2}, Ln91;->b(Li91;Lq71$e;Ljava/lang/Boolean;)Ln91$b;

    move-result-object v0

    iget-object v1, p0, Lg61;->f:Ln91$b;

    iget-boolean v2, v0, Ln91$b;->b:Z

    iput-boolean v2, v1, Ln91$b;->b:Z

    iget-boolean v2, v0, Ln91$b;->b:Z

    if-eqz v2, :cond_2

    iget-object v0, v0, Ln91$b;->a:Ln91$a;

    goto :goto_1

    :cond_2
    sget-object v0, Ln91$a;->r:Ln91$a;

    :goto_1
    iput-object v0, v1, Ln91$b;->a:Ln91$a;

    :cond_3
    return-void
.end method

.method public g(Landroid/telecom/Call;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/telecom/Call;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    const/4 v2, 0x7

    if-eq v0, v2, :cond_3

    const/16 p1, 0x8

    if-eq v0, p1, :cond_2

    const/16 p1, 0x9

    if-eq v0, p1, :cond_1

    sget-object p1, Lg61$c;->g:Lg61$c;

    goto :goto_0

    :cond_1
    sget-object p1, Lg61$c;->a:Lg61$c;

    goto :goto_1

    :cond_2
    sget-object p1, Lg61$c;->j:Lg61$c;

    goto :goto_0

    :cond_3
    sget-object v0, Lg61$c;->f:Lg61$c;

    iput-object v0, p0, Lg61;->b:Lg61$c;

    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result p1

    iput p1, p0, Lg61;->n:I

    goto :goto_2

    :cond_4
    sget-object p1, Lg61$c;->d:Lg61$c;

    goto :goto_0

    :cond_5
    sget-object p1, Lg61$c;->h:Lg61$c;

    goto :goto_0

    :cond_6
    sget-object p1, Lg61$c;->c:Lg61$c;

    :goto_0
    iput-object p1, p0, Lg61;->b:Lg61$c;

    goto :goto_2

    :cond_7
    sget-object p1, Lg61$c;->b:Lg61$c;

    :goto_1
    iput-object p1, p0, Lg61;->b:Lg61$c;

    iput-boolean v1, p0, Lg61;->p:Z

    :cond_8
    :goto_2
    return-void
.end method

.method public i(Lm91$c;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm91$c;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    check-cast p3, Li91;

    if-nez p3, :cond_1

    invoke-static {}, Lfa1;->x()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lm91$c;->h:Lm91$c;

    invoke-static {p0, p1, p0}, Lm91;->a(Ljava/lang/Object;Lm91$c;Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Lm81;

    invoke-direct {p1}, Lm81;-><init>()V

    invoke-virtual {p1, p3}, Lm81;->H(Li91;)Lm81;

    invoke-virtual {p1}, Lm81;->J()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lg61;->f()V

    invoke-virtual {p0}, Lg61;->d()V

    invoke-virtual {p0}, Lg61;->e()V

    invoke-virtual {p0}, Lg61;->b()V

    :cond_2
    invoke-static {}, Lfa1;->x()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lm91$c;->h:Lm91$c;

    invoke-static {p0, p1, p0}, Lm91;->a(Ljava/lang/Object;Lm91$c;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
