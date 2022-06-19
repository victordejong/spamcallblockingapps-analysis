.class public Liq0;
.super Lqd;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liq0$b;
    }
.end annotation


# instance fields
.field public f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnd;)V
    .locals 0

    invoke-direct {p0, p2}, Lqd;-><init>(Lnd;)V

    const/4 p2, 0x0

    iput-object p2, p0, Liq0;->f:Landroid/content/Context;

    iput-object p1, p0, Liq0;->f:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public e()I
    .locals 1

    invoke-static {}, Liq0$b;->values()[Liq0$b;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public u(I)Landroidx/fragment/app/Fragment;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    sget-object v2, Lr71$a;->W0:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v2, Liq0$a;->a:[I

    invoke-static {}, Liq0$b;->values()[Liq0$b;

    move-result-object v3

    aget-object p1, v3, p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_7

    const/4 v3, 0x2

    if-eq p1, v3, :cond_6

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    return-object v0

    :cond_0
    const-string p1, "minutes"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lka1;->o(J)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Liq0;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lr71$a;->M0:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->a()Z

    move-result v2

    if-nez v2, :cond_1

    const v2, 0x7f1106a4

    goto :goto_0

    :cond_1
    const v2, 0x7f1106a3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ltx0;->k(Ljava/lang/String;Ljava/lang/String;)Ltx0;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object p1, Lr71$a;->M0:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lr71$a;->O0:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const-string p1, "callers_could_be_blocked"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lka1;->o(J)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Liq0;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1106a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    :goto_1
    const-string p1, "calltype_blocked"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lka1;->o(J)Ljava/lang/String;

    move-result-object p1

    const-string v3, "calltype_category_blocked"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Liq0;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1106a5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    iget-object v1, p0, Liq0;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f110201

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    aput-object v1, v2, v5

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-static {p1, v1}, Ltx0;->k(Ljava/lang/String;Ljava/lang/String;)Ltx0;

    move-result-object p1

    return-object p1

    :cond_6
    const-string p1, "callers_blocked"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lka1;->o(J)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Liq0;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1106a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ltx0;->k(Ljava/lang/String;Ljava/lang/String;)Ltx0;

    move-result-object p1

    return-object p1

    :cond_7
    sget-object p1, Lr71$a;->M0:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lr71$a;->O0:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p1

    if-nez p1, :cond_8

    const p1, 0x7f1106a8

    goto :goto_4

    :cond_8
    sget-object p1, Lr71$a;->O0:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p1

    if-nez p1, :cond_9

    const p1, 0x7f1106a9

    goto :goto_4

    :cond_9
    const p1, 0x7f1106aa

    :goto_4
    const v1, 0x7f1203bc

    invoke-static {v0, p1, v1}, Ltx0;->j(Ljava/lang/String;II)Ltx0;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v0
.end method
