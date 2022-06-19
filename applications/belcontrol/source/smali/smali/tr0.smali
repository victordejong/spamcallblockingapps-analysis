.class public final synthetic Ltr0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/mopub/common/SdkInitializationListener;


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

.field public final synthetic b:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltr0;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    iput-object p2, p0, Ltr0;->b:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    return-void
.end method


# virtual methods
.method public final onInitializationFinished()V
    .locals 2

    iget-object v0, p0, Ltr0;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    iget-object v1, p0, Ltr0;->b:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-virtual {v0, v1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->b0(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V

    return-void
.end method
