.class Lcom/unknownphone/callblocker/c/a$10;
.super Ljava/lang/Object;
.source "GlobalFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/c/a;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/unknownphone/callblocker/c/a;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/c/a;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/unknownphone/callblocker/c/a$10;->b:Lcom/unknownphone/callblocker/c/a;

    iput-object p2, p0, Lcom/unknownphone/callblocker/c/a$10;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/unknownphone/callblocker/c/a$10;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 405
    return-void
.end method
