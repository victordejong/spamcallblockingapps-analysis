.class public final synthetic Lcom/google/firebase/remoteconfig/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/b;


# instance fields
.field private final a:Lcom/google/firebase/remoteconfig/a;

.field private final b:Lcom/google/android/gms/tasks/h;

.field private final c:Lcom/google/android/gms/tasks/h;


# direct methods
.method public constructor <init>(Lcom/google/firebase/remoteconfig/a;Lcom/google/android/gms/tasks/h;Lcom/google/android/gms/tasks/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/c;->a:Lcom/google/firebase/remoteconfig/a;

    iput-object p2, p0, Lcom/google/firebase/remoteconfig/c;->b:Lcom/google/android/gms/tasks/h;

    iput-object p3, p0, Lcom/google/firebase/remoteconfig/c;->c:Lcom/google/android/gms/tasks/h;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/h;)Ljava/lang/Object;
    .locals 2

    iget-object p1, p0, Lcom/google/firebase/remoteconfig/c;->a:Lcom/google/firebase/remoteconfig/a;

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/c;->b:Lcom/google/android/gms/tasks/h;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/c;->c:Lcom/google/android/gms/tasks/h;

    invoke-static {p1, v0, v1}, Lcom/google/firebase/remoteconfig/a;->a(Lcom/google/firebase/remoteconfig/a;Lcom/google/android/gms/tasks/h;Lcom/google/android/gms/tasks/h;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method
