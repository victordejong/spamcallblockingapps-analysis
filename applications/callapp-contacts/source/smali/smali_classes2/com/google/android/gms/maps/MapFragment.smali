.class public Lcom/google/android/gms/maps/MapFragment;
.super Landroid/app/Fragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/MapFragment$b;,
        Lcom/google/android/gms/maps/MapFragment$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/maps/MapFragment$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 8
    new-instance v0, Lcom/google/android/gms/maps/MapFragment$b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/MapFragment$b;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->a:Lcom/google/android/gms/maps/MapFragment$b;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 53
    const-class v0, Lcom/google/android/gms/maps/MapFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 54
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 10
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->a:Lcom/google/android/gms/maps/MapFragment$b;

    .line 1032
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/MapFragment$b;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 25
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->a:Lcom/google/android/gms/maps/MapFragment$b;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/MapFragment$b;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->a:Lcom/google/android/gms/maps/MapFragment$b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/maps/MapFragment$b;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->a:Lcom/google/android/gms/maps/MapFragment$b;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$b;->f()V

    .line 47
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->a:Lcom/google/android/gms/maps/MapFragment$b;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$b;->e()V

    .line 44
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 3

    .line 13
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 14
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 16
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/maps/MapFragment;->a:Lcom/google/android/gms/maps/MapFragment$b;

    .line 2032
    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/MapFragment$b;->a(Landroid/app/Activity;)V

    .line 18
    invoke-static {p1, p2}, Lcom/google/android/gms/maps/GoogleMapOptions;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object p2

    .line 19
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "MapOptions"

    .line 20
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 21
    iget-object p2, p0, Lcom/google/android/gms/maps/MapFragment;->a:Lcom/google/android/gms/maps/MapFragment$b;

    invoke-virtual {p2, p1, v1, p3}, Lcom/google/android/gms/maps/MapFragment$b;->a(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :catchall_0
    move-exception p1

    .line 24
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p1
.end method

.method public onLowMemory()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->a:Lcom/google/android/gms/maps/MapFragment$b;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$b;->g()V

    .line 50
    invoke-super {p0}, Landroid/app/Fragment;->onLowMemory()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->a:Lcom/google/android/gms/maps/MapFragment$b;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$b;->c()V

    .line 35
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 31
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->a:Lcom/google/android/gms/maps/MapFragment$b;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$b;->b()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 57
    const-class v0, Lcom/google/android/gms/maps/MapFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 58
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->a:Lcom/google/android/gms/maps/MapFragment$b;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/MapFragment$b;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 37
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->a:Lcom/google/android/gms/maps/MapFragment$b;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$b;->a()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/maps/MapFragment;->a:Lcom/google/android/gms/maps/MapFragment$b;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment$b;->d()V

    .line 41
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method
