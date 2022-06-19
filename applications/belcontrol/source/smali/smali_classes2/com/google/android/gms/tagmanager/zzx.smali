.class public final Lcom/google/android/gms/tagmanager/zzx;
.super Lcom/google/android/gms/internal/gtm/zzdj;
.source ""


# instance fields
.field private final zzaes:Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;

.field private final synthetic zzaet:Lcom/google/android/gms/tagmanager/zzv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tagmanager/zzv;Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzx;->zzaet:Lcom/google/android/gms/tagmanager/zzv;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/gtm/zzdj;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzx;->zzaes:Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string p1, "Don\'t know how to handle this message."

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdi;->zzav(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzx;->zzaes:Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzx;->zzaet:Lcom/google/android/gms/tagmanager/zzv;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;->onContainerAvailable(Lcom/google/android/gms/tagmanager/ContainerHolder;Ljava/lang/String;)V

    return-void
.end method
