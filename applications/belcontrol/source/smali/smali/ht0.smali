.class public final synthetic Lht0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lwe;


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lht0;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lht0;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method
