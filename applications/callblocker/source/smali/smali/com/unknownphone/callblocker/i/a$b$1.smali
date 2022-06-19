.class Lcom/unknownphone/callblocker/i/a$b$1;
.super Ljava/lang/Object;
.source "SearchAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/i/a$b;-><init>(Landroid/view/View;Ljava/lang/String;ZLcom/unknownphone/callblocker/custom/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/custom/f;

.field final synthetic b:Lcom/unknownphone/callblocker/i/a$b;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/i/a$b;Lcom/unknownphone/callblocker/custom/f;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/unknownphone/callblocker/i/a$b$1;->b:Lcom/unknownphone/callblocker/i/a$b;

    iput-object p2, p0, Lcom/unknownphone/callblocker/i/a$b$1;->a:Lcom/unknownphone/callblocker/custom/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/a$b$1;->b:Lcom/unknownphone/callblocker/i/a$b;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/i/a$b;->e()I

    move-result v0

    .line 90
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/a$b$1;->a:Lcom/unknownphone/callblocker/custom/f;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/custom/f;->a()V

    goto :goto_0
.end method
