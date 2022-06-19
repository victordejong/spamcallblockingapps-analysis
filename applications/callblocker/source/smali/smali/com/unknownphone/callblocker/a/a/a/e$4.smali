.class Lcom/unknownphone/callblocker/a/a/a/e$4;
.super Ljava/lang/Object;
.source "ContactsFragment.java"

# interfaces
.implements Lcom/unknownphone/callblocker/a/a/a/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/a/a/a/e;->a(Ljava/util/List;)Lcom/unknownphone/callblocker/a/a/a/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/unknownphone/callblocker/a/a/a/e;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/a/a/a/e;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/unknownphone/callblocker/a/a/a/e$4;->b:Lcom/unknownphone/callblocker/a/a/a/e;

    iput-object p2, p0, Lcom/unknownphone/callblocker/a/a/a/e$4;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 125
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e$4;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/a/a/a/a;

    iget-object v2, p0, Lcom/unknownphone/callblocker/a/a/a/e$4;->b:Lcom/unknownphone/callblocker/a/a/a/e;

    invoke-virtual {v2}, Lcom/unknownphone/callblocker/a/a/a/e;->p()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/unknownphone/callblocker/a/a/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e$4;->a:Ljava/util/List;

    add-int/lit8 v3, p1, -0x1

    .line 126
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/a/a/a/a;

    iget-object v3, p0, Lcom/unknownphone/callblocker/a/a/a/e$4;->b:Lcom/unknownphone/callblocker/a/a/a/e;

    invoke-virtual {v3}, Lcom/unknownphone/callblocker/a/a/a/e;->p()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/unknownphone/callblocker/a/a/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 125
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 126
    goto :goto_0
.end method

.method public b(I)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/a/e$4;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/a/a/a/a;

    iget-object v1, p0, Lcom/unknownphone/callblocker/a/a/a/e$4;->b:Lcom/unknownphone/callblocker/a/a/a/e;

    invoke-virtual {v1}, Lcom/unknownphone/callblocker/a/a/a/e;->p()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/a/a/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
