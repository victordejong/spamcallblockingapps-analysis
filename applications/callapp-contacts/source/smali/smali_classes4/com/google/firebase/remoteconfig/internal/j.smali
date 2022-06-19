.class final synthetic Lcom/google/firebase/remoteconfig/internal/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/b;


# instance fields
.field private final a:Lcom/google/firebase/remoteconfig/internal/g;

.field private final b:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/google/firebase/remoteconfig/internal/g;Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/j;->a:Lcom/google/firebase/remoteconfig/internal/g;

    iput-object p2, p0, Lcom/google/firebase/remoteconfig/internal/j;->b:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/h;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/j;->a:Lcom/google/firebase/remoteconfig/internal/g;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/j;->b:Ljava/util/Date;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/remoteconfig/internal/g;->a(Lcom/google/firebase/remoteconfig/internal/g;Ljava/util/Date;Lcom/google/android/gms/tasks/h;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method
