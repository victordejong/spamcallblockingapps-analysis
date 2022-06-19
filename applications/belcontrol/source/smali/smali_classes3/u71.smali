.class public Lu71;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu71$b;
    }
.end annotation


# static fields
.field public static final h:Ljava/lang/String;

.field public static j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation
.end field

.field public static k:Lu71;

.field public static l:Ljava/util/concurrent/ScheduledExecutorService;

.field public static m:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lu71$b;",
            ">;"
        }
    .end annotation
.end field

.field public d:[Ljava/lang/Integer;

.field public f:B

.field public g:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lu71;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lu71;->h:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu71;->j:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-object v0, Lu71;->k:Lu71;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lu71;->a:Z

    iput-boolean v0, p0, Lu71;->b:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lu71;->c:Ljava/util/ArrayList;

    new-instance v2, Lu71$b;

    const/16 v3, 0x2bc

    const/16 v4, 0xa5

    invoke-direct {v2, v3, v4, v0}, Lu71$b;-><init>(IIZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lu71;->c:Ljava/util/ArrayList;

    new-instance v2, Lu71$b;

    const/16 v3, 0x5a0

    invoke-direct {v2, v0, v3, v0}, Lu71$b;-><init>(IIZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lu71;->c:Ljava/util/ArrayList;

    new-instance v2, Lu71$b;

    invoke-direct {v2, v0, v3, v0}, Lu71$b;-><init>(IIZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lu71;->c:Ljava/util/ArrayList;

    new-instance v2, Lu71$b;

    invoke-direct {v2, v0, v3, v0}, Lu71$b;-><init>(IIZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lu71;->c:Ljava/util/ArrayList;

    new-instance v2, Lu71$b;

    invoke-direct {v2, v0, v3, v0}, Lu71$b;-><init>(IIZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lu71;->c:Ljava/util/ArrayList;

    new-instance v2, Lu71$b;

    invoke-direct {v2, v0, v3, v0}, Lu71$b;-><init>(IIZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lu71;->c:Ljava/util/ArrayList;

    new-instance v2, Lu71$b;

    invoke-direct {v2, v0, v3, v0}, Lu71$b;-><init>(IIZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-byte v0, p0, Lu71;->f:B

    new-array v0, v0, [Ljava/lang/Integer;

    iput-object v0, p0, Lu71;->d:[Ljava/lang/Integer;

    return-void
.end method

.method public static A(Z)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Lu71;->x(Z)V

    invoke-static {}, Lu71;->k()Lu71;

    move-result-object p0

    iget-byte v0, p0, Lu71;->f:B

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lu71;->k()Lu71;

    move-result-object p0

    iget-byte v0, p0, Lu71;->f:B

    and-int/lit8 v0, v0, -0x2

    :goto_0
    int-to-byte v0, v0

    iput-byte v0, p0, Lu71;->f:B

    sget-object p0, Lu71;->k:Lu71;

    invoke-virtual {p0}, Lu71;->v()V

    return-void
.end method

.method public static B(Z)V
    .locals 2

    invoke-static {}, Lu71;->k()Lu71;

    move-result-object v0

    iget-boolean v1, v0, Lu71;->b:Z

    if-ne v1, p0, :cond_0

    return-void

    :cond_0
    iput-boolean p0, v0, Lu71;->b:Z

    return-void
.end method

.method public static C(Z)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {}, Lu71;->k()Lu71;

    move-result-object p0

    iget-byte v0, p0, Lu71;->f:B

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    invoke-static {}, Lu71;->k()Lu71;

    move-result-object p0

    iget-byte v0, p0, Lu71;->f:B

    and-int/lit8 v0, v0, -0x3

    :goto_0
    int-to-byte v0, v0

    iput-byte v0, p0, Lu71;->f:B

    sget-object p0, Lu71;->k:Lu71;

    invoke-virtual {p0}, Lu71;->v()V

    return-void
.end method

.method public static D()Ljava/lang/String;
    .locals 7

    sget-object v0, Lu71;->k:Lu71;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lu71;->h:Ljava/lang/String;

    const-string v2, "Cannot be exported without instance!"

    invoke-static {v0, v2}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "is24_7"

    sget-object v3, Lu71;->k:Lu71;

    iget-boolean v3, v3, Lu71;->a:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "isRepeatedCallsAllowed"

    sget-object v3, Lu71;->k:Lu71;

    iget-boolean v3, v3, Lu71;->b:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    sget-object v3, Lu71;->k:Lu71;

    iget-object v3, v3, Lu71;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lu71$b;

    invoke-virtual {v4}, Lu71$b;->b()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const-string v3, "schedule"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    sget-object v3, Lu71;->k:Lu71;

    iget-object v3, v3, Lu71;->d:[Ljava/lang/Integer;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const-string v3, "groupsAllowed"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "allowedContent"

    sget-object v3, Lu71;->k:Lu71;

    iget-byte v3, v3, Lu71;->f:B

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saving: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    sget-object v2, Lu71;->h:Ljava/lang/String;

    const-string v3, "Unable to export"

    invoke-static {v2, v3, v0}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static E(Ljava/lang/String;)Z
    .locals 7

    invoke-static {}, Lu71;->q()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lu71;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-eqz v0, :cond_2

    aget-wide v4, v0, v1

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    const/4 v2, 0x1

    aget-wide v3, v0, v2

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    aput-wide v3, v0, v2

    sget-object v3, Lu71;->j:Ljava/util/HashMap;

    invoke-virtual {v3, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-wide v3, v0, v2

    const-wide/16 v5, 0x3

    cmp-long p0, v3, v5

    if-ltz p0, :cond_2

    return v2

    :cond_1
    sget-object v0, Lu71;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return v1
.end method

.method public static F(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lu71;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lu71;->q()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lu71;->j:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [J

    aput-wide v0, v2, v3

    const/4 v0, 0x1

    const-wide/16 v3, 0x1

    aput-wide v3, v2, v0

    goto :goto_0

    :cond_1
    aput-wide v0, v2, v3

    :goto_0
    sget-object v0, Lu71;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void
.end method

.method public static G()V
    .locals 0

    invoke-static {}, Lu71;->k()Lu71;

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lu71;->u()V

    return-void
.end method

.method public static b()[Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lu71;->k()Lu71;

    move-result-object v0

    iget-object v0, v0, Lu71;->d:[Ljava/lang/Integer;

    return-object v0
.end method

.method public static c([Ljava/lang/Integer;)Z
    .locals 3

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-array p0, v2, [Ljava/lang/Integer;

    sget v0, Lb81;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v1

    :cond_0
    invoke-static {}, Lu71;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lu71;->o()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lu71;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lu71;->b()[Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lka1;->k([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static d()Z
    .locals 1

    invoke-static {}, Lu71;->k()Lu71;

    move-result-object v0

    iget-byte v0, v0, Lu71;->f:B

    if-nez v0, :cond_1

    invoke-static {}, Lu71;->n()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static e()Z
    .locals 4

    invoke-static {}, Lu71;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x7

    if-ge v2, v3, :cond_2

    invoke-static {v2}, Lu71;->j(I)Lu71$b;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-boolean v3, v3, Lu71$b;->c:Z

    if-eqz v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static f()V
    .locals 2

    :try_start_0
    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v0

    const-string v1, "DndData"

    invoke-virtual {v0, v1}, Landroid/app/Application;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lu71;->D()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h(Ljava/lang/String;)V
    .locals 7

    sget-object v0, Lu71;->k:Lu71;

    if-nez v0, :cond_0

    sget-object p0, Lu71;->h:Ljava/lang/String;

    const-string v0, "Cannot be imported without instance!"

    invoke-static {p0, v0}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v1, Lu71;->k:Lu71;

    const-string v2, "isRepeatedCallsAllowed"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lu71;->b:Z

    sget-object v1, Lu71;->k:Lu71;

    const-string v2, "is24_7"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lu71;->a:Z

    sget-object v1, Lu71;->k:Lu71;

    const-string v2, "allowedContent"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, v1, Lu71;->f:B

    const-string v1, "schedule"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    sget-object v3, Lu71;->k:Lu71;

    iget-object v3, v3, Lu71;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    sget-object v5, Lu71;->k:Lu71;

    iget-object v5, v5, Lu71;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lu71$b;->a(Lorg/json/JSONObject;)Lu71$b;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "groupsAllowed"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lu71;->k:Lu71;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Integer;

    iput-object v3, v1, Lu71;->d:[Ljava/lang/Integer;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_2

    sget-object v3, Lu71;->k:Lu71;

    iget-object v3, v3, Lu71;->d:[Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    sget-object v0, Lu71;->k:Lu71;

    invoke-static {p0}, Lka1;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lu71;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object v0, Lu71;->h:Ljava/lang/String;

    const-string v1, "Unable to import"

    invoke-static {v0, v1, p0}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public static i(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    rem-int/lit8 p0, p0, 0x7

    return p0

    :pswitch_0
    const/4 p0, 0x5

    return p0

    :pswitch_1
    const/4 p0, 0x4

    return p0

    :pswitch_2
    const/4 p0, 0x3

    return p0

    :pswitch_3
    const/4 p0, 0x2

    return p0

    :pswitch_4
    const/4 p0, 0x1

    return p0

    :pswitch_5
    const/4 p0, 0x0

    return p0

    :pswitch_6
    const/4 p0, 0x6

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static j(I)Lu71$b;
    .locals 1

    if-ltz p0, :cond_1

    const/4 v0, 0x6

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Lu71;->k()Lu71;

    move-result-object v0

    iget-object v0, v0, Lu71;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu71$b;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Lu71;

    invoke-direct {v0}, Lu71;-><init>()V

    sput-object v0, Lu71;->k:Lu71;

    invoke-static {}, Lu71;->k()Lu71;

    move-result-object v0

    iget-object v0, v0, Lu71;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu71$b;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static k()Lu71;
    .locals 1

    sget-object v0, Lu71;->k:Lu71;

    if-nez v0, :cond_0

    invoke-static {}, Lu71;->s()V

    :cond_0
    sget-object v0, Lu71;->k:Lu71;

    return-object v0
.end method

.method public static l(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lu71;->h(Ljava/lang/String;)V

    sget-object p0, Lu71;->k:Lu71;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lu71;->v()V

    :cond_0
    return-void
.end method

.method public static m()Z
    .locals 1

    invoke-static {}, Lu71;->k()Lu71;

    move-result-object v0

    iget-boolean v0, v0, Lu71;->a:Z

    return v0
.end method

.method public static n()Z
    .locals 6

    invoke-static {}, Lu71;->k()Lu71;

    move-result-object v0

    iget-boolean v0, v0, Lu71;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lu71;->i(I)I

    move-result v2

    invoke-static {v2}, Lu71;->j(I)Lu71$b;

    move-result-object v2

    iget-boolean v3, v2, Lu71$b;->c:Z

    const/4 v4, 0x0

    if-nez v3, :cond_1

    return v4

    :cond_1
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v3, v0

    iget v0, v2, Lu71$b;->a:I

    iget v2, v2, Lu71$b;->b:I

    if-ge v0, v2, :cond_3

    if-lt v3, v0, :cond_2

    if-gt v3, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_3
    if-le v3, v2, :cond_5

    if-lt v3, v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_1
    return v1
.end method

.method public static o()Z
    .locals 2

    invoke-static {}, Lu71;->k()Lu71;

    move-result-object v0

    iget-byte v0, v0, Lu71;->f:B

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static p()Z
    .locals 2

    invoke-static {}, Lu71;->k()Lu71;

    move-result-object v0

    iget-byte v0, v0, Lu71;->f:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lu71;->k()Lu71;

    move-result-object v0

    iget-object v0, v0, Lu71;->d:[Ljava/lang/Integer;

    array-length v0, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static q()Z
    .locals 1

    sget-object v0, Lr71$a;->d:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lu71;->k()Lu71;

    move-result-object v0

    iget-boolean v0, v0, Lu71;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static r()Z
    .locals 2

    invoke-static {}, Lu71;->k()Lu71;

    move-result-object v0

    iget-byte v0, v0, Lu71;->f:B

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static s()V
    .locals 6

    :try_start_0
    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v0

    const-string v1, "DndData"

    invoke-virtual {v0, v1}, Landroid/app/Application;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    :goto_0
    if-eqz v3, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    new-instance v0, Lu71;

    invoke-direct {v0}, Lu71;-><init>()V

    sput-object v0, Lu71;->k:Lu71;

    invoke-static {v4}, Lu71;->h(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    new-instance v0, Lu71;

    invoke-direct {v0}, Lu71;-><init>()V

    sput-object v0, Lu71;->k:Lu71;

    :goto_1
    return-void
.end method

.method public static t(Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lu71;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lu71;->q()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lu71;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    aput-wide v2, v0, v1

    sget-object v1, Lu71;->j:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public static u()V
    .locals 4

    sget-object v0, Lu71;->k:Lu71;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lu71;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v1

    const-string v2, "DndData"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-static {v0}, Lka1;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lu71;->k:Lu71;

    iget-object v2, v2, Lu71;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-static {v2, v2}, Lm91;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lu71;->k:Lu71;

    iput-object v1, v2, Lu71;->g:Ljava/lang/String;

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instance saved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "Unable to save DnD to DndData"

    invoke-static {v0, v1}, Lj91;->v(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static w(Z)V
    .locals 2

    invoke-static {}, Lu71;->k()Lu71;

    move-result-object v0

    iget-boolean v1, v0, Lu71;->a:Z

    if-ne v1, p0, :cond_0

    return-void

    :cond_0
    iput-boolean p0, v0, Lu71;->a:Z

    return-void
.end method

.method public static x(Z)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Lu71;->A(Z)V

    invoke-static {}, Lu71;->k()Lu71;

    move-result-object p0

    iget-byte v0, p0, Lu71;->f:B

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    invoke-static {}, Lu71;->k()Lu71;

    move-result-object p0

    iget-byte v0, p0, Lu71;->f:B

    and-int/lit8 v0, v0, -0x5

    :goto_0
    int-to-byte v0, v0

    iput-byte v0, p0, Lu71;->f:B

    sget-object p0, Lu71;->k:Lu71;

    invoke-virtual {p0}, Lu71;->v()V

    return-void
.end method

.method public static y([Ljava/lang/Integer;)V
    .locals 2

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lu71;->x(Z)V

    invoke-static {}, Lu71;->k()Lu71;

    move-result-object v0

    iget-byte v1, v0, Lu71;->f:B

    or-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lu71;->k()Lu71;

    move-result-object v0

    iget-byte v1, v0, Lu71;->f:B

    and-int/lit8 v1, v1, -0x2

    :goto_0
    int-to-byte v1, v1

    iput-byte v1, v0, Lu71;->f:B

    sget-object v0, Lu71;->k:Lu71;

    iput-object p0, v0, Lu71;->d:[Ljava/lang/Integer;

    invoke-virtual {v0}, Lu71;->v()V

    return-void
.end method

.method public static z(IIIZ)V
    .locals 2

    if-ltz p0, :cond_1

    const/4 v0, 0x6

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lu71;->k()Lu71;

    move-result-object v0

    iget-object v0, v0, Lu71;->c:Ljava/util/ArrayList;

    new-instance v1, Lu71$b;

    invoke-direct {v1, p1, p2, p3}, Lu71$b;-><init>(IIZ)V

    invoke-virtual {v0, p0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lu71;->k:Lu71;

    invoke-virtual {p0}, Lu71;->v()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final v()V
    .locals 5

    sget-object v0, Lu71;->l:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lu71;->l:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    sget-object v0, Lu71;->m:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    sget-object v0, Lu71;->l:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lu71$a;

    invoke-direct {v1, p0}, Lu71$a;-><init>(Lu71;)V

    const-wide/16 v2, 0x1388

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    sput-object v0, Lu71;->m:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
