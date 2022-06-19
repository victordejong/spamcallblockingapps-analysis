.class Lcom/unknownphone/callblocker/a/a/b/b$a;
.super Landroid/os/AsyncTask;
.source "RecentCallsAltFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unknownphone/callblocker/a/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/unknownphone/callblocker/a/a/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/a/a/b/b;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 209
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 210
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b$a;->a:Ljava/lang/ref/WeakReference;

    .line 211
    iput-object p2, p0, Lcom/unknownphone/callblocker/a/a/b/b$a;->b:Ljava/lang/String;

    .line 212
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 238
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/unknownphone/callblocker/a/a/b/b;

    .line 240
    if-eqz v7, :cond_0

    .line 241
    invoke-virtual {v7}, Lcom/unknownphone/callblocker/a/a/b/b;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    invoke-virtual {v7}, Lcom/unknownphone/callblocker/a/a/b/b;->A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    invoke-virtual {v7}, Lcom/unknownphone/callblocker/a/a/b/b;->p()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-object v10

    .line 247
    :cond_1
    const/4 v0, 0x4

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "date"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "number"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v1, "duration"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string/jumbo v1, "name"

    aput-object v1, v2, v0

    .line 253
    invoke-virtual {v7}, Lcom/unknownphone/callblocker/a/a/b/b;->p()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "type != 6"

    const/4 v4, 0x0

    const-string/jumbo v5, "_id DESC"

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 259
    if-eqz v3, :cond_4

    .line 260
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move v0, v9

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v7}, Lcom/unknownphone/callblocker/a/a/b/b;->j(Lcom/unknownphone/callblocker/a/a/b/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x32

    if-ge v1, v2, :cond_4

    .line 262
    new-instance v4, Lcom/unknownphone/callblocker/e/a;

    invoke-direct {v4}, Lcom/unknownphone/callblocker/e/a;-><init>()V

    .line 263
    add-int/lit8 v2, v0, 0x1

    int-to-long v0, v0

    invoke-virtual {v4, v0, v1}, Lcom/unknownphone/callblocker/e/a;->a(J)V

    .line 264
    const-string/jumbo v0, "date"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/unknownphone/callblocker/e/a;->b(J)V

    .line 265
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Lcom/unknownphone/callblocker/e/a;->a(S)V

    .line 266
    const-string/jumbo v0, "name"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-virtual {v7}, Lcom/unknownphone/callblocker/a/a/b/b;->p()Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f10020a

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/unknownphone/callblocker/e/a;->a(Ljava/lang/String;)V

    .line 268
    const-string/jumbo v0, "number"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/unknownphone/callblocker/e/a;->b(Ljava/lang/String;)V

    .line 269
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/unknownphone/callblocker/e/a;->a(I)V

    .line 272
    invoke-static {v7}, Lcom/unknownphone/callblocker/a/a/b/b;->j(Lcom/unknownphone/callblocker/a/a/b/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v9

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/e/a;

    .line 273
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lcom/unknownphone/callblocker/e/a;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v8

    :goto_3
    move v1, v0

    goto :goto_2

    .line 275
    :cond_2
    if-nez v1, :cond_3

    invoke-static {v7}, Lcom/unknownphone/callblocker/a/a/b/b;->j(Lcom/unknownphone/callblocker/a/a/b/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move v0, v2

    goto/16 :goto_1

    .line 278
    :cond_4
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    :goto_4
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0

    .line 280
    :catch_1
    move-exception v0

    goto :goto_4

    :cond_5
    move v0, v1

    goto :goto_3
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 290
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/a/a/b/b;

    .line 292
    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/a/b/b;->B()Z

    move-result v2

    if-nez v2, :cond_0

    .line 294
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/a/b/b;->A()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/unknownphone/callblocker/a/a/b/b;->d(Lcom/unknownphone/callblocker/a/a/b/b;)Lcom/unknownphone/callblocker/a/a/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unknownphone/callblocker/a/a/b/a;->d()V

    .line 299
    invoke-static {v0}, Lcom/unknownphone/callblocker/a/a/b/b;->a(Lcom/unknownphone/callblocker/a/a/b/b;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0}, Lcom/unknownphone/callblocker/a/a/b/b;->j(Lcom/unknownphone/callblocker/a/a/b/b;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 300
    invoke-static {v0}, Lcom/unknownphone/callblocker/a/a/b/b;->h(Lcom/unknownphone/callblocker/a/a/b/b;)Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    move-result-object v2

    invoke-static {v0}, Lcom/unknownphone/callblocker/a/a/b/b;->j(Lcom/unknownphone/callblocker/a/a/b/b;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {v2, v1}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setView(I)V

    .line 301
    invoke-static {v0}, Lcom/unknownphone/callblocker/a/a/b/b;->k(Lcom/unknownphone/callblocker/a/a/b/b;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 300
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 203
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/unknownphone/callblocker/a/a/b/b$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 203
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/unknownphone/callblocker/a/a/b/b$a;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/a/a/b/b;

    .line 219
    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/a/b/b;->B()Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/a/b/b;->A()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/unknownphone/callblocker/a/a/b/b;->h(Lcom/unknownphone/callblocker/a/a/b/b;)Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setView(I)V

    .line 226
    invoke-static {v0}, Lcom/unknownphone/callblocker/a/a/b/b;->i(Lcom/unknownphone/callblocker/a/a/b/b;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->w()V

    .line 227
    invoke-static {v0}, Lcom/unknownphone/callblocker/a/a/b/b;->j(Lcom/unknownphone/callblocker/a/a/b/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 228
    invoke-static {v0}, Lcom/unknownphone/callblocker/a/a/b/b;->a(Lcom/unknownphone/callblocker/a/a/b/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
