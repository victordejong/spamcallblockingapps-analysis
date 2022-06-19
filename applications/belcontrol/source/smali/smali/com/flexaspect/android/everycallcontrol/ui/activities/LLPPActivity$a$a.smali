.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/LLPPActivity$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/activities/LLPPActivity$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/activities/LLPPActivity$a;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/LLPPActivity$a;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/LLPPActivity$a$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/LLPPActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/LLPPActivity$a$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/LLPPActivity$a;

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/LLPPActivity$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/LLPPActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
