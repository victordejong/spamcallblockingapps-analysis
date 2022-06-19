.class final synthetic Lcom/google/firebase/remoteconfig/internal/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/b;


# instance fields
.field private final a:Lcom/google/firebase/remoteconfig/internal/g;

.field private final b:Lcom/google/android/gms/tasks/h;

.field private final c:Lcom/google/android/gms/tasks/h;

.field private final d:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/google/firebase/remoteconfig/internal/g;Lcom/google/android/gms/tasks/h;Lcom/google/android/gms/tasks/h;Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/i;->a:Lcom/google/firebase/remoteconfig/internal/g;

    iput-object p2, p0, Lcom/google/firebase/remoteconfig/internal/i;->b:Lcom/google/android/gms/tasks/h;

    iput-object p3, p0, Lcom/google/firebase/remoteconfig/internal/i;->c:Lcom/google/android/gms/tasks/h;

    iput-object p4, p0, Lcom/google/firebase/remoteconfig/internal/i;->d:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/h;)Ljava/lang/Object;
    .locals 3

    iget-object p1, p0, Lcom/google/firebase/remoteconfig/internal/i;->a:Lcom/google/firebase/remoteconfig/internal/g;

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/i;->b:Lcom/google/android/gms/tasks/h;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/i;->c:Lcom/google/android/gms/tasks/h;

    iget-object v2, p0, Lcom/google/firebase/remoteconfig/internal/i;->d:Ljava/util/Date;

    invoke-static {p1, v0, v1, v2}, Lcom/google/firebase/remoteconfig/internal/g;->a(Lcom/google/firebase/remoteconfig/internal/g;Lcom/google/android/gms/tasks/h;Lcom/google/android/gms/tasks/h;Ljava/util/Date;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method
