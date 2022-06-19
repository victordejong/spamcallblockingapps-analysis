.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/LLPPActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/activities/LLPPActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/activities/LLPPActivity;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/LLPPActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/LLPPActivity$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/LLPPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lfa1$e;->j()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/LLPPActivity$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/LLPPActivity;

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/LLPPActivity$a$a;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/LLPPActivity$a$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/LLPPActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
