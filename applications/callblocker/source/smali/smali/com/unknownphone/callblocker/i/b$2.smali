.class Lcom/unknownphone/callblocker/i/b$2;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/i/b;->at()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/unknownphone/callblocker/i/b;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/i/b;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 612
    iput-object p1, p0, Lcom/unknownphone/callblocker/i/b$2;->b:Lcom/unknownphone/callblocker/i/b;

    iput-object p2, p0, Lcom/unknownphone/callblocker/i/b$2;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/b$2;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 616
    return-void
.end method
