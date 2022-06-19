.class Lcom/unknownphone/callblocker/activity/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/activity/MainActivity;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/unknownphone/callblocker/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/activity/MainActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 694
    iput-object p1, p0, Lcom/unknownphone/callblocker/activity/MainActivity$5;->b:Lcom/unknownphone/callblocker/activity/MainActivity;

    iput-object p2, p0, Lcom/unknownphone/callblocker/activity/MainActivity$5;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$5;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 698
    return-void
.end method
