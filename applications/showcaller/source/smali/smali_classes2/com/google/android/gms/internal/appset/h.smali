.class public final synthetic Lcom/google/android/gms/internal/appset/h;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-appset@@16.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/gms/internal/appset/k;

.field public final synthetic e:Lcom/google/android/gms/tasks/h;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/appset/k;Lcom/google/android/gms/tasks/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/appset/h;->d:Lcom/google/android/gms/internal/appset/k;

    iput-object p2, p0, Lcom/google/android/gms/internal/appset/h;->e:Lcom/google/android/gms/tasks/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/appset/h;->d:Lcom/google/android/gms/internal/appset/k;

    iget-object v1, p0, Lcom/google/android/gms/internal/appset/h;->e:Lcom/google/android/gms/tasks/h;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/appset/k;->e(Lcom/google/android/gms/tasks/h;)V

    return-void
.end method
