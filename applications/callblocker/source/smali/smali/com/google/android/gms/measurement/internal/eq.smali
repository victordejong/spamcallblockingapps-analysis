.class public final Lcom/google/android/gms/measurement/internal/eq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/os/Bundle;

.field private c:Z

.field private d:Landroid/os/Bundle;

.field private final synthetic e:Lcom/google/android/gms/measurement/internal/el;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/el;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/eq;->e:Lcom/google/android/gms/measurement/internal/el;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/eq;->a:Ljava/lang/String;

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/eq;->b:Landroid/os/Bundle;

    .line 5
    return-void
.end method

.method private final b(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 50
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 53
    if-eqz v3, :cond_0

    .line 54
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 55
    const-string/jumbo v5, "n"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string/jumbo v0, "v"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    instance-of v0, v3, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 58
    const-string/jumbo v0, "t"

    const-string/jumbo v3, "s"

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    :goto_1
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/eq;->e:Lcom/google/android/gms/measurement/internal/el;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v4, "Cannot serialize bundle value to SharedPreferences"

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 59
    :cond_1
    :try_start_1
    instance-of v0, v3, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 60
    const-string/jumbo v0, "t"

    const-string/jumbo v3, "l"

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 61
    :cond_2
    instance-of v0, v3, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 62
    const-string/jumbo v0, "t"

    const-string/jumbo v3, "d"

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 63
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/eq;->e:Lcom/google/android/gms/measurement/internal/el;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v4, "Cannot serialize bundle value to SharedPreferences. Type"

    .line 65
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 72
    :cond_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/eq;->c:Z

    if-nez v0, :cond_2

    .line 8
    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/eq;->c:Z

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/eq;->e:Lcom/google/android/gms/measurement/internal/el;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/el;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/eq;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 12
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v3, v1

    .line 13
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-ge v3, v0, :cond_3

    .line 14
    :try_start_1
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 15
    const-string/jumbo v0, "n"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 16
    const-string/jumbo v0, "t"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 17
    const/4 v0, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/eq;->e:Lcom/google/android/gms/measurement/internal/el;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v6, "Unrecognized persisted bundle type. Type"

    invoke-virtual {v0, v6, v8}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 17
    :sswitch_0
    const-string/jumbo v9, "s"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string/jumbo v9, "d"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string/jumbo v9, "l"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    .line 18
    :pswitch_0
    const-string/jumbo v0, "v"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {v4, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 30
    :catch_0
    move-exception v0

    :goto_3
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/eq;->e:Lcom/google/android/gms/measurement/internal/el;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v6, "Error reading value from SharedPreferences. Value dropped"

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 35
    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/eq;->e:Lcom/google/android/gms/measurement/internal/el;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Error loading bundle from SharedPreferences. Values will be lost"

    .line 37
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 38
    :cond_1
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/eq;->d:Landroid/os/Bundle;

    if-nez v0, :cond_2

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/eq;->b:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/eq;->d:Landroid/os/Bundle;

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/eq;->d:Landroid/os/Bundle;

    return-object v0

    .line 21
    :pswitch_1
    :try_start_3
    const-string/jumbo v0, "v"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 22
    invoke-virtual {v4, v7, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_2

    .line 30
    :catch_2
    move-exception v0

    goto :goto_3

    .line 24
    :pswitch_2
    const-string/jumbo v0, "v"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 25
    invoke-virtual {v4, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 32
    :cond_3
    :try_start_4
    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/eq;->d:Landroid/os/Bundle;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 17
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x6c -> :sswitch_2
        0x73 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/eq;->e:Lcom/google/android/gms/measurement/internal/el;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/el;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 44
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 45
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/eq;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 48
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/eq;->d:Landroid/os/Bundle;

    .line 49
    return-void

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/eq;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/eq;->b(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
