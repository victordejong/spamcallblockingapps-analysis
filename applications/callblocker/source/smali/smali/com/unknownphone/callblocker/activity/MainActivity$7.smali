.class Lcom/unknownphone/callblocker/activity/MainActivity$7;
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
    .line 720
    iput-object p1, p0, Lcom/unknownphone/callblocker/activity/MainActivity$7;->b:Lcom/unknownphone/callblocker/activity/MainActivity;

    iput-object p2, p0, Lcom/unknownphone/callblocker/activity/MainActivity$7;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$7;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 724
    return-void
.end method
