.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm91$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
.end annotation


# instance fields
.field public a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$j;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$j;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$j;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    sget-object p1, Lm91$c;->c:Lm91$c;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-static {p0, p1, v0}, Lm91;->d(Lm91$b;Ljava/util/EnumSet;[Ljava/lang/Class;)V

    return-void
.end method

.method public b()V
    .locals 0

    invoke-static {p0}, Lm91;->e(Lm91$b;)V

    return-void
.end method

.method public i(Lm91$c;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm91$c;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$j;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    if-eqz p2, :cond_0

    sget-object p3, Lm91$c;->c:Lm91$c;

    if-ne p1, p3, :cond_0

    new-instance p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$j$a;

    invoke-direct {p1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$j$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$j;)V

    invoke-virtual {p2, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
