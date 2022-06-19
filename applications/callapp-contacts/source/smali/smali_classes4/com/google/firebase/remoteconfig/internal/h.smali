.class final synthetic Lcom/google/firebase/remoteconfig/internal/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/b;


# instance fields
.field private final a:Lcom/google/firebase/remoteconfig/internal/g;

.field private final b:J


# direct methods
.method private constructor <init>(Lcom/google/firebase/remoteconfig/internal/g;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/h;->a:Lcom/google/firebase/remoteconfig/internal/g;

    iput-wide p2, p0, Lcom/google/firebase/remoteconfig/internal/h;->b:J

    return-void
.end method

.method public static a(Lcom/google/firebase/remoteconfig/internal/g;J)Lcom/google/android/gms/tasks/b;
    .locals 1

    new-instance v0, Lcom/google/firebase/remoteconfig/internal/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/remoteconfig/internal/h;-><init>(Lcom/google/firebase/remoteconfig/internal/g;J)V

    return-object v0
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/h;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/h;->a:Lcom/google/firebase/remoteconfig/internal/g;

    iget-wide v1, p0, Lcom/google/firebase/remoteconfig/internal/h;->b:J

    invoke-static {v0, v1, v2, p1}, Lcom/google/firebase/remoteconfig/internal/g;->a(Lcom/google/firebase/remoteconfig/internal/g;JLcom/google/android/gms/tasks/h;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method
