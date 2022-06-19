.class public final synthetic Lz2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz2/r$b;
.implements Lp6/f$a;
.implements Lh5/a$a;
.implements Li2/i;
.implements Le2/g$c;


# static fields
.field public static final synthetic b:Lz2/o;

.field public static final synthetic c:Lz2/o;

.field public static final synthetic d:Lz2/o;

.field public static final synthetic e:Lz2/o;

.field public static final synthetic f:Lz2/o;

.field public static final synthetic g:Lz2/o;

.field public static final synthetic h:Lz2/o;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lz2/o;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lz2/o;-><init>(I)V

    sput-object v0, Lz2/o;->b:Lz2/o;

    new-instance v0, Lz2/o;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lz2/o;-><init>(I)V

    sput-object v0, Lz2/o;->c:Lz2/o;

    new-instance v0, Lz2/o;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lz2/o;-><init>(I)V

    sput-object v0, Lz2/o;->d:Lz2/o;

    new-instance v0, Lz2/o;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lz2/o;-><init>(I)V

    sput-object v0, Lz2/o;->e:Lz2/o;

    new-instance v0, Lz2/o;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lz2/o;-><init>(I)V

    sput-object v0, Lz2/o;->f:Lz2/o;

    new-instance v0, Lz2/o;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lz2/o;-><init>(I)V

    sput-object v0, Lz2/o;->g:Lz2/o;

    new-instance v0, Lz2/o;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lz2/o;-><init>(I)V

    sput-object v0, Lz2/o;->h:Lz2/o;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lz2/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lz2/o;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    sget-object v0, Lz2/r;->e:Lr2/b;

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException;

    const-string v1, "Timed out while trying to acquire the lock."

    invoke-direct {v0, v1, p1}, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 2
    :pswitch_1
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    sget-object v0, Lz2/r;->e:Lr2/b;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    sget-object v0, Lz2/p;->b:Lz2/p;

    .line 4
    invoke-static {p1, v0}, Lz2/r;->r(Landroid/database/Cursor;Lz2/r$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 5
    :goto_0
    check-cast p1, Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Landroid/util/JsonReader;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lh5/a;->a:Lr5/a;

    .line 1
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "filename"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "contents"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    const-string v3, "Null contents"

    .line 7
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Null filename"

    .line 9
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    if-nez v1, :cond_3

    const-string p1, " filename"

    goto :goto_1

    :cond_3
    const-string p1, ""

    :goto_1
    if-nez v2, :cond_4

    const-string v3, " contents"

    .line 11
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 13
    new-instance p1, Lg5/e;

    invoke-direct {p1, v1, v2, v0}, Lg5/e;-><init>(Ljava/lang/String;[BLg5/e$a;)V

    return-object p1

    .line 14
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties:"

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    check-cast p1, Landroid/content/Context;

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 3
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public e(Li2/c;Ljava/util/List;)V
    .locals 4

    sget-object v0, Lf8/a;->a:Landroid/content/Context;

    .line 1
    iget p1, p1, Li2/c;->a:I

    if-nez p1, :cond_1

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/SkuDetails;

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-object v1, p2, Lcom/android/billingclient/api/SkuDetails;->b:Lorg/json/JSONObject;

    const-string v2, "price"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Price"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, p2, Lcom/android/billingclient/api/SkuDetails;->b:Lorg/json/JSONObject;

    const-string v2, "price_amount_micros"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "PriceAmountMicros"

    .line 7
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 8
    sget-object v1, Lf8/a;->c:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->a()Ljava/lang/String;

    move-result-object p2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lf8/a;->c:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public g(Le2/g;Le2/b;)V
    .locals 1

    iget p1, p0, Lz2/o;->a:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget p1, Lcom/mglab/scm/visual/FragmentDev;->b:I

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    const/4 p1, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void

    .line 3
    :pswitch_1
    sget p1, Lcom/mglab/scm/visual/FragmentAbout;->e:I

    return-void

    :goto_0
    sget-object p1, Lcom/mglab/scm/visual/FragmentStat;->g:Lo8/e;

    .line 4
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance p2, Lk8/w;

    const-string v0, "faq#notwork"

    invoke-direct {p2, v0}, Lk8/w;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lba/b;->g(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
