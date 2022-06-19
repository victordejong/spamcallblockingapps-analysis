.class Lcom/unknownphone/callblocker/e/c$d;
.super Landroid/os/AsyncTask;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unknownphone/callblocker/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/unknownphone/callblocker/e/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/e/c;Landroid/util/Pair;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unknownphone/callblocker/e/c;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 846
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 847
    iput p4, p0, Lcom/unknownphone/callblocker/e/c$d;->c:I

    .line 848
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/e/c$d;->a:Ljava/lang/ref/WeakReference;

    .line 849
    iput-object p2, p0, Lcom/unknownphone/callblocker/e/c$d;->b:Landroid/util/Pair;

    .line 850
    iput-object p3, p0, Lcom/unknownphone/callblocker/e/c$d;->d:Ljava/lang/String;

    .line 851
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 855
    .line 858
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$d;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 860
    invoke-static {}, Lcom/unknownphone/callblocker/d/d;->a()Lcom/unknownphone/callblocker/d/d;

    move-result-object v1

    .line 862
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 863
    const-string/jumbo v0, "_action"

    const-string/jumbo v3, "_get_system_info"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    const-string/jumbo v0, "api_key"

    iget-object v3, p0, Lcom/unknownphone/callblocker/e/c$d;->d:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    const-string/jumbo v3, "lang"

    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$d;->b:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/unknownphone/callblocker/custom/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    invoke-virtual {v1, v2}, Lcom/unknownphone/callblocker/d/d;->a(Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v0

    .line 870
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "total"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v6, v0

    .line 876
    :goto_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/e/c;

    .line 878
    if-eqz v0, :cond_0

    .line 879
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/c;->B()Z

    move-result v1

    if-nez v1, :cond_0

    .line 880
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/c;->A()Z

    move-result v1

    if-nez v1, :cond_0

    .line 881
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/c;->p()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    .line 882
    :cond_0
    new-instance v0, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 897
    :goto_1
    return-object v0

    .line 871
    :catch_0
    move-exception v0

    .line 872
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    move v6, v7

    goto :goto_0

    .line 886
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/c;->p()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 888
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 891
    if-nez v1, :cond_4

    const/4 v0, 0x0

    .line 893
    :goto_2
    if-eqz v1, :cond_3

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 897
    :cond_3
    :goto_3
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_1

    .line 891
    :cond_4
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    goto :goto_2

    .line 895
    :catch_1
    move-exception v0

    move v0, v7

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v0

    move v0, v7

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_3
.end method

.method protected a(Landroid/util/Pair;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v3, 0x60597

    const/4 v8, -0x1

    .line 902
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/e/c;

    .line 904
    if-eqz v0, :cond_0

    .line 905
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/c;->B()Z

    move-result v1

    if-nez v1, :cond_0

    .line 906
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/c;->A()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 934
    :cond_0
    :goto_0
    return-void

    .line 910
    :cond_1
    :try_start_0
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v8, :cond_5

    .line 911
    invoke-static {v0}, Lcom/unknownphone/callblocker/e/c;->m(Lcom/unknownphone/callblocker/e/c;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v4

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/c;->p()Landroid/content/Context;

    move-result-object v5

    iget-object v1, p0, Lcom/unknownphone/callblocker/e/c$d;->b:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/unknownphone/callblocker/custom/b;->b:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 912
    invoke-static {v2}, Lcom/unknownphone/callblocker/custom/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f1000ce

    move v2, v1

    :goto_1
    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 914
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v8, :cond_4

    iget v1, p0, Lcom/unknownphone/callblocker/e/c$d;->c:I

    if-ne v1, v8, :cond_3

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    .line 911
    invoke-static {v5, v2, v6}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 922
    :goto_3
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v8, :cond_0

    .line 923
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "ddMMyyyy"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 924
    invoke-static {v0}, Lcom/unknownphone/callblocker/e/c;->i(Lcom/unknownphone/callblocker/e/c;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "last_updated_number_of_spam_numbers"

    .line 926
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 925
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "number_of_spam_numbers"

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 927
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 928
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 931
    :catch_0
    move-exception v0

    .line 932
    :goto_4
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0

    .line 912
    :cond_2
    const v1, 0x7f1000cd

    move v2, v1

    goto :goto_1

    .line 914
    :cond_3
    :try_start_1
    iget v3, p0, Lcom/unknownphone/callblocker/e/c$d;->c:I

    goto :goto_2

    :cond_4
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2

    .line 916
    :cond_5
    invoke-static {v0}, Lcom/unknownphone/callblocker/e/c;->m(Lcom/unknownphone/callblocker/e/c;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v4

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/c;->p()Landroid/content/Context;

    move-result-object v5

    iget-object v1, p0, Lcom/unknownphone/callblocker/e/c$d;->b:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/unknownphone/callblocker/custom/b;->b:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 917
    invoke-static {v2}, Lcom/unknownphone/callblocker/custom/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x7f1000d0

    move v2, v1

    :goto_5
    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v7, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v7, v6, v1

    const/4 v7, 0x1

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 919
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v8, :cond_8

    iget v1, p0, Lcom/unknownphone/callblocker/e/c$d;->c:I

    if-ne v1, v8, :cond_7

    move v1, v3

    :goto_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    .line 916
    invoke-static {v5, v2, v6}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 931
    :catch_1
    move-exception v0

    goto :goto_4

    .line 917
    :cond_6
    const v1, 0x7f1000cf

    move v2, v1

    goto :goto_5

    .line 919
    :cond_7
    iget v1, p0, Lcom/unknownphone/callblocker/e/c$d;->c:I

    goto :goto_6

    :cond_8
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_6
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 839
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/unknownphone/callblocker/e/c$d;->a([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 839
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/unknownphone/callblocker/e/c$d;->a(Landroid/util/Pair;)V

    return-void
.end method
