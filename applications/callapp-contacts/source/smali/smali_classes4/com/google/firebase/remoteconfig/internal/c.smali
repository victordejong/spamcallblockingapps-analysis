.class final synthetic Lcom/google/firebase/remoteconfig/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/g;


# instance fields
.field private final a:Lcom/google/firebase/remoteconfig/internal/a;

.field private final b:Z

.field private final c:Lcom/google/firebase/remoteconfig/internal/f;


# direct methods
.method private constructor <init>(Lcom/google/firebase/remoteconfig/internal/a;ZLcom/google/firebase/remoteconfig/internal/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/c;->a:Lcom/google/firebase/remoteconfig/internal/a;

    iput-boolean p2, p0, Lcom/google/firebase/remoteconfig/internal/c;->b:Z

    iput-object p3, p0, Lcom/google/firebase/remoteconfig/internal/c;->c:Lcom/google/firebase/remoteconfig/internal/f;

    return-void
.end method

.method public static a(Lcom/google/firebase/remoteconfig/internal/a;ZLcom/google/firebase/remoteconfig/internal/f;)Lcom/google/android/gms/tasks/g;
    .locals 1

    new-instance p1, Lcom/google/firebase/remoteconfig/internal/c;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0, p2}, Lcom/google/firebase/remoteconfig/internal/c;-><init>(Lcom/google/firebase/remoteconfig/internal/a;ZLcom/google/firebase/remoteconfig/internal/f;)V

    return-object p1
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/h;
    .locals 2

    iget-object p1, p0, Lcom/google/firebase/remoteconfig/internal/c;->a:Lcom/google/firebase/remoteconfig/internal/a;

    iget-boolean v0, p0, Lcom/google/firebase/remoteconfig/internal/c;->b:Z

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/c;->c:Lcom/google/firebase/remoteconfig/internal/f;

    invoke-static {p1, v0, v1}, Lcom/google/firebase/remoteconfig/internal/a;->a(Lcom/google/firebase/remoteconfig/internal/a;ZLcom/google/firebase/remoteconfig/internal/f;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method
