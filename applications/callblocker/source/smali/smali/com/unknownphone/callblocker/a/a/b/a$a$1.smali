.class Lcom/unknownphone/callblocker/a/a/b/a$a$1;
.super Ljava/lang/Object;
.source "RecentCallsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/a/a/b/a$a;-><init>(Landroid/view/View;Lcom/unknownphone/callblocker/custom/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/custom/f;

.field final synthetic b:Lcom/unknownphone/callblocker/a/a/b/a$a;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/a/a/b/a$a;Lcom/unknownphone/callblocker/custom/f;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/unknownphone/callblocker/a/a/b/a$a$1;->b:Lcom/unknownphone/callblocker/a/a/b/a$a;

    iput-object p2, p0, Lcom/unknownphone/callblocker/a/a/b/a$a$1;->a:Lcom/unknownphone/callblocker/custom/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/a/b/a$a$1;->b:Lcom/unknownphone/callblocker/a/a/b/a$a;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/a/b/a$a;->e()I

    move-result v0

    .line 101
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/unknownphone/callblocker/a/a/b/a$a$1;->a:Lcom/unknownphone/callblocker/custom/f;

    invoke-virtual {v1, v0}, Lcom/unknownphone/callblocker/custom/f;->a(I)V

    goto :goto_0
.end method
