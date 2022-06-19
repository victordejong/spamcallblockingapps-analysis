.class Lcom/unknownphone/callblocker/e/c$12;
.super Lcom/unknownphone/callblocker/custom/f;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/e/c;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/e/c;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/e/c;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/unknownphone/callblocker/e/c$12;->a:Lcom/unknownphone/callblocker/e/c;

    invoke-direct {p0}, Lcom/unknownphone/callblocker/custom/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .prologue
    .line 182
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$12;->a:Lcom/unknownphone/callblocker/e/c;

    invoke-static {v0}, Lcom/unknownphone/callblocker/e/c;->a(Lcom/unknownphone/callblocker/e/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$12;->a:Lcom/unknownphone/callblocker/e/c;

    invoke-static {v0}, Lcom/unknownphone/callblocker/e/c;->c(Lcom/unknownphone/callblocker/e/c;)Lcom/unknownphone/callblocker/f/a;

    move-result-object v1

    const v2, 0x7f090114

    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$12;->a:Lcom/unknownphone/callblocker/e/c;

    .line 185
    invoke-static {v0}, Lcom/unknownphone/callblocker/e/c;->c(Lcom/unknownphone/callblocker/e/c;)Lcom/unknownphone/callblocker/f/a;

    move-result-object v3

    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$12;->a:Lcom/unknownphone/callblocker/e/c;

    invoke-static {v0}, Lcom/unknownphone/callblocker/e/c;->a(Lcom/unknownphone/callblocker/e/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/e/a;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/unknownphone/callblocker/i/b;->a(Lcom/unknownphone/callblocker/f/a;Ljava/lang/String;)Lcom/unknownphone/callblocker/i/b;

    move-result-object v0

    const/4 v3, 0x1

    .line 184
    invoke-interface {v1, v2, v0, v3}, Lcom/unknownphone/callblocker/f/a;->a(ILandroidx/fragment/app/Fragment;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    goto :goto_0
.end method
