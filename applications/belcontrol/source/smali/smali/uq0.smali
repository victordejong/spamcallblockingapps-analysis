.class public final synthetic Luq0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;

.field public final synthetic b:Lg61;


# direct methods
.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;Lg61;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luq0;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;

    iput-object p2, p0, Luq0;->b:Lg61;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Luq0;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;

    iget-object v1, p0, Luq0;->b:Lg61;

    invoke-virtual {v0, v1, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/CallActivity;->G(Lg61;Landroid/view/View;)V

    return-void
.end method
