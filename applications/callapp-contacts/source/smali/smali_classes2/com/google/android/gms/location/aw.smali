.class final synthetic Lcom/google/android/gms/location/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/location/k;


# instance fields
.field private final a:Lcom/google/android/gms/location/b;

.field private final b:Lcom/google/android/gms/location/m;

.field private final c:Lcom/google/android/gms/location/d;

.field private final d:Lcom/google/android/gms/location/k;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/b;Lcom/google/android/gms/location/m;Lcom/google/android/gms/location/d;Lcom/google/android/gms/location/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/location/aw;->a:Lcom/google/android/gms/location/b;

    iput-object p2, p0, Lcom/google/android/gms/location/aw;->b:Lcom/google/android/gms/location/m;

    iput-object p3, p0, Lcom/google/android/gms/location/aw;->c:Lcom/google/android/gms/location/d;

    iput-object p4, p0, Lcom/google/android/gms/location/aw;->d:Lcom/google/android/gms/location/k;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/location/aw;->a:Lcom/google/android/gms/location/b;

    iget-object v1, p0, Lcom/google/android/gms/location/aw;->b:Lcom/google/android/gms/location/m;

    iget-object v2, p0, Lcom/google/android/gms/location/aw;->c:Lcom/google/android/gms/location/d;

    iget-object v3, p0, Lcom/google/android/gms/location/aw;->d:Lcom/google/android/gms/location/k;

    const/4 v4, 0x0

    .line 1000
    iput-boolean v4, v1, Lcom/google/android/gms/location/m;->c:Z

    .line 2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/location/b;->a(Lcom/google/android/gms/location/d;)Lcom/google/android/gms/tasks/h;

    if-eqz v3, :cond_0

    .line 3
    invoke-interface {v3}, Lcom/google/android/gms/location/k;->a()V

    :cond_0
    return-void
.end method
