.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public a:Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;

.field public final synthetic b:Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;->b:Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;

    return-void
.end method

.method public static synthetic a(Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Long;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;->d(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Long;Z)V

    return-void
.end method

.method public static synthetic b(Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;J)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;->c(Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;J)V

    return-void
.end method


# virtual methods
.method public final c(Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;J)V
    .locals 1

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$d;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;->b:Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;->B(Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f$a;

    invoke-direct {v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;)V

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public final d(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Long;Z)V
    .locals 4

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_3

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "number"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v2, p1, p3, p4}, Lj81;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public postMessage(Ljava/lang/String;)V
    .locals 17
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    move-object/from16 v8, p0

    const-string v0, "ttl"

    const-string v1, "userConsent"

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "action"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;->a(Ljava/lang/String;)Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;

    move-result-object v9

    if-nez v9, :cond_0

    return-void

    :cond_0
    const-string v3, "delay"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v12, 0x0

    if-nez v3, :cond_2

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    sget-object v3, Lr71$a;->s1:Lr71$a;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v1}, Lr71$a;->k(Ljava/lang/Boolean;)V

    const-string v1, "extras"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {v8, v9, v10, v11}, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;->c(Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;J)V

    return-void

    :cond_4
    const-string v2, "campaign"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-virtual {v8, v9, v10, v11}, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;->c(Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;J)V

    return-void

    :cond_5
    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "phone_numbers"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    if-eqz v14, :cond_9

    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_4

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-wide/32 v0, 0x5265c00

    goto :goto_3

    :cond_7
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_3
    add-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v8, v13, v14, v15, v12}, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;->d(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Long;Z)V

    invoke-static {}, Lu71;->e()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v8, v9, v10, v11}, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;->c(Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;J)V

    :catch_0
    move-object v0, v8

    goto/16 :goto_5

    :cond_8
    iget-object v6, v8, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;->b:Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;

    invoke-static {v6}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1100d5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1100d4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v5, 0x7f110760

    new-instance v4, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f$c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v14

    move-object v12, v4

    move-object v4, v15

    const v8, 0x7f110760

    move-object v5, v9

    move-object/from16 v16, v6

    move-object v8, v7

    move-wide v6, v10

    :try_start_1
    invoke-direct/range {v0 .. v7}, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f$c;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Long;Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;J)V

    const v0, 0x7f110760

    invoke-virtual {v8, v0, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v12, 0x7f110531

    new-instance v6, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f$b;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object v5, v9

    move-object v9, v6

    move-wide v6, v10

    invoke-direct/range {v0 .. v7}, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f$b;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/Long;Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;J)V

    invoke-virtual {v8, v12, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    move-object/from16 v2, v16

    invoke-static {v2, v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;->D(Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v0, p0

    :try_start_2
    iget-object v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;->b:Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;

    invoke-static {v2}, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;->C(Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;->b:Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;

    invoke-static {v1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;->C(Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_5

    :catch_1
    move-object/from16 v0, p0

    goto :goto_5

    :cond_9
    :goto_4
    move-object v0, v8

    invoke-virtual {v0, v9, v10, v11}, Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$f;->c(Lcom/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$e;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :goto_5
    return-void
.end method
