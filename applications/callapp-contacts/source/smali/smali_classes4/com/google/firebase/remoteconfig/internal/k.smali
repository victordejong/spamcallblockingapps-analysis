.class final synthetic Lcom/google/firebase/remoteconfig/internal/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/g;


# instance fields
.field private final a:Lcom/google/firebase/remoteconfig/internal/g$a;


# direct methods
.method constructor <init>(Lcom/google/firebase/remoteconfig/internal/g$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/k;->a:Lcom/google/firebase/remoteconfig/internal/g$a;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/h;
    .locals 0

    iget-object p1, p0, Lcom/google/firebase/remoteconfig/internal/k;->a:Lcom/google/firebase/remoteconfig/internal/g$a;

    invoke-static {p1}, Lcom/google/firebase/remoteconfig/internal/g;->a(Lcom/google/firebase/remoteconfig/internal/g$a;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method
