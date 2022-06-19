.class Lcom/unknownphone/callblocker/a/a/a/e$a;
.super Landroid/os/AsyncTask;
.source "ContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unknownphone/callblocker/a/a/a/e;
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
            "Lcom/unknownphone/callblocker/a/a/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/a/a/a/e;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 168
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e$a;->a:Ljava/lang/ref/WeakReference;

    .line 169
    iput-boolean p4, p0, Lcom/unknownphone/callblocker/a/a/a/e$a;->b:Z

    .line 170
    iput-object p2, p0, Lcom/unknownphone/callblocker/a/a/a/e$a;->c:Ljava/lang/String;

    .line 171
    iput-object p3, p0, Lcom/unknownphone/callblocker/a/a/a/e$a;->d:Ljava/lang/String;

    .line 172
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 196
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/unknownphone/callblocker/a/a/a/e;

    .line 198
    if-eqz v6, :cond_0

    .line 199
    invoke-virtual {v6}, Lcom/unknownphone/callblocker/a/a/a/e;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    invoke-virtual {v6}, Lcom/unknownphone/callblocker/a/a/a/e;->A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    invoke-virtual {v6}, Lcom/unknownphone/callblocker/a/a/a/e;->p()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-object v7

    .line 206
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/unknownphone/callblocker/a/a/a/e$a;->b:Z

    if-eqz v0, :cond_4

    .line 208
    invoke-virtual {v6}, Lcom/unknownphone/callblocker/a/a/a/e;->p()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 210
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "display_name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 214
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/a/a/a/e$a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 218
    :try_start_1
    invoke-static {v6}, Lcom/unknownphone/callblocker/a/a/a/e;->f(Lcom/unknownphone/callblocker/a/a/a/e;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/unknownphone/callblocker/a/a/a/a;

    iget-object v3, p0, Lcom/unknownphone/callblocker/a/a/a/e$a;->c:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Lcom/unknownphone/callblocker/a/a/a/a;-><init>(Landroid/database/Cursor;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 222
    :goto_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 241
    :catch_0
    move-exception v0

    .line 242
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 219
    :catch_1
    move-exception v0

    .line 220
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_2

    .line 225
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 227
    :cond_3
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/unknownphone/callblocker/a/a/a/e;->a(Lcom/unknownphone/callblocker/a/a/a/e;Z)Z

    .line 230
    :cond_4
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e$a;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 231
    :cond_5
    invoke-static {v6}, Lcom/unknownphone/callblocker/a/a/a/e;->b(Lcom/unknownphone/callblocker/a/a/a/e;)Ljava/util/List;

    move-result-object v0

    invoke-static {v6}, Lcom/unknownphone/callblocker/a/a/a/e;->f(Lcom/unknownphone/callblocker/a/a/a/e;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 233
    :cond_6
    invoke-static {v6}, Lcom/unknownphone/callblocker/a/a/a/e;->f(Lcom/unknownphone/callblocker/a/a/a/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/a/a/a/a;

    .line 234
    invoke-virtual {v6}, Lcom/unknownphone/callblocker/a/a/a/e;->p()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/unknownphone/callblocker/a/a/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unknownphone/callblocker/a/a/a/e$a;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 235
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/a/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unknownphone/callblocker/a/a/a/e$a;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 236
    :cond_8
    invoke-static {v6}, Lcom/unknownphone/callblocker/a/a/a/e;->b(Lcom/unknownphone/callblocker/a/a/a/e;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 219
    :catch_2
    move-exception v0

    goto :goto_3
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/a/a/a/e;

    .line 253
    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/a/a/e;->B()Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/a/a/e;->A()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/unknownphone/callblocker/a/a/a/e;->g(Lcom/unknownphone/callblocker/a/a/a/e;)Lcom/unknownphone/callblocker/a/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unknownphone/callblocker/a/a/a/b;->d()V

    .line 260
    invoke-static {v0}, Lcom/unknownphone/callblocker/a/a/a/e;->d(Lcom/unknownphone/callblocker/a/a/a/e;)Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    move-result-object v1

    invoke-static {v0}, Lcom/unknownphone/callblocker/a/a/a/e;->b(Lcom/unknownphone/callblocker/a/a/a/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setView(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 260
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 160
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/unknownphone/callblocker/a/a/a/e$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 160
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/unknownphone/callblocker/a/a/a/e$a;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/a/a/a/e;

    .line 179
    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/a/a/e;->B()Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/a/a/e;->A()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/unknownphone/callblocker/a/a/a/e;->d(Lcom/unknownphone/callblocker/a/a/a/e;)Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setView(I)V

    .line 186
    invoke-static {v0}, Lcom/unknownphone/callblocker/a/a/a/e;->e(Lcom/unknownphone/callblocker/a/a/a/e;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->w()V

    .line 187
    invoke-static {v0}, Lcom/unknownphone/callblocker/a/a/a/e;->b(Lcom/unknownphone/callblocker/a/a/a/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
