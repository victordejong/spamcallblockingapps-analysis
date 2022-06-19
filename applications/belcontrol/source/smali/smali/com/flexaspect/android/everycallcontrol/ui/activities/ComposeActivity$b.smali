.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->i(Lm91$c;Ljava/lang/Class;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity$b;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity$b;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity$b$a;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity$b$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity$b;)V

    invoke-virtual {v0, v1}, Landroid/app/ListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
