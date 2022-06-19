.class final Lorg/mistergroup/shouldianswer/ui/main/c/m$c;
.super Ljava/lang/Object;
.source "LogsFragment.kt"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/main/c/m;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/main/c/m;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/c/m;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$c;->a:Lorg/mistergroup/shouldianswer/ui/main/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .line 117
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$c;->a:Lorg/mistergroup/shouldianswer/ui/main/c/m;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/m;->d()V

    .line 118
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/m$c;->a:Lorg/mistergroup/shouldianswer/ui/main/c/m;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/m;->a(Lorg/mistergroup/shouldianswer/ui/main/c/m;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->c()V

    :cond_0
    return-void
.end method
