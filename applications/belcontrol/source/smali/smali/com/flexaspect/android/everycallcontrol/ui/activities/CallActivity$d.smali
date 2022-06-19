.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->c0(Lg61;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity$d;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity$d;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->B(Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;)Lf61;

    move-result-object p1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity$d;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->c:Lg61;

    iget-object v0, v0, Lg61;->c:Landroid/telecom/Call;

    invoke-virtual {p1, v0}, Lf61;->c(Landroid/telecom/Call;)V

    return-void
.end method
