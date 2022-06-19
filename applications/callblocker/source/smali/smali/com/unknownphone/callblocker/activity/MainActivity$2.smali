.class Lcom/unknownphone/callblocker/activity/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/activity/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 191
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 244
    :goto_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/d/c;->a(Landroid/content/Context;)V

    .line 246
    const/4 v0, 0x1

    return v0

    .line 194
    :pswitch_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->m()Landroidx/fragment/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/i;->a()Landroidx/fragment/app/o;

    move-result-object v1

    .line 195
    :goto_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->b(Lcom/unknownphone/callblocker/activity/MainActivity;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->b(Lcom/unknownphone/callblocker/activity/MainActivity;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    goto :goto_1

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->d(Lcom/unknownphone/callblocker/activity/MainActivity;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/fragment/app/o;->b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    move-result-object v0

    iget-object v2, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-static {v2}, Lcom/unknownphone/callblocker/activity/MainActivity;->c(Lcom/unknownphone/callblocker/activity/MainActivity;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/fragment/app/o;->c(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    .line 198
    invoke-virtual {v1}, Landroidx/fragment/app/o;->e()V

    .line 199
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    iget-object v1, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-static {v1}, Lcom/unknownphone/callblocker/activity/MainActivity;->c(Lcom/unknownphone/callblocker/activity/MainActivity;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/activity/MainActivity;->a(Lcom/unknownphone/callblocker/activity/MainActivity;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    goto :goto_0

    .line 204
    :pswitch_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->m()Landroidx/fragment/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/i;->a()Landroidx/fragment/app/o;

    move-result-object v1

    .line 205
    :goto_2
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->b(Lcom/unknownphone/callblocker/activity/MainActivity;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->b(Lcom/unknownphone/callblocker/activity/MainActivity;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    goto :goto_2

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->d(Lcom/unknownphone/callblocker/activity/MainActivity;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/fragment/app/o;->b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    move-result-object v0

    iget-object v2, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-static {v2}, Lcom/unknownphone/callblocker/activity/MainActivity;->e(Lcom/unknownphone/callblocker/activity/MainActivity;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/fragment/app/o;->c(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    .line 208
    invoke-virtual {v1}, Landroidx/fragment/app/o;->e()V

    .line 209
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    iget-object v1, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-static {v1}, Lcom/unknownphone/callblocker/activity/MainActivity;->e(Lcom/unknownphone/callblocker/activity/MainActivity;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/activity/MainActivity;->a(Lcom/unknownphone/callblocker/activity/MainActivity;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    goto/16 :goto_0

    .line 214
    :pswitch_2
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->m()Landroidx/fragment/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/i;->a()Landroidx/fragment/app/o;

    move-result-object v1

    .line 215
    :goto_3
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->b(Lcom/unknownphone/callblocker/activity/MainActivity;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->b(Lcom/unknownphone/callblocker/activity/MainActivity;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    goto :goto_3

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->d(Lcom/unknownphone/callblocker/activity/MainActivity;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/fragment/app/o;->b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    move-result-object v0

    iget-object v2, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-static {v2}, Lcom/unknownphone/callblocker/activity/MainActivity;->f(Lcom/unknownphone/callblocker/activity/MainActivity;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/fragment/app/o;->c(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    .line 218
    invoke-virtual {v1}, Landroidx/fragment/app/o;->e()V

    .line 219
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    iget-object v1, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-static {v1}, Lcom/unknownphone/callblocker/activity/MainActivity;->f(Lcom/unknownphone/callblocker/activity/MainActivity;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/activity/MainActivity;->a(Lcom/unknownphone/callblocker/activity/MainActivity;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    goto/16 :goto_0

    .line 224
    :pswitch_3
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->m()Landroidx/fragment/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/i;->a()Landroidx/fragment/app/o;

    move-result-object v1

    .line 225
    :goto_4
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->b(Lcom/unknownphone/callblocker/activity/MainActivity;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 226
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->b(Lcom/unknownphone/callblocker/activity/MainActivity;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    goto :goto_4

    .line 227
    :cond_3
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->d(Lcom/unknownphone/callblocker/activity/MainActivity;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/fragment/app/o;->b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    move-result-object v0

    iget-object v2, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-static {v2}, Lcom/unknownphone/callblocker/activity/MainActivity;->g(Lcom/unknownphone/callblocker/activity/MainActivity;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/fragment/app/o;->c(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    .line 228
    invoke-virtual {v1}, Landroidx/fragment/app/o;->e()V

    .line 229
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    iget-object v1, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-static {v1}, Lcom/unknownphone/callblocker/activity/MainActivity;->g(Lcom/unknownphone/callblocker/activity/MainActivity;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/activity/MainActivity;->a(Lcom/unknownphone/callblocker/activity/MainActivity;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    goto/16 :goto_0

    .line 234
    :pswitch_4
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->m()Landroidx/fragment/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/i;->a()Landroidx/fragment/app/o;

    move-result-object v1

    .line 235
    :goto_5
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->b(Lcom/unknownphone/callblocker/activity/MainActivity;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 236
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->b(Lcom/unknownphone/callblocker/activity/MainActivity;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    goto :goto_5

    .line 237
    :cond_4
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->d(Lcom/unknownphone/callblocker/activity/MainActivity;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/fragment/app/o;->b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    move-result-object v0

    iget-object v2, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-static {v2}, Lcom/unknownphone/callblocker/activity/MainActivity;->h(Lcom/unknownphone/callblocker/activity/MainActivity;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/fragment/app/o;->c(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/o;

    .line 238
    invoke-virtual {v1}, Landroidx/fragment/app/o;->e()V

    .line 239
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    iget-object v1, p0, Lcom/unknownphone/callblocker/activity/MainActivity$2;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-static {v1}, Lcom/unknownphone/callblocker/activity/MainActivity;->h(Lcom/unknownphone/callblocker/activity/MainActivity;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/activity/MainActivity;->a(Lcom/unknownphone/callblocker/activity/MainActivity;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    goto/16 :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x7f090110
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method
